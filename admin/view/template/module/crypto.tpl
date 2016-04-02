<?php echo $header; ?>
<div id="content" class="latestcontent">
    <div class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
        <?php } ?>
    </div>
    <?php if ($error_warning) { ?>
    <div class="warning"><?php echo $error_warning; ?></div>
    <?php } ?>
    <div class="box">
        <div class="heading">
            <h1><?php echo $heading_title; ?></h1>
            <div class="buttons"><a onclick="$('#form').submit();" class="button"><span><?php echo $button_save; ?></span></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><span><?php echo $button_cancel; ?></span></a></div>
        </div>
    </div>
     <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">

    <div class="box fixed">
        <div class="content_full">
            <h2 class="layout"><span>Settings ON/OFF</span></h2>
            <table class="form">
                <tr> </tr>
                <tr>
                    <td>Disable / Enable custom options? </td>
                    <td><select name="theme_status" class="ltcolor">
                            <?php if ($theme_status){ ?>
                            <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                            <option value="0"><?php echo $text_disabled; ?></option>
                            <?php } else { ?>
                            <option value="1"><?php echo $text_enabled; ?></option>
                            <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                            <?php } ?>
                        </select></td>
                </tr>
            </table>
        </div>
    </div>
    <div class="box fixed">
        <div id="tabs" class="htabs"> 
            <a href="#tab_themesetting">Theme Settings</a> 
            <a href="#tab_backgroundsetting">Background Pattern Settings</a> 
            <a href="#tab_headersetting">Header Settings</a> 
            <a href="#tab_footer">Footer Settings</a> 
            <a href="#tab_commonsetting">Common Colors</a> 
            <a href="#tab_customfooterblock">Custom Footer Block</a> 
            <a href="#tab_customproduct">Custom Product Page Block</a> 
            <a href="#tab_socialblock">Social & Contact Block</a> 
            <a href="#tab_paymenticons">Payment Icons Block</a> 
            <a href="#tab_googlemap">Google Map</a> 
        </div>
        <div class="htabs-content" id="tab_themesetting">
            <h2 class="layout"><span>Theme Setting Options</span></h2>
            <table class="form">
                <tr>
                    <td>Product Timer</td>
                    <td>
                    <select name="producttimer_status" class="ltcolor">
                    <?php if ($producttimer_status){ ?>
                            <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                            <option value="0"><?php echo $text_disabled; ?></option>
                            <?php } else { ?>
                            <option value="1"><?php echo $text_enabled; ?></option>
                            <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                    <?php } ?>
                    </select>
                    </td>
                </tr>
               
                <tr>
                    <td>Discount Ribbon</td>
                    <td>
                    <select name="discountribbon_status" class="ltcolor">
                        <?php if ($discountribbon_status){ ?>
                            <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                            <option value="0"><?php echo $text_disabled; ?></option>
                            <?php } else { ?>
                            <option value="1"><?php echo $text_enabled; ?></option>
                            <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                        <?php } ?>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Product Page Image Zoom Display Option</td>
                    <td><select name="productzoom_status" class="ltcolor">
                            <?php if ($productzoom_status){ ?>
                            <option value="1" selected="selected">Cloud Zoom</option>
                            <option value="0">Opencart Default</option>
                            <?php } else { ?>
                            <option value="1">Cloud Zoom</option>
                            <option value="0" selected="selected">Opencart Default</option>
                        <?php } ?>
                        </select></td>
                </tr>
                <tr>
                    <td>Powered By:</td>
                    <td>
                        <input type="text" name="poweredbytext" value="<?php echo $this->config->get('poweredbytext'); ?>" size="80" class="ltcolor" />
                        <select name="poweredbytext_status" class="ltcolor">
                        <?php if ($poweredbytext_status){ ?>
                            <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                            <option value="0"><?php echo $text_disabled; ?></option>
                            <?php } else { ?>
                            <option value="1"><?php echo $text_enabled; ?></option>
                            <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                        <?php } ?>
                        </select>
                    </td>
                </tr>
            </table>
        </div>
        <div class="htabs-content" id="tab_headersetting">
            <h2 class="layout"><span>Header Color Options</span></h2>
            <table class="form">
                <tr>
                    <td>Header Background Color</td>
                    <td><input class="colorselect ltcolor" name="lt_headerbgcolor" type="text" value="<?php if($this->config->get('lt_headerbgcolor') == '') { ?>E44D2E<?php } else { echo $this->config->get('lt_headerbgcolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: E44D2E</span></td>
                </tr>
                <tr>
                    <td>Top Header Border Color</td>
                    <td><input class="colorselect ltcolor" name="lt_topheaderbordercolor" type="text" value="<?php if($this->config->get('lt_topheaderbordercolor') == '') { ?>EC6C3F<?php } else { echo $this->config->get('lt_topheaderbordercolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: EC6C3F</span></td>
                </tr>
                <tr>
                    <td>Currency Font Color</td>
                    <td><input class="colorselect ltcolor" name="lt_currencyfontcolor" type="text" value="<?php if($this->config->get('lt_currencyfontcolor') == '') { ?>F9E5CC<?php } else { echo $this->config->get('lt_currencyfontcolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: F9E5CC</span></td>
                </tr>
                <tr>
                    <td>Currency Hover Font Color</td>
                    <td><input class="colorselect ltcolor" name="lt_currencyhoverfontcolor" type="text" value="<?php if($this->config->get('lt_currencyhoverfontcolor') == '') { ?>FFFFFF<?php } else { echo $this->config->get('lt_currencyhoverfontcolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: FFFFFF</span></td>
                </tr>
                <tr>
                    <td>Header Links Color</td>
                    <td><input class="colorselect ltcolor" name="lt_headerlinkscolor" type="text" value="<?php if($this->config->get('lt_headerlinkscolor') == '') { ?>F9E5CC<?php } else { echo $this->config->get('lt_headerlinkscolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: F9E5CC</span></td>
                </tr>
                <tr>
                    <td>Header Links Hover Color</td>
                    <td><input class="colorselect ltcolor" name="lt_headerlinkshovercolor" type="text" value="<?php if($this->config->get('lt_headerlinkshovercolor') == '') { ?>FFFFFF<?php } else { echo $this->config->get('lt_headerlinkshovercolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: FFFFFF</span></td>
                </tr>
                <tr>
                    <td>Header Text Color</td>
                    <td><input class="colorselect ltcolor" name="lt_headertextcolor" type="text" value="<?php if($this->config->get('lt_headertextcolor') == '') { ?>F9E5CC<?php } else { echo $this->config->get('lt_headertextcolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: F9E5CC</span></td>
                </tr>
                <tr>
                    <td>Shopping Cart Color</td>
                    <td><input class="colorselect ltcolor" name="lt_shoppingcartcolor" type="text" value="<?php if($this->config->get('lt_shoppingcartcolor') == '') { ?>FFFFFF<?php } else { echo $this->config->get('lt_shoppingcartcolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: FFFFFF</span></td>
                </tr>
            </table>
            <h2 class="layout"><span>Menu Color Options</span></h2>
            <table class="form">
                <tr>
                    <td>Menu Home Button Color</td>
                    <td><input class="colorselect ltcolor" name="lt_menuhomebuttoncolor" type="text" value="<?php if($this->config->get('lt_menuhomebuttoncolor') == '') { ?>000000<?php } else { echo $this->config->get('lt_menuhomebuttoncolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: 000000</span></td>
                </tr>
                <tr>
                    <td>Menu Home Icon Color</td>
                    <td><input class="colorselect ltcolor" name="lt_menuhomeiconcolor" type="text" value="<?php if($this->config->get('lt_menuhomeiconcolor') == '') { ?>FFFFFF<?php } else { echo $this->config->get('lt_menuhomeiconcolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: FFFFFF</span></td>
                </tr>
                <tr>
                    <td>Menu Background Color</td>
                    <td><input class="colorselect ltcolor" name="lt_menubgcolor" type="text" value="<?php if($this->config->get('lt_menubgcolor') == '') { ?>FFFFFF<?php } else { echo $this->config->get('lt_menubgcolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: FFFFFF</span></td>
                </tr>
                <tr>
                    <td>Menu Top Text Color</td>
                    <td><input class="colorselect ltcolor" name="lt_menutoptextcolor" type="text" value="<?php if($this->config->get('lt_menutoptextcolor') == '') { ?>000000<?php } else { echo $this->config->get('lt_menutoptextcolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: 000000</span></td>
                </tr>
                <tr>
                    <td>Menu Top Text Hover Color</td>
                    <td><input class="colorselect ltcolor" name="lt_menutoptexthovercolor" type="text" value="<?php if($this->config->get('lt_menutoptexthovercolor') == '') { ?>E44D2E<?php } else { echo $this->config->get('lt_menutoptexthovercolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: E44D2E</span></td>
                </tr>
                <tr>
                    <td>Menu Top Text Background Hover Color</td>
                    <td><input class="colorselect ltcolor" name="lt_menutoptextbghovercolor" type="text" value="<?php if($this->config->get('lt_menutoptextbghovercolor') == '') { ?>E8E8E8<?php } else { echo $this->config->get('lt_menutoptextbghovercolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: E8E8E8</span></td>
                </tr>
                <tr>
                    <td>Menu Dropdown Text Color</td>
                    <td><input class="colorselect ltcolor" name="lt_menudropdowntextcolor" type="text" value="<?php if($this->config->get('lt_menudropdowntextcolor') == '') { ?>444444<?php } else { echo $this->config->get('lt_menudropdowntextcolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: 444444</span></td>
                </tr>
                <tr>
                    <td>Menu Dropdown Text Hover Color</td>
                    <td><input class="colorselect ltcolor" name="lt_menudropdowntexthovercolor" type="text" value="<?php if($this->config->get('lt_menudropdowntexthovercolor') == '') { ?>E44D2E<?php } else { echo $this->config->get('lt_menudropdowntexthovercolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: E44D2E</span></td>
                </tr>
                <tr>
                    <td>Menu Dropdown Background Color</td>
                    <td><input class="colorselect ltcolor" name="lt_menudropdownbgcolor" type="text" value="<?php if($this->config->get('lt_menudropdownbgcolor') == '') { ?>E8E8E8<?php } else { echo $this->config->get('lt_menudropdownbgcolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: E8E8E8</span></td>
                </tr>
                <tr>
                    <td>Menu Dropdown Background Hover Color</td>
                    <td><input class="colorselect ltcolor" name="lt_menudropdownbghovercolor" type="text" value="<?php if($this->config->get('lt_menudropdownbghovercolor') == '') { ?>FFFFFF<?php } else { echo $this->config->get('lt_menudropdownbghovercolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: FFFFFF</span></td>
                </tr>
            </table>
            <h2 class="layout"><span>Search Color Options</span></h2>
            <table class="form">
                <tr>
                    <td>Search Background Color</td>
                    <td><input class="colorselect ltcolor" name="lt_searchbgcolor" type="text" value="<?php if($this->config->get('lt_searchbgcolor') == '') { ?>000000<?php } else { echo $this->config->get('lt_searchbgcolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: 000000</span></td>
                </tr>
                <tr>
                    <td>Search Text Color</td>
                    <td><input class="colorselect ltcolor" name="lt_searchtextcolor" type="text" value="<?php if($this->config->get('lt_searchtextcolor') == '') { ?>FFFFFF<?php } else { echo $this->config->get('lt_searchtextcolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: FFFFFF</span></td>
                </tr>
                <tr>
                    <td>Search Icon Color</td>
                    <td><input class="colorselect ltcolor" name="lt_searchiconcolor" type="text" value="<?php if($this->config->get('lt_searchiconcolor') == '') { ?>E44D2E<?php } else { echo $this->config->get('lt_searchiconcolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: E44D2E</span></td>
                </tr>
            </table>
        </div>
        <div class="htabs-content" id="tab_footer">
            <h2 class="layout"><span>Footer Color Options</span></h2>
            <table class="form">
                <tr>
                    <td>Footer Background Color</td>
                    <td><input class="colorselect ltcolor" name="lt_footerbgcolor" type="text" value="<?php if($this->config->get('lt_footerbgcolor') == '') { ?>DDDDDD<?php } else { echo $this->config->get('lt_footerbgcolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: DDDDDD</span></td>
                </tr>
                <tr>
                    <td>Footer Heading Color</td>
                    <td><input class="colorselect ltcolor" name="lt_footerheadingcolor" type="text" value="<?php if($this->config->get('lt_footerheadingcolor') == '') { ?>444444<?php } else { echo $this->config->get('lt_footerheadingcolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: 444444</span></td>
                </tr>
                <tr>
                    <td>Footer Text Color</td>
                    <td><input class="colorselect ltcolor" name="lt_footertextcolor" type="text" value="<?php if($this->config->get('lt_footertextcolor') == '') { ?>666666<?php } else { echo $this->config->get('lt_footertextcolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: 666666</span></td>
                </tr>
                <tr>
                    <td>Footer Text Hover Color</td>
                    <td><input class="colorselect ltcolor" name="lt_footertexthovercolor" type="text" value="<?php if($this->config->get('lt_footertexthovercolor') == '') { ?>444444<?php } else { echo $this->config->get('lt_footertexthovercolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: 444444</span></td>
                </tr>
                <tr>
                    <td>Powered Background Color</td>
                    <td><input class="colorselect ltcolor" name="lt_poweredbgcolor" type="text" value="<?php if($this->config->get('lt_poweredbgcolor') == '') { ?>333333<?php } else { echo $this->config->get('lt_poweredbgcolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: 333333</span></td>
                </tr>
                <tr>
                    <td>Powered Text Color</td>
                    <td><input class="colorselect ltcolor" name="lt_poweredtextcolor" type="text" value="<?php if($this->config->get('lt_poweredtextcolor') == '') { ?>929191<?php } else { echo $this->config->get('lt_poweredtextcolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: 929191</span></td>
                </tr>
                <tr>
                    <td>Powered Link Color</td>
                    <td><input class="colorselect ltcolor" name="lt_poweredlinkcolor" type="text" value="<?php if($this->config->get('lt_poweredlinkcolor') == '') { ?>FFFFFF<?php } else { echo $this->config->get('lt_poweredlinkcolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: FFFFFF</span></td>
                </tr>
                <tr>
                    <td>Powered Link Hover Color</td>
                    <td><input class="colorselect ltcolor" name="lt_poweredlinkhovercolor" type="text" value="<?php if($this->config->get('lt_poweredlinkhovercolor') == '') { ?>929191<?php } else { echo $this->config->get('lt_poweredlinkhovercolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: 929191</span></td>
                </tr>
            </table>
            <h2 class="layout"><span>Social Network Icons</span></h2>
            <div class="content_full" style="padding-bottom:1px; border-radius:0px;">
                <table class="form">
                    <tr>
                        <td style="border:none; padding-bottom:0px;">Social Network Icons Disable / Enable custom options? </td>
                        <td style="border:none;padding-bottom:0px;"><select name="social_status" class="ltcolor">
                                <?php if ($social_status){ ?>
                                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                                <option value="0"><?php echo $text_disabled; ?></option>
                                <?php } else { ?>
                                <option value="1"><?php echo $text_enabled; ?></option>
                                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                                <?php } ?>
                            </select>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;For the link use complete url: http://www.latestthemes.net</td>
                    </tr>
                </table>
            </div>
            <table class="form">
                <tr>
                    <td><ul class="social-icon">
                            <li class="facebook"></li>
                        </ul></td>
                    <td><input type="text" name="socialnetworkicons_footer_facebook" value="<?php echo $this->config->get('socialnetworkicons_footer_facebook'); ?>" size="60" class="ltcolor" />
                        <input type="checkbox" value="1" name="socialnetworkicons_footer_facebook_show"<?php if($socialnetworkicons_footer_facebook_show == '1') echo ' checked="checked"';?> />
                               <span style=" margin-top:4px; position:absolute;">Show</span> <br /></td>
                </tr>
                <tr>
                    <td><ul class="social-icon">
                            <li class="twitter"></li>
                        </ul></td>
                    <td><input type="text" name="socialnetworkicons_footer_twitter" value="<?php echo $this->config->get('socialnetworkicons_footer_twitter'); ?>" size="60" class="ltcolor" />
                        <input type="checkbox" value="1" name="socialnetworkicons_footer_twitter_show"<?php if($socialnetworkicons_footer_twitter_show == '1') echo ' checked="checked"';?> />
                               <span style=" margin-top:4px; position:absolute;">Show</span> <br /></td>
                </tr>
                <tr>
                    <td><ul class="social-icon">
                            <li class="pinterest"></li>
                        </ul></td>
                    <td><input type="text" name="socialnetworkicons_footer_pinterest" value="<?php echo $this->config->get('socialnetworkicons_footer_pinterest'); ?>" size="60" class="ltcolor" />
                        <input type="checkbox" value="1" name="socialnetworkicons_footer_pinterest_show"<?php if($socialnetworkicons_footer_pinterest_show == '1') echo ' checked="checked"';?> />
                               <span style=" margin-top:4px; position:absolute;">Show</span> <br /></td>
                </tr>
                <tr>
                    <td><ul class="social-icon">
                            <li class="gplus"></li>
                        </ul></td>
                    <td><input type="text" name="socialnetworkicons_footer_gplus" value="<?php echo $this->config->get('socialnetworkicons_footer_gplus'); ?>" size="60" class="ltcolor" />
                        <input type="checkbox" value="1" name="socialnetworkicons_footer_gplus_show"<?php if($socialnetworkicons_footer_gplus_show == '1') echo ' checked="checked"';?> />
                               <span style=" margin-top:4px; position:absolute;">Show</span> <br /></td>
                </tr>
                <tr>
                    <td><ul class="social-icon">
                            <li class="rss"></li>
                        </ul></td>
                    <td><input type="text" name="socialnetworkicons_footer_rss" value="<?php echo $this->config->get('socialnetworkicons_footer_rss'); ?>" size="60" class="ltcolor" />
                        <input type="checkbox" value="1" name="socialnetworkicons_footer_rss_show"<?php if($socialnetworkicons_footer_rss_show == '1') echo ' checked="checked"';?> />
                               <span style=" margin-top:4px; position:absolute;">Show</span> <br /></td>
                </tr>
                <tr>
                    <td><ul class="social-icon">
                            <li class="dribbble"></li>
                        </ul></td>
                    <td><input type="text" name="socialnetworkicons_footer_dribbble" value="<?php echo $this->config->get('socialnetworkicons_footer_dribbble'); ?>" size="60" class="ltcolor" />
                        <input type="checkbox" value="1" name="socialnetworkicons_footer_dribbble_show"<?php if($socialnetworkicons_footer_dribbble_show == '1') echo ' checked="checked"';?> />
                               <span style=" margin-top:4px; position:absolute;">Show</span> <br /></td>
                </tr>
                <tr>
                    <td><ul class="social-icon">
                            <li class="forrst"></li>
                        </ul></td>
                    <td><input type="text" name="socialnetworkicons_footer_forrst" value="<?php echo $this->config->get('socialnetworkicons_footer_forrst'); ?>" size="60" class="ltcolor" />
                        <input type="checkbox" value="1" name="socialnetworkicons_footer_forrst_show"<?php if($socialnetworkicons_footer_forrst_show == '1') echo ' checked="checked"';?> />
                               <span style=" margin-top:4px; position:absolute;">Show</span> <br /></td>
                </tr>
                <tr>
                    <td><ul class="social-icon">
                            <li class="linkedin"></li>
                        </ul></td>
                    <td><input type="text" name="socialnetworkicons_footer_linkedin" value="<?php echo $this->config->get('socialnetworkicons_footer_linkedin'); ?>" size="60" class="ltcolor" />
                        <input type="checkbox" value="1" name="socialnetworkicons_footer_linkedin_show"<?php if($socialnetworkicons_footer_linkedin_show == '1') echo ' checked="checked"';?> />
                               <span style=" margin-top:4px; position:absolute;">Show</span> <br /></td>
                </tr>
            </table>
        </div>
        <div class="htabs-content" id="tab_commonsetting">
            <h2 class="layout"><span>Common Color Options</span></h2>
            <table class="form">
                <tr>
                    <td>Body Text Color</td>
                    <td><input class="colorselect ltcolor" name="lt_bodytextcolor" type="text" value="<?php if($this->config->get('lt_bodytextcolor') == '') { ?>929191<?php } else { echo $this->config->get('lt_bodytextcolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: 929191</span></td>
                </tr>
                <tr>
                    <td>Heading Text Color</td>
                    <td><input class="colorselect ltcolor" name="lt_headingtextcolor" type="text" value="<?php if($this->config->get('lt_headingtextcolor') == '') { ?>444444<?php } else { echo $this->config->get('lt_headingtextcolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: 444444</span></td>
                </tr>
            </table>
            <h2 class="layout"><span>Breadcrumb Color Options</span></h2>
            <table class="form">
                <tr>
                    <td>Breadcrumb Background Color</td>
                    <td><input class="colorselect ltcolor" name="lt_breadcrumbbgcolor" type="text" value="<?php if($this->config->get('lt_breadcrumbbgcolor') == '') { ?>EEEEEE<?php } else { echo $this->config->get('lt_breadcrumbbgcolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: EEEEEE</span></td>
                </tr>
                <tr>
                    <td>Breadcrumb Link Color</td>
                    <td><input class="colorselect ltcolor" name="lt_breadcrumblinkcolor" type="text" value="<?php if($this->config->get('lt_breadcrumblinkcolor') == '') { ?>666666<?php } else { echo $this->config->get('lt_breadcrumblinkcolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: 666666</span></td>
                </tr>
                <tr>
                    <td>Breadcrumb Link Hover Color</td>
                    <td><input class="colorselect ltcolor" name="lt_breadcrumblinkhovercolor" type="text" value="<?php if($this->config->get('lt_breadcrumblinkhovercolor') == '') { ?>E44D2E<?php } else { echo $this->config->get('lt_breadcrumblinkhovercolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: E44D2E</span></td>
                </tr>
            </table>
            <h2 class="layout"><span>Product Grid Color Options</span></h2>
            <table class="form">
                <tr>
                    <td>Product Border Color</td>
                    <td><input class="colorselect ltcolor" name="lt_productbordercolor" type="text" value="<?php if($this->config->get('lt_productbordercolor') == '') { ?>E5E5E5<?php } else { echo $this->config->get('lt_productbordercolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: E5E5E5</span></td>
                </tr>
                <tr>
                    <td>Product Title Color</td>
                    <td><input class="colorselect ltcolor" name="lt_producttitlecolor" type="text" value="<?php if($this->config->get('lt_producttitlecolor') == '') { ?>000000<?php } else { echo $this->config->get('lt_producttitlecolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: 000000</span></td>
                </tr>
                <tr>
                    <td>Product Title Hover Color</td>
                    <td><input class="colorselect ltcolor" name="lt_producttitlehovercolor" type="text" value="<?php if($this->config->get('lt_producttitlehovercolor') == '') { ?>E44D2E<?php } else { echo $this->config->get('lt_producttitlehovercolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: E44D2E</span></td>
                </tr>
                <tr>
                    <td>Product Price Color</td>
                    <td><input class="colorselect ltcolor" name="lt_productpricecolor" type="text" value="<?php if($this->config->get('lt_productpricecolor') == '') { ?>E44D2E<?php } else { echo $this->config->get('lt_productpricecolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: E44D2E</span></td>
                </tr>
                <tr>
                    <td>Product Old-Price Color</td>
                    <td><input class="colorselect ltcolor" name="lt_productoldpricecolor" type="text" value="<?php if($this->config->get('lt_productoldpricecolor') == '') { ?>999999<?php } else { echo $this->config->get('lt_productoldpricecolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: 999999</span></td>
                </tr>
                <tr>
                    <td>Add To Wishlist Color</td>
                    <td><input class="colorselect ltcolor" name="lt_wishlistcolor" type="text" value="<?php if($this->config->get('lt_wishlistcolor') == '') { ?>E44D2E<?php } else { echo $this->config->get('lt_wishlistcolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: E44D2E</span></td>
                </tr>
                <tr>
                    <td>Add To Wishlist Text Color</td>
                    <td><input class="colorselect ltcolor" name="lt_wishlisthovercolor" type="text" value="<?php if($this->config->get('lt_wishlisthovercolor') == '') { ?>FFFFFF<?php } else { echo $this->config->get('lt_wishlisthovercolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: FFFFFF</span></td>
                </tr>
                <tr>
                    <td>Add To Compare Color</td>
                    <td><input class="colorselect ltcolor" name="lt_comparecolor" type="text" value="<?php if($this->config->get('lt_comparecolor') == '') { ?>202020<?php } else { echo $this->config->get('lt_comparecolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: 202020</span></td>
                </tr>
                <tr>
                    <td>Add To Compare Text Color</td>
                    <td><input class="colorselect ltcolor" name="lt_comparehovercolor" type="text" value="<?php if($this->config->get('lt_comparehovercolor') == '') { ?>FFFFFF<?php } else { echo $this->config->get('lt_comparehovercolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: FFFFFF</span></td>
                </tr>
                <tr>
                    <td>Add To Cart Color</td>
                    <td><input class="colorselect ltcolor" name="lt_cartcolor" type="text" value="<?php if($this->config->get('lt_cartcolor') == '') { ?>E44D2E<?php } else { echo $this->config->get('lt_cartcolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: E44D2E</span></td>
                </tr>
                <tr>
                    <td>Add To Cart Text Color</td>
                    <td><input class="colorselect ltcolor" name="lt_carthovercolor" type="text" value="<?php if($this->config->get('lt_carthovercolor') == '') { ?>FFFFFF<?php } else { echo $this->config->get('lt_carthovercolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: FFFFFF</span></td>
                </tr>
                <tr>
                    <td>Discount Ribbon Color</td>
                    <td><input class="colorselect ltcolor" name="lt_discountribboncolor" type="text" value="<?php if($this->config->get('lt_discountribboncolor') == '') { ?>E44D2E<?php } else { echo $this->config->get('lt_discountribboncolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: E44D2E</span></td>
                </tr>
                <tr>
                    <td>Discount Ribbon Text Color</td>
                    <td><input class="colorselect ltcolor" name="lt_discountribbontextcolor" type="text" value="<?php if($this->config->get('lt_discountribbontextcolor') == '') { ?>FFFFFF<?php } else { echo $this->config->get('lt_discountribbontextcolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: FFFFFF</span></td>
                </tr>
               
            </table>
            <h2 class="layout"><span>Category Module Color Options</span></h2>
            <table class="form">
                <tr>
                    <td>Category Text Color</td>
                    <td><input class="colorselect ltcolor" name="lt_categorytextcolor" type="text" value="<?php if($this->config->get('lt_categorytextcolor') == '') { ?>999999<?php } else { echo $this->config->get('lt_categorytextcolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: 999999</span></td>
                </tr>
                <tr>
                    <td>Category Text Hover Color</td>
                    <td><input class="colorselect ltcolor" name="lt_categorytexthovercolor" type="text" value="<?php if($this->config->get('lt_categorytexthovercolor') == '') { ?>E44D2E<?php } else { echo $this->config->get('lt_categorytexthovercolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: E44D2E</span></td>
                </tr>
                <tr>
                    <td>Category Active Color</td>
                    <td><input class="colorselect ltcolor" name="lt_categoryactivecolor" type="text" value="<?php if($this->config->get('lt_categoryactivecolor') == '') { ?>E44D2E<?php } else { echo $this->config->get('lt_categoryactivecolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: E44D2E</span></td>
                </tr>
            </table>
            <h2 class="layout"><span>Button Color Options</span></h2>
            <table class="form">
                <tr>
                    <td>Default Button Background Color</td>
                    <td><input class="colorselect ltcolor" name="lt_defaultbtnbgcolor" type="text" value="<?php if($this->config->get('lt_defaultbtnbgcolor') == '') { ?>E44D2E<?php } else { echo $this->config->get('lt_defaultbtnbgcolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: E44D2E</span></td>
                </tr>
                <tr>
                    <td>Default Button Text Color</td>
                    <td><input class="colorselect ltcolor" name="lt_defaultbtntextcolor" type="text" value="<?php if($this->config->get('lt_defaultbtntextcolor') == '') { ?>FFFFFF<?php } else { echo $this->config->get('lt_defaultbtntextcolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: FFFFFF</span></td>
                </tr>
                <tr>
                    <td>Default Button Background Hover Color</td>
                    <td><input class="colorselect ltcolor" name="lt_defaultbtnbghovercolor" type="text" value="<?php if($this->config->get('lt_defaultbtnbghovercolor') == '') { ?>000000<?php } else { echo $this->config->get('lt_defaultbtnbghovercolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: 000000</span></td>
                </tr>
                <tr>
                    <td>Default Button Text Hover Color</td>
                    <td><input class="colorselect ltcolor" name="lt_defaultbtntexthovercolor" type="text" value="<?php if($this->config->get('lt_defaultbtntexthovercolor') == '') { ?>FFFFFF<?php } else { echo $this->config->get('lt_defaultbtntexthovercolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: FFFFFF</span></td>
                </tr>
            </table>
            <h2 class="layout"><span>Tab Color Options</span></h2>
            <table class="form">
                <tr>
                    <td>Active Tab Backgound Color</td>
                    <td><input class="colorselect ltcolor" name="lt_activetabbgcolor" type="text" value="<?php if($this->config->get('lt_activetabbgcolor') == '') { ?>FAFAFA<?php } else { echo $this->config->get('lt_activetabbgcolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: FAFAFA</span></td>
                </tr>
                <tr>
                <td>Active Tab Text Color</td>
                <td><input class="colorselect ltcolor" name="lt_activetabtextcolor" type="text" value="<?php if($this->config->get('lt_activetabtextcolor') == '') { ?>000000<?php } else { echo $this->config->get('lt_activetabtextcolor');} ?>" />
                    <span style=" margin-top:4px; position:absolute;">Default value: 000000</span></td>
                </tr>
                <tr>
                    <td>Secondary Tab Backgound Color</td>
                    <td><input class="colorselect ltcolor" name="lt_secondarytabbgcolor" type="text" value="<?php if($this->config->get('lt_secondarytabbgcolor') == '') { ?>E5E5E5<?php } else { echo $this->config->get('lt_secondarytabbgcolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: E5E5E5</span></td>
                </tr>
                <tr>
                    <td>Secondary Tab Text Color</td>
                    <td><input class="colorselect ltcolor" name="lt_secondarytabtextcolor" type="text" value="<?php if($this->config->get('lt_secondarytabtextcolor') == '') { ?>666666<?php } else { echo $this->config->get('lt_secondarytabtextcolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: 666666</span></td>
                </tr>
                <tr>
                    <td>Tab Content Background Color</td>
                    <td><input class="colorselect ltcolor" name="lt_tabcontentbgcolor" type="text" value="<?php if($this->config->get('lt_tabcontentbgcolor') == '') { ?>FAFAFA<?php } else { echo $this->config->get('lt_tabcontentbgcolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: FAFAFA</span></td>
                </tr>
            </table>
            <h2 class="layout"><span>Sidebar Color Options</span></h2>
            <table class="form">
                <tr>
                    <td>Sidebar Menu Backgound Color</td>
                    <td><input class="colorselect ltcolor" name="lt_sidebarmenubgcolor" type="text" value="<?php if($this->config->get('lt_sidebarmenubgcolor') == '') { ?>F2F2F2<?php } else { echo $this->config->get('lt_sidebarmenubgcolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: F2F2F2</span></td>
                </tr>
                <tr>
                    <td>Category Title Background Color</td>
                    <td><input class="colorselect ltcolor" name="lt_categorytitlebgcolor" type="text" value="<?php if($this->config->get('lt_categorytitlebgcolor') == '') { ?>E44D2E<?php } else { echo $this->config->get('lt_categorytitlebgcolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: E44D2E</span></td>
                </tr>
                <tr>
                    <td>Category Title Text Color</td>
                    <td><input class="colorselect ltcolor" name="lt_categorytitletextcolor" type="text" value="<?php if($this->config->get('lt_categorytitletextcolor') == '') { ?>FFFFFF<?php } else { echo $this->config->get('lt_categorytitletextcolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: FFFFFF</span></td>
                </tr>
                <tr>
                    <td>Account Title Background Color</td>
                    <td><input class="colorselect ltcolor" name="lt_accounttitlebgcolor" type="text" value="<?php if($this->config->get('lt_accounttitlebgcolor') == '') { ?>E44D2E<?php } else { echo $this->config->get('lt_accounttitlebgcolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: E44D2E</span></td>
                </tr>
                <tr>
                    <td>Account Title Text Color</td>
                    <td><input class="colorselect ltcolor" name="lt_accounttitletextcolor" type="text" value="<?php if($this->config->get('lt_accounttitletextcolor') == '') { ?>FFFFFF<?php } else { echo $this->config->get('lt_accounttitletextcolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: FFFFFF</span></td>
                </tr>
                <tr>
                    <td>Affiliate Title Background Color</td>
                    <td><input class="colorselect ltcolor" name="lt_affiliatetitlebgcolor" type="text" value="<?php if($this->config->get('lt_affiliatetitlebgcolor') == '') { ?>E44D2E<?php } else { echo $this->config->get('lt_affiliatetitlebgcolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: E44D2E</span></td>
                </tr>
                <tr>
                    <td>Affiliate Title Text Color</td>
                    <td><input class="colorselect ltcolor" name="lt_affiliatetitletextcolor" type="text" value="<?php if($this->config->get('lt_affiliatetitletextcolor') == '') { ?>FFFFFF<?php } else { echo $this->config->get('lt_affiliatetitletextcolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: FFFFFF</span></td>
                </tr>
                <tr>
                    <td>Information Title Background Color</td>
                    <td><input class="colorselect ltcolor" name="lt_informationtitlebgcolor" type="text" value="<?php if($this->config->get('lt_informationtitlebgcolor') == '') { ?>E44D2E<?php } else { echo $this->config->get('lt_informationtitlebgcolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: E44D2E</span></td>
                </tr>
                <tr>
                    <td>Information Title Text Color</td>
                    <td><input class="colorselect ltcolor" name="lt_informationtitletextcolor" type="text" value="<?php if($this->config->get('lt_informationtitletextcolor') == '') { ?>FFFFFF<?php } else { echo $this->config->get('lt_informationtitletextcolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: FFFFFF</span></td>
                </tr>
                <tr>
                    <td>Featured Title Background Color</td>
                    <td><input class="colorselect ltcolor" name="lt_featuredtitlebgcolor" type="text" value="<?php if($this->config->get('lt_featuredtitlebgcolor') == '') { ?>E44D2E<?php } else { echo $this->config->get('lt_featuredtitlebgcolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: E44D2E</span></td>
                </tr>
                <tr>
                    <td>Featured Title Text Color</td>
                    <td><input class="colorselect ltcolor" name="lt_featuredtitletextcolor" type="text" value="<?php if($this->config->get('lt_featuredtitletextcolor') == '') { ?>FFFFFF<?php } else { echo $this->config->get('lt_featuredtitletextcolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: FFFFFF</span></td>
                </tr>
                <tr>
                    <td>Latest Title Background Color</td>
                    <td><input class="colorselect ltcolor" name="lt_latesttitlebgcolor" type="text" value="<?php if($this->config->get('lt_latesttitlebgcolor') == '') { ?>E44D2E<?php } else { echo $this->config->get('lt_latesttitlebgcolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: E44D2E</span></td>
                </tr>
                <tr>
                    <td>Latest Title Text Color</td>
                    <td><input class="colorselect ltcolor" name="lt_latesttitletextcolor" type="text" value="<?php if($this->config->get('lt_latesttitletextcolor') == '') { ?>FFFFFF<?php } else { echo $this->config->get('lt_latesttitletextcolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: FFFFFF</span></td>
                </tr>
                <tr>
                    <td>Bestseller Title Background Color</td>
                    <td><input class="colorselect ltcolor" name="lt_bestsellertitlebgcolor" type="text" value="<?php if($this->config->get('lt_bestsellertitlebgcolor') == '') { ?>E44D2E<?php } else { echo $this->config->get('lt_bestsellertitlebgcolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: E44D2E</span></td>
                </tr>
                <tr>
                    <td>Bestseller Title Text Color</td>
                    <td><input class="colorselect ltcolor" name="lt_bestsellertitletextcolor" type="text" value="<?php if($this->config->get('lt_bestsellertitletextcolor') == '') { ?>FFFFFF<?php } else { echo $this->config->get('lt_bestsellertitletextcolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: FFFFFF</span></td>
                </tr>
                <tr>
                    <td>Special Title Background Color</td>
                    <td><input class="colorselect ltcolor" name="lt_specialtitlebgcolor" type="text" value="<?php if($this->config->get('lt_specialtitlebgcolor') == '') { ?>E44D2E<?php } else { echo $this->config->get('lt_specialtitlebgcolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: E44D2E</span></td>
                </tr>
                <tr>
                    <td>Special Title Text Color</td>
                    <td><input class="colorselect ltcolor" name="lt_specialtitletextcolor" type="text" value="<?php if($this->config->get('lt_specialtitletextcolor') == '') { ?>FFFFFF<?php } else { echo $this->config->get('lt_specialtitletextcolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: FFFFFF</span></td>
                </tr>
            </table>
        </div>
        <div class="htabs-content" id="tab_customfooterblock">
            <h2 class="layout"><span>Custom Footer Color Options</span></h2>
            <table class="form">
                <tr>
                    <td> Custom Footer Background Color</td>
                    <td><input class="colorselect ltcolor" name="lt_customfooterbgcolor" type="text" value="<?php if($this->config->get('lt_customfooterbgcolor') == '') { ?>EEEEEE<?php } else { echo $this->config->get('lt_customfooterbgcolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: EEEEEE</span></td>
                </tr>
                <tr>
                    <td> Custom Footer Icon Color</td>
                    <td><input class="colorselect ltcolor" name="lt_customfootericoncolor" type="text" value="<?php if($this->config->get('lt_customfootericoncolor') == '') { ?>666666<?php } else { echo $this->config->get('lt_customfootericoncolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: 666666</span></td>
                </tr>
                <tr>
                    <td> Custom Footer Text Color</td>
                    <td><input class="colorselect ltcolor" name="lt_customfootertextcolor" type="text" value="<?php if($this->config->get('lt_customfootertextcolor') == '') { ?>666666<?php } else { echo $this->config->get('lt_customfootertextcolor');} ?>" />
                        <span style=" margin-top:4px; position:absolute;">Default value: 666666</span></td>
                </tr>
            </table>
            <h2 class="layout"><span>Custom Footer Icon Block</span></h2>
            <table class="form">
                <tr>
                    <td>Disable / Enable Custom Footer Icon Block in Footer </td>
                    <td><select name="customfootericonblock_status" class="ltcolor">
                            <?php if ($customfootericonblock_status){ ?>
                            <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                            <option value="0"><?php echo $text_disabled; ?></option>
                            <?php } else { ?>
                            <option value="1"><?php echo $text_enabled; ?></option>
                            <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                            <?php } ?>
                        </select></td>
                </tr>
                <tr>
                    <td> Custom Footer Block 1</td>
                    <td><input class="ltcolor"  name="icon1" type="text" value="<?php if($this->config->get('icon1') == '') { ?><?php } else { echo $this->config->get('icon1');} ?>" />
                        <input class="ltcolor"  name="icontext1" type="text" value="<?php if($this->config->get('icontext1') == '') { ?><?php } else { echo $this->config->get('icontext1');} ?>" />
                        <input type="checkbox" value="1" name="icon1show"<?php if($icon1show == '1') echo ' checked="checked"';?> />
                               <span style=" margin-top:4px; position:absolute;">Show</span> <br />
                        <span style="margin-left:10px;">Eg: icon-truck  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      Free Shipping</span><?php if($icon1show == '1') { $icon1show = 1;} else { $icon1show = 0; } ?></td>
                </tr>
                <tr>
                    <td> Custom Footer Block 2</td>
                    <td><input class="ltcolor"  name="icon2" type="text" value="<?php if($this->config->get('icon2') == '') { ?><?php } else { echo $this->config->get('icon2');} ?>" />
                        <input class="ltcolor"  name="icontext2" type="text" value="<?php if($this->config->get('icontext2') == '') { ?><?php } else { echo $this->config->get('icontext2');} ?>" />
                        <input type="checkbox" value="1" name="icon2show"<?php if($icon2show == '1') echo ' checked="checked"';?> />
                               <span style=" margin-top:4px; position:absolute;">Show</span> <br />
                        <span style="margin-left:10px;">Eg: icon-truck  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      Free Shipping</span><?php if($icon2show == '1') { $icon2show = 1;} else { $icon2show = 0; } ?></td>
                </tr>
                <tr>
                    <td> Custom Footer Block 3</td>
                    <td><input class="ltcolor"  name="icon3" type="text" value="<?php if($this->config->get('icon3') == '') { ?><?php } else { echo $this->config->get('icon3');} ?>" />
                        <input class="ltcolor"  name="icontext3" type="text" value="<?php if($this->config->get('icontext3') == '') { ?><?php } else { echo $this->config->get('icontext3');} ?>" />
                        <input type="checkbox" value="1" name="icon3show"<?php if($icon3show == '1') echo ' checked="checked"';?> />
                               <span style=" margin-top:4px; position:absolute;">Show</span> <br />
                        <span style="margin-left:10px;">Eg: icon-truck  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      Free Shipping</span><?php if($icon3show == '1') { $icon3show = 1;} else { $icon3show = 0; } ?></td>
                </tr>
                <tr>
                    <td> Custom Footer Block 4</td>
                    <td><input class="ltcolor"  name="icon4" type="text" value="<?php if($this->config->get('icon4') == '') { ?><?php } else { echo $this->config->get('icon4');} ?>" />
                        <input class="ltcolor"  name="icontext4" type="text" value="<?php if($this->config->get('icontext4') == '') { ?><?php } else { echo $this->config->get('icontext4');} ?>" />
                        <input type="checkbox" value="1" name="icon4show"<?php if($icon4show == '1') echo ' checked="checked"';?> />
                               <span style=" margin-top:4px; position:absolute;">Show</span> <br />
                        <span style="margin-left:10px;">Eg: icon-truck  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      Free Shipping</span><?php if($icon4show == '1') { $icon4show = 1;} else { $icon4show = 0; } ?></td>
                </tr>
                <tr>
                    <td> Custom Footer Block 5</td>
                    <td><input  name="icon5" class="ltcolor" type="text" value="<?php if($this->config->get('icon5') == '') { ?><?php } else { echo $this->config->get('icon5');} ?>" />
                        <input  name="icontext5" class="ltcolor" type="text" value="<?php if($this->config->get('icontext5') == '') { ?><?php } else { echo $this->config->get('icontext5');} ?>" />
                        <input type="checkbox" value="1" name="icon5show"<?php if($icon5show == '1') echo ' checked="checked"';?> />
                               <span style=" margin-top:4px; position:absolute;">Show</span> <br />
                        <span style="margin-left:10px;">Eg: icon-truck  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      Free Shipping</span>
                        <?php if($icon5show == '1') { $icon5show = 1;} else { $icon5show = 0; } ?></td>
                </tr>
            </table>
        </div>
        <div class="htabs-content" id="tab_customproduct">
            <h2 class="layout"><span>Custom Product Page Block</span></h2>
            <table class="form">
                <tr>
                    <td>Disable / Enable Custom Product Column in Product Page </td>
                    <td><select name="customproductcolumn_status" class="ltcolor">
                            <?php if ($customproductcolumn_status){ ?>
                            <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                            <option value="0"><?php echo $text_disabled; ?></option>
                            <?php } else { ?>
                            <option value="1"><?php echo $text_enabled; ?></option>
                            <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                            <?php } ?>
                        </select></td>
                </tr>
                <tr>
                    <td>Custom Product Page Title 1</td>
                    <td><input  name="producttexttitle" type="text" value="<?php if($this->config->get('producttexttitle') == '') { ?><?php } else { echo $this->config->get('producttexttitle');} ?>" class="ltcolor" />
                        <input type="checkbox" value="1" name="producttexttitleshow"<?php if($producttexttitleshow == '1') echo ' checked="checked"';?> />
                               Show </td>
                </tr>
                <tr>
                    <td>Custom Product Page Description 1</td>
                    <td><textarea name="producttextdescription" rows="4" cols="80" class="ltcolor"><?php echo $producttextdescription; ?></textarea>
                    </td>
                </tr>
                <tr>
                    <td>Custom Product Page Title 2</td>
                    <td><input  name="producttexttitle2" type="text" value="<?php if($this->config->get('producttexttitle2') == '') { ?><?php } else { echo $this->config->get('producttexttitle2');} ?>" class="ltcolor" />
                        <input type="checkbox" value="1" name="producttexttitle2show"<?php if($producttexttitle2show == '1') echo ' checked="checked"';?> />
                               Show </td>
                </tr>
                <tr>
                    <td>Custom Product Page Description 2</td>
                    <td><textarea name="producttextdescription2" rows="4" cols="80" class="ltcolor"><?php echo $producttextdescription2; ?></textarea>
                        </td>
                </tr>
                <tr>
                    <td>Custom Product Page Title 3</td>
                    <td><input  name="producttexttitle3" type="text" value="<?php if($this->config->get('producttexttitle3') == '') { ?><?php } else { echo $this->config->get('producttexttitle3');} ?>" class="ltcolor" />
                        <input type="checkbox" value="1" name="producttexttitle3show"<?php if($producttexttitle3show == '1') echo ' checked="checked"';?> />
                               Show </td>
                </tr>
                <tr>
                    <td>Custom Product Page Description 3</td>
                    <td><textarea name="producttextdescription3" rows="4" cols="80" class="ltcolor"><?php echo $producttextdescription3; ?></textarea>
                        </td>
                </tr>
               
            </table>
        </div>
        <div class="htabs-content" id="tab_socialblock">
            <h2 class="layout"><span>Social & Custom Block</span></h2>
            <div class="content_full" style="padding-bottom:1px; border-radius:0px;">
                <table class="form">
                    <tr>
                        <td style="border:none; padding-bottom:0px;">Social Block Disable / Enable custom options? </td>
                        <td style="border:none;padding-bottom:0px;"><select name="socialfeeds_status" class="ltcolor">
                                <?php if ($socialfeeds_status){ ?>
                                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                                <option value="0"><?php echo $text_disabled; ?></option>
                                <?php } else { ?>
                                <option value="1"><?php echo $text_enabled; ?></option>
                                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                                <?php } ?>
                            </select></td>
                    </tr>
                </table>
            </div>
            <table class="form">
                <tr>
                    <td><ul class="social-icon">
                            <li class="facebook"></li>
                        </ul></td>
                    <td><input type="text" size="80" class="ltcolor" name="facebook_link" value="<?php echo $facebook_link; ?>" />
                        <select name="facebook_status" class="ltcolor">
                            <?php if ($facebook_status) { ?>
                            <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                            <option value="0"><?php echo $text_disabled; ?></option>
                            <?php } else { ?>
                            <option value="1"><?php echo $text_enabled; ?></option>
                            <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                            <?php } ?>
                        </select>
                        <br />
                        <span style="margin-left:10px;">Eg: http://facebook.com/facebook</span></td>
                </tr>
                <tr>
                    <td><ul class="social-icon">
                            <li class="twitter"></li>
                        </ul></td>
                    <td>
                        <input type="text" size="80" class="ltcolor" name="twitter_widgetid" value="<?php echo $twitter_widgetid; ?>" />
                        <select name="twitter_column_status" class="ltcolor">
                            <?php if ($twitter_column_status) { ?>
                            <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                            <option value="0"><?php echo $text_disabled; ?></option>
                            <?php } else { ?>
                            <option value="1"><?php echo $text_enabled; ?></option>
                            <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                            <?php } ?>
                        </select>
                        <br />
                        <span style="margin-left:10px;">Eg: Twitter Widget ID</span>
                    </td>
                </tr>
                <tr>
                    <td style="vertical-align:top;"><ul class="social-icon">
                            <li class="customblok"></li>
                        </ul></td>
                    <td>
                        <input type="text" name="custom_header_text" size="80" class="ltcolor" value="<?php echo $this->config->get('custom_header_text'); ?>" size="60" />
                        <select name="custom_footer_column_status" class="ltcolor">
                            <?php if ($custom_footer_column_status) { ?>
                            <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                            <option value="0"><?php echo $text_disabled; ?></option>
                            <?php } else { ?>
                            <option value="1"><?php echo $text_enabled; ?></option>
                            <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                            <?php } ?>
                        </select>
                        <br />
                        <textarea name="custom_columndescription" rows="10" cols="80" style=" margin-left: 9px;
                                  margin-top: 10px;"><?php echo $custom_columndescription; ?></textarea></td>
                </tr>
                <tr>
                    <td style="vertical-align:top;"><ul class="social-icon">
                            <li class="youtube"></li>
                        </ul></td>
                    <td>
                        <textarea name="youtube_iframecode" rows="10" cols="80" style=" margin-left: 9px;
                                  margin-top: 10px;"><?php echo $youtube_iframecode; ?></textarea>
                        <select name="youtube_iframecode_status" class="ltcolor" style=" margin-top: 10px; position:absolute;">
                            <?php if ($youtube_iframecode_status) { ?>
                            <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                            <option value="0"><?php echo $text_disabled; ?></option>
                            <?php } else { ?>
                            <option value="1"><?php echo $text_enabled; ?></option>
                            <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                            <?php } ?>
                        </select>
                    </td>
                </tr>
            </table>
            <h2 class="layout"><span>Contact Block</span></h2>
            <div class="content_full" style="padding-bottom:1px; border-radius:0px;">
                <table class="form">
                    <tr>
                        <td style="border:none; padding-bottom:0px;">Social & Contact Block Disable / Enable custom options? </td>
                        <td style="border:none;padding-bottom:0px;"><select name="contact_status" class="ltcolor">
                                <?php if ($contact_status){ ?>
                                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                                <option value="0"><?php echo $text_disabled; ?></option>
                                <?php } else { ?>
                                <option value="1"><?php echo $text_enabled; ?></option>
                                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                                <?php } ?>
                            </select></td>
                    </tr>
                </table>
            </div>
            <table class="form">
               <tr>
        <td style="vertical-align:top;">Contact Title</td>
        <td><input type="text" name="contact_title" value="<?php echo $this->config->get('contact_title'); ?>" size="80" class="ltcolor" /></td>
       
      </tr>
      <tr>
        <td ><?php echo $text_store_name; ?></td>
        <td><input type="text" name="store_name" value="<?php echo $this->config->get('store_name'); ?>" size="80" class="ltcolor" /> <input type="checkbox" value="1" name="store_name_show"<?php if($store_name_show == '1') echo ' checked="checked"';?> /> <span style=" margin-top:4px; position:absolute;">Show</span></td>
       
      </tr>
      <tr>
        <td><?php echo $text_store_address; ?></td>
        <td><input type="text" class="ltcolor" name="store_address" value="<?php echo $this->config->get('store_address'); ?>" size="80" />    <input type="checkbox" value="1" name="store_address_show"<?php if($store_address_show == '1') echo ' checked="checked"';?> /> <span style=" margin-top:4px; position:absolute;">Show</span></td>
    
      </tr>
      <tr>
        <td><?php echo $text_store_phone; ?></td>
        <td><input type="text" class="ltcolor" name="store_phone" value="<?php echo $this->config->get('store_phone'); ?>" size="80" />  <input type="checkbox" value="1" name="store_phone_show"<?php if($store_phone_show == '1') echo ' checked="checked"';?> /> <span style=" margin-top:4px; position:absolute;">Show</span></td>
        
      </tr>
      <tr>
        <td><?php echo $text_store_email; ?></td>
        <td><input type="text" class="ltcolor" name="store_email" value="<?php echo $this->config->get('store_email'); ?>" size="80" />  <input type="checkbox" value="1" name="store_email_show"<?php if($store_email_show == '1') echo ' checked="checked"';?> /> <span style=" margin-top:4px; position:absolute;">Show</span></td>
       
      </tr>
            </table>
        </div>
        <div class="htabs-content" id="tab_paymenticons">
            <h2 class="layout"><span>Payment Icons</span></h2>
            <div class="content_full" style="padding-bottom:1px; border-radius:0px;">
                <table class="form">
                    <tr>
                        <td style="border:none; padding-bottom:0px;">Payment Block Disable / Enable custom options? </td>
                        <td style="border:none;padding-bottom:0px;"><select name="payment_status" class="ltcolor">
                                <?php if ($payment_status){ ?>
                                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                                <option value="0"><?php echo $text_disabled; ?></option>
                                <?php } else { ?>
                                <option value="1"><?php echo $text_enabled; ?></option>
                                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                                <?php } ?>
                            </select></td>
                    </tr>
                </table>
            </div>
            <table class="form">
                <tr>
                    <td><span class="paymentfooter checkout"></span></td>
                    <td><input type="text" name="checkout"  class="ltcolor" value="<?php echo $this->config->get('checkout'); ?>" size="60" />
                        <input type="checkbox" value="1" name="checkout_show"<?php if($checkout_show == '1') echo ' checked="checked"';?> />
                               <span style=" margin-top:4px; position:absolute;">Show</span></td>
                </tr>
                <tr>
                    <td><span class="paymentfooter amex"></span></td>
                    <td><input type="text" name="amex" class="ltcolor" value="<?php echo $this->config->get('amex'); ?>" size="60" />
                        <input type="checkbox" value="1" name="amex_show"<?php if($amex_show == '1') echo ' checked="checked"';?> />
                               <span style=" margin-top:4px; position:absolute;">Show</span></td>
                </tr>
                <tr>
                    <td><span class="paymentfooter cirrus"></span></td>
                    <td><input type="text" name="cirrus" class="ltcolor" value="<?php echo $this->config->get('cirrus'); ?>" size="60" />
                        <input type="checkbox" value="1" name="cirrus_show"<?php if($cirrus_show == '1') echo ' checked="checked"';?> />
                               <span style=" margin-top:4px; position:absolute;">Show</span></td>
                </tr>
                <tr>
                    <td><span class="paymentfooter delta"></span></td>
                    <td><input type="text" name="delta" class="ltcolor" value="<?php echo $this->config->get('delta'); ?>" size="60" />
                        <input type="checkbox" value="1" name="delta_show"<?php if($delta_show == '1') echo ' checked="checked"';?> />
                               <span style=" margin-top:4px; position:absolute;">Show</span></td>
                </tr>
                <tr>
                    <td><span class="paymentfooter direct-debit"></span></td>
                    <td><input type="text" name="directdebit" class="ltcolor" value="<?php echo $this->config->get('directdebit'); ?>" size="60" />
                        <input type="checkbox" value="1" name="directdebit_show"<?php if($directdebit_show == '1') echo ' checked="checked"';?> />
                               <span style=" margin-top:4px; position:absolute;">Show</span></td>
                </tr>
                <tr>
                    <td><span class="paymentfooter discover"></span></td>
                    <td><input type="text" name="discover" class="ltcolor" value="<?php echo $this->config->get('discover'); ?>" size="60" />
                        <input type="checkbox" value="1" name="discover_show"<?php if($discover_show == '1') echo ' checked="checked"';?> />
                               <span style=" margin-top:4px; position:absolute;">Show</span></td>
                </tr>
                <tr>
                    <td><span class="paymentfooter ebay"></span></td>
                    <td><input type="text" name="ebay" class="ltcolor" value="<?php echo $this->config->get('ebay'); ?>" size="60" />
                        <input type="checkbox" value="1" name="ebay_show"<?php if($ebay_show == '1') echo ' checked="checked"';?> />
                               <span style=" margin-top:4px; position:absolute;">Show</span></td>
                </tr>
                <tr>
                    <td><span class="paymentfooter google"></span></td>
                    <td><input type="text" name="google" class="ltcolor" value="<?php echo $this->config->get('google'); ?>" size="60" />
                        <input type="checkbox" value="1" name="google_show"<?php if($google_show == '1') echo ' checked="checked"';?> />
                               <span style=" margin-top:4px; position:absolute;">Show</span></td>
                </tr>
                <tr>
                    <td><span class="paymentfooter maestro"></span></td>
                    <td><input type="text" name="maestro" class="ltcolor" value="<?php echo $this->config->get('maestro'); ?>" size="60" />
                        <input type="checkbox" value="1" name="maestro_show"<?php if($maestro_show == '1') echo ' checked="checked"';?> />
                               <span style=" margin-top:4px; position:absolute;">Show</span></td>
                </tr>
                <tr>
                    <td><span class="paymentfooter mastercard"></span></td>
                    <td><input type="text" name="mastercard" class="ltcolor" value="<?php echo $this->config->get('mastercard'); ?>" size="60" />
                        <input type="checkbox" value="1" name="mastercard_show"<?php if($mastercard_show == '1') echo ' checked="checked"';?> />
                               <span style=" margin-top:4px; position:absolute;">Show</span></td>
                </tr>
                <tr>
                    <td><span class="paymentfooter moneybookers"></span></td>
                    <td><input type="text" name="moneybookers" class="ltcolor" value="<?php echo $this->config->get('moneybookers'); ?>" size="60" />
                        <input type="checkbox" value="1" name="moneybookers_show"<?php if($moneybookers_show == '1') echo ' checked="checked"';?> />
                               <span style=" margin-top:4px; position:absolute;">Show</span></td>
                </tr>
                <tr>
                    <td><span class="paymentfooter paypal"></span></td>
                    <td><input type="text" name="paypal" class="ltcolor" value="<?php echo $this->config->get('paypal'); ?>" size="60" />
                        <input type="checkbox" value="1" name="paypal_show"<?php if($paypal_show == '1') echo ' checked="checked"';?> />
                               <span style=" margin-top:4px; position:absolute;">Show</span></td>
                </tr>
                <tr>
                    <td><span class="paymentfooter sagepay"></span></td>
                    <td><input type="text" name="sagepay" class="ltcolor" value="<?php echo $this->config->get('sagepay'); ?>" size="60" />
                        <input type="checkbox" value="1" name="sagepay_show"<?php if($sagepay_show == '1') echo ' checked="checked"';?> />
                               <span style=" margin-top:4px; position:absolute;">Show</span></td>
                </tr>
                <tr>
                    <td><span class="paymentfooter solo"></span></td>
                    <td><input type="text" name="solo" class="ltcolor" value="<?php echo $this->config->get('solo'); ?>" size="60" />
                        <input type="checkbox" value="1" name="solo_show"<?php if($solo_show == '1') echo ' checked="checked"';?> />
                               <span style=" margin-top:4px; position:absolute;">Show</span></td>
                </tr>
                <tr>
                    <td><span class="paymentfooter switch"></span></td>
                    <td><input type="text" name="switch" class="ltcolor" value="<?php echo $this->config->get('switch'); ?>" size="60" />
                        <input type="checkbox" value="1" name="switch_show"<?php if($switch_show == '1') echo ' checked="checked"';?> />
                               <span style=" margin-top:4px; position:absolute;">Show</span></td>
                </tr>
                <tr>
                    <td><span class="paymentfooter visa-electron"></span></td>
                    <td><input type="text" name="visaelectron" class="ltcolor" value="<?php echo $this->config->get('visaelectron'); ?>" size="60" />
                        <input type="checkbox" value="1" name="visaelectron_show"<?php if($visaelectron_show == '1') echo ' checked="checked"';?> />
                               <span style=" margin-top:4px; position:absolute;">Show</span></td>
                </tr>
                <tr>
                    <td><span class="paymentfooter visa"></span></td>
                    <td><input type="text" name="visa" class="ltcolor" value="<?php echo $this->config->get('visa'); ?>" size="60" />
                        <input type="checkbox" value="1" name="visa_show"<?php if($visa_show == '1') echo ' checked="checked"';?> />
                               <span style=" margin-top:4px; position:absolute;">Show</span></td>
                </tr>
                <tr>
                    <td><span class="paymentfooter western-union"></span></td>
                    <td><input type="text" name="westernunion" class="ltcolor" value="<?php echo $this->config->get('westernunion'); ?>" size="60" />
                        <input type="checkbox" value="1" name="westernunion_show"<?php if($westernunion_show == '1') echo ' checked="checked"';?> />
                               <span style=" margin-top:4px; position:absolute;">Show</span></td>
                </tr>
                <tr>
                    <td colspan="2"><h2 class="layout"><span>Custom Payment Icons</span></h2>
                        <table id="images" class="list">
                            <thead>
                                <tr>
                                    <td class="left" colspan="2"><?php echo $entry_image; ?></td>
                                    <td></td>
                                </tr>
                            </thead>
                            <?php $image_row = 0; ?>
                            <?php
                            if(!empty($slide_images)){
                            foreach ($slide_images as $key=>$slide_image) {

                            //Capture errors for blank fields
                            if(empty($slide_image['file'])){$preview_image = $no_image;}else{$preview_image = HTTP_CATALOG . 'image/' .  $slide_image['file']; }
                            if(!isset($slide_image['url'])){ $slide_image['url'] == ""; }



                            ?>
                            <tbody id="image_row<?php echo $image_row; ?>">
                                <tr>
                                    <td class="left"><input type="hidden" name="slide_image[<?php echo $image_row; ?>][file]" value="<?php echo $slide_image['file']; ?>" id="image<?php echo $image_row; ?>" />
                                        <img src="<?php echo $preview_image; ?>" alt="" id="preview<?php echo $image_row; ?>" width="100" height="auto" width="auto" height="100"  style="margin: 4px 0px; border: 1px solid #EEEEEE;" onclick="image_upload('image<?php echo $image_row; ?>', 'preview<?php echo $image_row; ?>');" /></td>
                                    <td><?php echo $entry_url; ?>
                                        <input type="text" name="slide_image[<?php echo $image_row; ?>][url]" size="80" value="<?php echo $slide_image['url'] ?>" id="url<?php echo $image_row; ?>" />
                                        <br /></td>
                                    <td class="left"><a onclick="$('#image_row<?php echo $image_row; ?>').remove();" class="button"><span><?php echo $button_remove; ?></span></a></td>
                                </tr>
                            </tbody>
                            <?php $image_row++; ?>
                            <?php }
                            } ?>
                            <tfoot>
                                <tr>
                                    <td class="right" colspan="4"><a onclick="addImage();" class="button"><span><?php echo $button_addslide; ?></span></a></td>
                                </tr>
                            </tfoot>
                        </table></td>
                </tr>
            </table>
        </div>
        <div class="htabs-content" id="tab_googlemap">
            <h2 class="layout"><span>Google Map</span></h2>
            <div class="content_full" style="padding-bottom:1px; border-radius:0px;">
                <table class="form">
                    <tr>
                        <td style="border:none; padding-bottom:0px;">Google Map Disable / Enable custom options? </td>
                        <td style="border:none;padding-bottom:0px;"><select name="googlemap_status" class="ltcolor">
                                <?php if ($googlemap_status){ ?>
                                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                                <option value="0"><?php echo $text_disabled; ?></option>
                                <?php } else { ?>
                                <option value="1"><?php echo $text_enabled; ?></option>
                                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                                <?php } ?>
                            </select></td>
                    </tr>
                </table>
            </div>
            <table class="form">
                <tr>
                    <td>Google Map Code: (Paste the iframe code of the google map of your place)</td>
                    <td><textarea name="googlemap_code" rows="10" cols="80"><?php echo $googlemap_code; ?></textarea></td>
                </tr>
            </table>
        </div>
                            <div class="htabs-content" id="tab_backgroundsetting">
    <h2 class="layout"><span>Background Setting Options</span></h2>
       <div class="content_full" style="padding-bottom:1px; border-radius:0px;">
      <table class="form">
        <tr>
          <td style="border:none; padding-bottom:0px;">Background Setting Disable / Enable custom options? </td>
          <td style="border:none;padding-bottom:0px;"> <select name="bodybackground_status" class="ltcolor">
                                    <?php if ($bodybackground_status){ ?>
                                    <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                                    <option value="0"><?php echo $text_disabled; ?></option>
                                    <?php } else { ?>
                                    <option value="1"><?php echo $text_enabled; ?></option>
                                    <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                                    <?php } ?>
                                </select></td>
        </tr>
      </table>
    </div>
    <table class="form">
     <tr>
        <td>Body Background Color</td>
        <td><input class="colorselect ltcolor" name="lt_body_color" type="text" value="<?php if($this->config->get('lt_body_color') == '') { ?>FFFFFF<?php } else { echo $this->config->get('lt_body_color');} ?>" /> 
          <span style=" margin-top:4px; position:absolute;">Default value: FFFFFF</span></td>
      </tr>
      <tr>
        <td>Body Background pattern
                                <p>Current pattern:
                                    <?php if (isset($lt_body_bg_pattern)) {
                                    echo '<b>';
                                    echo $lt_body_bg_pattern;
                                    }
                                    else {

                                    echo 'No pattern';
                                    }
                                    echo '</b>';
                                    ?>
                                </p>  <br />  <select name="lt_body_bg_pattern" id="<?php echo $text_body_bg_pattern ?>" class="ltcolor">
                                <option value="<?php if (isset($lt_body_bg_pattern)) {

                                        echo $lt_body_bg_pattern;
                                        }
                                        else {

                                        echo 'No_pattern';
                                        }

                                        ?>" selected>
                                    <?php if (isset($lt_body_bg_pattern)) {

                                    echo $lt_body_bg_pattern;
                                    }
                                    else {

                                    echo 'No_pattern';
                                    }

                                    ?>
                                </option>
                                <option value="">No_pattern</option>
                                <?php 

                                for ($i = 1; $i < 41; $i++) {

                                echo '<option value="'. $i . '" id="'. $i . '">' . $i .'</option>';
                                }
                                ?>
                            </select></td>
                                  <script>
                            function displayResult(id,names)
                          {
                              var ee=names;   
                              var e1=id;
                              document.getElementById(ee).value = e1;

                          }
                        </script>
        <td>
                            
                            <br />
                            <?php 

                            for ($i = 1; $i < 41; $i++) {

                            ?>
                            <button style="width:56px;background:none;border:none; height:70px;cursor:pointer;" type="button" onclick="displayResult('<?php echo $i ?>','<?php echo $text_body_bg_pattern?>')"  value="<?php echo $i ?>"><img src="../catalog/view/theme/crypto/image/bg/<?php echo $i ?>.png" width="50" height="50"  /><?php echo $i ?></button>
                            <?php 
                            }
                            ?></td>
      </tr>
      
      <tr>
                            <td>Background Image </br>
                                <?php 
                                if(isset($about_us_image_status) && $about_us_image_status == '1'){
                                ?>
                                <input type="radio"  name="about_us_image_status" value="1" CHECKED/>
                                Yes<br />
                                <input type="radio" name="about_us_image_status" value="0">
                                No
                                <?php 
                                }     else {   ?>
                                <input type="radio"  name="about_us_image_status" value="1" />
                                Yes<br />
                                <input type="radio" name="about_us_image_status" value="0" CHECKED>
                                No
                                <?php   } ?></td>
                            <td><input type="hidden" name="about_us_image" value="<?php echo $about_us_image; ?>" id="about_us_image" />
                                <img width="50" height="50" src="<?php echo $about_us_image_preview; ?>" alt="" id="about_us_image_preview" class="image" onclick="image_upload('about_us_image', 'about_us_image_preview');" />
                           

                           <span style="position:absolute; margin:10px;"> Position:
                                <select name="bg_image_position" class="ltcolor">
                                    <option value="<?php if (isset($bg_image_position)) {

                                            echo $bg_image_position;
                                            }

                                            ?>">
                                        <?php if (isset($bg_image_position)) {

                                        echo $bg_image_position;
                                        }


                                        ?>
                                    </option>
                                    <option value="top center">Top Center</option>
                                    <option value="top left">Top Left</option>
                                    <option value="top right">Top Right</option>
                                    <option value="center">Center</option>
                                    <option value="left">Left</option>
                                    <option value="right">Right</option>
                                    <option value="bottom center">Bottom Center</option>
                                    <option value="bottom left">Bottom Left</option>
                                    <option value="bottom right">Bottom Right</option>
                                </select>
                            
                           Repeat:
                                <select name="bg_image_repeat" class="ltcolor">
                                    <option value="<?php if (isset($bg_image_repeat)) {

                                            echo $bg_image_repeat;
                                            }

                                            ?>">
                                        <?php if (isset($bg_image_repeat)) {

                                        echo $bg_image_repeat;
                                        }
                                        ?>
                                    </option>
                                    <option value="repeat">Repeat</option>
                                    <option value="repeat-x">Repeat-x</option>
                                    <option value="repeat-y">Repeat-y</option>
                                    <option value="no-repeat">No repeat</option>
                                </select>
                            
                           Attachment:
                                                            <select name="bg_image_attachment" class="ltcolor">
                                    <option value="<?php if (isset($bg_image_attachment)) {

                                            echo $bg_image_attachment;
                                            }

                                            ?>">
                                        <?php if (isset($bg_image_attachment)) {

                                        echo $bg_image_attachment;
                                        }


                                        ?>
                                    </option>
                                    <option value="scroll">Scroll</option>
                                    <option value="fixed">Fixed</option>
                                </select>
                                </span>
                            </td>
                        </tr>
    </table>
  </div>
    </div>
     </form>
    <script type="text/javascript"><!--
        $('#settings-tabs a').tabs();
        $('#tabs a').tabs();
        //--></script> 
    <script type="text/javascript"><!--
            <?php foreach ($languages as $language) { ?>
            CKEDITOR.replace('description<?php echo $language['language_id']; ?>', {
        filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
        filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
        filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
        filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
        filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
        filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
    });
        <?php } ?>
    //--></script> 
    <script type="text/javascript"><!--
    function image_upload(field, preview) {
    $('#dialog').remove();
	
    $('#content').prepend('<div id="dialog" style="padding: 3px 0px 0px 0px;"><iframe src="index.php?route=common/filemanager&token=<?php echo $this->session->data['token']; ?>&field=' + encodeURIComponent(field) + '" style="padding:0; margin: 0; display: block; width: 100%; height: 100%;" frameborder="no" scrolling="auto"></iframe></div>');
	
    $('#dialog').dialog({
    title: 'Image manager',
    close: function (event, ui) {
    if ($('#' + field).attr('value')) {
    $.ajax({
    url: 'index.php?route=common/filemanager/image&token=<?php echo $this->session->data['token']; ?>',
    type: 'GET',
    data: 'image=' + encodeURIComponent($('#' + field).attr('value')),
    dataType: 'text',
    success: function(data) {
						
    $('#' + preview).replaceWith('<img src="' + data + '" alt="" id="' + preview + '" class="image" onclick="image_upload(\'' + field + '\', \'' + preview + '\');" />');
    }
    });
    }
    },	
    bgiframe: false,
    width: 700,
    height: 400,
    resizable: false,
    modal: false
    });
    };
    //--></script> 
    <script type="text/javascript"><!--
    var image_row = <?php echo $image_row; ?>;

    function addImage() {
    html  = '<tbody id="image_row' + image_row + '">';
    html += '<tr>';
    html += '<td class="left"><input type="hidden" name="slide_image[' + image_row + '][file]" value="" id="image' + image_row + '" /><img src="<?php echo $no_image; ?>" alt="" id="preview' + image_row + '" style="margin: 4px 0px; border: 1px solid #EEEEEE;"  style="cursor: pointer;" align="top" onclick="image_upload(\'image' + image_row + '\', \'preview' + image_row + '\');"  /></td>';
    html += '<td class="left"><?php echo $entry_url; ?><input type="text" name="slide_image[' + image_row + '][url]" size="80" value="" id="url' + image_row + '" /><br />';
    html += '<td class="left"><a onclick="$(\'#image_row' + image_row  + '\').remove();" class="button"><span><?php echo $button_remove; ?></span></a></td>';
    html += '</tr>';
    html += '</tbody>';

    $('#images tfoot').before(html);

    image_row++;
    }
    //--></script> 
    <script type="text/javascript" src="../admin/view/javascript/jscolor.js"></script> 
    <?php echo $footer; ?>