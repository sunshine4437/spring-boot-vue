<template>
    <div class="review">
        <div class="reviewTitle">
            <h2>상품평</h2>
        </div>
        <div class="reviewMain">
            <table class="reviewTable">
                <tr v-for="(review, idx) in reviews" :key="idx">
                    <td style="width: 10%">
                        <img
                            :src="
                                require(`@/components/productDetail/image/${review.image}`)
                            "
                            style="width:100px; height: 100px"
                        />
                    </td>
                    <td style="text-align: left">
                        <span v-html="review.comment"></span>
                    </td>
                    <td style="width: 10%"><span v-html="review.id"></span></td>
                </tr>
            </table>
        </div>
    </div>
</template>

<script>
export default {
    data() {
        return {
            reviews: [
                {
                    image: "review01.jpg",
                    comment: "후기가 워낙 좋았던 모델이라 믿고 샀는데 역시나 이쁘고 너무 마음에 들어요 늦게알아서 정가보다 비싸게주고샀지먼 그래도 만족합니다",
                    id: "garu****",
                },
                {
                    image: "review02.jpg",
                    comment: "평소 255~260신는데 발볼조금있어서 260 구매했고 잘 맞아요. 굿굿 입니다",
                    id: "naca****",
                },
                {
                    image: "review03.jpg",
                    comment: "일단 이뻐서 마음에 들어요! 신발이 가볍고 약간 크게 나온건지 제 신발 사이즈가 257인데 255 넉넉하게 들어가요 ㅎㅎ 나일론 재질 같은 느낌이라 모양이 잘 안잡힐까 걱정했는데 괜한 걱정이었네요 ㅎㅎ 전 너무 만족합니당!!",
                    id: "noll****",
                },
                {
                    image: "review04.jpg",
                    comment: "마감이 깔끔하지 못해요 정품인거 맞나요?;; 훔 사이즈 택표시도 흐릿해서 조금 그래요..",
                    id: "bkhl****",
                },
                {
                    image: "review05.jpg",
                    comment: "신발 혀 뒷편에 잉크가 지워져있네요 신발끈은 이물질 묻어있구요",
                    id: "dksd****",
                },
            ],
        };
    },
};
</script>
 
<style scoped>
.reviewMain {
    width: 100%;
}
.reviewTable {
    width: 100%;
    text-align: center;
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
</style>
