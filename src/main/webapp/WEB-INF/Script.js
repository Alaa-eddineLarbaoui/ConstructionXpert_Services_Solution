window.addEventListener("scroll", function () {
    let navbar = document.querySelector(".navbar");
    if (window.scrollY > 150) {
        navbar.classList.add("bgadd");
    } else {
        navbar.classList.remove("bgadd");
    }
});