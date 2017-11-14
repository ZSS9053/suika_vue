<template>
  <div>
    <div id="banner">
     <img src="../assets/img/products/banners/banner06.jpg" alt=""/>
    </div>
    <div id="products_list">
      <div class="nav">
        <ul class="clear">
          <li>
            <a href="#">推荐列表</a>
            <b class="fa fa-sort-asc"></b>
          </li>
          <li>FILTER BY</li>
          <li class="searchByPrice" @mouseenter="msenter" @mouseleave="msleave">
            <a href="#">按价格</a>
            <b class="fa fa-sort-asc"></b>
						<div class="search_way" v-if="isenter">
						  <p data-search='desc' @click="loadByPage(1,'price','desc')">从高到低</p>
						  <p data-search='asc' @click="loadByPage(1,'price','asc')">从低到高</p>
						</div>
          </li>
          <li>
            <a href="#">SIZE</a>
            <b class="fa fa-sort-asc"></b>
          </li>
        </ul>
      </div>
      <ul class="show_list">
        <li v-for="(lists,index) in productsList.data" @mouseenter="showCart(true,index)" @mouseleave="showCart(false,index)" :class="{hover:isHover[index]}">
          <router-link to="/details"><img :src="require('../assets/'+lists.pic)" alt=""/></router-link>
          <p>
            <span>{{lists.title}}</span>
            <a @click="collectProduct(index,lists.pid,lists.is_collect)" :data-collect="lists.pid" class="fa" :class="{'fa-heart-o':lists.is_collect==0,'fa-heart':lists.is_collect!=0}"
            ></a>
            <b>{{lists.price}}元</b>
          </p>
          <i><a :style="'background:'+lists.spec"></a></i>
          <i><a></a></i>
          <div class='hover-img'>
            加入购物车
          </div>
        </li>
      </ul>
      <!--页码-->
      <ul class="page clear">
        <li @click="jumpToNextPage(productsList.pno,false)">上一页</li>
        <li v-for="page of productsList.pageCount" :class="{'active':productsList.pno==page}" @click="loadByPage(page,'sold_count')">{{page}}</li>
        <li @click="jumpToNextPage(productsList.pno,true)">下一页</li>
      </ul>
    </div>
    <!--固定导航条-->
    <div id="fixedBox" style="width:60px">
      <ul>
        <li title="购物车"><router-link to="/shoppingcart" class="fa fa-cart-arrow-down"></router-link></li>
        <li title="用户中心"><router-link to="/usercenter" class="fa fa-user-o"></router-link></li>
        <li title="在线客服"><a href="javascript:;" class="fa fa-comments-o"></a></li>
        <li><a href="#" class="fa fa-chevron-up"></a></li>
      </ul>
    </div>      
  </div>
</template>

<script>
  export default{
    data:function(){
      return {
        pno:1,
        orderBy:'',
        desc:'',
        productsList:[],
        isenter:false,
        isHover:[]
      }
    },
    beforeMount:function(){
      //挂载前加载产品数据
      this.loadByPage(1);
    },
    methods:{
      loadByPage(n,orderBy='sold_count',desc='DESC'){
        this.$http.get('http://127.0.0.1/suika_vue/suika-data/products/products.php?pno='+n+'&orderBy='+orderBy+'&desc='+desc)
        .then((res)=>{
          this.productsList=res.data;
          var len=res.data.data.length;
          for(var i=0;i<len;i++){
            this.isHover[i]=false;
          }
          console.log(this.isHover);
        })
      },
      msenter:function(){
        this.isenter=true;
      },
      msleave:function(){
        this.isenter=false;
      },
      jumpToNextPage(page,isNext){
        //true 进入下一页
        if(isNext){
          if(page<this.productsList.pageCount){
            this.loadByPage(parseInt(page)+1);
          }
        //false 进入上一页
        }else{
          if(page>1){
            this.loadByPage(parseInt(page)-1);
          }
        }
      },
      collectProduct(index,id,msg){
        if(msg==1){
          msg=0;
        }else{
          msg=1;
        }
        this.$http.get('http://127.0.0.1/suika_vue/suika-data/products/products_collect.php?pid='+id+'&isCollect='+msg)
         .then((res)=>{
           //location.reload();
           if(res.data.code==200){
              (this.productsList.data)[index].is_collect=msg;
           }
         })
      },
      showCart(bol,index){
        //this.isHover=[];
        var len=this.isHover.length;
        //鼠标进入
        if(bol){ 
          this.isHover=[];
          for(var i=0;i<len;i++){
            if(i==index){
              this.isHover[index]=true;
            }else{
              this.isHover[i]=false;
            }
          }
        //鼠标移出
        }else{
          this.isHover=[];
          for(var i=0;i<len;i++){
            this.isHover[i]=false;
          }
        }
      }
    }
  }
</script>

<style>
  @import url(../assets/css/products.css)
</style>