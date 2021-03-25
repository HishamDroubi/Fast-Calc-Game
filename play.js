let area = document.querySelector(".number_area");
let box = document.querySelector(".result_field");
let submit = document.querySelector(".submit");
let level_area=document.querySelector(".level_area");
let level = 1;
let min = 1;
let max = 10;
let rounds = 5;
let sign = ['+', '-'];

let last=0;

var result = 0;
function play() {


    var count = 0;
    console.log('level ' + level);
    var interval = setInterval(() => {
        level_area.innerHTML="Level   "+level;
        var x = Math.floor(Math.random() * 10) + min;
        var s = Math.floor(Math.random() * 2);
        if(x==last)
         x++;
         last=x;
        if (s == 0)
            result += x;
        else
            result -= x;
           
           
        area.innerHTML = sign[s]+' '+x;
           
        

        count++;

        if (count == rounds) {
            setTimeout(() => {
                area.innerHTML = "";
                console.log(result);
                clearInterval(interval);
                submit.removeAttribute('disabled');
            }, 1000);
        }
    }, 1500);
}
play();

submit.addEventListener("click", () => {
    var z = box.value;
    if (z.length) {
        console.log(z);
        if (parseInt(z) == result) {
            last=0;
            level++;
            min++;
            max++;
            rounds++;
            result = 0;      
           box.value='';
      
          submit.setAttribute('disabled',true);
            play();
        }
        else {
            
           
           
            let country = localStorage.getItem('country');
            let user = localStorage.getItem('user');
            var x=new XMLHttpRequest();
            x.open('get','insert.php?user='+user+'&country='+country+'&score='+(level-1) ,true);
            x.send();
            alert("sorry your answer is wrong");
           
            window.location.replace("main.php");
           
        
        }
    }
    else
        alert("you must enter a value");

});





