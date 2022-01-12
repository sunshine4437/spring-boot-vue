<template>
<!-- 상품 페이지 -->
<div class="productDetail">
    <!-- 상단부 : 사진, 설명 등 -->
    <div class="detailTop">
        <!-- 사진 -->
        <div class="leftBox scale-down" style="margin: auto; text-align: center">
            <img style="width: 500px; height: 500px; border-radius: 10px" src="@/components/productDetail/image/product01.jpg" />
        </div>
        <!-- 사진의 오른쪽 부분 -->
        <div class="rightBox">
            <div class="enter"></div>
            <!-- 상품명, 가격 -->
            <div class="rightTitle">
                <h2 id="title">
                    [뉴발란스] 남여공용 574/327/530 운동화 씨쏠트 문빔
                </h2>
                <h1>{{ AddComma(price) }}원</h1>
            </div>
            <!-- 상품명, 가격 -->
            <div class="rightTop">
                <p>15시 이전 주문 시 오늘 출발</p>
                <p v-if="delivery == 0">무료 배송</p>
                <p v-if="delivery > 0">
                    배송비 {{ AddComma(delivery) }}원 (
                    {{ AddComma(delivery_low) }}원 이상 구매 시 배송비 무료)
                </p>
            </div>
            <!-- 상품명, 가격 -->
            <div class="rightSelect">
                <h3>옵션 선택</h3>
                <div class="searchBar">
                    <select id="search1" name="searchSelect" class="searchSelectBox" @click="firstSelected($event)">
                        <option value="0">상품 번호</option>
                        <option value="01.NB_CM997HCA"> 01.NB_CM997HCA </option>
                        <option value="02.NB_CM997HCC"> 02.NB_CM997HCC </option>
                        <option value="03.NB_ML574RC2"> 03.NB_ML574RC2 </option>
                        <option value="04.NB_MR530SG">04.NB_MR530SG</option>
                        <option value="05.NB_MR530KA">05.NB_MR530KA</option>
                        <option value="06.NB_MS327FE">06.NB_MS327FE</option>
                        <option value="07.NB_MS327LAB"> 07.NB_MS327LAB </option>
                        <option value="08.NB_MS327CPG"> 08.NB_MS327CPG </option>
                        <option value="09.NB_MS327LH1"> 09.NB_MS327LH1 </option>
                        <option value="10.NB_WS327KC">10.NB_WS327KC</option>
                        <option value="11.NB_MS327WE">11.NB_MS327WE</option>
                        <option value="12.NB_MS327BD">12.NB_MS327BD</option>
                        <option value="13.NB_MR530SH">13.NB_MR530SH</option>
                        <option value="14.NB_WS327LW">14.NB_WS327LW</option>
                        <option value="15.NB_MS327CLA"> 15.NB_MS327CLA </option>
                        <option value="16.NB_ML574EVB"> 16.NB_ML574EVB </option>
                        <option value="17.NB_ML574EVG"> 17.NB_ML574EVG </option>
                        <option value="18.NB_ML574EVW"> 18.NB_ML574EVW </option>
                        <option value="19.NB_ML574EVE"> 19.NB_ML574EVE </option>
                    </select>
                </div>
                <div class="searchBar">
                    <select name="searchSelect" class="searchSelectBox" v-show="isSelected" @click="secondSelected($event)">
                        <option value="0">사이즈</option>
                        <option value="225">225</option>
                        <option value="230">230</option>
                        <option value="235">235</option>
                        <option value="240">240</option>
                        <option value="245">245</option>
                        <option value="250">250</option>
                        <option value="255">255</option>
                        <option value="260">260</option>
                        <option value="265">265</option>
                        <option value="270">270</option>
                        <option value="275">275</option>
                        <option value="280">280</option>
                        <option value="285">285</option>
                        <option value="290">290</option>
                    </select>
                </div>
            </div>
            <!-- 선택된 옵션 출력 -->
            <div class="rightSelected">
                <h3 style="text-align: left; padding: 0 0 0 20px">
                    선택된 옵션
                </h3>
                <table style="width: 100%">
                    <div class="rightSelectedTable">
                        <tr v-for="(item, index) in items" :key="index">
                            <td style="width: 200px">
                                <span>옵션1 : </span><span v-html="item.name"></span>
                            </td>
                            <td style="width: 100px">
                                <span>옵션2 : </span><span v-html="item.size"></span>
                            </td>
                            <td style="width: 10px; padding: 0 0 0 20px">
                                <button style="
                                            color: black;
                                            background-color: #fafafa;
                                        " @click="amountDec(index)">
                                    -
                                </button>
                            </td>
                            <td style="
                                        padding: 0 3px;
                                        width: 25px;
                                        text-align: center;
                                    ">
                                <span v-html="item.amount"></span>
                            </td>
                            <td style="width: 10px">
                                <button style="
                                            color: black;
                                            background-color: #fafafa;
                                        " @click="amountInc(index)">
                                    +
                                </button>
                            </td>
                            <td style="width: 30px">
                                <button @click="removeSelected(index)" class="removeSelectedBtn">
                                    X
                                </button>
                            </td>
                        </tr>
                    </div>
                </table>
            </div>
            <div class="clear"></div>
            <!-- 총 상품 금액 및 장바구니, 구매하기 버튼 -->
            <div class="rightButton">
                <h3 style="text-align: right; margin: 20px 35px 30px 0">
                    총 상품금액 : {{ AddComma(totalPrice) }}원
                </h3>
                <router-link v-if="getLogin" v-bind:to="'/basket'">
                    <button class="myCartBtn" style="margin-right: 20px">
                        장바구니
                    </button>
                </router-link>
                <router-link v-else v-bind:to="'/Login'">
                    <button class="myCartBtn" style="margin-right: 20px">
                        장바구니
                    </button>
                </router-link>
                <router-link v-if="getLogin" v-bind:to="'/payment'">
                    <button class="buyBtn" @click="insertOrderList">
                        구매하기
                    </button>
                </router-link>
                <router-link v-else v-bind:to="'/login'">
                    <button class="buyBtn">구매하기</button>
                </router-link>
            </div>
        </div>
    </div>
    <div class="clear"></div>
    <!-- 판매자 정보 -->
    <div class="shopInfo">
        <shopInfo></shopInfo>
    </div>
    <div class="clear"></div>
    <!-- 상세 내용 정보 -->
    <div class="detail">
        <detail></detail>
    </div>
