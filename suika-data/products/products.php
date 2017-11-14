<?php
  header("Content-Type:application/json;charset=UTF-8");
  require_once('../init.php');
  $output=[
    "desc"=>'DESC',
    "orderBy"=>'sold_count',
    "recordCount"=>0,//满足条件的总数据数量
	"pageSize"=>8,   //每页数据数量
	"pageCount"=>0,  //总页数
	"pno"=>1,        //当前页码
	"data"=>null     //数据库获取的数据
  ];
  @$kw=$_REQUEST["kw"];
  @$desc=$_REQUEST["desc"];
  @$orderBy=$_REQUEST["orderBy"];
  if($desc){
    $output["desc"]=$desc;
  }
  if($orderBy){
    $output["orderBy"]=$orderBy;
  }
  $cond='';
  if($kw){
    $kws=explode('',$kw);
	for($i=0;$i<count($kws);$i++){
	  $kws[$i]=" title like '%"+$kws[$i]+"%'";
	}
	$cond=" where ".join(" and ",$kws);
  }
  $cond.=" order by ".$output['orderBy']." ".$output['desc'];
  $sql="select count(*) from products".$cond;
  $result=mysqli_query($conn,$sql);
  $counts=mysqli_fetch_all($result,MYSQLI_ASSOC);
  //总数据数量
  $output["recordCount"]=$counts[0]["count(*)"];
  //总页数
  $output["pageCount"]=ceil($output["recordCount"]/$output["pageSize"]);
  $sql="select pid,title,price,spec,is_collect,(select img_src from product_pic where product_id=pid limit 0,1) as pic from products ".$cond;
  @$pno=$_REQUEST["pno"];
  if($pno){
    $output["pno"]=$pno;
  }
  $start=$output["pageSize"]*($output["pno"]-1);
  $sql=$sql." limit $start,".$output["pageSize"];
  $result1=mysqli_query($conn,$sql);
  //如果报错显示错误
  if (!$result1){
	printf("Error: %s\n", mysqli_error($conn));
	exit();
  }
  $rows=mysqli_fetch_all($result1,MYSQLI_ASSOC);
  $output['data']=$rows;
  echo json_encode($output);