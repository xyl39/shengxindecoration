/**
 * Created by hp on 2019/9/1.
 */


var myVar=setInterval(function(){myTimer()},1000);
function myTimer(){
    var d=new Date();
    var t=d.toLocaleTimeString();
    document.getElementById("timer").innerText=t;
}