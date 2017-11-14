<template>
   <div class="main">
	  <!-- 1.顶部登录注册 -->
	  <div id="login" class="clear">
		  <p class="rt">
				<img src="../assets/img/header/login.png" alt="" class="toUserCenter">
			  <router-link v-if='!uName' class="isLogin" to='/login'>登录</router-link>
			  <router-link v-if='uName' class="isLogin" to='/usercenter'>欢迎~ {{uName}}</router-link>
				<router-link v-if='!uName' to="/register"  class="isRegister">注册</router-link>
				<a href="javascript:;" v-if='uName' @click="jumpToRegister" class="isRegister">退出</a>
			</p>
		</div>
		<!-- 2.logo/搜索框 -->
		<div id="header-msg" class="clear">
		  <!-- 1.LOGO -->
			<div id="logo" class="lf">
			  <a href="index.html">
					<img src="../assets/img/header/logo.png" alt="">
				</a>
			</div>
      <div id="show-msg" class="lf">
				每周一/四 19:00
				<h2>微淘直播秀</h2>
				红包/福利/送/不/停
			</div>
			<!-- 2.搜索框 -->
			<div id="top-input" class="rt clear">
			  <div id="home-msg" class="rt">
					<h3>&nbsp;&nbsp;时·尚·潮·店</h3>
					<a href="#">
					  <img src="../assets/img/header/header-start.png" alt="">
						收藏店铺
					</a>
					<a href="#">
					  <img src="../assets/img/header/header-start.png" alt="">
						即送五元
					</a>
				</div>
				<div id="input-box" class="lf">
					<input type="search" placeholder="请输入搜索内容...">
					<a href="03_products.html" class='btn_searcha'>搜索</a>
				</div>
				
			</div>
		</div>
	</div>
</template>

<script>
  export default{
		data:function(){
			return {
				uName:''
			}
		},
		beforeMount:function(){
			//发起请求判断用户是否登录
			this.$http.get('http://127.0.0.1/suika_vue/suika-data/session_data.php')
			  .then((response)=>{
					this.uName=response.data.uname;
					console.log(response.data);
				})
		},
		mounted:function(){
			$(window).scroll(()=>{
				if($('body').scrollTop()>=60){
					$('#header-msg').addClass('fixed_header');
				}else{
					$('#header-msg').removeClass('fixed_header');
				}
      })
			//console.log(this.$refs.mySon);
		},
		methods:{
			jumpToRegister:function(){
				this.$http.get('http://127.0.0.1/suika_vue/suika-data/logout.php')
				  .then(function(data){
						if(data.data.code==200){
							this.uName="";
							this.$router.push('/register');
						}
					})
			}
		}
	}
</script>

<style>
  @import url(../assets/css/header.css)
</style>