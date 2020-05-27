document.addEventListener("DOMContentLoaded", function () {

    var nav = document.getElementById('nav');
    var navbar = document.getElementsByClassName('navbar');


function yolo() {
    var lastScrollTop = 0;
    document.addEventListener("scroll", function () { 
        var st = window.pageYOffset || document.documentElement.scrollTop;
        if (st == 0) {
            //scroll top 0
            nav.style.top = "0px"
            nav.style.backgroundColor="rgba(255, 255, 255, 0.06)";

        } else if (st > lastScrollTop) {
            // downscroll code
            nav.style.top = "-67px";
            nav.style.backgroundColor="rgba(0, 0, 0, 0.500)";
         

        } else {
            // upscroll code
            nav.style.top = "0px"
            nav.style.backgroundColor="rgba(0, 0, 0, 0.850)";
        }
        lastScrollTop = st <= 0 ? 0 : st; //  Mobile et negative scroll
    }, false);
}

yolo();


});