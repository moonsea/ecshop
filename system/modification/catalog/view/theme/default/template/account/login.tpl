<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
  <?php } ?>
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <div class="row">
        <div class="col-sm-6">
          <div class="well">
            <h2><?php echo $text_new_customer; ?></h2>
            <p><strong><?php echo $text_register; ?></strong></p>
            <p><?php echo $text_register_account; ?></p>
            <a href="<?php echo $register; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
        </div>
        <div class="col-sm-6">
          <div class="well">
            <h2><?php echo $text_returning_customer; ?></h2>
            <p><strong><?php echo $text_i_am_returning_customer; ?></strong></p>
            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
              <div class="form-group">
                <label class="control-label" for="input-email"><?php echo $entry_email; ?></label>
                <input type="text" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
              </div>
              <div class="form-group">
                <label class="control-label" for="input-password"><?php echo $entry_password; ?></label>
                <input type="password" name="password" value="<?php echo $password; ?>" placeholder="<?php echo $entry_password; ?>" id="input-password" class="form-control" />
                <a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a></div>
              <input type="submit" value="<?php echo $button_login; ?>" class="btn btn-primary" />
              <?php if ($redirect) { ?>
              <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
              <?php } ?>
            </form>


			<?php if ($qq_login_status) { ?>
            <form action="<?php echo $qq_login_action; ?>" id="qq_login_account" method="post" style="display: inline-block; margin: 16px 20px 0 0;">
              <span id="qqLoginBtn"></span>
              <input type="hidden" name="openid" id="openid" value="" />
            </form>
            <script type="text/javascript" src="//qzonestyle.gtimg.cn/qzone/openapi/qc_loader.js" data-appid="<?php echo $qq_login_appid; ?>" charset="utf-8" ></script>
            <script type="text/javascript">
              QC.Login.signOut(); 
              QC.Login({
                btnId : "qqLoginBtn",
                size : "B_M",
                scope : "get_user_info",
                display : "pc"
              },function(){
                var dom = document.getElementById('openid');
                var c_loginaccount = document.getElementById('qq_login_account');
                QC.Login.getMe(function(openId, accessToken){
                  dom.value = openId;
                  c_loginaccount.submit();
                });
              },function(){
              });
            </script> 
            <?php } ?>

            <?php if ($weibo_login_status) { ?>
            <a href="<?php echo $weibo_code_url?>" style="display: inline-block; margin: 16px 0 0 0"><img src="<?php echo HTTP_SERVER ?>catalog/view/theme/default/image/weibo_button.png" /></a>
            <?php } ?>

			
          </div>
        </div>
      </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>