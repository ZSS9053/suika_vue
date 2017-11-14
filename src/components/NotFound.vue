<template>
  <div class="center">
    <img src="../assets/img/404/404_img1.png">
    <p>抱歉，您的页面暂时不存在...</p>
    <br/>
    <h3>{{num}}秒后跳转到前一页...</h3>
  </div>
</template>

<script>
  import myheader from './header'
  import myfooter from './footer'
  export default{
    components:{myheader,myfooter},
    data:function(){
      return {
        num:5
      }
    },
    mounted:function(){
      console.log(this.num);
      var timer=setInterval(()=>{
        console.log(this.num);
        this.num--;
        if(this.num<=1){
          clearInterval(timer);
          this.timer=null;
          this.$router.back();
        }
      },1000)
    }
  }
</script>

<style>
  
</style>