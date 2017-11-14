<template>
   <div class="main1">
    <header id="header">
      <myheader uName=""></myheader>
    </header>
    <div id="login-box">
      <img src="../assets/img/login/login_bg_img.png" alt=""/>
      <div id="login-form">
        <p style="margin:0 auto;font-size:16px;font-weight:bold;"><a href="#">密码登录</a></p>
        <p>
          <input type="text" id="uname" placeholder="请输入手机号/邮箱/用户名" autofocus required maxlength="16" minlength="3" v-model.lazy='uname'/>
          <span>{{unameMsg}}</span>
        </p>
        <p>
          <input type="password" id="upwd" placeholder="请输入密码" required maxlength="20" minlength="6" v-model.lazy='upwd'/>
          <span>{{upwdMsg}}</span>
        </p>
        <p class="clear cbx">
          <input type="checkbox" id="cbox" class="lf"/>
          <label for="cbox" class="lf">记住密码</label>
          <a href="#" class="rt">忘记密码</a>
        </p>
        <p>
          <input type="button" id="submit" value="确定" @click='loginToIndex'/>
        </p>
        <div id="login-otherMethod">
          <p>
            -----使用其他方式直接登录-----
          </p>
          <ul class="clear">
            <li><a href="#"></a></li>
            <li><a href="#"></a></li>
            <li><a href="#"></a></li>
            <li><a href="#"></a></li>
          </ul>
        </div>
      </div>
    </div>
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
        unameMsg:'',
        upwdMsg:'',
        uname:'',
        upwd:''
      }
    },
    watch:{
      uname:function(val){
        //console.log("uname",val);
        var unameReg=/^[a-zA-Z0-9]{2,8}$/;
        if(!unameReg.test(val)){
          this.unameMsg="*用户名格式不正确，字母数字2~8位";
        }else{
          this.unameMsg="通过"
        }
      },
      upwd:function(val){
        //console.log("upwd",this);
      }
    },
    methods:{
      loginToIndex:function(){
        if(!this.uname){
         this.unameMsg="*用户名不能为空";
        }
        if(!this.upwd){
          this.upwdMsg="*密码不能为空";
        }
        this.$http.get('http://127.0.0.1/suika_vue/suika-data/login.php?uname='+this.uname+'&upwd='+this.upwd)
        .then(function(data){
          this.unameMsg=data.data.msg;
          if(data.data.code==200){
            this.$router.push('/index');
          }else{
            alert("输入不正确");
          }
        })
      }
    }
  }
</script>

<style>
  @import url(../assets/css/login.css)
  
</style>