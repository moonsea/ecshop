<?php
namespace yzldiy\Controller;
use Think\Controller;
use Think\Model;

class DecorateController extends Controller {
	
	public function index()
	{
		$this->show("testIndex");
	}
	
	//手动添加装饰图片到数据库
    public function add($name,$num,$category){
        $model = M("decorate_yzldiy");
		if($num>=1)
		{
			for ($i=1;$i<=$num;$i++)
			{
				$data["name"]=$name;
				$data["category"]=$category;
				$data["s"]="http://localhost/yershop/Uploads/yzldiy/Decorate/".$name."s.png";
				$data["m"]="http://localhost/yershop/Uploads/yzldiy/Decorate/".$name."m.png";
				$data["b"]="http://localhost/yershop/Uploads/yzldiy/Decorate/".$name."b.png";
				$model->add($data);
				$name++;
			}
		}
		
    }
	
	//手动添背景图片到数据库
    public function addBackground($name,$num,$category){
        $model = M("background_yzldiy");
		
		exit("未修正");
		if($num>=1)
		{
			$datalist = array();
			for ($i=1;$i<=$num;$i++)
			{
				$data["name"]=$name;
				$data["category"]=$category;
				$data["s"] = "http://localhost/yershop/Uploads/yzldiy/background/".$name."s.jpg";
				$data["m"]="http://localhost/yershop/Uploads/yzldiy/background/".$name."m.jpg";
				$data["b"]="http://localhost/yershop/Uploads/yzldiy/background/".$name."b.jpg";
				
$model->add($data);
$name++;
			}
			
		}
		
    }
	
	/*
	基于以上传的图片生成缩略图	
	*/
	public function createThumb()
	{
		$model = M("frame_yzldiy");
		$list=$model->select();
		$image = new \Think\Image();
		for($i=0;$i<count($list);$i++)
		{
			
			$image->open("./Uploads/yzldiy/frame/".$list[$i]["name"].$list[$i]["ext"]);
			
			$image->thumb(200,200)->save("./Uploads/yzldiy/frame/".$list[$i]["name"]."s".$list[$i]["ext"]);
			
			//$this->show("http://localhost/yershop/Uploads/yzldiy/frame/".$list[$i]["name"].$list[$i]["ext"]."<br />");
		}
		
	}
	
	//获取上传的装饰图片
	public function getDecorate($category=0,$page=1,$limit=12)
	{
		$model = M("decorate_yzldiy");
		
		
		if($category==0)
		{
			$map['category'] = array("GT",0);
		}
		else
		{
			$map['category'] = array("EQ",$category);
		}
		$count = $model->where($map)->where("status=1")->count();
		$data = "<?xml version='1.0' encoding='utf-8'?><decorateList>";
		//取得分页数据
		$pagelen=7;                  //分页长度 
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
				$data .= "<decorates id='".$list[$i]['name']."' ext='".$list[$i]['ext']."' />";
			}
			$data .= "</decorateList>";
			$this->show($data,"utf-8","text/xml");
		}
	}
	
	//获取上传的背景
	public function getBackground($category=0,$page=1,$limit=12)
	{
		$model = M("background_yzldiy");
		
		
		if($category==0)
		{
			$map['category'] = array("GT",0);
		}
		else
		{
			$map['category'] = array("EQ",$category);
		}
		$count = $model->where($map)->where("status=1")->count();
		$data = "<?xml version='1.0' encoding='utf-8'?><backgroundList>";
		//取得分页数据
		$pagelen=7;                  //分页长度 
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
				$data .= "<decorates id='".$list[$i]['name']."' ext='".$list[$i]['ext']."' />";
			}
			$data .= "</backgroundList>";
			$this->show($data,"utf-8","text/xml");
		}
	}
	
	//获取上传的边框图片
	public function getFrame($category=0,$page=1,$limit=12)
	{
		$model = M("frame_yzldiy");
		
		
		if($category==0)
		{
			$map['category'] = array("GT",0);
		}
		else
		{
			$map['category'] = array("EQ",$category);
		}
		$count = $model->where($map)->where("status=1")->count();
		$data = "<?xml version='1.0' encoding='utf-8'?><frameList>";
		//取得分页数据
		$pagelen=7;                  //分页长度 
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
				$data .= "<decorates id='".$list[$i]['name']."' ext='".$list[$i]['ext']."' />";
			}
			$data .= "</frameList>";
			$this->show($data,"utf-8","text/xml");
		}
	}
	
	//获取上传的图片页数
	public function getDecoratePage($category=0,$page=1,$limit=12)
	{
		$model = M("decorate_yzldiy");
		$data = "<?xml version='1.0' encoding='utf-8'?>";
		$pagelen=7;
		if($category==0)
		{
			$map['category'] = array("GT",0);
		}
		
		$count = $model->where("status=1")->count();

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
		$this->show($data,"utf-8","text/xml");
	}
	
	public function getDecorateCategory()
	{
		$model = M("decorate_category_yzldiy");	
		$data = "<?xml version='1.0' encoding='utf-8'?><decorateCategory>";
		$data .= "<category>";
				$data .= "<id>0</id>";
				$data .= "<name>全部</name>";
				$data .= "</category>";
		$list = $model->where($map)->where("status=1")->page($page,$limit)->select();
		if (0<count($list)) {
			
			for ($i = 0; $i < count($list); $i++) {
				$data .= "<category>";
				$data .= "<id>".$list[$i]['id']."</id>";
				$data .= "<name>".$list[$i]['name']."</name>";
				$data .= "</category>";
			}
			
		}
		$data .= "</decorateCategory>";
		$this->show($data,"utf-8","text/xml");
	}
	public function getBackgroundCategory()
	{
		$model = M("background_category_yzldiy");	
		$data = "<?xml version='1.0' encoding='utf-8'?><decorateCategory>";
		$data .= "<category>";
				$data .= "<id>0</id>";
				$data .= "<name>全部</name>";
				$data .= "</category>";
		$list = $model->where($map)->where("status=1")->page($page,$limit)->select();
		if (0<count($list)) {
			
			for ($i = 0; $i < count($list); $i++) {
				$data .= "<category>";
				$data .= "<id>".$list[$i]['id']."</id>";
				$data .= "<name>".$list[$i]['name']."</name>";
				$data .= "</category>";
			}
			
		}
		$data .= "</decorateCategory>";
		$this->show($data,"utf-8","text/xml");
	}
	public function getFrameCategory()
	{
		$model = M("frame_category_yzldiy");	
		$data = "<?xml version='1.0' encoding='utf-8'?><decorateCategory>";
		$data .= "<category>";
				$data .= "<id>0</id>";
				$data .= "<name>全部</name>";
				$data .= "</category>";
		$list = $model->where($map)->where("status=1")->page($page,$limit)->select();
		if (0<count($list)) {
			
			for ($i = 0; $i < count($list); $i++) {
				$data .= "<category>";
				$data .= "<id>".$list[$i]['id']."</id>";
				$data .= "<name>".$list[$i]['name']."</name>";
				$data .= "</category>";
			}
			
		}
		$data .= "</decorateCategory>";
		$this->show($data,"utf-8","text/xml");
	}
}