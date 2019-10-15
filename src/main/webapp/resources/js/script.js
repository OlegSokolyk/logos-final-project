$(document).ready(function () {
    $('a[href*=#]').bind("click", function (e) {
        var anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: $(anchor.attr('href')).offset().top
        }, 1000);
        e.preventDefault();
    });
    return false;
});

$(document).on("scroll", function () {
    if ($(document).scrollTop() > 100) {
        $("header").removeClass("large").addClass("small");
    } else {
        $("header").removeClass("small").addClass("large");
    }
});
