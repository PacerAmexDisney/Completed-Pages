/**
 * Pacer Mobile -- Tabbed Panel
 */
var mobileTabbedIsInitialized = false;

function MobileTabbedInit() {
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
        
        if (!mobileTabbedIsInitialized) {
            mobileTabbedIsInitialized = true;
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
				$newSectionInfo = '',
				$tabs = $tabAnchor.closest('.tabbedPanel').find('.ui-tabs-nav'),
                $activeTab = $tabAnchor.closest('.tabbedPanel').find('.active-tab-text'),
                $activeTabText = $tabAnchor.html(),
                $arrow = $('.tabbedPanel-bar .arrow');

            $activeTab.html($activeTabText);
			$newSectionInfo = '(Section ' + (parseInt($("#tabs").tabs("option", "active")) + 1) + ' of ' + $('.ui-tabs-nav li').length + ')';
			$('.tabSectionInfo').html($newSectionInfo);

			$tabs.slideUp();
            $arrow.toggleClass('up');
            $arrow.toggleClass('down');
			
        });

        // Bind prev & next button clicks
        $('.mover').click(function(e){
			MobileMoveButtonClick(e);
		});
	}

    /**
     * M E T H O D S
     */

	
    function injectTabbedPanelBar($tabbedPanels){
        $tabbedPanels.prepend('<div class="tabbedPanel-bar"></div>');
        $('.tabbedPanel-bar').html('<div class="active-tab-text">' + $('#tabs li:first a').html() + '</div><button class="tabbedPanel-showMore"><div class="arrow up"></div></button><div class="tabSectionInfo">(Section 1 of ' + $('#tabs div').length + ')</div>');
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
}

	function MobileMoveButtonClick(e) {
    	'use strict';
		if ($('.tabbedPanel-bar')){

			var $moverBtn = $(e.currentTarget),
				$newTabText,
				$newSectionInfo;

			$newTabText = $('.ui-tabs-nav li:eq(' + $moverBtn.attr('rel') + ' ) a').html();
			$newSectionInfo = '(Section ' + (parseInt($moverBtn.attr('rel')) + 1) + ' of ' + $('.ui-tabs-nav li').length + ')';
			$('.active-tab-text').html($newTabText);
			$('.tabSectionInfo').html($newSectionInfo);
			console.log('after: ' + $('.active-tab-text').html());			
		}
	}

$(window).resize(MobileTabbedInit);

MobileTabbedInit();