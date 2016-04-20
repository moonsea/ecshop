<meta charset="utf-8"/>
<?php
	//$url = "http://app.itimepost.com/member/login";
	$url = "http://app.itimepost.com/album/list";
	/*$post_data = array(
				"phone" => "15245012931" , 
				"password" => "545234", 
				"device" => 0,
				"imei" => "12354647243",
				"longitude" => "23.03,113.75");
	*/			
	$post_data = array("member_id"=>73,"token"=>"c4c41a6a389e376d022e2b9aab2e0789","pagetotal"=>1);
	$ch = curl_init();
	curl_setopt($ch, CURLOPT_URL, $url);
	curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
	curl_setopt($ch,CURLOPT_POST,1);
	curl_setopt($ch, CURLOPT_POSTFIELDS, $post_data);
	$output = curl_exec($ch);
	curl_close($ch);
	print_r($output);
	//$output = json_decode($output,true);
	//echo $output["data"]["user"]["token"]
?>