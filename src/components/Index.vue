<template>
  <div class="main">
    <header id="header">
       <myheader></myheader>
    </header>
    <div id="bread-crumb">
      <ul class="clear">
        <li @click="changeState(0)">
          <router-link :class="{active:isShow[0]}" to="/main" @click="changeState(0)">首页</router-link>
        </li>
        <li @click="changeState(1)">
          <router-link :class="{active:isShow[1]}" to="/products">所有商品</router-link>
          <b></b>
        </li>
        <li @click="changeState(2)">
          <router-link :class="{active:isShow[2]}" to="/details">新品上新</router-link>
          <b></b>
        </li>
        <li>
          <router-link to="/not">衬衫/雪纺</router-link>
          <b></b>
        </li>
        <li>
          <router-link to="/not">针织衫</router-link>
          <b></b>
        </li>
        <li>
          <router-link to="/not">当季外套</router-link>
          <b></b>
        </li>
        <li>
          <router-link to="/not">裤装</router-link>
          <b></b>
        </li>
        <li>
          <router-link to="/not">T恤</router-link>
          <b></b>
        </li>
        <li>
          <router-link to="/not">超值搭配购</router-link>
          <b></b>
        </li>
      </ul>
      <p>欢迎光临西瓜家，我们将每周一/周四10点准时上新</p>
    </div>
    <router-view ></router-view>

    <footer id="footer">
      <myfooter></myfooter>
    </footer>
  </div>
</template>

<script>
  import myheader from './header'
  import myfooter from './footer'
  export default{
    components:{myheader,myfooter},
    data:function(){
      return {
        isShow:[true,false,false],
        childRouters:['main','products','details']
      }
    },
    methods:{
      changeState(index){
        for(var i=0;i<3;i++){
          if(i==index){
            this.isShow[index]=true
          }else{
            this.isShow[i]=false;
          }
        }
      }
    },
    beforeMount:function(){
      var loca=location.hash.slice(2);
      var n=this.childRouters.indexOf(loca);
      if(n>0){
        this.changeState(n)
      }
    }
  }
</script>

<style>
  @import url(../assets/css/00_index.css)
</style>