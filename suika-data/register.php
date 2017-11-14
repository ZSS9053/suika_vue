<?php
  header("Content-Type:application/json;charset=utf-8");
  require("init.php");
//  session_start();
//  session_destroy();
  @$uname=$_REQUEST["uname"];
  @$upwd=$_REQUEST["upwd"];
  @$phone=$_REQUEST["phone"];
  $sql="INSERT INTO wm_user (uid,uname,upwd,phone,avatar) VALUES(NULL,'$uname','$upwd','$phone','img/avatar/default.png')";
  $result=mysqli_query($conn,$sql);
  if($result===true){
    $uid=mysqli_insert_id($conn);
    echo '{"code":1,"msg":"注册成功","uid":'.$uid.'}';
  }else{
    echo '{"code":-1,"msg":"注册失败"}';
  }