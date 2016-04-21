<?php
$xml = simplexml_load_file("http://192.168.1.130/yershop/testTemplate.xml");

//遍历子节点pages
foreach ($xml->children() as $child)
{
	//遍历子节点page
	foreach($child->children() as $a){
		//获取并输出 background子节点属性id与ext,组合成下载链接 
		if($a->getName()=="background")
		{
			$att = $a->attributes();
			echo "http://st1.yxp.126.net/img2012/flash2/images/background/".$att->id."s".$att->ext."<br />";
		}
	}
}


?>