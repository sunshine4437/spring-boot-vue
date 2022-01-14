<template>
<div>
    <div class="imagePreviewWrapper" :style="{ 'background-image': `url(${previewImage})` }" @click="selectImage">
    </div>
    <input ref="fileInput1" type="file" @change="pickFile1">
    <input ref="fileInput2" type="file" @change="pickFile2">
    <button @click="sendFile">send</button>
</div>
</template>

<script>
import axios from 'axios'
export default {
    data() {
        return {
            previewImage: null
        };
    },
    methods: {
        selectImage() {
            this.$refs.fileInput.click()
        },
        pickFile1() {
            let input = this.$refs.fileInput1.files[0];

            console.log(input)
            this.formData.append('fileList', input, 'thumbnail.jpg')

        },
        pickFile2() {
            let input = this.$refs.fileInput2.files[0];
            // if (file && file[0]) {
            //     let reader = new FileReader
            //     reader.onload = e => {
            //         this.previewImage = e.target.result
            //     }
            //     reader.readAsDataURL(file[0])
            //     this.$emit('input', file[0])
            // }
            console.log(input)
            this.formData.append('fileList', input, 'detail.jpg')
        },
        sendFile() {
            console.log(this.formData)
            axios.post("/api/file/upload/img", this.formData)
        }
    },
    mounted() {
        this.formData = new FormData();

    }
}
</script>

<style scoped>
.imagePreviewWrapper {
    width: 250px;
    height: 250px;
    display: block;
    cursor: pointer;
    margin: 0 auto 30px;
    background-size: cover;
    background-position: center center;
}
</style>
