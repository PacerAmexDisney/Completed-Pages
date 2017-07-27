<?php require_once('../../php-sdk/hashtagAggregator.php');

$data = GetHashtagData('wewillgen', '7', '7', false);

    foreach($data as $item){
        
		if ($item['type'] == 'instagram') {
?>
			<div class="instagramwrapper">
			
			<div class="username">@<?php echo $item['username'];?><br />
			<span class="date"><?php echo date('F j', strtotime($item['createdDate']));?></span>
			</div>
			<img src="<?php echo $item['image'];?>" alt="" width="175" />	
			</div>
<?php	
		}
		if ($item['type'] == 'twitter') {
?>
	<div class="tweetwrapper">
	<div class="tweettext">
	<img class="twprofileimg" src="<?php echo $item['profile_image'];?>" alt="" width="50" />
		<?php echo $item['text'];?>
	</div>	
<?php
	if ($item['image'] <> '') {
?>
		<div class="twimage"><img src="<?php echo $item['image'];?>" alt="" width="200" /></div>
<?php
	}
?>
	<div class="username">@<?php echo $item['username'];?><br />
	<span class="date"><?php echo date('F j', strtotime($item['createdDate']));?></span>
	</div>
	</div>


<?php
			
		}
    }

?>
