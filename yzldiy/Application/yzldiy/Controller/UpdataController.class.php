<?php
/**
用于yzldiy定制程序用户照片上传处理
**/

namespace yzldiy\Controller;
use Think\Controller;
use Think\Model;

class UpdataController extends Controller {
	
	public function index()
	{
		$url = "<br />";
		$this->show($url);
	}
	
	public function upUserPhoto()
	{
		//数据模型
		$model = M("useruploadimg_yzldiy");
		
		$image = new \Think\Image();
		$username = I('post.username');
		$photoId = I('post.photoId');
		$uid	= I('post.userId');
		$upload = new \Think\Upload();// 实例化上传类
		$upload->maxSize   =     15728640 ;// 设置附件上传大小
		$upload->exts      =     array('jpg');// 设置附件上传类型
		$upload->rootPath  =      './Uploads/'; // 设置附件上传根目录
		//$upload->subName   =     '';
		$upload->saveName = $photoId;
		$upload->savePath  =      'UserPhoto/'.$username.'/'; // 设置附件上传（子）目录
		echo $upload->rootPath.$upload->savePath."<br />";
		// 上传文件 
		$info   =   $upload->upload();
		if(!$info) {// 上传错误提示错误信息
			$this->error($upload->getError().$_FILE['Filedata']['name']);
		}else{// 上传成功 获取上传文件信息
			
			if(!file_exists($upload->rootPath.$upload->savePath . date('Y-m-d').'/s'))
			{
				mkdir($upload->rootPath.$upload->savePath . date('Y-m-d').'/s');
			}
			
			if(!file_exists($upload->rootPath.$upload->savePath . date('Y-m-d').'/m'))
			{
				mkdir($upload->rootPath.$upload->savePath . date('Y-m-d').'/m');
			}
				
			foreach($info as $file){		
				
				$image->open("./Uploads/".$file['savepath'].$file['savename']);
				
				$data['uid']=$uid;
				$data['photoid']=$photoId;
				$data['username']=$username;
				$data['datatime']=date('Y-m-d');
				$data['thumbImg']="http://".$_SERVER['HTTP_HOST'].__ROOT__."/Uploads/".$file['savepath']."s/s_".$file['savename'];
				$data['img']="http://".$_SERVER['HTTP_HOST'].__ROOT__."/Uploads/".$file['savepath'].$file['savename'];
				$data['midImg']="http://".$_SERVER['HTTP_HOST'].__ROOT__."/Uploads/".$file['savepath']."m/m_".$file['savename'];
				$data['bh'] = $image->height();
				$data['bw'] = $image->width();
				
				$model->add($data);
				
				$image->thumb(700,700)->save("./Uploads/".$file['savepath']."m/m_".$file['savename']);
				$image->thumb(400,400)->save("./Uploads/".$file['savepath']."s/s_".$file['savename']);
				echo "./Uploads/".$file['savepath'].$file['savename'];
			}
		}
	}
	
	//获取上传用户图片
	public function getUserPhoto($uid,$category='0',$page=1,$limit=12)
	{
		$model = M("useruploadimg_yzldiy");
		
		$uid = I("uid");
		if($category=='0')
		{
			$map = "";
		}
		else
		{
			$map['datatime'] = array("EQ",$category);
		}
		
		$map['uid'] = array("EQ",$uid);
		//exit($model->where($map)->where("status=1")->fetchSql(true)->select());
		$count = $model->where($map)->where("status=1")->count();
		$data = "<?xml version='1.0' encoding='utf-8'?><decorateList>";
		//取得分页数据
		$pagelen=5;                  //分页长度 
		$pages = ceil($count/$limit);//计算总分页 
		
		//处理页码合法性 
		if($page<1) $page = 1; 
		if($page>$pages) $page = $pages; 
		
		//计算查询偏移量 
		$offset = $limit*($page-1); 
		
		//页码范围计算 
		$init = 1;//起始页码数 
		$max = $pages;//结束页码数 
		
		$pagelen = ($pagelen%2)?$pagelen:$pagelen+1;//页码个数 
		$pageoffset = ($pagelen-1)/2;//页码个数左右偏移量 
		$home = 0;
		$end = 0;
		$prvPage = 0;
		$nextPage = 0;
		//如果是第一页，则不显示第一页和上页的连接 
		if($page>1){
			$home = 1;
			$prvPage = $page-1;
		}
			$data .= "<pages>";
			$data .= "<page><num>1</num><name>首页</name><status>$home</status><category>$category</category><curpage>$page</curpage></page>";
			$data .= "<page><num>$prvPage</num><name>上页</name><status>$home</status><category>$category</category><curpage>$page</curpage></page>"; 
		 
		//分页数大于页码个数时可以偏移 
		if($pages>$pagelen){ 
			//如果当前页小于等于左偏移 
			if($page<=$pageoffset){ 
				$init=1; 
				$max = $pagelen; 
			}else{//如果当前页大于左偏移 
				//如果当前页码右偏移超出最大分页数 
				if($page+$pageoffset>=$pages+1){ 
					$init = $pages-$pagelen+1; 
				}else{ 
					//左右偏移都存在时的计算 
					$init = $page-$pageoffset; 
					$max = $page+$pageoffset; 
				} 
			} 
		} 
		//生成html 
		for($i=$init;$i<=$max;$i++)
		{ 
			$s=1;
			if($i==$page)
			{
				$s=0;
			}
			$data .= "<page><num>$i</num><name>$i</name><status>$s</status><category>$category</category><curpage>$page</curpage></page>";
		} 
		
		if($page!=$pages){ 
			$end =1;
			$nextPage = $page+1;
		} 
		$data .= "<page><num>$nextPage</num><name>下页</name><status>$end</status><category>$category</category><curpage>$page</curpage></page>";
		$data .= "<page><num>$pages</num><name>尾页</name><status>$end</status><category>$category</category><curpage>$page</curpage></page>";
		$data .= "</pages>";
		//结束分页
		
		
		
		
		$list = $model->where($map)->where("status=1")->page("$page,$limit")->select();

		if (0<count($list)) {
			
			for ($i = 0; $i < count($list); $i++) {
				$data .= "<photo>";
				$data .= "<photoid>".$list[$i]['photoid']."</photoid>";
				$data .="<bh>".$list[$i]['bh']."</bh>";
				$data .="<bw>".$list[$i]['bw']."</bw>";
				$data .= "<s>".$list[$i]['thumbimg']."</s>";
				$data .= "<m>".$list[$i]['midimg']."</m>";
				$data .= "<b>".$list[$i]['img']."</b>";
				
				$data .= "</photo>";
			}
			$data .= "</decorateList>";
			$this->show($data,"utf-8","text/xml");
		}
	}
	
	//获取用户照片的日期分类列表
	public function getUserPhotoCategory($uid)
	{
		$model = M("useruploadimg_yzldiy");
		$uid = I("uid");
		$data = "<?xml version='1.0' encoding='utf-8'?><decorateCategory>";
		$data .= "<category>";
				$data .= "<id>0</id>";
				$data .= "<name>全部</name>";
				$data .= "</category>";
		$list = $model->field("id,datatime,count(*) as num")->where("status=1 and uid=$uid")->group("datatime")->select();
		if (0<count($list)) {
			
			for ($i = 0; $i < count($list); $i++) {
				$data .= "<category>";
				$data .= "<id>".$list[$i]['datatime']."</id>";
				$data .= "<name>".$list[$i]['datatime']."(".$list[$i]['num'].")</name>";
				$data .= "</category>";
			}
			
		}
		$data .= "</decorateCategory>";
		$this->show($data,"utf-8","text/xml");
	}
	
}