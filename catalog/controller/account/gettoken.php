<?php
	  function get_token($email){
		include_once(DIR_APPLICATION.'controller/config.php');//加载自定义配置文件
		$attr = "public/mappingplatformuser?opensite=store&opensiteuserid=";
		$serverPrefix = GETTOKEN_SERVER;
		$userid = $email;
		$secrets = "14qdingZHiabcd";
		$key1 = "qdingzhi";
		$key2 = (string)rand();
		$key3 = md5($key1.$key2.$secrets);
		$uri = $serverPrefix.$attr.$userid."&key1=".$key1."&key2=".$key2."&key3=".$key3;
		$results = file_get_contents($uri);
		$results=json_decode($results,true);
		
		
		//获取token
		$client_id = "editorflash1";
		$client_secret = "editorflash1";
		$data = array(
			'username'		=>$results['data']['opensiteuserId'],
			'client_id'		=>$client_id,
			'client_secret'	=>$client_secret,
			'grant_type'	=>'password',
			'password'		=>'password',
			'scope'			=>'public'
		);
		$data_post='';
		foreach($data as $key => $value ){
			$data_post.=$key.'='.$value.'&';
		}
		$data_post = substr($data_post,0,strlen($data_post)-1); 
		$uri = $serverPrefix."oauth/author/token";
		$ch = curl_init(); 										//初始化curl
		curl_setopt($ch, CURLOPT_URL, $uri);					//设置链接
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);			//设置是否返回信息
		curl_setopt($ch, CURLOPT_HEADER,0);
		curl_setopt($ch, CURLOPT_POST, 1);						//设置为POST方式
		curl_setopt($ch, CURLOPT_POSTFIELDS, $data_post);		//POST数据
		$response = curl_exec($ch);								//接收返回信息
		if(curl_errno($ch)){									//出错则显示错误信息
			print curl_error($ch);
		}
		curl_close($ch); 										//关闭curl链接
		$response=json_decode($response,true);
		$token_info=$response['access_token'];
		return $token_info;	
	}
?>