<?php
session_start();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Main Page</title>
</head>
<body>


    <label>User Name</label>
    <input type='text' name="=user_name" class='user_name'>
    <br>
    <?php
    include_once 'countries.php';
    ?>
    
    <button class='submit' >submit</button>
    
    <br>
    
    <button class="start" onclick='window.location.href="play.html"' disabled>Let's Math</button>
    <button class="top" onclick='window.location.href="top.html"' > Top 10</button>

</body>
</html>
<script>
  
    let drop=document.querySelector(".drop");
    let user=document.querySelector(".user_name");
    let submit=document.querySelector(".submit");
    let start=document.querySelector(".start");
    submit.addEventListener('click',()=>{
        if(user.value.length==0)
         alert("you have to fill the User Name field");
         else{
        var x=drop.value
     localStorage.setItem('country',x);
     localStorage.setItem('user',user.value);
     start.removeAttribute('disabled');
     user.setAttribute('disabled',true);
         }
    
})
</script>