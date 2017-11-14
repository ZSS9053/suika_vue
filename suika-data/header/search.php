<?php
header("Content-Type:application/json;chatset=UTF-8");
require_once('../init.php');
@$kw=$_REQUEST['kw'];
$kws=explode(' ',$kw);
$cond='';
for($i=0;$i<count($kws);$i++){
  $kws[$i]=" title like '%".$kws[$i]."%' ";
}
$sql="SELECT title FROM products WHERE ".join(' and ',$kws)." ORDER BY sold_count DESC LIMIT 8";
$result=mysqli_query($conn,$sql);
//如果报错显示错误
  if (!$result){
	printf("Error: %s\n", mysqli_error($conn));
	exit();
  }
$rows=mysqli_fetch_all($result,MYSQLI_ASSOC);
if($rows){
  echo json_encode($rows);
}else{
  echo '获取错误';
}