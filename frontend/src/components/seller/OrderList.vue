<template>
<div>
    <div>
        <select name="" id="">
            <option value="">상품번호</option>
            <option value="">상품명</option>
            <option value="">가격</option>
            <option value="">등록일</option>
            <option value="">재고</option>
            <option value="">판매여부</option>
        </select>
        <input type="text">
    </div>
    <div>
        <table>
            <thead>
                <tr>
                    <td class="td1">주문번호</td>
                    <td class="td2">상품번호</td>
                    <td class="td3" style="text-align: center;">상품명</td>
                    <td class="td4" style="text-align: center;">가격</td>
                    <td class="td5">개수</td>
                    <td class="td6">구매일</td>
                    <td class="td7">배송상태</td>
                    <td class="td8">상태변경</td>
                </tr>
            </thead>
        </table>
    </div>
    <div class="tableBody">
        <table>
            <tbody>
                <tr v-for="(order,idx) in orders" :key="idx" class="tableRow">
                    <td class="td1">
                        {{order.orderidx}}
                    </td>
                    <td class="td2">
                        {{order.productno}}
                    </td>
                    <td class="td3">
                        {{order.productname}}
                    </td>
                    <td class="td4">
                        {{AddComma(order.totalprice)}}원
                    </td>
                    <td class="td5">
                        {{order.amount}}
                    </td>
                    <td class="td6">
                        {{order.orderdate}}
                    </td>
                    <td class="td7">
                        {{order.state}}
                    </td>
                    <td class="td8">
                        <select name="" id="" v-model="selectedStates[idx]">
                            <option v-for="state in states" :key="state" :value="state">{{state}}</option>
                        </select>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    <div style="text-align : center">
        <button @click="stateChange">변경하기</button>
    </div>
</div>
</template>

<script>
import axios from 'axios'
import {
    createNamespacedHelpers
} from 'vuex';
// 로그인 상태 관련 모듈
const loginStore = createNamespacedHelpers('loginStore');
export default {
    data: function () {
        return {
            orders: [],
            counter: 0,
            states: ['결제 완료', '배송중', '배송 완료', '취소 요청', '취소 완료', '환불 요청', '환불 완료'],
            selectedStates: [],
        };
    },
    methods: {
        async getData() {
            await axios.get("/api/order/getSell/" + this.getLogin.user_id).then(res => {
                this.data = res.data;
                this.data.forEach(element => {
                    this.orders.push(element);
                });
                for (let i = 0; i < this.orders.length; i++) {
                    this.selectedStates[i] = this.orders[i].state
                }
            });
        },
        AddComma(num) {
            let regexp = /\B(?=(\d{3})+(?!\d))/g;
            return num.toString().replace(regexp, ",");
        },
        async stateChange() {
            let check = 0;
            let error = [];
            for (let i = 0; i < this.orders.length; i++) {
                if (this.orders[i].state == '취소 완료' || this.orders[i].state == '환불 완료') {
                    alert(`주문번호 : ${this.orders[i].orderidx}\n취소 완료 혹은 환불 완료된 주문은 변경이 불가능합니다.`);
                    continue;
                }
                if (this.orders[i].state != this.selectedStates[i]) {
                    check++;
                    await axios({
                        method: 'put',
                        url: `api/order/update`,
                        params: {
                            orderidx: this.orders[i].orderidx,
                            state: this.selectedStates[i],
                        }
                    }).then(res => {
                        if (res.status == 200) {
                            check--;
                        }
                    }).catch(err => {
                        console.log(err.response)
                        error.push(this.orders[i].orderidx);
                    })
                }
            }
            if (check == 0) {
                alert('변경하셨습니다');
                this.$router.go();
            } else {
                alert(`미완료된 변경(총 ${check}건) : ${error}`)
            }
        }
    },
    computed: {
        ...loginStore.mapGetters(['getLogin'])
    },
    mounted() {
        this.getData();
    },
    destroyed() {
        console.log('Destroyed')
    }
}
</script>

<style scoped>
.container {
    width: 1130px;
    overflow: hidden;
}

.container div {
    display: block;
}

.tableBody {
    height: 800px;
    overflow-y: scroll;
}

td {
    border: 1px solid #444444;
    padding: 8px 0;
}

.td1 {
    width: 80px;
    text-align: center;
}

.td2 {
    width: 80px;
    background-color: white;
    text-align: center;
}

.td3 {
    width: 450px;
}

.td4 {
    width: 100px;
    text-align: right;
}

.td5 {
    width: 50px;
    text-align: center;
}

.td6 {
    width: 100px;
    text-align: center;
}

.td7 {
    width: 100px;
    text-align: center;
}

.td8 {
    width: 100px;
    text-align:center;
}

.header {
    height: 60px;
    text-align: center;
}

.tableRow:nth-child(2n) {
    background-color: rgb(117, 200, 255);
}

table {
    border-collapse: collapse;
}
</style>