</div>
</template>

<script>
import detail from "@/components/productDetail/detail.vue";
import shopInfo from "@/components/productDetail/shopInfo.vue";
import {
    createNamespacedHelpers
} from "vuex";
const loginStore = createNamespacedHelpers("loginStore");
const basketList = createNamespacedHelpers("basketList");
const orderList = createNamespacedHelpers("orderList");
export default {
    components: {
        detail: detail,
        shopInfo: shopInfo,
    },
    data: function () {
        return {
            isSelected: false,
            firstOption: 0,
            secondOption: 0,
            items: [],
            price: 73800,
            delivery: 0,
            delivery_low: 50000,
            delivery_fee: 0,
        };
    },
    methods: {
        // 첫번째 옵션 선택 시 사용
        firstSelected(event) {
            if (event.target.value != 0) {
                this.isSelected = true;
                this.firstOption = event.target.value;
            } else {
                this.isSelected = false;
            }
        },
        // 두번째 옵션 선택 시 사용
        secondSelected(event) {
            if (event.target.value != 0) {
                this.secondOption = event.target.value;
                this.isSelected = false;

                let title = document.getElementById("title").innerHTML;
                let newItem = {
                    img: "product01.jpg",
                    seller: "네파",
                    title: title,
                    name: this.firstOption,
                    size: this.secondOption,
                    price: this.price,
                    amount: 1,
                    delivery_fee: this.delivery_fee,
                };
                this.items.push(newItem);
                this.addList(newItem);

                event.target.value = 0;
                document.getElementById("search1").value = 0;
            }
        },
        insertOrderList() {
            this.clearOrderList();
            for (let i = 0; i < this.items.length; i++) {
                this.addOrderList(this.items[i]);
            }
        },
        addBasketList() {
            for (let i = 0; i < this.items.length; i++) {
                this.addList(this.items[i]);
            }
        },
        // 선택된 옵션 x 버튼을 눌러 지울 때 사용
        removeSelected(idx) {
            this.items.splice(idx, 1);
        },
        // 숫자에 천자리마다 ,추가
        AddComma(num) {
            var regexp = /\B(?=(\d{3})+(?!\d))/g;
            return num.toString().replace(regexp, ",");
        },
        // 숫자에 천자리마다 ,추가
        amountDec(idx) {
            if (this.items[idx].amount > 1) {
                this.items[idx].amount--;
                this.items[idx].price = this.price * this.items[idx].amount;
            }
        },
        // 숫자에 천자리마다 ,추가
        amountInc(idx) {
            this.items[idx].amount++;
            this.items[idx].price = this.price * this.items[idx].amount;
        },
        ...basketList.mapMutations(["addList"]),
        ...orderList.mapMutations(["addOrderList"]),
        ...orderList.mapMutations(["clearOrderList"]),
        ...basketList.mapMutations(["delList"]),
    },
    computed: {
        ...basketList.mapGetters(["getBasketList"]),
        ...loginStore.mapGetters(["getLogin"]),
        // 총 가격 계산
        totalPrice() {
            let tp = 0;
            for (let i = 0; i < this.items.length; i++) {
                tp += this.items[i].price;
            }
            return tp;
        },
    },
};
</script>

