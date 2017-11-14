<template>
  <div class="main">
    <header id="header">
      <myheader uName=""></myheader>
    </header>
    <div id="register-box">
      <img src="../assets/img/login/login_bg_img.png" alt=""/>
      <div id="register-form">
        <p>
          用户名
          <input type="text" id="uname" v-model.lazy="rName" :value="rName" autofocus maxlength="18"/>
          <span v-if="!isName" style="color:red">{{nameMsg}}</span>
          <span v-if="isName" style="color:green">{{nameMsg}}</span>
        </p>
        <p>
          密码
          <input type="password" id="upwd" v-model.lazy="uPwd"  maxlength="20" minlength="6"/>
          <span v-if="!isPwd"  style="color:red">{{pwdMsg}}</span>
          <span v-if="isPwd" style="color:green">{{pwdMsg}}</span>
        </p>
        <p>
          电话
          <input v-model.lazy="uPhone" type="text" id="phone"/>
          <span v-if="!isPhone"  style="color:red">{{phoneMsg}}</span>
          <span v-if="isPhone" style="color:green">{{phoneMsg}}</span>
        </p>
        <p class="clear cbx">
          <input :checked="ischecked" v-model="ischecked" type="checkbox" id="cbox" class="lf"/>
          <label for="cbox" class="lf">我已阅读并同意《服务协议》</label>
          <router-link to='/login' class="rt">已有账号？</router-link>
        </p>
        <p>
          <input type="button" id="submit" value="确认注册" @click="jumpToLogin"/>
        </p>

      </div>
    </div>
    <footer id="footer">
      <myfooter></myfooter>
    </footer>
  </div>
</template>

<script>
  import myheader from './header.vue'
  import myfooter from './footer.vue'
  export default{
    components:{myheader,myfooter},
    data:function(){
      return {
        rName:'',
        isName:false,
        nameMsg:'推荐用这个用户名，也可以另取，最长18个字节',
        uPwd:'',
        isPwd:false,
        pwdMsg:'请输入6~20字节，可包含英文、数字和_',
        uPhone:'',
        phoneMsg:'',
        isPhone:false,
        isSure:false,
        ischecked:false
      }
    },
    watch:{
      //监听用户名和密码是否符合规范
      rName:function(val){
        console.log("rName",val);
        this.$http.get('http://127.0.0.1/suika_vue/suika-data/register_uname.php?uname='+this.rName)
        .then((response)=>{
          if(response.data.code>0){
            this.isName=true;
            this.nameMsg="通过";
          }else{
            this.isName=false;
            this.nameMsg="用户名已经存在";
          }
        })
      },
      uPwd:function(val){
        console.log("uPwd",val);
        if(val.length>=6 & val.length<=20){
          console.log("通过了吧");
          this.isPwd=true;
          this.pwdMsg="通过";
        }else{
          this.isPwd=false;
          this.pwdMsg="请输入6~20字节，可包含英文、数字和_";
        }
      },
      uPhone:function(val){
        var reg=/^(\+86|0086)?\s*1[34578]\d{9}$/;
        if(reg.test(val)){
          this.isPhone=true;
          this.phoneMsg="通过";
        }else{
          this.isPhone=false;
          this.phoneMsg="手机号格式不正确";
        }
      },
      ischecked:function(val){
        console.log(val);
      }
    },
    beforeMount:function(){
      //页面加载之前随机生成
      function rName(){
        var str="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
        var randName="";
        for(var i=0;i<12;i++){
          randName+=str[parseInt(Math.random()*51)];
        }
        return randName;
      }
      this.rName=rName();
    },
    methods:{
      jumpToLogin:function(){
        //复选框被选中时注册
        if(this.ischecked){
          this.$http.get('http://127.0.0.1/suika_vue/suika-data/register.php?uame='+this.rName+'&upwd='+this.uPwd)
            .then(function(response){
              console.log(response.data);
              if(response.data.code>0){
                this.$router.push('/login');
              }
            })
        }
      }
    }
  }
</script>

<style>
  @import url(../assets/css/register.css)
</style>