/**
 * Pacer Mobile -- Global Navigation
 *
 * This script is a helper for Pacer's global navigation system
 * across mobile devices.
 */
var mobileIsInitialized = false;

function MobileNavInit() {
    'use strict';
	
	
    var $ = window.jQuery,
        userAgent = window.navigator.userAgent.toLowerCase(),
        isMobileBrowser = userAgent.indexOf('mobile') > -1 || $(window).width() <= 750;

    // If this is not a mobile browser -- goodbye
    if (!isMobileBrowser) { return; }

    /**
     * I N I T
     */

    function initialize(){
		if (!mobileIsInitialized){
		mobileIsInitialized = true;
		$(window).off("resize", MobileNavInit);
        // Bind all the things
        bindClickEvents();
        // Add navigation level classes
        addNavClasses();
        // Create donate and newsletter categories
        addDonateAndNewsletter();
        // Inject social icons into nav and footer
        injectSocialIcons();
        // Inject the search form
        injectSearchForm();
        // Inject the third level navigation
        injectThirdLevelNav();		
		}
    }

    /**
     * E V E N T S
     */

    function bindClickEvents(){
        var $body = $('body');

        // Bind first-level category button clicks
        $body.on('click', '.first-level-nav-btn', function(e){
            if ($(e.currentTarget).hasClass('show-more')){
                var $showLessBtn = $('.show-less.first-level-nav-btn');
                if ($showLessBtn.length) {
                    handleShowAction($showLessBtn);
                }
            }
            handleShowAction($(e.currentTarget));
        });

        // Bind second-level category button clicks
        $body.on('click', '.second-level-nav-btn', function(e){
            handleShowAction($(e.currentTarget));
        });

        // Bind menu button clicks
        $body.on('click', '.menu-button', function(e){
            $('#nav, #navWrap').slideToggle(300);
            $('#nav button, #navWrap button').fadeToggle(250);
        });
    }

    /**
     * M E T H O D S
     */

    function handleShowAction($navBtn){
        if ($navBtn.hasClass('show-more')) {
            $navBtn.siblings('ul').slideDown(150);
            $navBtn.removeClass('show-more').addClass('show-less').html('-');
        } else {
            $navBtn.siblings('ul').slideUp(150);
            $navBtn.removeClass('show-less').addClass('show-more').html('+');
        }
    }

    function addNavClasses(){
        var $primaryCategory = $('.first-level-nav'),
            $primaryWithSecondary = $primaryCategory.length && $primaryCategory.has('ul');

        if ($primaryWithSecondary.length){
            $('.first-level-nav ul li').addClass('second-level-nav');
            addShowMoreBtn($primaryWithSecondary, true, 'first-level-nav-btn');
        }
    }

    function addDonateAndNewsletter(){
        var $donate = $('.header-donate'),
            $newsletter = $('.header-newsletter');

        if ($donate.length){
            addToNav($donate.html('<span>donate</span>'), 'first-level-nav', false);
        }
        if ($newsletter.length){
            addToNav($newsletter.html('<span>newsletter</span>'), 'first-level-nav', false);
        }
    }

    function injectSocialIcons(){
        var $footer = $('.has-footer-social'),
            $icons = $('.socialButton').empty(),
            $wrappedIcons;

        if ($footer.length && $icons.length){
            $icons.wrapAll('<div class="social-elements"></div>');
            $wrappedIcons = $icons.parent();

            // Add to nav
            addToNav($wrappedIcons, 'social-list');

            // Add to footer
            $footer.append($wrappedIcons.clone());
        }
    }

    function injectThirdLevelNav(){
        //alert('3rd Level');
        var $tertiaryCategories,
			$nav = $('.global-nav'),
			$thirdLevelNavFile = "/templates/third-level-nav-master.asp",
			$currentURL = window.location.pathname;
		$nav.find('br').replaceWith(' ');
		
		if ($currentURL.match("^/bullying")) {
			$thirdLevelNavFile = "/bullying/templates/third-level-nav-master.asp";
			}
		if ($currentURL.match("^/transition")) {
			$thirdLevelNavFile = "/transition/templates/third-level-nav-master.asp";
			}

		$.get($thirdLevelNavFile, function (data) {
  			$tertiaryCategories = $(data).find('.third-level-nav, .submenu');
			$tertiaryCategories.find('br').replaceWith(' ');
			
			if ($tertiaryCategories.length && $nav.length){
				 $tertiaryCategories.each(function() {
					var $tertiaryCategory = $(this),
						tertiaryCategoryData = $tertiaryCategory.data('third-level-nav'),
						$secondaryCategory = $nav.find('[data-third-level-nav="' + tertiaryCategoryData + '"]');

					$tertiaryCategory.find('a').wrapInner('<span></span>');
					$secondaryCategory.append($tertiaryCategory);

					addShowMoreBtn($secondaryCategory, true, 'second-level-nav-btn');
				});
			}
		});
    }

    function addToNav($content, className, prepend){
        var $newContent = $content.wrap('<li></li>').parent(),
            $nav = $('.global-nav');

        if (className){
            $newContent.addClass(className);
        }

        if (prepend){
            $nav.prepend($newContent);
        } else {
            $nav.append($newContent);
        }
    }

    function addShowMoreBtn($element, showMore, extraClass){
        var buttonClass = showMore ? 'show-more' : 'show-less',
            buttonConent = showMore ? '+' : '-';

        $element.prepend('<button class="' + buttonClass + '">' + buttonConent + '</button>');

        if (extraClass) {
            $element.find('button').addClass(extraClass);
        }
    }

    function injectSearchForm(){
        var $hasSearch = $('.has-search');

        if ($hasSearch.length){
            var $searchForm = $('#cse-search-box'),
                $searchSubmit = $('.search-submit');

            $hasSearch.after($searchForm);
            $searchForm.wrap('<div class="search-wrapper"></div>');
            $searchSubmit.val('');
        }
    }

    // Let's get this party started.
    initialize();
}

//alert('initialize mobile');

$(window).resize(MobileNavInit);

MobileNavInit();
