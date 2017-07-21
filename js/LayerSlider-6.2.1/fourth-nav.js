/**
 * Pacer Mobile -- Fourth-Level Navigation
 *
 * This script is a helper for Pacer's fourth-level
 * navigation system.
 */

(function() {
    'use strict';

    var $ = window.jQuery,
        userAgent = window.navigator.userAgent.toLowerCase(),
        isMobileBrowser = userAgent.indexOf('mobile') > -1;

    // If this is not a mobile browser -- goodbye
    if (!isMobileBrowser) { return; }

    /**
     * I N I T
     */

    function initialize(){
        // Bind all the things
        bindClickEvents();
        // Inject the fourth level navigation
        injectFourthLevelNav();
    }

    /**
     * E V E N T S
     */

    function bindClickEvents(){
        var $body = $('body');

        // Bind fourth-level show more button clicks
        $body.on('click', '.fourth-level-show-more', function(e){
            var $showMore = $(e.currentTarget);
            $showMore.removeClass('fourth-level-show-more').addClass('fourth-level-show-less');
            $showMore.parent().find('ul').slideDown(150);
        });

        // Bind fourth-level show less button clicks
        $body.on('click', '.fourth-level-show-less', function(e){
            var $showLess = $(e.currentTarget);
            $showLess.removeClass('fourth-level-show-less').addClass('fourth-level-show-more');
            $showLess.parent().find('ul').slideUp(150);
        });
    }

    /**
     * M E T H O D S
     */


    function injectFourthLevelNav(){
        var $quaternaryCategories = $('.fourth-level-nav'),
            $searchWrapper = $('.search-wrapper');

        if ($quaternaryCategories.length && $searchWrapper.length){
            $quaternaryCategories.each(function() {
                var $quaternaryCategory = $(this),
                    $wrappedCategory = $quaternaryCategory.wrap('<div class="fourth-level-nav-wrapper"></div>');

                $wrappedCategory.find('a').first().after('<button class="fourth-level-show-more"></button><div class="divider"></div>');
                $wrappedCategory.find('a').wrapInner('<span></span>');
                $searchWrapper.after($wrappedCategory.parent());
            });
        }
    }

    // Let's get this party poppin'.
    initialize();
}());
