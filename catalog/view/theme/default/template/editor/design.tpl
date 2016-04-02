<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="<?php echo $url;?>history/history.css" />
<script type="text/javascript" src="<?php echo $url;?>swfobject.js"></script>
<script type="text/javascript" src="<?php echo $url;?>history/history.js"></script>
<script type="text/javascript" src="<?php echo $url;?>jquery-1.7.1.min.js"></script>

<script type="text/javascript">

function getQueryString(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
    var r = window.location.search.substr(1).match(reg);
    if (r != null)
        return unescape(r[2]);
    return null;
}

var floadswf = function(swfuri){
	var version = "1.0.321";
	var jsEditorUrl = swfuri+"?v="+version;

	var swfVersionStr = "11.1.0";
	// To use express install, set to playerProductInstall.swf, otherwise the empty string.
	var xiSwfUrlStr = "";
	var flashvars = new Object();
  var action = '<?php echo $action;?>';
  if (action == "edit")
  {
    flashvars.i ="<?php if(isset($design_id)){echo $design_id;}?>";
  }
  else {
    flashvars.i = "<?php if(isset($designstudio_id))echo $designstudio_id;?>";
  }

  flashvars.access_token = "<?php echo $access_token;?>";
  flashvars.opensite_reserved_param = "<?php if(isset($opensite_reserved_param)){echo $opensite_reserved_param;}?>";

	flashvars.resourceserveruri = "<?php echo $CONST_RESOURCE_SERVER_PATH;?>";
	flashvars.oauth2serveruri = "<?php echo $CONST_OAUTH2_SERVER_PATH;?>";

  flashvars.action = action;

	var params = {};
	params.quality = "high";
  params.bgcolor = "#ffffff";
	params.allowscriptaccess = "sameDomain";
	params.allowfullscreen = "true";
	params.wmode = "direct";

	var attributes = {};
	attributes.id = "Qdingzhi";
	attributes.name = "Qdingzhi";
	attributes.align = "middle";
	swfobject.embedSWF(
		jsEditorUrl, "swfContainer",
		"100%", "100%",
		swfVersionStr, xiSwfUrlStr,
		flashvars, params, attributes);
	// JavaScript enabled so display the swfContainer div in case it is not replaced with a swf object.
	swfobject.createCSS("#swfContainer", "display:block;text-align:left;");
};

floadswf("http://store.qdingzhi.com/author/editor/QDingZhiEditor.swf");

window.onbeforeunload = onbeforeunloadHandler;
function onbeforeunloadHandler()
{
	return "";
}

</script>
</head>
<body style="height:100%;padding: 0;margin: 0">
	<div id="swfContainer"></div>
	<div id="yourloading">
	</div>
		<div id="flashLowVersion" style="display:none"><a class="btn" href="http://shop.qdingzhi.com/flash115.rar"></a></div>

<script type="text/javascript">
		var minFlashVersions = "11.1.0".split(".");
		if(minFlashVersions.length!=3){
			alert("格式错误!");
		}else{
			var minMajorVersion = minFlashVersions[0];
			var minSecVersion = minFlashVersions[1];
			var flashVersion = swfobject.getFlashPlayerVersion();

			if(flashVersion['major'] >= minMajorVersion&&flashVersion['minor']>=minSecVersion)
			{
				$("#swfContainer").show();
				$("#yourloading").show();
				$("#flashLowVersion").hide();
			}else{
				$("#swfContainer").hide();
				$("#flashLowVersion").show();
				$("#yourloading").hide();
				var pageHost = ((document.location.protocol == "https:") ? "https://" : "http://");
				$("#flashOfficial").empty();
				$("#flashOfficial").append("<a href='http://www.adobe.com/go/getflashplayer'><img src='"

						+ pageHost + "www.adobe.com/images/shared/download_buttons/get_flash_player.gif' alt='Get Adobe Flash player' /></a>");
			}
		}
</script>

</body>
</html>
