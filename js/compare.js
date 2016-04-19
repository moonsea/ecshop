/* $Id: compare.js 15469 2008-12-19 06:34:44Z testyang $ */
var Compare = new Object();

Compare = {
  add : function(goodsId, goodsName, type)
  {
    var count = 0;
    for (var k in this.data)
    {
      if (typeof(this.data[k]) == "function")
      continue;
      if (this.data[k].t != type) {
        alert(goods_type_different.replace("%s", goodsName));
        return;
      }
      count++;
    }

    if (this.data[goodsId])
    {
      alert(exist.replace("%s",goodsName));
      return;
    }
    else
    {
      this.data[goodsId] = {n:goodsName,t:type};
    }
    this.save();
    this.init();
  },
  relocation : function()
  {
    if (this.compareBox.style.display != "") return;
    var diffY = Math.max(document.documentElement.scrollTop,document.body.scrollTop);

    var percent = .2*(diffY - this.lastScrollY);
    if(percent > 0)
      percent = Math.ceil(percent);
    else
      percent = Math.floor(percent);
    this.compareBox.style.top = parseInt(this.compareBox.style.top)+ percent + "px";

    this.lastScrollY = this.lastScrollY + percent;
  },
  init : function(){
    this.data = new Object();
    var cookieValue = Cookie.get("compareItems");
    if (cookieValue != null) {
      //this.data = jQuery.parseJSON(cookieValue);
    }
    if (!this.compareBox)
    {
      this.compareBox = document.createElement("DIV");
      var submitBtn = document.createElement("INPUT");
      this.compareList = document.createElement("UL");
      this.compareBox.id = "compareBox";
      this.compareBox.style.display = "none";
      this.compareBox.style.top = "200px";
      this.compareBox.align = "center";
      this.compareList.id = "compareList";
      submitBtn.type = "button";
      submitBtn.value = button_compare;
			this.compareBox.appendChild(this.compareList);
      this.compareBox.appendChild(submitBtn);
      submitBtn.onclick = function() {
        var cookieValue = document.getCookie("compareItems");
        var obj = cookieValue.parseJSON();
        var url = document.location.href;
        url = url.substring(0,url.lastIndexOf('/')+1) + "compare.php";
        var i = 0;
        for(var k in obj)
        {
          if(typeof(obj[k])=="function")
          continue;
          if(i==0)
            url += "?goods[]=" + k;
          else
            url += "&goods[]=" + k;
          i++;
        }
        if(i<2)
        {
          alert(compare_no_goods);
          return ;
        }
        document.location.href = url;
      }
      document.body.appendChild(this.compareBox);
    }
    this.compareList.innerHTML = "";
    var self = this;
    for (var key in this.data)
    {
      if(typeof(this.data[key]) == "function")
        continue;
      var li = document.createElement("LI");
      var span = document.createElement("SPAN");
      span.style.overflow = "hidden";
      span.style.width = "100px";
      span.style.height = "20px";
      span.style.display = "block";
      span.innerHTML = this.data[key].n;
      li.appendChild(span);
      li.style.listStyle = "none";
      var delBtn = document.createElement("IMG");
      delBtn.src = "themes/default/images/drop.gif";
      delBtn.className = key;
      delBtn.onclick = function(){
        document.getElementById("compareList").removeChild(this.parentNode);
        delete self.data[this.className];
        self.save();
        self.init();
      }
      li.insertBefore(delBtn,li.childNodes[0]);
      this.compareList.appendChild(li);
    }
    if (this.compareList.childNodes.length > 0)
    {
      this.compareBox.style.display = "";
      this.timer = window.setInterval(this.relocation.bind(this), 50);
    }
    else
    {
      this.compareBox.style.display = "none";
      window.clearInterval(this.timer);
      this.timer = 0;
    }
  },
  save : function()
  {
    var date = new Date();
    date.setTime(date.getTime() + 99999999);
    document.setCookie("compareItems", this.data.toJSONString());
  },
  lastScrollY : 0
}

var Cookie = {
    getExpiresDate:function(days, hours, minutes) {
        var ExpiresDate = new Date();
        if (typeof days == "number" && typeof hours == "number" &&
            typeof hours == "number") {
            ExpiresDate.setDate(ExpiresDate.getDate() + parseInt(days));
            ExpiresDate.setHours(ExpiresDate.getHours() + parseInt(hours));
            ExpiresDate.setMinutes(ExpiresDate.getMinutes() + parseInt(minutes));
            return ExpiresDate.toGMTString();
        }
    },
    _getValue:function(offset) {
        var endstr = document.cookie.indexOf (";", offset);
        if (endstr == -1) {
            endstr = document.cookie.length;
        }
        return unescape(document.cookie.substring(offset, endstr));
    },
    get:function(name) {
        var arg = name + "=";
        var alen = arg.length;
        var clen = document.cookie.length;
        var i = 0;
        while (i < clen) {
            var j = i + alen;
            if (document.cookie.substring(i, j) == arg) {
                return this._getValue(j);
            }
            i = document.cookie.indexOf(" ", i) + 1;
            if (i == 0) break;
        }
        return "";
    },
    set:function(name, value, expires, path, domain, secure) {
        document.cookie = name + "=" + escape (value) +
            ((expires) ? "; expires=" + expires : "") +
            ((path) ? "; path=" + path : "") +
            ((domain) ? "; domain=" + domain : "") +
            ((secure) ? "; secure" : "");
    },
    remove:function(name,path,domain) {
        if (this.get(name)) {
            document.cookie = name + "=" +
                ((path) ? "; path=" + path : "") +
                ((domain) ? "; domain=" + domain : "") +
                "; expires=Thu, 01-Jan-70 00:00:01 GMT";
        }
    },
    clear:function(){
        var cookies = document.cookie.split(';');
        for(var i=0; i < cookies.length; i++)
            var cookieName = cookies[i].split('=')[0];
            if(cookieName=='ProductListIds')
            {
                this.remove(cookieName);
            }
    }
};




