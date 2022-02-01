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
                    <td class="td3">상품명</td>
                    <td class="td4">가격</td>
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
                <tr>
                    <td class="td1">1</td>
                    <td class="td2">2</td>
                    <td class="td3">3</td>
                    <td class="td4">4</td>
                    <td class="td5">5</td>
                    <td class="td6">6</td>
                    <td class="td7">7</td>
                    <td class="td8">8</td>
                </tr>
                 <tr>
                    <td class="td1">1</td>
                    <td class="td2">2</td>
                    <td class="td3">3</td>
                    <td class="td4">4</td>
                    <td class="td5">5</td>
                    <td class="td6">6</td>
                    <td class="td7">7</td>
                    <td class="td8">8</td>
                </tr> <tr>
                    <td class="td1">1</td>
                    <td class="td2">2</td>
                    <td class="td3">3</td>
                    <td class="td4">4</td>
                    <td class="td5">5</td>
                    <td class="td6">6</td>
                    <td class="td7">7</td>
                    <td class="td8">8</td>
                </tr>
            </tbody>
        </table>
    </div>
    <div>
        <item>확인</item>
    </div>
</div>
</template>

<script>
export default {
    data: function () {
        return {
            counter: 0
        };
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

.td8 {
    width: 70px;
}

.header {
    height: 60px;
    text-align: center;
}

.tableRow:nth-child(2n) {
    background-color: rgb(117, 200, 255);
}
</style>
