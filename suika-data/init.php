<?php
//header("Content-Type:application/json;charset=UTF-8");
header('Access-Control-Allow-Credentials:true');
header("Access-Control-Allow-Origin:http://localhost:8080");
//header("Access-Control-Allow-Origin:*");
$conn=mysqli_connect("127.0.0.1","root","","suika_vue",3306);
mysqli_query($conn,"SET NAMES UTF8");
