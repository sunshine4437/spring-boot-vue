<template>
<div>
    <!--top-->
    <div class="top" style="text-align:center">

        <h1>마이페이지</h1>
    </div>
    <div class="container">
        <!--left-->
        <div class="left">
            <div class="List1">
                <router-link v-bind:to="'/Mypage'">
                    <h3>나의쇼핑내역</h3>
                </router-link>
                <hr>
            </div>
            <div class="Check">
                <a href="">주문/배송 조회</a><br>
                <a href="">취소/반품/교환 신청</a><br>
                <a href="">취소/반품/교환 현황</a><br>
                <a href="">환불/입금내역</a><br>
                <a href="">영수증/소득공제</a><br>
            </div>
            <div class="List2">
                <router-link v-bind:to="'/Mypage2'">
                    <h3>회원정보 열람</h3>
                </router-link>
                <hr>
            </div>
            <div class="Check">
                <a href="">닉네임 수정</a><br>
                <a href="">비밀번호 수정</a><br>
                <a href="">전화번호 수정</a><br>
                <a href="">주소 수정</a><br>
                <a href="">회원정보 변경/ 탈퇴</a><br>
                <a href="">로그인 관리</a><br>
                <a href="">개인정보 이용내역</a>
            </div>
        </div>
        <!--right-->
        <router-view></router-view>
    </div>
</div>
</template>

<script>
// import mypage1 from "@/views/Mypage1.vue"

export default {
    components: {
        // mypage1
    },
    data() {
        return {}
    },
    computed: {},
    methods: {

    },
    mounted() {

    }
}
</script>

<style scoped>
/* a {
    text-decoration: none;
    color: inherit;
    margin-left: 15px;
}

hr {
    width: 200px;
}

tr {
    border: inherit;
}

.top {
    margin-left: 70px;
}

.container {
    display: flex;
    border: none;
}

.left {
    display: inline-block;
    height: 1095px;
    border: 1px solid rgb(197, 195, 195);
    background-color: #fafafa;
    border-radius: 4px;
    width: 210px;
    padding: 15px;
    padding-top: 1px;
    font-size: 18px;
}

.right {
    display: inline-block;
    height: 1150px;
    width: 85%;
    border: 1px solid rgb(197, 195, 195);
    margin-left: 50px;
    background-color: #fafafa;
    border-radius: 4px;
}

.pList1,
.pList2,
.pList3 {
    text-align: center;
    border-bottom: 1px solid rgb(197, 195, 195);

}

.date1,
.date2 {

    border-bottom: 1px solid rgb(197, 195, 195);
    padding-top: 20px;
    padding-bottom: 20px;
}

.date1 {
    display: flex;
}

.date2 {
    height: 300px;
    overflow-y: scroll;
}

.date3 {
    margin-top: 20px;
    padding-top: 15px;
    height: 300px;
    overflow-y: scroll;
}

.table1st {
    margin-left: auto;
    margin-right: auto;
    display: flex;

}

.tables_header {
    width: 140px;
    height: 100px;
    padding-top: 20px;
    text-align: center;
    line-height: 80px;
    font-weight: bold;
    border: 1px solid;
    border-radius: 4px;
    background-color: #00ba54;
    color: white;
    margin-right: 20px;
}

.searchBtn {
    margin-left: 20px;
}

.row1,
.row2 {
    padding: 1px;
    border-radius: 4px;
}

.row2 {
    margin-left: 6px;
}

.row3 {
    display: flex;
    padding: 5px 0px;
}

.searchBar {
    width: 400px;
    margin-left: auto;
    margin-right: 1px;
    border-radius: 4px;
    border: 1px solid;
    padding: 20px;
}

.table2,
.table3 {
    margin-left: auto;
    margin-right: auto;
    border-collapse: collapse;
    text-align: center;
    background-color: white;
}

.table2 td,
.table3 td {
    border-bottom: 2px solid rgb(184, 181, 181);
    padding: 7px 4px;
    font-size: 16px;
}

.List1 {
    text-align: center;
    padding-top: 15px;
    padding-bottom: 10px;
    margin-right: 20px;
    font-size: 22px;
}

.List2 {
    text-align: center;
    padding-top: 70px;
    padding-bottom: 10px;
    margin-right: 20px;
    font-size: 22px
}

.Check {
    margin-left: 20px;
    color: rgb(129, 124, 124);
    border-color: inherit;
    line-height: 35px;
    font-size: 18px
}

.Check li {
    width: 150px;
    padding: 0;
    margin: 10px 0px;
}

.dateBtn {
    border-radius: 4px;
    border: none;
    color: white;
    padding: 5px 10px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 13px;
    cursor: pointer;
    margin: 0px 1px;
    margin: 0px 5px;

}

.tr1 {
    background-color: rgb(0, 153, 255);
    color: white;
}

#edge1 {
    border-top-left-radius: 8px;
}

#edge2 {
    border-top-right-radius: 8px;
} */
</style>
