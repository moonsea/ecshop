<!-- $Id: goods_search.htm 16790 2009-11-10 08:56:15Z wangleisvn $ -->
<div class="form-div">
  <form action="javascript:searchGoods()" name="searchForm">
    <!-- <img src="images/icon_search.gif" width="26" height="22" border="0" alt="SEARCH" /> -->
<!--     <?php if ($this->_var['action_link']): ?>
    <span class="action-span"><a href="<?php echo $this->_var['action_link']['href']; ?>"><?php echo $this->_var['action_link']['text']; ?></a>&nbsp;&nbsp;</span>
    <?php endif; ?>
    <?php if ($this->_var['action_link2']): ?>
    <span class="action-span"><a href="<?php echo $this->_var['action_link2']['href']; ?>"><?php echo $this->_var['action_link2']['text']; ?></a>&nbsp;&nbsp;</span>
    <?php endif; ?> -->
    <?php if ($_GET['act'] != "trash"): ?>
    <!--  -->
      <?php echo $this->_var['lang']['is_on_sale_title']; ?>&nbsp;&nbsp;<select name="is_on_sale" onchange="searchGoods()"><option value=''><?php echo $this->_var['lang']['intro_type']; ?></option><option value="1"><?php echo $this->_var['lang']['on_sale']; ?></option><option value="0"><?php echo $this->_var['lang']['not_on_sale']; ?></option></select>&nbsp;&nbsp;&nbsp;&nbsp;
    <!-- 分类 -->
    <?php echo $this->_var['lang']['cat_id_label']; ?>&nbsp;&nbsp;<select name="cat_id" onchange="searchGoods()"><option value="0"><?php echo $this->_var['lang']['goods_cat']; ?></option><?php echo $this->_var['cat_list']; ?></select>&nbsp;&nbsp;&nbsp;&nbsp;
    <!-- 分类 -->
    <?php echo $this->_var['lang']['order_type_label']; ?>&nbsp;&nbsp;<select name="order_type" onchange="sortGoods()"><option value="0"><?php echo $this->_var['lang']['order_click_count_asc']; ?></option><option value="1"><?php echo $this->_var['lang']['order_click_count_desc']; ?></option><option value="2"><?php echo $this->_var['lang']['order_market_price_asc']; ?></option><option value="3"><?php echo $this->_var['lang']['order_market_price_desc']; ?></option><option value="4"><?php echo $this->_var['lang']['order_add_time_desc']; ?></option></select>
    <!-- 品牌 -->
    <!-- <select name="brand_id"><option value="0"><?php echo $this->_var['lang']['goods_brand']; ?></option><?php echo $this->html_options(array('options'=>$this->_var['brand_list'])); ?></select> -->
    <!-- 推荐 -->
    <!-- <select name="intro_type"><option value="0"><?php echo $this->_var['lang']['intro_type']; ?></option><?php echo $this->html_options(array('options'=>$this->_var['intro_list'],'selected'=>$_GET['intro_type'])); ?></select> -->
     <!-- <?php if ($this->_var['suppliers_exists'] == 1): ?>     -->
      <!-- 供货商 -->
      <!-- <select name="suppliers_id"><option value="0"><?php echo $this->_var['lang']['intro_type']; ?></option><?php echo $this->html_options(array('options'=>$this->_var['suppliers_list_name'],'selected'=>$_GET['suppliers_id'])); ?></select>
      <?php endif; ?> -->
      
    <?php endif; ?>
    <!-- 关键字 -->
    <!-- <?php echo $this->_var['lang']['keyword']; ?> <input type="text" name="keyword" size="15" /> -->
    <!-- <input type="submit" value="<?php echo $this->_var['lang']['button_search']; ?>" class="button" /> -->
  </form>
</div>


<script language="JavaScript">
    function searchGoods()
    {

        <?php if ($_GET['act'] != "trash"): ?>
        listTable.filter['cat_id'] = document.forms['searchForm'].elements['cat_id'].value;
        listTable.filter['is_on_sale'] = document.forms['searchForm'].elements['is_on_sale'].value;

        // listTable.filter['brand_id'] = document.forms['searchForm'].elements['brand_id'].value;
        // listTable.filter['intro_type'] = document.forms['searchForm'].elements['intro_type'].value;
          // <?php if ($this->_var['suppliers_exists'] == 1): ?>
          // listTable.filter['suppliers_id'] = document.forms['searchForm'].elements['suppliers_id'].value;
          // <?php endif; ?>
        <?php endif; ?>

        // listTable.filter['keyword'] = Utils.trim(document.forms['searchForm'].elements['keyword'].value);
        listTable.filter['page'] = 1;

        listTable.loadList();
    }
    function sortGoods()
    {

        <?php if ($_GET['act'] != "trash"): ?>
          listTable.filter['cat_id'] = document.forms['searchForm'].elements['cat_id'].value;
          listTable.filter['is_on_sale'] = document.forms['searchForm'].elements['is_on_sale'].value;
  
          var sort_type = document.forms['searchForm'].elements['order_type'].value;
          var sort_by = '';
          var sort_order = '';
          if(sort_type == '0')
          {
            sort_by = 'click_count';
            sort_order = 'ASC';
          }else if(sort_type == '1')
          {
            sort_by = 'click_count';
            sort_order = 'DESC';
          }else if(sort_type == '2')
          {
            sort_by = 'market_price';
            sort_order = 'ASC';
          }else if(sort_type == '3')
          {
            sort_by = 'market_price';
            sort_order = 'DESC';
          }else if(sort_type == '4')
          {
            sort_by = 'add_time';
            sort_order = 'DESC';
          }
          
          var args = "act=query&sort_by="+sort_by+"&sort_order="+sort_order;

          for (var i in listTable.filter)
          {
            if (typeof(listTable.filter[i]) != "function" &&
              i != "sort_order" && i != "sort_by" && !Utils.isEmpty(listTable.filter[i]))
            {
              args += "&" + i + "=" + listTable.filter[i];
            }
          }
        <?php endif; ?>

        // listTable.filter['keyword'] = Utils.trim(document.forms['searchForm'].elements['keyword'].value);
        listTable.filter['page'] = 1;

        // listTable.loadList();
        Ajax.call(listTable.url, args, listTable.listCallback, "POST", "JSON");

    }
</script>
