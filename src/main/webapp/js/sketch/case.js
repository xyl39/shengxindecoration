/**
 * Created by Administrator on 2019/9/20.
 */

window.onload = function(){
    var oDiv = document.getElementById('div1');

    var oUl = oDiv.getElementsByTagName('ul')[0];
    var aLi = oUl.getElementsByTagName('li');
    var aA = oDiv.getElementsByTagName('a');
    var iSpeed = 1;//正左负右
    var timer = null;
    //计算ul的宽为所有li的宽的和;
    oUl.innerHTML += oUl.innerHTML+oUl.innerHTML;
    oUl.style.width = aLi[0].offsetWidth*aLi.length+'px';
    function Slider(){
        if (oUl.offsetLeft<-oUl.offsetWidth/2) {
            oUl.style.left = 0;
        }else if(oUl.offsetLeft>0){
            oUl.style.left =-oUl.offsetWidth/2+'px';
        }
        oUl.style.left = oUl.offsetLeft-iSpeed+'px';//正负为方向
    }
    timer =setInterval(Slider,30);
    aA[0].onclick = function(){
        iSpeed = 1; //控制速度的正负
    }
    aA[1].onclick = function(){
        iSpeed = -1;
    }
    oDiv.onmouseover = function(){
        clearInterval(timer);
    }
    oDiv.onmouseout = function(){
        timer =setInterval(Slider,30);
    }


};

/*var img_one = document.querySelector(".num-btn").getElementsByTagName("img")[0].src;
 console.log(img_one);
 var img_two = document.querySelector(".num-btn").getElementsByTagName("img")[1].src;
 console.log(img_two);*/

var img_one = document.querySelector(".num-btn");
img_one.onclick = function(event) {
    var node = event.target;  //获得事件 触发者 元素对象 <input type="button" value="+">
    console.log("nodeName:" + node.nodeName);
    console.log("type:" + node.getAttribute("src"));

  /* var qq = node.parentElement.parentElement.parentElement.previousElementSibling.previousElementSibling.firstElementChild.firstElementChild .src;
    console.log(qq);*/
    node.parentElement.parentElement.parentElement.previousElementSibling.previousElementSibling.firstElementChild.firstElementChild .src = node.getAttribute("src");
    node.parentElement.parentElement.parentElement.previousElementSibling.previousElementSibling.firstElementChild.firstElementChild.nextElementSibling .src = node.getAttribute("src");
    node.parentElement.parentElement.parentElement.previousElementSibling.previousElementSibling.firstElementChild.lastElementChild.previousElementSibling .src = node.getAttribute("src");
    node.parentElement.parentElement.parentElement.previousElementSibling.previousElementSibling.firstElementChild.lastElementChild .src = node.getAttribute("src");

}


/*****************************************/
var coImg = document.querySelector(".collection-img");

coImg.onclick=function(){
    var collImg = coImg.getAttribute("src");
    console.log(collImg);
    if(collImg =="../images/sketch/心形2.svg"){
        document.querySelector(".collection-img").src="../images/sketch/心形1.svg";

    }else if (collImg =="../images/sketch/心形1.svg"){
        document.querySelector(".collection-img").src="../images/sketch/心形2.svg";
    }

};