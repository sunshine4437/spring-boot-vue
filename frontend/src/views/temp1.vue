<template>
<div>
    {{getLogin}}
</div>
</template>

<script>
import {
    createNamespacedHelpers
} from 'vuex';
// 로그인 상태 관련 모듈
const loginStore = createNamespacedHelpers('loginStore');
export default {
    data() {
        return {

        };
    },
    methods: {
        test(){
            console.log(this.getLogin);
        }
    },
    computed: {
        // 로그인한 유저정보를 반환
        ...loginStore.mapGetters(['getLogin'])
    },
    mounted() {
        this.test();
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
