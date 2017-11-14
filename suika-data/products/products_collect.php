<?php
header("Content-Type:application/json;charset=UTF-8");
require_once("../init.php");
@$pid=$_REQUEST['pid'];
@$collect=$_REQUEST['isCollect'];
$sql="UPDATE products SET is_collect=$collect WHERE pid=$pid";
$result=mysqli_query($conn,$sql);
if($result){
  echo '{"code":200,"msg":"成功"}';
}else{
  echo '{"code":202,"msg":"失败"}';
}