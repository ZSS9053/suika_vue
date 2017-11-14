<template>
  <div>
    <div class="detail-container">
      <p class="detail-nav">新品上新 > 畅销单品 > 针织衫 > 条纹圆领七分袖针织衫薄外套 </p>
      <div class="detail-content clear">
        <ul class="product-lf lf">
          <li v-for="lists in imgLists">
            <img :src="require('../assets/'+lists)" alt="" @click="changeLgImg(lists)"/>
          </li>
          
        </ul>
        <img class="lf" :src="require('../assets/'+imgLg)" alt=""/>
        <div class="product-details lf">
          <h1>条纹圆领七分袖针织衫薄外套</h1>
          <p>
            <b>79.00元</b>
            <img src="../assets/img/details/p-value.jpg" alt=""/>2.29
          </p>
          <span><b>颜色 </b>:蓝灰</span>
          <ul class="clear chose-color">
            <li></li>
            <li></li>
          </ul>
          <table>
            <tr>
              <td>尺寸</td>
              <td colspan="3">请以实际测量尺寸为准</td>
            </tr>
            <tr class="chose-size">
              <td>S</td>
              <td>M</td>
              <td>L</td>
              <td>XL</td>
            </tr>
          </table>
          <p class="text-dot">
            西瓜家的商品尺码无误差，购买前请参照实际尺寸对照表
          </p>
          <div class="product-count">
            <p>
              <button class="rt">加入购物车</button>
              数量：<input type="number" min="1" placeholder="1"/>
            </p>
            <div class="add-order">
              <a href="#"><i class="fa fa-heart"></i>加入心愿清单</a><br/><br/>
              <span>满200元免运费(港澳台除外)</span>
            </div>
          </div>
          <div class="product-details-box">
            <ul>
              <li>
                <a href="#">商品详情</a>
                <hr/>
              </li>
              <li>
                <a href="#">西瓜家</a>
                <div>
                  纯色长袖连衣裙，一字肩，褶皱设计，胸前镂空系带设计，松紧腰围，前短后长郁金香下摆，质地轻盈
                  <p>细节:</p>
                  <ul>
                    <li>
                      -面料：100%聚酯纤维
                    </li>
                    <li>
                      -冷水手洗
                    </li>
                    <li>
                      -模特信息:身高172cm，身穿尺码S
                    </li>
                  </ul>
                  Forever21 Contemporary的尺码偏大，比Forever21的标准尺码要大一码，建议您选购Forever21 Contemporary的服装时小一号尺码。
                </div>
              </li>
              <li>
                <a href="#">商品真实尺寸</a>
                <table>
                  <tr>
                    <td>标准</td>
                    <td>S</td>
                    <td>M</td>
                    <td>L</td>
                    <td>XL</td>
                  </tr>
                  <tr>
                    <td>袖长</td>
                    <td>53</td>
                    <td>54</td>
                    <td>55</td>
                    <td>56</td>
                  </tr>
                  <tr>
                    <td>袖围</td>
                    <td>30</td>
                    <td>30</td>
                    <td>32</td>
                    <td>32</td>
                  </tr>
                  <tr>
                    <td>胸围</td>
                    <td>66</td>
                    <td>72</td>
                    <td>76</td>
                    <td>82</td>
                  </tr>
                  <tr>
                  <td>腰围</td>
                  <td>60</td>
                  <td>64</td>
                  <td>70</td>
                  <td>74</td>
                  </tr>
                  <tr>
                    <td>衣长</td>
                    <td>120</td>
                    <td>121</td>
                    <td>122</td>
                    <td>125</td>
                  </tr>
                </table>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <div class="other-products">
      <div class="near-browser">
        <p class="look-item">最近查看 <i></i></p>
        <ul class="look-imgs">
          <li>
            <img src="../assets/img/details/product-search-sm-01img.jpg" alt=""/>
          </li>
          <li>
            <img src="../assets/img/details/product-search-sm-02img.jpg" alt=""/>
          </li>
          <li>
            <img src="../assets/img/details/product-search-sm-03img.jpg" alt=""/>
          </li>
          <li>
            <img src="../assets/img/details/product-search-sm-04img.jpg" alt=""/>
          </li>
          <li>
            <img src="../assets/img/details/product-search-sm-05img.jpg" alt=""/>
          </li>
          <li>
            <img src="../assets/img/details/product-search-sm-04img.jpg" alt=""/>
          </li>
          <li>
            <img src="../assets/img/details/product-search-sm-05img.jpg" alt=""/>
          </li>
        </ul>
        <div class="over-item fa fa-chevron-right"></div>
      </div>
      <div class="refer-products">
        <p class="look-item">购买推荐 <i></i></p>
        <ul class="look-imgs clear">
          <li>
            <img src="../assets/img/details/product-recommended-sm-01img.jpg" alt=""/>
          </li>
          <li>
            <img src="../assets/img/details/product-recommended-sm-02img.jpg" alt=""/>
          </li>
          <li>
            <img src="../assets/img/details/product-recommended-sm-03img.jpg" alt=""/>
          </li>
          <li>
            <img src="../assets/img/details/product-recommended-sm-04img.jpg" alt=""/>
          </li>
          <li>
            <img src="../assets/img/details/product-recommended-sm-05img.jpg" alt=""/>
          </li>
          <li>
            <img src="../assets/img/details/product-recommended-sm-01img.jpg" alt=""/>
          </li>
          <li>
            <img src="../assets/img/details/product-recommended-sm-02img.jpg" alt=""/>
          </li>
        </ul>
        <div class="over-item fa fa-chevron-right"></div>
      </div>
    </div>
  </div>
</template>

<script>
  export default{
    data:function(){
      return {
        imgLists:[
          'img/details/product-lg-left-01img.jpg',
          'img/details/product-sm-left-01img.jpg',
          'img/details/product-sm-left-02img.jpg',
          'img/details/product-sm-left-03img.jpg'
        ],
        imgLg:'img/details/product-lg-left-01img.jpg'
      }
    },
    methods:{
      changeLgImg(url){
        this.imgLg=url;
      }
    }
  }
</script>

<style>
  @import url(../assets/css/details.css)
</style>