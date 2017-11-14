<?php
  header("Content-Type:application/json;charset=UTF-8");
  require_once("../init.php");
  $sql="SELECT * FROM index_carousel WHERE del=0";
  $result=mysqli_query($conn,$sql);
  
  if(!$result){
    echo "查询出错啦";
  }else{
   $rowList=mysqli_fetch_all($result,MYSQLI_ASSOC);
   echo json_encode($rowList);
  }
 