<template>
<div class="container">
    <!-- <h1>test1</h1> -->

    <!-- <div>{{product}}</div> -->
    <div></div>
    <div></div>
    <div></div>
    <div></div>
    <div>
        <table>
            <thead>
                <tr>
                    <td class="td1 header" style=" cursor: pointer;" @click="productnoSort">상품번호</td>
                    <td class="td2 header">사진</td>
                    <td class="td3 header">상품명</td>
                    <td class="td4 header" style=" cursor: pointer;" @click="priceSort">가격</td>
                    <td class="td5 header" style=" cursor: pointer;" @click="regdateSort">등록일</td>
                    <td class="td6">재고</td>
                    <td class="td7">삭제</td>
                    <td class="td8">판매중단</td>
                </tr>
            </thead>
        </table>
    </div>
    <div class="tableBody">
        <table>
            <tbody>
                <tr v-for="( product,idx) in products" :key="idx" class="tableRow">

                    <td class="td1">
                        <router-link v-bind:to="`/productDetail/${product.productno}`" tag="div" class="routerLink">
                            {{product.productno}}
                        </router-link>
                    </td>
                    <td class="td2">
                        <router-link v-bind:to="`/productDetail/${product.productno}`" tag="div" class="routerLink">
                            <!-- {{setImage(product)}} -->
                            <img :src="setImage(product)" alt="productImage">
                        </router-link>
                    </td>
                    <td class="td3">
                        <router-link v-bind:to="`/productDetail/${product.productno}`" tag="div" class="routerLink">
                            {{product.productname}}
                        </router-link>
                    </td>
                    <td class="td4">
                        <router-link v-bind:to="`/productDetail/${product.productno}`" tag="div" class="routerLink">
                            {{AddComma(product.price)}}원
                        </router-link>
                    </td>
                    <td class="td5">
                        <router-link v-bind:to="`/productDetail/${product.productno}`" tag="div" class="routerLink">
                            {{product.regdate}}
                        </router-link>
                    </td>
                    <td class="td6">재고</td>
                    <td class="td7">삭제</td>
                    <td class="td8">판매중단</td>
                </tr>
            </tbody>
        </table>
    </div>
    <div>
    </div>
    <div></div>

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
            products: [],
        };
    },
    destroyed() {
        console.log('Destroyed')
    },
    methods: {
        async getData() {
            await axios.get("/api/product/productDetail/saleslist/" + this.getLogin.user_id).then(res => {
                this.data = res.data;
                this.data.forEach(element => {
                    this.products.push(element);
                });
            });
        },
        setImage(product) {
            try {
                return require(`@/components/mainPage/productTableImage/${product.imagename}`)
            } catch {
                return require(`@/components/mainPage/productTableImage/error.png`)
            }

        },
        AddComma(num) {
            let regexp = /\B(?=(\d{3})+(?!\d))/g;
            return num.toString().replace(regexp, ",");
        },
        productnoSort() {
            console.log(this.productnoSortState)
            this.productnoSortState = -this.productnoSortState;
            this.products.sort((a, b) => {
                if (this.productnoSortState < 0) {
                    return a.productno - b.productno;
                } else {
                    return b.productno - a.productno;
                }

            })

        },
        priceSort() {
            this.priceSortState = -this.priceSortState;
            this.products.sort((a, b) => {
                if (this.priceSortState < 0) {
                    if (a.price == b.price) {
                        return a.productno - b.productno;
                    }
                    return a.price - b.price;
                } else {
                    if (a.price == b.price) {
                        return a.productno - b.productno;
                    }
                    return b.price - a.price;
                }
            })
        },
        regdateSort() {
            this.regdateSortState = -this.regdateSortState;
            this.products.sort((a, b) => {
                let a_time = {
                    year: a.regdate.slice(0, 4),
                    month: a.regdate.slice(5, 7) - 1,
                    date: a.regdate.slice(8, 10),
                    hour: a.regdate.slice(11, 13),
                    minute: a.regdate.slice(14, 16)
                }
                let b_time = {
                    year: b.regdate.slice(0, 4),
                    month: b.regdate.slice(5, 7) - 1,
                    date: b.regdate.slice(8, 10),
                    hour: b.regdate.slice(11, 13),
                    minute: b.regdate.slice(14, 16)
                }
                // console.log(new Date(a_time.year, a_time.month, a_time.date, a_time.hour, a_time.minute));
                // console.log(new Date(b_time.year, b_time.month, b_time.date, b_time.hour, b_time.minute));
                let a_Date = new Date(a_time.year, a_time.month, a_time.date, a_time.hour, a_time.minute);
                let b_Date =  new Date(b_time.year, b_time.month, b_time.date, b_time.hour, b_time.minute);
                if (this.regdateSortState < 0) {
                    if (a_Date - b_Date == 0) {
                        return a.productno - b.productno;
                    }
                    return a_Date - b_Date;
                } else {
                    if (a_Date - b_Date == 0) {
                        return a.productno - b.productno;
                    }
                    return b_Date - a_Date;
                }

            })
        }
    },
    computed: {
        ...loginStore.mapGetters(['getLogin'])
    },
    mounted() {
        this.productnoSortState = 1;
        this.priceSortState = 1;
        this.regdateSortState = 1;
        this.getData();
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
}

.td1 {
    width: 79px;
    text-align: center;
}

.td2 {
    width: 62px;
    height: 62px;
    background-color: white;
    text-align: center;
}

.routerLink {
    cursor: pointer;

}

.td2>.routerLink>img {
    width: 60px;
    height: 60px;
    object-fit: scale-down;
}

.td3 {
    width: 450px;
}

.td4 {
    width: 130px;
    text-align: right;
}

.td5 {
    width: 90px;
}

.td6 {
    width: 50px;
    text-align: center;
}

.td7 {
    width: 50px;
    text-align: center;
}

.header {
    height: 60px;
    text-align: center;
}

.tableRow:nth-child(2n) {
    background-color: rgb(117, 200, 255);
}
</style>
