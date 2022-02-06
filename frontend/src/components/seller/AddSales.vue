<template>
<div>
    <table>
        <tr>
            <td>상품명</td>
            <td colspan="2">
                <input type="text" class="inputData" v-model="productname">
            </td>
        </tr>
        <tr>
            <td>상품 타입</td>
            <td colspan="2">
                <input type="text" class="inputData" v-model="ptype">
            </td>
        </tr>
        <tr>
            <td>상품 가격</td>
            <td colspan="2">
                <input type="text" class="inputData" v-model="price">
            </td>
        </tr>
        <tr>
            <td></td>
            <td>옵션명</td>
            <td>옵션(;로 구분)</td>
        </tr>
        <tr>
            <td>옵션1</td>
            <td>
                <input type="text" class="inputData" v-model="option1name" placeholder="옵션명">
            </td>
            <td>
                <input type="text" class="inputData" v-model="option1">
            </td>
        </tr>
        <tr>
            <td>옵션2</td>
            <td>
                <input type="text" class="inputData" v-model="option2name" placeholder="옵션명">
            </td>
            <td>
                <input type="text" class="inputData" v-model="option2" :disabled='option2name ==""'>
            </td>
        </tr>
        <tr>
            <td>이미지</td>
            <td>
                <label for="" class="inputLabel">상품 이미지</label>
                <div class="imagePreviewWrapper" :style="{ 'background-image': `url(${image1})` }" @click="selectImage1">
                </div>
                <input ref="fileInput1" type="file" @change="pickFile1" accept="image/png, image/gif, image/jpeg">
            </td>
            <td>
                <label for="" class="inputLabel">상품 상세 이미지</label>
                <!-- <div v-for="(image,idx) in image2" :key="idx"> -->
                <div class="imagePreviewWrapper" :style="{ 'background-image': `url(${image2})` }" @click="selectImage2">
                    <!-- <button>select</button> -->
                </div>
                <!-- </div> -->
                <input ref="fileInput2" type="file" @change="pickFile2" accept="image/png, image/gif, image/jpeg">
            </td>
        </tr>
        <tr>
            <td colspan="3" style="text-align : center">
                <button @click="sendFile">send</button>
            </td>
        </tr>
    </table>
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
    data() {
        return {
            productname: '',
            ptype: '',
            price: 0,
            option1name: '',
            option1: '',
            option2name: '',
            option2: '',
            image1: null,
            image2: null,
        };
    },
    methods: {
        selectImage1() {
            this.$refs.fileInput1.click()
        },
        selectImage2() {
            this.$refs.fileInput2.click()
        },
        pickFile1() {
            let input = this.$refs.fileInput1.files[0];
            if (input) {
                let reader = new FileReader
                reader.onload = e => {
                    this.image1 = e.target.result
                }
                reader.readAsDataURL(input)
                this.$emit('input', input)
            }
            this.imagename = input.name
            this.imageFile1 = input;
            // this.formData.append('fileList', input[0])

        },
        pickFile2() {
            let input = this.$refs.fileInput2.files[0];
            if (input) {
                let reader = new FileReader
                reader.onload = e => {
                    // this.image2.push(e.target.result)
                    this.image2 = e.target.result;
                }
                reader.readAsDataURL(input)
                this.$emit('input', input)
            }
            this.detailimagename = input.name
            this.imageFile2 = input;
            // this.formData.append('fileList', input[0])
        },
        async sendFile() {
            console.log(this.getLogin.user_id)
            // let id = this.getLogin
            let data = {
                sellerid: this.getLogin.user_id,
                productname: this.productname,
                ptype: this.ptype,
                price: this.price,
                option1: this.option1name + ';' + this.option1,
                option2: this.option2name + ';' + this.option2,
                imagename: this.imagename,
                detailimagename: this.detailimagename,
            }
            this.formData = new FormData();
            this.formData.append('data', new Blob([JSON.stringify(data)], {
                type: "application/json"
            }))
            this.formData.append('fileList', this.imageFile1)
            this.formData.append('fileList', this.imageFile2)
            axios.post('/api/product/insertProduct', this.formData).then(res => {
                console.log(res.status);
                alert("입력 성공");
            }).catch(err => {
                if (err.response.status === 404)
                    alert("error")
            })
        }
    },
    computed: {
        ...loginStore.mapGetters(['getLogin'])
    },
    mounted() {

    }
}
</script>

<style scoped>
.imagePreviewWrapper {
    width: 100px;
    height: 100px;
    display: block;
    cursor: pointer;
    margin: 0;
    background-size: cover;
    /* background-position: center center; */
}

.inputLabel {
    display: inline-block;
    width: 120px;
}
tr, td{
    border: 1px black solid;
    padding: 5px 5px;
}
table{
    border-collapse: collapse;
}
div {
    padding: 10px 5px;
}
</style>
