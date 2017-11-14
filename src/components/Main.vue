<template>
  <div>
    <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval=3000>
      <!-- 轮播（Carousel）指标 -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" v-for="(bannerImg,index) in bannerImgs" :data-slide-to="index"  :class="{active:index==0}"></li>
      </ol>   
      <!-- 轮播（Carousel）项目 -->
      <div class="carousel-inner">
          
        <div class="item" v-for="(bannerImg,index) in bannerImgs" :class="{active:index==0}">
          <img :src="require('../assets/'+bannerImg.img)"/>
        </div>
      </div>
      <!-- 轮播（Carousel）导航 -->
      <a class="carousel-control left" href="#myCarousel"  data-slide="prev"> &lt;</a>
      <a class="carousel-control right" href="#myCarousel"  data-slide="next"> &gt;</a>
    </div>
    <p>
      <img src="../assets/img/index/wave_bg01.png" alt=""/>
    </p>
    <div id="onSaleBox">
      <p>全场满179元或三件包邮</p>
      <ul class="clear">
        <li>
          <div class="onSaleLf">
            <p>
              <i></i>
              RMB
              <i></i>
            </p>
            <div class="onSaleDetails">
              <b>5</b>
              <p>&times;</p>
              <span>满99元使用</span>
            </div>
          </div>
          <p>
            <a href="#">立即领取</a>
          </p>
        </li>
        <li>
          <div class="onSaleLf">
            <p>
              <i></i>
              RMB
              <i></i>
            </p>
            <div class="onSaleDetails">
              <b>10</b>
              <p>&times;</p>
              <span>满169元使用</span>
            </div>
          </div>
          <p>
            <a href="#">立即领取</a>
          </p>
        </li>
        <li>
          <div class="onSaleLf">
            <p>
              <i></i>
              RMB
              <i></i>
            </p>
            <div class="onSaleDetails">
              <b>20</b>
              <p>&times;</p>
              <span>满269元使用</span>
            </div>
          </div>
          <p>
            <a href="#">立即领取</a>
          </p>
        </li>
        <li>
          <div class="onSaleLf">
            <p>
              <i></i>
              RMB
              <i></i>
            </p>
            <div class="onSaleDetails">
              <b>30</b>
              <p>&times;</p>
              <span>满369元使用</span>
            </div>
          </div>
          <p>
            <a href="#">立即领取</a>
          </p>
        </li>
      </ul>
    </div>
    <div class="updateBox clear">
      <div class="update-nav">
        6/15 20:00上新
        <img src="../assets/img/index/semicycle_icon03.png" alt=""/>
      </div>
      <div class="update-img update-img-two rt ">
        <img src="../assets/img/index/update_img02.png" alt=""/>
        <div class="ud-box">
          <div class="rt ud-n">
            <h2>会员中心</h2>
            <p>快来领取~</p>
            <img src="../assets/img/index/gift_icon01.png" alt=""/>
          </div>
          <div class="ud-border" >
            <div>
              <a href="#"  class="up-icon up-icon-match">超值搭配购></a>
            </div>
          </div>
        </div>
        <a href="#"  class="up-icon up-icon-top">TOP热搜榜</a>
      </div>
      <div class="update-img update-img-one lf">
        <img src="../assets/img/index/update_img01.png" alt=""/>
        <div class="update-img-icon">
          <span>每周一/周四</span>
          <p>准时上新</p>
        </div>
        <a href="#" class="up-icon up-icon-new">新品大合集</a>
      </div>
    </div>
    <p>
      <img src="../assets/img/index/wave_bg01.png" alt=""/>
    </p>
    <div class="enterBox">
      <p>
        <i></i>
        <span>店铺明星 必备榜单</span>
        <i></i>
      </p>
      <h3>QUICK ENTER</h3>
      <span>类目快捷导航</span>
      <ul class="clear">
        <li>
          <img src="../assets/img/index/quickEnter01.jpg" alt=""/>
          <div>
            <b> > </b>
            <p>T恤/打底衫</p>
            <span>印在T恤上的自我</span>
          </div>
        </li>
        <li>
          <img src="../assets/img/index/quickEnter02.jpg" alt=""/>
          <div>
            <b> > </b>
            <p>蕾丝雪纺</p>
            <span>做淑女气质的小仙女</span>
          </div>
        </li>
        <li>
          <img src="../assets/img/index/quickEnter05.jpg" alt=""/>
          <div>
            <b> > </b>
            <p>连衣裙</p>
            <span>绽放夏日自我</span>
          </div>
        </li>
        <li>
          <img src="../assets/img/index/quickEnter04.jpg" alt=""/>
          <div>
            <b> > </b>
            <p>半身裙</p>
            <span>展现你的性感魅力</span>
          </div>
        </li>
        <li>
          <img src="../assets/img/index/quickEnter01.jpg" alt=""/>
          <div>
            <b> > </b>
            <p>百搭裤装</p>
            <span>自由行走独一无二</span>
          </div>
        </li>
        <li>
          <img src="../assets/img/index/quickEnter02.jpg" alt=""/>
          <div>
            <b> > </b>
            <p>防晒衫</p>
            <span>不要被晒嘿嘿哦~</span>
          </div>
        </li>
        <li>
          <img src="../assets/img/index/quickEnter05.jpg" alt=""/>
          <div>
            <b> > </b>
            <p>休闲衬衫</p>
            <span>淑女气质性感魅力</span>
          </div>
        </li>
        <li>
          <img src="../assets/img/index/quickEnter04.jpg" alt=""/>
          <div>
            <b> > </b>
            <p>时尚女鞋</p>
            <span>百搭时尚百搭风格</span>
          </div>
        </li>
      </ul>
    </div>
    <div class="newFashion">
      <img src="../assets/img/index/middle_banner01.jpg" alt=""/>
      <div class="fashion-content">
        <h2>FASHION</h2>
        <p>BRIGHT SUNSHINE INTO THE NATURE OF ENJOYMENT OF A BETTER LIFE</p>
        <div class="fashion-two rt">
          <img src="../assets/img/index/fashion_img02.jpg" alt="" class="img-one"/>
          <img src="../assets/img/index/fashion_img02_sm.jpg" alt="" class="img-two"/>
        </div>
        <div class="fashion-one">
          <img src="../assets/img/index/fashion_img01.jpg" alt="" />
        </div>
        <div class="fashion-three">
          <img src="../assets/img/index/fashion_img03.jpg" alt=""/>
          <div class="fa-msg">
            <h2>RMB <b>64</b> <a>NEW</a></h2>
          </div>
        </div>
        <ul>
          <li>
            <div class="fa-item">
              <img src="../assets/img/index/fashion_img04.jpg" alt=""/>
              <div class="fa-msg">
                <h2>RMB <b>164</b> <a>NEW</a></h2>
              </div>
            </div>
          </li>
          <li>
            <div class="fa-item">
              <img src="../assets/img/index/fashion_img05.jpg" alt=""/>
              <div class="fa-msg">
                <h2>RMB <b>125</b> <a>NEW</a></h2>
              </div>
            </div>
          </li>
          <li>
            <div class="fa-item">
              <img src="../assets/img/index/fashion_img06.jpg" alt=""/>
              <div class="fa-msg">
                <h2>RMB <b>72</b> <a>NEW</a></h2>
              </div>
            </div>
          </li>
          <li>
            <div class="fa-item">
              <img src="../assets/img/index/fashion_img04.jpg" alt=""/>
              <div class="fa-msg">
                <h2>RMB <b>164</b> <a>NEW</a></h2>
              </div>
            </div>
          </li>
          <li>
            <div class="fa-item">
              <img src="../assets/img/index/fashion_img05.jpg" alt=""/>
              <div class="fa-msg">
                <h2>RMB <b>125</b> <a>NEW</a></h2>
              </div>
            </div>
          </li>
          <li>
            <div class="fa-item">
              <img src="../assets/img/index/fashion_img06.jpg" alt=""/>
              <div class="fa-msg">
                <h2>RMB <b>72</b> <a>NEW</a></h2>
              </div>
            </div>
          </li>
        </ul>
        <div class="fashion-four">
          <img src="../assets/img/index/newArrival_img01_lg.jpg" alt="" class="rt"/>
          <div class="fa-four">
            <p>
              2017 <span>06/12</span><i></i> <b>ARRIVAL</b>
            </p>
            <img src="../assets/img/index/newArrival_img01_sm.jpg" alt=""/>
            <div class="fa-msg">
              <h2>RMB <b>145</b> <a>NEW</a></h2>
              <img src="../assets/img/index/icon01.jpg" alt=""/>
            </div>
          </div>
        </div>
        <ul class="fa-img-item">
          <li>
            <div class="fa-item">
              <img src="../assets/img/index/newArrival_img06_md.jpg" alt=""/>
              <div class="fa-msg">
                <h2>RMB <b>165</b> <a>NEW</a></h2>
              </div>
            </div>
          </li>
          <li>
            <div class="fa-item">
              <img src="../assets/img/index/newArrival_img02_md.jpg" alt=""/>
              <div class="fa-msg">
                <h2>RMB <b>112</b> <a>NEW</a></h2>
              </div>
            </div>
          </li>
          <li>
            <div class="fa-item">
              <img src="../assets/img/index/newArrival_img03_md.jpg" alt=""/>
              <div class="fa-msg">
                <h2>RMB <b>65</b> <a>NEW</a></h2>
              </div>
            </div>
          </li>
          <li>
            <div class="fa-item">
              <img src="../assets/img/index/newArrival_img04_md.jpg" alt=""/>
              <div class="fa-msg">
                <h2>RMB <b>108</b> <a>NEW</a></h2>
              </div>
            </div>
          </li>
          <li>
            <div class="fa-item">
              <img src="../assets/img/index/newArrival_img05_md.jpg" alt=""/>
              <div class="fa-msg">
                <h2>RMB <b>120</b> <a>NEW</a></h2>
              </div>
            </div>
          </li>
          <li>
            <div class="fa-item">
              <img src="../assets/img/index/newArrival_img06_md.jpg" alt=""/>
              <div class="fa-msg">
                <h2>RMB <b>102</b> <a>NEW</a></h2>
              </div>
            </div>
          </li>
        </ul>
      </div>
    </div>
    <div class="content-footer">
      <img src="../assets/img/index/logo01.jpg" alt=""/>
      <p>
        <a href="#">返回首页 <i class="fa fa-home"></i></a>
        <a href="03_products.html">所有宝贝 <i class="fa fa-th-large"></i></a>
      </p>
    </div>
    <!--固定导航条-->
    <div id="fixedBox" style="width:60px">
      <ul>
        <li><a href="shopping_cart.html" class="fa fa-cart-arrow-down"></a>购物车</li>
        <li><a href="javascript:;" class="fa fa-user-o"></a>会员中心</li>
        <li><a href="#" class="fa fa-comments-o"></a>在线客服</li>
        <li><a href="#" class="fa fa-wechat"></a>微信客服</li>
        <li><a href="#" class="fa fa-chevron-up"></a></li>
      </ul>
    </div>
  </div>
</template>

<script>
  export default{
    data:function(){
      return {
        bannerImgs:[]
      }
    },
    beforeMount:function(){
      //页面右侧固定导航
      window.onscroll=function(){
        if(document.body.scrollTop>=700){
          $("#fixedBox").css("left","10px");
        }else{
          $("#fixedBox").css("left","-80px");
        }
      }
      //banner图片动态请求
      this.$http.get('http://127.0.0.1/suika_vue/suika-data/index/banners.php')
        .then(function(data){
          this.bannerImgs=data.data;
          console.log(data.data);
        })
    }

  }
</script>

<style>

</style>