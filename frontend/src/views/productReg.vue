<template>
<div>
    <div> <input class="regInput" id="test1" v-model="testText1" @click="test" type="text"></div>
    <div> <input class="regInput" id="test2" v-model="testText2" type="text"></div>
    <div> <input class="regInput" id="test3" v-model="testText3" type="text"></div>
    <div> <input class="regInput" id="test4" v-model="testText4" type="text"></div>
</div>
</template>

<script>
export default {
    data() {
        return {
            testText1: "",
            testText2: "",
            testText3: "",
            testText4: "",
        }
    },
    methods: {
      test(){
        console.log(this.testText1);
      }
    }
}
</script>

<style>
.regInput {
    display: inline-block;
}
</style>
