<template>
<div>
    <div class="all">
        <div class="container2">
            <div class="aside_info">
                <h2>가격비교</h2>
                <ul class="buy">
                    <li><input type="checkbox" class="blank"><a href="" class="blank">숙박대전</a></li>
                    <li><input type="checkbox" class="blank"><a href="" class="blank">배송선물</a></li>
                    <li><input type="checkbox" class="blank"><a href="" class="blank">희망쇼핑</a></li>
                    <li><input type="checkbox" class="blank"><a href="" class="blank">할인금액</a></li>
                </ul>
                <h2>사이즈</h2>
                <ul class="size">
                    <li><input type="checkbox" class="blank"><a href="" class="blank">230~240이상</a></li>
                    <li><input type="checkbox" class="blank"><a href="" class="blank">245~255이상</a></li>
                    <li><input type="checkbox" class="blank"><a href="" class="blank">260~270이상</a></li>
                    <li><input type="checkbox" class="blank"><a href="" class="blank">275이상</a></li>
                </ul>
                <h2>색상</h2>
                <ul class="color">
                    <li><input type="checkbox" class="blank"><a href="" class="blank">블랙 계열</a></li>
                    <li><input type="checkbox" class="blank"><a href="" class="blank">화이트 계열</a></li>
                    <li><input type="checkbox" class="blank"><a href="" class="blank">레드 계열</a></li>
                    <li><input type="checkbox" class="blank"><a href="" class="blank">옐로우 계열</a></li>
                    <li><input type="checkbox" class="blank"><a href="" class="blank">그린 계열</a></li>
                    <li><input type="checkbox" class="blank"><a href="" class="blank">블루 계열</a></li>
                    <li><input type="checkbox" class="blank"><a href="" class="blank">브라운 계열</a></li>
                    <li><input type="checkbox" class="blank"><a href="" class="blank">실버 계열</a></li>
                    <li><input type="checkbox" class="blank"><a href="" class="blank">골드 계열</a></li>
                </ul>
                <h2>판매처</h2>
                <ul class="aside_vendor">
                    <li><input type="checkbox" class="blank"><a href="" class="blank">공식인증셀러</a></li>
                    <li><input type="checkbox" class="blank"><a href="" class="blank">대형몰</a></li>
                    <li><input type="checkbox" class="blank"><a href="" class="blank">홈쇼핑</a></li>
                    <li><input type="checkbox" class="blank"><a href="" class="blank">전문몰</a></li>
                    <li><input type="checkbox" class="blank"><a href="" class="blank">해외몰</a></li>
                    <li><input type="checkbox" class="blank"><a href="" class="blank">아울렛</a></li>
                </ul>
                <h2>배송혜택</h2>
                <ul class="aside_delivery">
                    <li><input type="checkbox" class="blank"><a href="" class="blank">무료배송</a></li>
                    <li><input type="checkbox" class="blank"><a href="" class="blank">오늘발송</a></li>
                    <li><input type="checkbox" class="blank"><a href="" class="blank">반품 배송비지원</a></li>
                    <li><input type="checkbox" class="blank"><a href="" class="blank">무료선물포장</a></li>
                    <li><input type="checkbox" class="blank"><a href="" class="blank">장보기</a></li>
                </ul>
                <h2>브랜드</h2>
                <ul class="aside_brand">
                    <li><input type="checkbox" class="blank"><a href="" class="blank">아디다스</a></li>
                    <li><input type="checkbox" class="blank"><a href="" class="blank">나이키</a></li>
                    <li><input type="checkbox" class="blank"><a href="" class="blank">리복</a></li>
                    <li><input type="checkbox" class="blank"><a href="" class="blank">뉴발란스</a></li>
                    <li><input type="checkbox" class="blank"><a href="" class="blank">휠라</a></li>
                    <li><input type="checkbox" class="blank"><a href="" class="blank">퓨마</a></li>
                    <li><input type="checkbox" class="blank"><a href="" class="blank">프로스펙스</a></li>
                    <li><input type="checkbox" class="blank"><a href="" class="blank">르꼬끄</a></li>
                </ul>
                <h2>백화점</h2>
                <ul class="aside_brand">
                    <li><input type="checkbox" class="blank"><a href="" class="blank">AK플라자</a></li>
                    <li><input type="checkbox" class="blank"><a href="" class="blank">아이파크몰</a></li>
                    <li><input type="checkbox" class="blank"><a href="" class="blank">현대백화점</a></li>
                    <li><input type="checkbox" class="blank"><a href="" class="blank">롯데백화점</a></li>
                    <li><input type="checkbox" class="blank"><a href="" class="blank">신세계백화점</a></li>
                    <li><input type="checkbox" class="blank"><a href="" class="blank">갤러리아백화점</a></li>
                </ul>
            </div>
        </div>

        <div class="container0">
            <div class="container">
                <div class="products_fa">
                    <h2 class='span1'> 인기상품</h2>
                    <div class="products">
                        <router-link v-bind:to="'/productDetail'">
                            <img src="@/assets/listImage/f1.jpg">
                            <p>[뉴발란스] 남여공용 574/327/530 운동화 씨쏠트 문빔</p>
                            <p class="price">73,800원</p>
                        </router-link>
                        <a href="#">
                            <img src="@/assets/listImage/f2.jpg">
                            <p>[뉴발란스] 327 스니커즈 MS327FE</p>
                            <p class="price">150,900원</p>
                        </a>
                        <a href="#">
                            <img src="@/assets/listImage/f3.jpg">
                            <p>아디다스 울트라부스트 21_FY0379</p>
                            <p class="price">114,500원</p>
                        </a>
                        <a href="#">
                            <img src="@/assets/listImage/f4.jpg">
                            <p>나이키 남성 에어맥스 90 EOI DA5562-001</p>
                            <p class="price">129,000원</p>
                        </a>
                    </div>
                </div>

                <h2 class="span1"> 관련상품</h2>
                <div class="products1">
                    <ul>
                        <li class="item">
                            <a href="#">
                                <img src="@/assets/listImage/s1.jpg">
                            </a>
                            <div class="desc">
                                <p class="name">나이키 에어맥스97 트리플블랙</p>
                                <p class="price"> 가격: 173,000원</p>
                                <p class="rate"> 10%할인: 163,000원</p>
                                <p class="delivery"> 무료배송</p>
                            </div>
                            <div class="desc">
                                <span class="vendor"> 판매처: two_step</span>
                            </div>
                        </li>
                        <li class="item">
                            <a href="#">
                                <img src="@/assets/listImage/s2.jpg">
                            </a>
                            <div class="desc">
                                <p class="name">아키클래식 어반트래터 트래캥슈즈</p>
                                <p class="price"> 가격: 54,900원</p>
                                <p class="rate"> 9%할인: 45,959원</p>
                                <p class="delivery"> 배송비: 2,500원</p>
                            </div>
                            <div class="desc">
                                <span class="vendor"> 판매처: 월터스</span>
                            </div>
                        </li>
                        <li class="item">
                            <a href="#">
                                <img src="@/assets/listImage/s3.jpg">
                            </a>
                            <div class="desc">
                                <p class="name">뉴발란스 327 운동화 MS327FE</p>
                                <p class="price"> 가격: 110,00원</p>
                                <p class="rate"> 15%할인: 93,500원</p>
                                <p class="delivery"> 무료배송</p>
                            </div>
                            <div class="desc">
                                <span class="vendor"> 판매처: 신세계몰</span>
                            </div>
                        </li>
                        <li class="item">
                            <a href="#">
                                <img src="@/assets/listImage/s4.jpg">
                            </a>
                            <div class="desc">
                                <p class="name">아디다스 갤럭시 5 FY6718</p>
                                <p class="price"> 가격: 35,000원</p>
                                <p class="rate"> 할인: 35,000원</p>
                                <p class="delivery"> 배송비: 3,000원</p>
                            </div>
                            <div class="desc">
                                <span class="vendor"> 판매처: CJONSTYLE</span>
                            </div>
                        </li>
                        <li class="item">
                            <a href="#">
                                <img src="@/assets/listImage/s5.jpg">
                            </a>
                            <div class="desc">
                                <p class="name">리복클래식 레더 레거시 GZ0741</p>
                                <p class="price"> 가격: 77,000원</p>
                                <p class="rate"> 5%할인: 73,150원</p>
                                <p class="delivery"> 무료배송</p>
                            </div>
                            <div class="desc">
                                <span class="vendor"> 판매처: 롯데백화점</span>
                            </div>
                        </li>
                        <li class="item">
                            <a href="#">
                                <img src="@/assets/listImage/s6.jpg">
                            </a>
                            <div class="desc">
                                <p class="name">휠라 공용 레인져 1RM01141-100</p>
                                <p class="price"> 가격: 40,200원</p>
                                <p class="rate"> 할인: 40,200원</p>
                                <p class="delivery"> 배송비: 2,500원</p>
                            </div>
                            <div class="desc">
                                <span class="vendor"> 판매처: 홈앤쇼핑몰</span>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
