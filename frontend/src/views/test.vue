<template>
<div>
    {{testdata}}
</div>
</template>

<script>
import axios from 'axios'
export default {
    data() {
        return {
            testdata: [],
        }
    },
    methods: {
        getData() {
            axios.get("/api/product/productDetail/all")
                .then(res => {
                    this.data = res.data;
                    this.data.forEach(element => {
                        let temp = {
                            image: element.imagename,
                            name: element.productname,
                            prodno: element.productno,
                            link: '/productDetail/' + element.productno,
                            price: element.price
                        }
                        this.testdata.push(temp);
                    });
                })
        },
        mounted() {
            this.getData();
        }
    }
}
</script>

<style>

</style>
