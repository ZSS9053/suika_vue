<template>
  <div class="container">
    <div id="logo" class="clear">
      <div class="lf">
        <router-link to="/index">
          <img src="../assets/img/header/logo.png" alt="">
        </router-link>
        <span>西瓜账号</span>
      </div>
      <router-link href="javascript:;" class="to-login" to="/index">退出</router-link>
    </div>
    <div id="user-center">
      <div id="portal-main" class="clear">
        <div class="user-card lf">
          <div class="user-welcome rt">
            <h2 class="user-name">琴琴</h2>
            <p>下午好~</p>
            <a href="#">修改个人信息></a>
          </div>
          <img class="avatar" src="../assets/img/user_center/photo.jpg" alt="">
        </div>
        <div class="user-action rt">
          <ul class="action-list">
            <li>
              账户安全: <span class="level">普通</span>
            </li>
            <li>
              绑定手机: <span class="tel">185*****1809</span>
            </li>
            <li>
              收货地址: 
              <ul class="address">
                <li>北京市海定区</li>
              </ul>
              <a href="javascript:;">添加</a>
            </li>
            <li>
              绑定邮箱: <span class="email">6430@qq.com</span>
              <a href="#">绑定</a>
            </li>
          </ul>
        </div>
      </div>
      <ul class="info-list clear">
        <li>
          <h3>待支付的订单： <span class="num">0</span></h3>
          <a href="#">查看待支付订单 ></a>
        </li>
        <li>
          <h3>待收货的订单： <span class="num">0</span></h3>
          <a href="#">查看待收货订单 ></a>
        </li>
        <li>
          <h3>待评价商品数： <span class="num">0</span></h3>
          <a href="#">查看待评价的商品 ></a>
        </li>
        <li>
          <h3>喜欢的商品 <span class="num">0</span></h3>
          <a href="#">查看喜欢的商品 ></a>
        </li>
      </ul>
    </div>
    <footer id="footer">
      <myfooter></myfooter>
    </footer>
  </div>       
</template>

<script>
  import myfooter from './footer'
  export default {
    components:{myfooter}
  }
</script>

<style>
  @import url(../assets/css/user_center.css)
</style>