</template>

<script>
export default {

}
</script>

<style scoped>
.all {
    display: flex;
    justify-content: space-evenly;
    margin: 0;
    padding: 0;
}

.container0 {
    margin: 0;
    padding: 0;
    display: flex;
}

.container {
    margin: 0;
    padding: 0;
    display: inline;
    border: 1px solid rgb(197, 195, 195);
    border-radius: 4px;
}

.products_fa {
    display: inline;
}

.span1 {
    display: flex;
    font-size: 22px;
    font-family: 맑은고딕, Malgun Gothic, dotum, gulim, sans-serif;
    margin: 10px;
    background-color: #fafafa;
    border-radius: 4px;
    border: 1px solid rgb(197, 195, 195);
    padding-left:5px;
}

.products {
    display: inline-flex;
    justify-content: center;
    margin-left: 10px;
    margin-top: 10px;
    margin-bottom: 10px;

}

.products router-link {
    font-family: 맑은고딕, Malgun Gothic, dotum, gulim, sans-serif;
    font-size: 16px;
}

.products a {
    display: inline;
    width: 200px;
    margin: 0 10px;
    background-color: #fafafa;
    border-radius: 4px;
    border: 1px solid rgb(197, 195, 195);
}

.products a:visited,
.products a:hover,
.products a:link {
    color: black;
    text-decoration: none;
}

