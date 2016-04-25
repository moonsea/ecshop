<script type="text/javascript">
var process_request = "<?php echo $this->_var['lang']['process_request']; ?>";
</script>
<script type="text/javascript">
//设为首页 www.ecmoban.com
function SetHome(obj,url){
    try{
        obj.style.behavior='url(#default#homepage)';
       obj.setHomePage(url);
   }catch(e){
       if(window.netscape){
          try{
              netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
         }catch(e){
              alert("抱歉，此操作被浏览器拒绝！\n\n请在浏览器地址栏输入“about:config”并回车然后将[signed.applets.codebase_principal_support]设置为'true'");
          }
       }else{
        alert("抱歉，您所使用的浏览器无法完成此操作。\n\n您需要手动将【"+url+"】设置为首页。");
       }
  }
}
 
//收藏本站 bbs.ecmoban.com
function AddFavorite(title, url) {
  try {
      window.external.addFavorite(url, title);
  }
catch (e) {
     try {
       window.sidebar.addPanel(title, url, "");
    }
     catch (e) {
         alert("抱歉，您所使用的浏览器无法完成此操作。\n\n加入收藏失败，请使用Ctrl+D进行添加");
     }
  }
}
//初始化主菜单
function sw_nav(obj,tag)
{

	var DisSub = document.getElementById("DisSub_"+obj);
	var HandleLI= document.getElementById("HandleLI_"+obj);
	if(tag==1)
	{
		DisSub.style.display = "block";
 
		
	}
	else
	{
		DisSub.style.display = "none";
	
	}

}
</script>


	<nav class="navbar navbar-inverse" role="navigation" style="border:none; border-radius:0;margin-bottom:0;">
           <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" 
                 data-target="#nav">
                 <span class="sr-only">切换导航</span>
                 <span class="icon-bar"></span>
                 <span class="icon-bar"></span>
                 <span class="icon-bar"></span>
              </button>
              <a href="#" class="navbar-brand" style="padding-top:3px; padding-right:50px;"><img src="img/logo-nav.png" width="41" height="45"/></a>
           </div>
           <div class="collapse navbar-collapse" id="nav">
              <ul class="nav navbar-nav">
                 <li class="active f14"><a href="list.php">我的相册</a></li>
                 <li class="f14"><a href="#">DIY</a></li>
              </ul>
              <ul class="navbar-right mt-5">
                	<li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="<?php echo $this->_var['userimg']; ?>" width="40" height="40" class="img-circle table-bordered"/>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                            	<a href="#">
                                	<i class="glyphicon glyphicon-bell text-danger">&nbsp;</i>
                                    <font class="text-danger">未完成(2)</font>
                            	</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                            	<a href="#">
                                	<i class="glyphicon glyphicon-shopping-cart">&nbsp;</i>
                                    <font>购物筐</font>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                            	<a href="#">
                                	<i class="glyphicon glyphicon-log-out text-danger">&nbsp;</i>
                                    <font class="text-danger">退出</font>
                                </a>
                            </li>
                        </ul>
                 	</li>
               </ul>
           </div>
    </nav>

 
 

 


