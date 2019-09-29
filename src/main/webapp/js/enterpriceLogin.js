/**
 * @author: zhangyh-k@glondon.com
 * @description:
 * @Date: 2019/9/19 21:06
 */

var gpm = new GlobalProvincesModule;               //城市类
gpm.def_province = ["省/市", ""];
gpm.def_city1 = ["市/地区", ""];
gpm.def_city2 = ["县/市", ""];
gpm.initProvince($('User_Shen'));
gpm.initCity1($('User_City'), gpm.getSelValue($('User_Shen')));
gpm.initCity2($('User_Town'), gpm.getSelValue($('User_Shen')), gpm.getSelValue($('User_City')));
window.onload=function(){
    jq('#footerHeight').css('marginTop','0');
    Business.form();
    jq('#jounB').bind('click',function(){
    jq('html,body').scrollTop(jq('#BusinessJoin').offset().top);

    // var scrollHandler = jq(window).data("events")['scroll'];
    // jq(window).data("events")['scroll'] = undefined;
    //about_new.js中window上的scroll会阻碍页面滚动
    // jq('html,body').animate({scrollTop: jq('#BusinessJoin').offset().top},500, function(){
    //     jq(window).data("events")['scroll'] = scrollHandler;
    // });
    });
    };