.products img {
    width: 200px;
    height: 200px;
    border-radius: 4px;
}

.products p {
    font-family: 맑은고딕, Malgun Gothic, dotum, gulim, sans-serif;
    font-size: 16px;
}

.products p:nth-child(3) {
    font-weight: bold;
    font-size: 22px;
}

.products1 ul {
    list-style: none;
    padding: 0;
    margin: 0;

}

.products1 li {
    margin: 10px 10px;
    padding: 0;
    display: flex;
    align-items: center;
    background-color: #fafafa;
    border-radius: 4px;
    margin-left: 1px solid rgb(197, 195, 195);
    border: 1px solid rgb(197, 195, 195);
}

.products1 .item a>img {
    width: 200px;
    margin-top: 8px;
    border-radius: 4px;
}

.desc {
    margin: 0;
    display: inline-block;
    font-family: 맑은고딕, Malgun Gothic, dotum, gulim, sans-serif;
    font-size: 16px;
}

.products1 .item .desc p {
    font-family: 맑은고딕, Malgun Gothic, dotum, gulim, sans-serif;
    font-size: 16px;
    margin: 0 10px;
    width: 450px;
}

.products1 .item .desc p:nth-child(2) {
    text-decoration: line-through;
}

.products1 .item .desc p:nth-child(3) {
    font-weight: bold;
    font-size: 22px;
}

.desc .vendor {
    display: inline-block;
    border-left: 1px solid rgb(197, 195, 195);
    width: 200px;
    margin: 0;
    padding-top: 60px;
    padding-bottom: 60px;
    padding-left: 10px;
}

.container2 {
    display: inline-block;
    margin: 0;
    padding: 0;
}

.aside_info {
    border: 1px solid rgb(197, 195, 195);
    width: 250px;
    background-color: #fafafa;
    border-radius: 4px;
}

.aside_info h2 {
    margin: 0;
    display: flex;
    padding-left: 10px;
    border-bottom: 1px solid rgb(197, 195, 195);
    background-color: white;
    font-family: 맑은고딕, Malgun Gothic, dotum, gulim, sans-serif;
    font-size: 22px;
}

.aside_info li .blank {
    text-decoration: none;
    font-family: 맑은고딕, Malgun Gothic, dotum, gulim, sans-serif;
    font-size: 18px;
}

.aside_info ul {
    list-style: none;
    margin: 10px;
    padding: 0;
    align-items: center;
}

.aside_info li {
    list-style: none;
    font-size: 16px;
    font-family: 맑은고딕, Malgun Gothic, dotum, gulim, sans-serif;
    padding: 5px;
    margin: 0;
}

.aside_info .buy a {
    list-style: none;
}

.clearfix {
    clear: both;
}

a:any-link {
    color: inherit;
}

.products p {
    padding-left:5px;
}
</style>
