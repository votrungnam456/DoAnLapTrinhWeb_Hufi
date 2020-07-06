var slideIndex = 0;
showSlides();

function plusSlides() {
    slideIndex++;
    showSlides();
}
function minusSlides() {
    slideIndex--;
    showSlides();
}

function showSlides() {
    let slides = document.getElementsByClassName("mySlides");
    let dots = document.getElementsByClassName("dot");

    if (slideIndex > slides.length) {
        slideIndex= 1;
    }
    if (slideIndex < 1) {
        slideIndex= 3;  }

    for (let i = 0; i < slides.length; i++) 
    {
        slides[i].style.display = "none";  
    }
    for (let i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";  
    dots[slideIndex-1].className += " active";
}
    setInterval(plusSlides, 5000);