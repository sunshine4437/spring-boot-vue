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
                    <td class="td1">상품번호</td>
                    <td class="td2">사진</td>
                    <td class="td3">상품명</td>
                    <td class="td4">가격</td>
                    <td class="td5">등록일</td>
                </tr>
            </thead>
        </table>
    </div>
    <div class="tableBody">
        <table>
            <tbody>
                <tr v-for="( product,idx) in products" :key="idx">
                    <td class="td1">{{product.productno}}</td>
                    <td class="td2">
                        <!-- {{setImage(product)}} -->
                        <img :src="setImage(product)" alt="productImage" style="width:100%">
                    </td>
                    <td class="td3">{{product.productname}}</td>
                    <td class="td4">{{product.price}}</td>
                    <td class="td5">{{product.regdate}}</td>
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
            await axios.get("/api/product/productDetail/saleslist/" + this.getLogin).then(res => {
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
        }
    },
    computed: {
        ...loginStore.mapGetters(['getLogin'])
    },
    mounted() {
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
}

.td2 {
    width: 113px;
}

.td3 {
    width: 629px;
}

.td4 {
    width: 80px;
}

.td5 {
    width: 90px;
}
</style>
