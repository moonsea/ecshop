<?php
	function confirm_design($design_id,$access_token,$email){
		include_once(DIR_APPLICATION.'controller/config.php');//加载自定义配置文件
		$design_id=trim($design_id);
		$uri = SERVERPREFIX . CONFIRM_ATTR.'?access_token='.$access_token;
		$data = array(
			'designid' => $design_id,
			'authorleavename' => $email,
		);
		$data_post = '';
		foreach ($data as $key => $value) {
			$data_post .= $key . '=' . $value . '&';
		}
		$data_post = substr($data_post, 0, strlen($data_post) - 1);
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_URL, $uri);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		curl_setopt($ch, CURLOPT_HEADER, 0);
		curl_setopt($ch, CURLOPT_POST, 1);
		curl_setopt($ch, CURLOPT_POSTFIELDS, $data_post);
		$response = curl_exec($ch);
		if (curl_errno($ch)) {
			print curl_error($ch);
		}
		curl_close($ch);
		$response=json_decode($response,true);
		return $response['code'];
	}
?>