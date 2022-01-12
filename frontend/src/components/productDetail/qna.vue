<template>
<!-- 판매자와의 QNA -->

    <div class="qna">
        <div class="qnaTitle">
            <h2>상품 문의</h2>
        </div>
        <div class="qnaMain">
            <tr>
                <div>
                    <th style="width: 81px">번호</th>
                    <th style="width: 151px">상태</th>
                    <th style="width: 651px">제목</th>
                    <th style="width: 171px">문의자</th>
                    <th style="width: 151px">등록일</th>
                </div>
            </tr>

            <tr v-for="qna in qnas" :key="qna.number">
                <div>
                     <!-- 클릭 시 드롭다운 방식 -->
                    <collapse :selected="false">
                        <div slot="collapse-header">
                            <td style="width: 80px">
                                <span v-html="qna.number"></span>
                            </td>
                            <td style="width: 150px">
                                <span v-html="qna.state"></span>
                            </td>
                            <td style="width: 650px; text-align: left">
                                <span v-html="qna.question"></span>
                            </td>
                            <td style="width: 170px">
                                <span v-html="qna.name"></span>
                            </td>
                            <td style="width: 150px">
                                <span v-html="qna.date"></span>
                            </td>
                        </div>
                        <div slot="collapse-body" style="text-align: left">
                            <span v-html="qna.content"></span>
                        </div>
                    </collapse>
                </div>
            </tr>
        </div>
    </div>
</template>

<script>
import Collapse from "@/components/productDetail/Collapse.vue";
export default {
    components: {
        Collapse: Collapse,
    },
    data() {
        return {
            qnas: [
                {
                    number: "10",
                    state: "검토중",
                    question: "오늘출고예정 맞는거죠!!",
                    name: "epso****",
                    date: "2021-12-21",
                    content: "아직 답변이 작성되지 않았습니다",
                },
                {
                    number: "9",
                    state: "검토중",
                    question: "아직 반품처리가 되지않아 문의남깁니다!",
                    name: "dltn****",
                    date: "2021-12-21",
                    content: "아직 답변이 작성되지 않았습니다",
                },
                {
                    number: "8",
                    state: "검토중",
                    question: "상품과 배송잘부탁드려요.",
                    name: "lane****",
                    date: "2021-12-21",
                    content: "아직 답변이 작성되지 않았습니다",
                },
                {
                    number: "7",
                    state: "검토중",
                    question:
                        "물건 2개다갔는데 1개만 반품완료? 확인 부탁드립니다.",
                    name: "whie****",
                    date: "2021-12-21",
                    content: "아직 답변이 작성되지 않았습니다",
                },
                {
                    number: "6",
                    state: "검토중",
                    question: "취소신청했는데,연락주신다더니 연락도없고..취소부탁드립니다",
                    name: "ahy5****",
                    date: "2021-12-21",
                    content: "아직 답변이 작성되지 않았습니다",
                },
                {
                    number: "5",
                    state: "답변완료",
                    question: "취소신청이요. 확인해주세요",
                    name: "zyzh****",
                    date: "2021-12-21",
                    content: "안녕하세요.고객님<br>교환반품취소변경 접수 문의는<br>구매 하신 신세계 고객센터 1577-3419 로 문의주시기 바랍니다<br>감사합니다.",
                },
                {
                    number: "4",
                    state: "답변완료",
                    question: "하자없는상품으로 보내주세요~^^",
                    name: "polo****",
                    date: "2021-12-20",
                    content: "안녕하세요 고객님<br>주문하신 상품이 내일 출고 예정입니다.<br>배송은 평균적으로 1-2일[공휴일제외] 정도 소요됩니다.<br>실질적인 배송 수령일 관련 문의는 출고일 다음날 로젠택배[1588-9988] 로 문의하시면 정확한 안내 받으실 수 있습니다.<br>구매해주셔서 감사합니다.",
                },
                {
                    number: "3",
                    state: "답변완료",
                    question: "배송완료 처리되었는데 물건이 안왔어요",
                    name: "dado****",
                    date: "2021-12-20",
                    content:
                        "안녕하세요 고객님<br>2021-11-25목 2007 에 배송완료된것으로 확인됩니다.<br>택배 기사님들중에 사전 연락없이 위탁장소에 맡겨 놓으시는 경우가 있습니다.<br>경비실, 양수기함, 무인 택배함 등 위탁 가능한 곳에도 확인해보셨는데도 제품 확인되지 않는다면 담당 기사님 연락처 010-6399-8750 로 문의부탁드립니다.<br>직접 통화를 해보시면 물품 위치 확인이 가능하십니다.",
                },
                {
                    number: "2",
                    state: "답변완료",
                    question: "반품을 챙겨가셨는데 아직 반품처리가 안되네요",
                    name: "dltn****",
                    date: "2021-12-20",
                    content:
                        "안녕하세요, 신세계몰 고객센터 입니다. <br>문의주신 내용으로 12/28일 유선상 연락을 주셨으며, 담당 상담원분이 확인 중에 있습니다. 확인 후 고객 안내 및 처리도와 드릴 예정이오니 고객님의 소중한 시간 양해 부탁드립니다. <br>편안하고 행복한 하루 되십시오.",
                },
                {
                    number: "1",
                    state: "답변완료",
                    question: "225에 신는데 사이즈 어떻게 시켜야되나요?",
                    name: "odr1****",
                    date: "2021-12-20",
                    content:
                        "안녕하세요 고객님 뉴발란스 남성사이즈의 경우 여성분들은 사이즈가 넉넉하게나와 1~2치수정도 작게착용하시는 분들이 계시오나 <br>사이즈는 개인차가 큰 부분이므로 판매자가 고객님의 정확한 개인차 및 특이사항을 확인 할 수 없어 구체적인 사이즈 답변이 어려운 점 양해바랍니다. <br>제품별 사이즈표와 타 고객님의 이용후기 등을 참고하시어 고객님의 발모양과 발볼 너비, 발길이 등을 고려하셔서 주문부탁드리겠습니다.<br> 감사합니다.",
                },
            ],
        };
    },
};
</script>
 
<style scoped>
.qnaMain {
    width: 1600px;
    text-align: center;
    border-collapse: collapse;
}
td,
th {
    padding: 10px;
    border: 1px solid rgb(197, 195, 195);
    border-radius: 4px;
}
body {
    padding: 1rem;
}
.thTemp {
    margin: 0 0;
}
</style>
