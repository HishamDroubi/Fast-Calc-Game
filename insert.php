<?php
include_once 'db.php';

$country=$_GET['country'];
$user=$_GET['user'];
$score=$_GET['score'];
$d="2021-3-24";

 $query="insert into records(user_name,country,record_date,score) values('$user','$country','$d' ,'$score');";

 $result=mysqli_query($conn,$query);