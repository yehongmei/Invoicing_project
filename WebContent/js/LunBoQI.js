var i = 1;
window.onload=function () {
    var img = document.getElementById("img");
    var time = setInterval(function () {
        if (i % 3 == 1) {
            img.setAttribute("src", "images/jxc.png");
        }
        else if (i % 3 == 2) {
            img.setAttribute("src", "images/jxc1.png");
        }
        else {
            img.setAttribute("src", "images/jxc2.png");
        }
        i++;

    }, 1000);


}
/*
/!*为每个按钮添加点击事件*!/
var buttons = document.getElementsByTagName("li");
for (var i=0;i<buttons.length;i++) {
    buttons[i].onclick=function(){
        changeImg(this);
    }
}
function changeImg(button){
    /!*根据点击的按钮上的文本值判断该播放哪张图片*!/
    var imgs = document.getElementById("img");
    if(button.innerText=="1"){
        imgs.setAttribute("src", "../Images/top-img.jpg");
    }else if(button.innerText=="2"){
        imgs.setAttribute("src", "../Images/1.png");
    }else{
        imgs.setAttribute("src", "../Images/CompanyImages/nv.jpg");
    }
}
*/
