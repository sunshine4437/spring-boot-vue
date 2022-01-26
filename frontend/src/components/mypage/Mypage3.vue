<template>
<div class="container">
    <!--right-->
    <div class="right">
        <div class="pList1">
            <h2>회원 탈퇴</h2>
        </div>
        <div class="tempDiv">
            <label class="labelClass" for="">비밀번호</label>
            <input v-model="password" type="password" class="mdText">
            <button class="quit" @click="quitSeller" v-if="member.authority == 'SELLER'">회원탈퇴</button>
            <button class="quit" @click="quitUser" v-if="member.authority == 'USER'">회원탈퇴</button>
        </div>
    </div>
</div>
</template>

<script>
import axios from 'axios'
import {
    createNamespacedHelpers
} from "vuex";
const loginStore = createNamespacedHelpers("loginStore");
export default {
    data() {
        return {
            password: null,
            member: "",
        }
    },
    methods: {
        quitSeller() {
            let id = this.getLogin;
            if (this.password == this.member.password) {
                axios.get(`/api/product/canquit/${id}`).then(res => {
                    if (res.data > 0) {
                        alert('판매중인 상품을 전부 삭제해주세요');
                        return;
                    } else {
                        axios.delete(`/api/member/delete/${id}`);
                        alert("탈퇴하셨습니다.")
                        this.Logout();
                        this.$router.push("/");
                    }
                })
            } else {
                alert('비밀번호가 틀립니다');
            }
        },
        quitUser() {
            let id = this.getLogin;
            if (this.password == this.member.password) {
                axios.get(`/api/order/canquit/${id}`).then(res => {
                    if (res.data > 0) {
                        alert('상품 구매가 완료되지 않은 주문이 있습니다');
                        return;
                    } else {
                        axios.delete(`/api/member/delete/${id}`).then(res => {
                            if (res.status == 200) {
                                alert("탈퇴하셨습니다.")
                                this.Logout();
                                this.$router.push("/");
                            }
                        }).catch(err => {
                            console.log(err.response);
                        });
                    }
                })
            } else {
                alert('비밀번호가 틀립니다');
            }
        },
        getMem() {
            let id = this.getLogin;
            axios.get(`/api/member/${id}`).then(res => {
                this.member = res.data;
            })
        },
        // 로그아웃 상태로 전환
        ...loginStore.mapMutations([
            'Logout'
        ]),
    },
    computed: {
        ...loginStore.mapGetters(["getLogin"]),
    },
    mounted() {
        this.getMem();
    }
}
</script>

<style scoped>
.container {
    width: 1000px;
}

.right {
    margin-left: auto;
    margin-right: auto;
}

.tempDiv {
    padding-top: 30px;
}

.labelClass {
    display: inline-block;
    width: 100px;
}

.mdText {
    width: 350px;
    height: 30px;
    margin-right: 10px;
    border-radius: 4px;
    border: 1px solid;
    text-align: center;
    font-size: 16px;
}

.quit {
    width: 100px;
    height: 35px;
    margin-left: 0px;
    padding: 0;
}
</style>
