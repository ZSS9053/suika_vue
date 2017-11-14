<?php
header("Content-Type:application/json;charset=utf-8");
require_once("init.php");
@$uname=$_REQUEST["uname"] or die ('{"code":401,"msg":"*用户名不能为空"}');
@$upwd=$_REQUEST["upwd"] or die ('{"code":402,"msg":"*密码不能为空"}');
$sql="SELECT * FROM wm_user WHERE uname='$uname' AND upwd='$upwd'";
$result=mysqli_query($conn,$sql);
if(!$result){
   echo '{"code":500,"msg":"操作语句错误"}';
}else{
	$row=mysqli_fetch_assoc($result);
	if($row==false){
		echo '{"code":201,"msg":"*登录失败，请重新登录..."}';
	}else{
		session_start();
		$_SESSION['uname']=$uname;
		echo '{"code":200,"msg":"*登录成功"}';
	}
}
