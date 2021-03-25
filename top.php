<?php
 include_once 'db.php';

 $query="SELECT country,user_name,score,record_date FROM records ORDER by score DESC, record_date limit 10;";
  
 $result=mysqli_query($conn,$query);

 $final_result=array();

while($row=mysqli_fetch_assoc($result))
{
    $obj=array(
     'country'=>$row['country'],
     'user_name'=>$row['user_name'],
     'score'=>$row['score'],
     'date'=>$row['record_date']
    );
    array_push($final_result,$obj);
}
print_r(json_encode($final_result));

?>