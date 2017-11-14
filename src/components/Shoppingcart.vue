<template>
   <div>
    <header id="header" class="clear">
        <div class="home lf">
            <router-link to="/index" class="fa fa-home"> 西瓜家首页</router-link>
        </div>
        <div class="user rt">
            <router-link to="/usercenter">你好 <span>琴琴</span></router-link> | <router-link to="/register">退出</router-link>
        </div>
    </header>
    <div id="cart_content">
      <div id="logo" class="clear">
        <span  class="lf">
        <router-link to="/index">
          <img src="../assets/img/header/logo.png" alt="">
        </router-link>
        &nbsp;&nbsp; 购物车</span>
        <div class="process_bar rt">
          <div class="process_step1"></div>
          <i class="process_i process_i1">
            <span>1</span>购物车
          </i>
          <i class="process_i process_i2">
            <span>2</span>确认订单
          </i>
          <i class="process_i process_i3">
            <span>3</span>支付订单
          </i>
          <i class="process_i process_i4">
            <span>4</span>完成支付
          </i>
        </div>
      </div>
    </div>
    <div class="cart-slide">
      <ul class="cart-nav clear">
        <li :class="{active:isactive[0]}" @click="changeActive(isactive[0],0,2)">
          <p>
            全部商品 <span>2</span>
          </p>
          <div class="cart-item cart-item-products">
            <table>
              <thead>
                <tr>
                  <th>
                    <input type="checkbox" id="checkedAll">
                    <label for="checkedAll">全选</label>
                  </th>
                  <th>商品信息</th>
                  <th>单价(元)</th>
                  <th>数量</th>
                  <th>小计(元)</th>
                  <th>操作</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>
                    <input type="checkbox">
                    <img src="../assets/img/products/product02.jpg" alt="">
                    <span>条纹圆领七分袖针织衫薄外套</span>
                  </td>
                  <td>
                    <p>颜色：黑色</p>
                    <p>尺寸：M</p>
                  </td>
                  <td>
                    <p style="text-decoration:line-through">84.29</p>
                    <p> <b>78.00</b></p>
                  </td>
                  <td>
                    <p>
                      <a href="javascript:;" class="fa fa-minus-square-o"></a>
                      <input type="number" min=1 style="width:30px;" placeholder="1">
                      <a href="javascript:;" class="fa fa-plus-square-o"></a>
                    </p>
                  </td>
                  <td style="color:#EE6392">
                    <b>78.00</b>
                  </td>
                  <td> <a href="javascript:;">删除</a></td>
                </tr>
                <tr>
                  <td>
                    <input type="checkbox">
                    <img src="../assets/img/products/product03.jpg" alt="">
                    <span>条纹圆领七分袖针织衫薄外套</span>
                  </td>
                  <td>
                    <p>颜色：黑色</p>
                    <p>尺寸：M</p>
                  </td>
                  <td>
                    <p style="text-decoration:line-through">129.00</p>
                    <p> <b>99.00</b></p>
                  </td>
                  <td>
                    <p>
                      <a href="javascript:;" class="fa fa-minus-square-o"></a>
                      <input type="number" min=1 style="width:30px;" placeholder="1">
                      <a href="javascript:;" class="fa fa-plus-square-o"></a>
                    </p>
                  </td>
                  <td style="color:#EE6392">
                    <b>99.00</b>
                  </td>
                  <td> <a href="javascript:;">删除</a></td>
                </tr>
                
              </tbody>
              <tfoot>
                <tr>
                  <td>
                    <input type="checkbox" id="checkAll">
                    <label for="checkAll">全选</label>
                    <a href="javascript:;">删除</a>
                  </td>
                  <td colspan=5 class="priceAll">
                    <span>共有 <i>0</i> 件商品，总计: ￥<b>70</b>元</span>
                    <button class="goToPay">去付款 > </button>
                  </td>
                </tr>
              </tfoot>
            </table>
            
          </div>
        </li>
        <li :class="{active:isactive[1]}" @click="changeActive(isactive[1],1,2)">
          <p>
            优惠券 <span>0</span>
          </p>
          <div class="cart-item cart-item-discount">
            <img src="../assets/img/171024_8ejci4aalhh4g11dbc3728891i2d4_514x294.png" alt="">
            <div class="cart-discount">
              <p>暂时还没有优惠券咯~</p>
              <span>立即领券购买>>></span>
            </div>
          </div>
        </li>
      </ul>
    </div>
    <footer id="footer">
      <myfooter></myfooter>
    </footer>
   </div>      
</template>

<script>
  import myfooter from './footer.vue' 
  export default {
      components:{myfooter},
      data:function(){
        return {
            isactive:[true,false],
            ischecked:[]
        }
      },
      methods:{
        // 查看全部购物车商品和优惠券
        changeActive:function(bol,index,len){
          if(!bol){
            this.isactive=[];
            for(var i=0;i<len;i++){
              if(i==index){
                this.isactive[index]=true;
              }else{
                this.isactive[i]=false;
              }
            }
          }
        },

      }
  }
</script>

<style>
  @import url(../assets/css/shopping-cart.css)
</style>