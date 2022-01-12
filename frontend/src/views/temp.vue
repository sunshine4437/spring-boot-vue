<template>
  <div>
      {{msg}}
  </div>
</template>

<script>
import axios from 'axios'
export default {
    data(){
        return{
            msg:"",
        }
    },
    methods:{
        getTest(){
            const id = this.$route.params.id;
            axios.get(`/api/main/temp/${id}`).then(res => this.msg = res.data);
            // console.log(id)
        }
    },
    mounted(){
        this.getTest()
    }
}
</script>

<style>

</style>