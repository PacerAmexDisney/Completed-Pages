<?php
require_once $_SERVER['DOCUMENT_ROOT'] . '/php-sdk/facebook.php';

function PrintFBWallFeed($fbUrl,$fbAccountName, $cacheString) {


$FBFEED = wincache_ucache_get($cacheString, $success);
if (!$success) {

$config = array();
$config['appId'] = '184017601783901';
$config['secret'] = '9f8dc11a545cbc94ca6b71b2b90cad40';

$fb = new Facebook($config);

$FBFEED = $fb->api($fbUrl);
wincache_ucache_add($cacheString, $FBFEED, 300);
}

function addHrefToLinks($s) {
    return preg_replace('/https?:\/\/[\w\-\.!~#?&=+\*\'"(),\/]+/','<a href="$0" target="_blank">$0</a>',$s);
}


function HasAllData($postinfo){
	$hasdata = TRUE;
//	if (!array_key_exists('message', $postinfo)){
//		$hasdata = FALSE;
//	} else {
//		$var1 = $postinfo['message'];
//		if (empty($var1)){
//			$hasdata = FALSE;
//		}
//	}
	if (!array_key_exists('link', $postinfo)){
		$hasdata = FALSE;
	} else {
		$var2 = $postinfo['link'];
		if (empty($var2)){
			$hasdata = FALSE;
		}
	}
//	if (!array_key_exists('description', $postinfo)){
//		$hasdata = FALSE;
//	} else {
//		$var = $postinfo['description'];
//		if (empty($var)){
//			$hasdata = FALSE;
//		}
//	}
	if (!array_key_exists('name', $postinfo)){
		$hasdata = FALSE;
	} else {
		$var3 = $postinfo['name'];
		if (empty($var3)){
			$hasdata = FALSE;
		}
	}
	return $hasdata;
}

//echo '<p>Cached version: ' . $success . '</p>';

foreach ($FBFEED['data']  as $fbpost){
	if ($fbpost['from']['name'] == $fbAccountName){
		if (($fbpost['type'] == "link" || $fbpost['type'] == "photo") && HasAllData($fbpost)) {
?>
	<div class="fbpostwrapper">
		<div class="fbheader">
			<div class="fbname">
				<div class="fbdate">Posted: <?php echo date('F d', strtotime($fbpost['created_time']));?></div>
			</div>
		</div>
		<?php if (array_key_exists('message', $fbpost)){?>
        <div class="fbmessage">News Post:<br />
         <?php 
		 	$theMessage = $fbpost['message'];
			$theMessage = str_replace($fbpost['link'], '', $theMessage);
			$theMessage = addHrefToLinks($theMessage);
			echo $theMessage;
		  ?> </div>
		<?php } else {?>
        <div class="fbmessage">Shared Link:</div>
        <?php }?>
        <div class="fblinkinfo">
			<?php if (array_key_exists('picture', $fbpost)){?>
			<div class="fblinkimage"> <a href="<?php echo $fbpost['link'];?>" target="_blank" rel="nofollow"><img src="<?php echo $fbpost['picture'];?>" alt=""></a> </div>
			<?php }?>
			<div class="fblinkheader"><a href="<?php echo $fbpost['link'];?>" target="_blank" rel="nofollow">
																				<?php 
																					if (substr($fbpost['link'], -4) == ".pdf") {
																						echo "View the pdf from - ";
																					}
																					echo $fbpost['name'];?></a></div>
			<?php if (array_key_exists('caption', $fbpost)){?>
				<div class="fblinkcaption"><?php echo $fbpost['caption'];?></div>
			<?php }?>
			<?php if (array_key_exists('description', $fbpost)){?>
            	<div class="fblinkstory"> <?php echo $fbpost['description'];?> </div>
			<?php }?>
            
            
            <div class="clearfloat">&nbsp;</div>
        </div>
	</div>

<?php
		}elseif ($fbpost['type'] == "status") {
?>
	<div class="fbpostwrapper">
		<div class="fbheader">
			<div class="fbname">
				<div class="fbdate">Posted: <?php echo date('F d', strtotime($fbpost['created_time']));?></div>
			</div>
		</div>
		<div class="fbmessage"> <?php echo addHrefToLinks($fbpost['message']);?> </div>
	</div>




<?php
		}elseif ($fbpost['type'] == "video") {
?>
	<div class="fbpostwrapper">
		<div class="fbheader">
			<div class="fbname">
				<div class="fbdate">Posted: <?php echo date('F d', strtotime($fbpost['created_time']));?></div>
			</div>
		</div>
        <div class="fbmessage">Video:<br /></div>
		<div class="fblinkinfo">
			<div style="text-align:center; font-weight:bold;">Watch Video</div>
			<?php 
            $popUpClass = '';
            if (strpos($fbpost['link'], 'youtube') > 0) {
                $popUpClass = ' class="videoPopUp"';
            }?>
			
			<?php if (array_key_exists('picture', $fbpost)){?>
			<div class="fblinkimage"><img src="<?php echo $fbpost['picture'];?>" alt=""></div>
			<?php }?>
			<div class="fblinkheader"><a<?php echo $popUpClass?> href="<?php echo $fbpost['link'];?>" target="_blank" rel="nofollow"><?php echo $fbpost['name'];?></a></div>
			<?php if (array_key_exists('description', $fbpost)){?>
			<div class="fblinkstory"> <?php echo $fbpost['description'];?> </div>
			<?php }?>
		<br style="clear:left;" />
		</div>
	</div>

<?php			
		}elseif ($fbpost['type'] == "photo") {
?>

	<div class="fbpostwrapper">
		<div class="fbheader">
			<div class="fbname">
				</h5>
				<div class="fbdate">Posted: <?php echo date('F d', strtotime($fbpost['created_time']));?></div>
			</div>
		</div>
		<div class="fbmessage"> <?php if (isset($fbpost['message'])) {echo AddHrefToLinks($fbpost['message']);}?> </div>
		<?php if (array_key_exists('picture', $fbpost)){?>
		<div class="fbimage"><img src="<?php echo str_replace('s.jpg', 'n.jpg', $fbpost['picture']);?>" alt=""></div>
		<?php }?>
	</div>
<?php			
		}
	}
}
}
?>
