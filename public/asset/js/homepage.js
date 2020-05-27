document.addEventListener("DOMContentLoaded", function () {


			var article = document.getElementsByClassName('relat');
            var text = document.getElementsByClassName('text');
            var articleImg = document.getElementsByClassName('articleImg');
            var produitImg = document.getElementsByClassName('produitImg');
            var produit = document.getElementsByClassName('cardu');
          //  var produitId = document.getElementsById('cardu');
            var textProduit = document.getElementsByClassName('textProduit');
            var produitTitle = document.getElementsByClassName('produitTitle');
            var s3_1 = document.getElementsByClassName('section_3--img1')[0];
            var s3_2 = document.getElementsByClassName('section_3--img2')[0];
            var s3_3 = document.getElementsByClassName('section_3--img3')[0];
            var aTitle = document.getElementsByClassName('articleTitle');
            //		ARTCILE HOVER		//
   
            for (let i = 0; i < article.length; i++) {
            article[i].addEventListener('mouseover', function () {
            
            articleImg[i].style.filter = "brightness(0.5)";
            text[i].style.display = "flex";
     
            })

            
            article[i].addEventListener('mouseout', function () {
            text[i].style.display       = "none";
            articleImg[i].style.filter  = "brightness(1)";
            })
            };
            
            //		BOUTIQUE HOVER		//
            for (let i = 0; i < produit.length; i++) {
            produit[i].addEventListener('mouseover', function () {
            produitImg[i].style.filter   = "brightness(0.2)";
            produitTitle[i].style.filter = "brightness(0.2)";
            textProduit[i].style.display = "flex";
            
            })
            produit[i].addEventListener('mouseout', function () {
            textProduit[i].style.display    = "none";
            produitImg[i].style.filter      = "brightness(1)";
            produitTitle[i].style.filter    = "brightness(1)";
            })
            }
            
            function actualiteMoove(){
            for (let i = 0; i < article.length; i++) {
                setInterval(function(i){  
               article[i].style.right   = "0";
               aTitle[i].style.right    = "0";
            },i *200, i);
            
            } 
        }


                    actualiteMoove();
 


        function actualiteBoutique(){
            
            for (let i = 0; i < produit.length; i++) {
                setInterval(function(i){  
               produit[i].style.top ="0";
            },i *200, i);
    
            } 
        }

        $(window).scroll(function() {
            var hT = $('#scrollS3').offset().top,
                hH = $('#scrollS3').outerHeight(),
                wH = $(window).height(),
                wS = $(this).scrollTop();
                if (wS > (hT+hH-wH) && (hT > wS) && (wS+wH > hT+hH)){
                    s3_1.style.right    = "0";
                    s3_2.style.top      = "0";
                    s3_3.style.left     = "0";
                    s3_1.style.opacity  = "1";
                    s3_2.style.opacity  = "1";
                    s3_3.style.opacity  = "1";
          
            }
         });

        $(window).scroll(function() {
            var hT = $('#carduId').offset().top,
                hH = $('#carduId').outerHeight(),
                wH = $(window).height(),
                wS = $(this).scrollTop();
                if (wS > (hT+hH-wH) && (hT > wS) && (wS+wH > hT+hH)){
                    actualiteBoutique();
            }
         });

         $(window).scroll(function() {
            var hT = $('#relatId').offset().top,
                hH = $('#relatId').outerHeight(),
                wH = $(window).height(),
                wS = $(this).scrollTop();
                if (wS > (hT+hH-wH) && (hT > wS) && (wS+wH > hT+hH)){
                    actualiteMoove();
                    
            }
         });


      

            function yolo() {
                var lastScrollTop = 0;
                document.addEventListener("scroll", function () { 
                    var st = window.pageYOffset || document.documentElement.scrollTop;
                    if (st == 0) {
                        //scroll top 0
                        nav.style.backgroundColor="rgba(255, 255, 255, 0)";
                        nav.style.top = "0px"
                       
            
                    } else if (st > lastScrollTop) {
                        // downscroll code
                        nav.style.top = "-67px";
                        
                     
            
                    } else {
                        // upscroll code
                        nav.style.top = "0px"
                        nav.style.backgroundColor="rgba(0, 0, 0, 0.850)";
                    }
                    lastScrollTop = st <= 0 ? 0 : st; //  Mobile et negative scroll
                }, false);
            }

        });