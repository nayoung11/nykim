
(function ($) {
    "use strict";

$('.menu').on('click', 'a',function(e) {
	e.preventDefault();
});

$('.menu').on('click', 'li',function(eo) {

	$('.menu > ul > li').addClass('li-root');

	// Link check
    var link = null;
    var link = $('a',this).attr('href');
    if (link == null || link == '' || link == "#") {

        // CSS Reset
        $(this).closest('.menu').find('a.set').removeClass('set');
        $(this).find('.open').removeClass('open');
        $(this).closest('.li-root').siblings('.li-root').find('.open').removeClass('open');
        $(this).closest('.li-root').siblings('.li-root.open').removeClass('open');
        $(this).siblings('.open').removeClass('open');

        // Pulldown (Core)
        $('ul:first,ol:first',this).slideToggle();
        $('ul:gt(0),ol:gt(0)',this).slideUp();
        $(this).siblings().find('ul,ol').slideUp();

        // Add CSS
        $(this).closest('.li-root').find('a').addClass('set');
        $(this).toggleClass('open');
        eo.stopPropagation(); /*(10)*/

    } else {
        // Link
        location.href = link;
    };

});
})(jQuery);