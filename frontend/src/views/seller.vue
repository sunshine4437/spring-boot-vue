<template>
<div class="container">
    <div class="leftSide">
        <item v-on:click="selectedComponent = 'appTest1', changeSelected(0)" class="leftButton" :class=' { "selected": selected == 0 } '>상품관리</item>
        <item v-on:click="selectedComponent = 'appTest2', changeSelected(1)" class="leftButton" :class=' { "selected": selected == 1 } '>상품등록</item>
        <item v-on:click="selectedComponent = 'appTest3', changeSelected(2)" class="leftButton" :class=' { "selected": selected == 2 } '>주문관리</item>
        <item v-on:click="selectedComponent = 'appTest3', changeSelected(3)" class="leftButton" :class=' { "selected": selected == 3 } '>판매정산</item>
    </div>
    <div class="body">
        <div class="col-xs-12">
            <keep-alive>
                <component v-bind:is="selectedComponent">
                    <p>Default content</p>
                </component>
            </keep-alive>
        </div>
    </div>
</div>
</template>

<script>
import test1 from "@/components/seller/test1.vue"
import test2 from "@/components/seller/test2.vue"
import test3 from "@/components/seller/test3.vue"
export default {
    data() {
        return {
            selectedComponent: 'appTest1',
            // changeSelected,
            selected: 0,
        }
    },
    components: {
        appTest1: test1,
        appTest2: test2,
        appTest3: test3
    },
    methods: {
        changeSelected(idx) {
            this.selected = idx;
        }
    }
}
</script>

<style scoped>
.container {
    display: flex;
}

.leftSide {
    border: 1px solid black;
    width: 200px;
    height: 1000px;
}

.leftButton {
    display: block;
    background-color: gray;
}

.body {
    border: 1px solid black;
    width: 1130px;
    height: 1000px;
}

.item {
    display: block;
    margin-bottom: 20px;

}

.item:hover {
    cursor: pointer;
}

.selected {
   background-color : white;
}
</style>
