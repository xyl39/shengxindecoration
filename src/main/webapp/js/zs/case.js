/*顶部导航 滚动时定位在顶部*/
var top_header_nav = document.querySelector('.top-header-nav');

function onScroll(e) {
    var origOffsetY = top_header_nav.offsetTop;//这个div距离浏览器顶部的高度
    //window.scrollY：文档当前垂直滚动的像素数
    if(window.scrollY > origOffsetY){
        top_header_nav.classList.add('fixed');
        $(".header-nav").css("opacity","1");
    }else{
        top_header_nav.classList.remove('fixed');
        document.querySelector(".header-nav").style.opacity="0.8";
    };
}
document.addEventListener('scroll', onScroll)

/*下拉菜单监听事件*/
layui.use('element', function(){
    var element = layui.element;

    //一些事件监听
    element.on('nav(demo)', function(data){
        console.log(data);
    });

});
/*效果图 下拉菜单显示*/

$("#work-picture-nav").hover(function () {
    $("#work-picture-nav a").css({"color":"#006400","font-weight":"bold"});
    $(".work-picture-item").css("display","block");
}, function () {
    $("#work-picture-nav a").css({"color":"#000000","font-weight":"normal"});
    $(".work-picture-item").css("display","none");
})

$(".work-picture-item").hover(function (){
    $("#work-picture-nav a").css({"color":"#006400","font-weight":"bold"});
    $(".work-picture-item").css("display","block");
}, function () {
    $("#work-picture-nav a").css({"color":"#000000","font-weight":"normal"});
    $(".work-picture-item").css("display","none");
})



/*装修公司 下拉菜单显示*/
$("#business-nav").hover(function () {
    $("#business-nav a").css({"color":"#006400","font-weight":"bold"});
    $(".business-item").css("display","block");
}, function () {
    $("#business-nav a").css({"color":"#000000","font-weight":"normal"});
    $(".business-item").css("display","none");
})

$(".business-item").hover(function (){
    $("#business-nav a").css({"color":"#006400","font-weight":"bold"});
    $(".business-item").css("display","block");
}, function () {
    $("#business-nav a").css({"color":"#000000","font-weight":"normal"});
    $(".business-item").css("display","none");
})

layui.use(['carousel', 'form'], function(){
    var carousel = layui.carousel
        ,form = layui.form;

    //常规轮播
    carousel.render({
        elem: '#nav-carousel'
        ,interval:'6000'
        ,width: '300px'
        ,height:'350px'
        ,indicator:'none'
        ,arrow:'hover'
        ,autoplay:'boolean'
    });
});

var $ = layui.$, active = {
    set: function(othis){
        var THIS = 'layui-bg-normal'
            ,key = othis.data('key')
            ,options = {};

        othis.css('background-color', '#5FB878').siblings().removeAttr('style');
        options[key] = othis.data('value');
        ins3.reload(options);
    }
};
/*************************************************************/
/*
var company_right = document.querySelector('.company-right');
console.log(company_right)

function oneScroll(e) {
    var origOffsetY = company_right.offsetTop;//这个div距离浏览器顶部的高度
    //window.scrollY：文档当前垂直滚动的像素数
    window.scrollY >= origOffsetY?company_right.classList.add('fixed'):company_right.classList.remove('fixed');

}*/
