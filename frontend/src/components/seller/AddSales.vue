<template>
<div>
    <div>
        <label for="" class="inputLabel">상품명</label>
        <input type="text" class="inputData" v-model="productname">
    </div>
    <div>
        <label for="" class="inputLabel">상품가격</label>
        <input type="text" class="inputData" v-model="price">
    </div>
    <div>
        <label for="" class="inputLabel">옵션1</label>
        <input type="text" class="inputData" v-model="option1">
    </div>
    <div>
        <label for="" class="inputLabel">옵션2</label>
        <input type="text" class="inputData" v-model="option2">
    </div>
    <div>
        <label for="" class="inputLabel">상품 이미지</label>
        <div class="imagePreviewWrapper" :style="{ 'background-image': `url(${imagename})` }" @click="selectImage">
        </div>
        <input ref="fileInput1" type="file" @change="pickFile1">
    </div>
    <div>
        <label for="" class="inputLabel">상품 상세 이미지</label>
        <div class="imagePreviewWrapper" :style="{ 'background-image': `url(${detailimagename})` }" @click="selectImage">
        </div>
        <input ref="fileInput2" type="file" @change="pickFile2">
    </div>

    <button @click="sendFile">send</button>
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
            price: 0,
            option1: '',
            option2: '',
            image1: '',
            image2: '',
            imagename: null,
            detailimagename: null
        };
    },
    methods: {
        selectImage() {
            this.$refs.fileInput.click()
        },
        pickFile1() {
            let input = this.$refs.fileInput1.files;
            if (input && input[0]) {
                let reader = new FileReader
                reader.onload = e => {
                    this.imagename = e.target.result
                }
                reader.readAsDataURL(input[0])
                this.$emit('input', input[0])
            }
            console.log(input)
            this.image1 = input[0].name
            this.formData.append('fileList', input[0])

        },
        pickFile2() {
            let input = this.$refs.fileInput2.files;
            if (input && input[0]) {
                let reader = new FileReader
                reader.onload = e => {
                    this.detailimagename = e.target.result
                }
                reader.readAsDataURL(input[0])
                this.$emit('input', input[0])
            }
            console.log(input[0].name)
            this.image2 = input[0].name
            this.formData.append('fileList', input[0])
        },
        async sendFile() {
            // console.log(this.formData)
            // axios.post("/api/file/upload/img", this.formData)
            console.log(`${this.getLogin}`)
            await axios({
                method: 'post',
                url: `/api/product/insertProduct/${this.getLogin}`,
                params: {
                    productname: this.productname,
                    price: this.price,
                    option1: this.option1,
                    option2: this.option2,
                    imagename: this.image1,
                    detailimagename: this.image2,
                    // fileList: this.formData
                }
            }).then(res => axios.post(`/api/product/upload/img/${res.data}`, this.formData))

            //

        }
    },
    computed: {
        ...loginStore.mapGetters(['getLogin'])
    },
    mounted() {
        this.formData = new FormData();
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
</style>
