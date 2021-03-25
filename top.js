let area = document.querySelector(".best");



let users=[];

var text='';

async function getUsers() {

   await  fetch('top.php')
    .then(response => response.json())
    .then(data => {
        text="<table class='styled-table'>";
        text+="<tr class='head'>";
        text+="<td>Country</td>";
        text+="<td>User Name</td>";
        text+="<td>Score</td>";
        text+="<td>Date</td>";
        text+="</tr>";
        for(var x=0;x<data.length;x++){
            text+="<tr>";

            for (var key in data[x]){
                if(key=='country'){
                   if(data[x][key]==0)
                   text+="<td></td>";
                   else
                   {
                    text+="<td>"+'<img src="https://www.countryflags.io/'+data[x][key]+'/flat/32.png">'+'</td>';
                   }
                }
                else{
                text+="<td >"+data[x][key]+"</td>";
                }
            } 

         text+="</tr>";
        }
        text+="</table>";
        area.innerHTML=text;
        //console.log()
    });
}

getUsers();

