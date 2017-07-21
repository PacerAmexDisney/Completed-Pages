/**
 * Pacer Mobile -- Tabbed Panel
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
        var $tabbedPanels = $('.tabbedPanel');

        if ($tabbedPanels.length) {
            // Bind all the things
            bindClickEvents();
            // Inject bar above tabbed panel
            injectTabbedPanelBar($tabbedPanels);
            // Set active tab text
            setActiveTabText($tabbedPanels);
        }
    }

    /**
     * E V E N T S
     */

    function bindClickEvents(){
        var $body = $('body');

        // Bind show more clicks
        $body.on('click', '.tabbedPanel-showMore', function(e){
            var $tabbedPanelBtn = $(e.currentTarget),
                $tabs = $tabbedPanelBtn.closest('.tabbedPanel').find('.ui-tabs-nav'),
                $arrow = $tabbedPanelBtn.find('.arrow');

            $tabs.slideToggle(300);
            $arrow.toggleClass('up');
            $arrow.toggleClass('down');
        });

        // Bind anchor clicks
        $body.on('click', '.ui-tabs-anchor', function(e){
            var $tabAnchor = $(e.currentTarget),
                $activeTab = $tabAnchor.closest('.tabbedPanel').find('.active-tab-text'),
                $activeTabText = $tabAnchor.html();

            $activeTab.html($activeTabText);
        });

        // Bind prev & next button clicks
        $('.mover').click(function(e){
            var $moverBtn = $(e.currentTarget),
                $currentTab = $moverBtn.closest('.ui-tabs-panel'),
                $newTab = $moverBtn.hasClass('next-tab') ? $currentTab.next() : $currentTab.prev(),
                $activeTab =  $newTab.closest('.tabbedPanel').find('.active-tab-text'),
                $activeTabText = $newTab.find('h2').html();

            $activeTab.html($activeTabText);
        });
    }

    /**
     * M E T H O D S
     */

    function injectTabbedPanelBar($tabbedPanels){
        $tabbedPanels.prepend('<div class="tabbedPanel-bar"></div>');
        $('.tabbedPanel-bar').html('<div class="active-tab-text"></div><button class="tabbedPanel-showMore"><div class="arrow up"></div></button>');
    }

    function setActiveTabText($tabbedPanels){
        $tabbedPanels.each(function(){
            var $tabbedPanel = $(this),
                $activeTab = $tabbedPanel.find('.active-tab-text'),
                $activeTabText = $tabbedPanel.find('.ui-state-active a').html();

            $activeTab.html($activeTabText);
        });
    }

    // Let's get this party jumpin'.
    initialize();
}());
