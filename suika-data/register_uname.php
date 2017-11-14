<?php
  header("Content-Type:application/json;charset=utf-8");
  require("init.php");
  @$uname=$_REQUEST["uname"];
  $sql="SELECT * FROM wm_user WHERE uname='$uname'";

  $result=mysqli_query($conn,$sql);
  $row=mysqli_fetch_assoc($result);
  if($row==null){
    echo '{"code":1,"msg":"通过"}';
  }else{
    echo '{"code":-1,"msg":"用户名已存在"}';
  }