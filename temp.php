<meta charset="utf-8"/>
<?php
	$url = "http://app.itimepost.com/homealbum";
	$post_data = array("album_id"=>236,"type"=>1,"token"=>"71dc88027899ba092a71a69dabe7d6a6");
	$ch = curl_init();
	curl_setopt($ch, CURLOPT_URL, $url);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
	curl_setopt($ch,CURLOPT_POST,1);
	curl_setopt($ch, CURLOPT_POSTFIELDS, $post_data);
	$output = curl_exec($ch);
	curl_close($ch);
	print_r($output);
	//$output = json_decode($output,true);
	//echo $output["data"]["pageinfo"]["perPageSize"]
?>