<style scoped>
* {
    padding: 0;
    box-sizing: border-box;
    list-style: none;
}

h1 {
    text-align: left;
}

hr {
    padding: 0 0;
    margin: 0 0;
}

.enter {
    margin: 60px;
}

.scale-down {
    object-fit: scale-down;
    width: 100%;
}

.detailTop {
    display: block;
    width: 100%;
    height: 750px;
    display: flex;
    background-color: #fafafa;
    margin: 0 0 30px 0;
}

.leftBox {
    width: 50%;
    padding: 0 0;
}

.rightBox {
    display: inline-block;
    width: 50%;
    height: auto;
    padding: 0 20px;
    margin-left: auto;
}

.rightTitle {
    width: 100%;
    padding: 0 0 0 20px;
    float: right;
    border-bottom: 1px solid rgb(197, 195, 195);
}

.rightTop {
    width: 100%;
    padding: 0 0 0 20px;
    float: right;
    border-bottom: 1px solid rgb(197, 195, 195);
}

.rightSelect {
    width: 100%;
    height: 150px;
    padding: 0 0 0 20px;
    float: right;
    border-bottom: 1px solid rgb(197, 195, 195);
}

.rightSelected {
    width: 100%;
    float: right;
    padding: 0 35px 20px 0;
    text-align: right;
    height: 160px;
    border-bottom: 1px solid rgb(197, 195, 195);
}

.rightSelectedTable {
    overflow-y: scroll;
    height: 80px;
    width: 430px;
    margin: 0 0 0 auto;
}

.removeSelectedBtn {
    width: 16px;
    height: 18px;
    padding: 0 0;
    font-size: 14px;
    color: #fafafa;
    background-color: rgb(0, 153, 255);
}

.searchBar {
    display: flex;
    margin: 10px;
}

.searchSelectBox {
    min-width: 200px;
    font-size: 18px;
    border-radius: 4px;
    outline: 2px solid rgb(0, 153, 255);
    border: none;
}

.rightButton {
    display: inline-block;
    width: 100%;
    padding: 0;
    text-align: center;
}

.myCartBtn {
    width: 200px;
    font-size: 150%;
}

.buyBtn {
    width: 200px;
    font-size: 150%;
}

.clear {
    clear: both;
}
</style>
