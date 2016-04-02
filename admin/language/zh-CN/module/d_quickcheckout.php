<?php
// Heading
$_['heading_title']       						= 'Ajax 单页结帐';
$_['heading_title_main']       					= 'Ajax 单页结账';
$_['text_edit'] 								= '编辑 Ajax 单页结账参数';

// Text
$_['text_module']        					 	= '模块';
$_['text_success']      					 	= '成功: 成功修改单页结账模块!';
$_['text_content_top']    						= '内容的上面';
$_['text_content_bottom'] 						= '内容的底部';
$_['text_column_left']    						= '左列显示';
$_['text_column_right']   						= '右列显示';

$_['button_save_and_stay']  					= '保存并停留在本页面';
$_['text_enable'] 								= '激活';
$_['text_guest']  								= '游客';
$_['text_register']  							= '注册';
$_['text_login']  								= '登录';
$_['text_logged_in']  							= '已登陆';
$_['text_yes']   								= '是';
$_['text_no']   								= '否';

$_['text_display']   							= '显示';
$_['text_always_show']   						= '一直显示';

$_['text_require']   							= '必须';
$_['text_input_radio']   						= '单选按钮';
$_['text_input_select']   						= '下拉列表';
$_['text_row']  								= '行';
$_['text_block']  								= '块';
$_['text_popup']  								= '弹出框';
$_['text_width']  								= '宽度:';
$_['text_height']  								= '高度:';

$_['text_home']  								= '首页';

$_['text_intro_home']  							= '定制单页结账，提升销售额';



$_['text_intro_general']  						= '设定单页结账常规项，您也可以设定其位置从而将其作为模块来使用。';
$_['text_intro_login'] 						= '设定Google, Facebook, Twitter 及 VK 登录系统选项。';
$_['text_intro_payment_address']  				= '设定显示或隐藏，从而规范在结账过程中相关信息的填写与否。如果不需要此步，那就隐藏它。';
$_['text_intro_shipping_address']  				= '如账单地址部分，你可以显示或隐藏此部分。请使用拖放方式进行顺序调整。';
$_['text_intro_shipping_method']				= '设定默认值、显示或隐藏此步，并可以选择显示方式(单选按钮组或下拉列表方式)。';
$_['text_intro_payment_method']  				= '如配送方式部分，你可以设定默认值，显示或隐藏此步，可以选择显示方式。';
$_['text_intro_confirm']  						= '定义购物车 - 定义购物车的列数，以及优惠券、礼品券以及红利点数。';
$_['text_intro_design'] 						= '设定结账过程中的显示列数：每一步的宽度以及位置。使用拖放式进行调整。';
$_['text_intro_analytics']  					= '开发中......';
$_['text_intro_plugins']    						= '增加更多的插件以增强功能。如额外的字段、分析等。';

$_['text_general']  							= '常规项设置';
$_['text_payment_address']  					= '账单地址';
$_['text_shipping_address'] 				 	= '配送地址';
$_['text_shipping_method']  					= '配送方式';
$_['text_payment_method']						= '支付方式';
$_['text_confirm']  							= '确认';
$_['text_design']  								= '规划设计';
$_['text_cart']  								= '购物车';
$_['text_payment']  							= '支付';
$_['text_analytics']  							= '分析报告';
$_['text_plugins']  							= '插件';

$_['entry_general_enable']  						= '开启/关闭 单页结账:';
$_['entry_general_default_option']  			= '设定默认参数：';
$_['help_general_default_option'] 				= '为游客设定默认参数。注意：如果选择了游客结账，但结账时包含下载类商品的话，则结账时还是显示注册用户。这是mycncart系统所要求的。';
$_['entry_general_main_checkout']  				= '替换默认结账流程：';
$_['help_general_main_checkout'] 				= '使用Ajax单页结账，替换默认结账流程';
$_['entry_general_clear_session']  				= '页面刷新后清除结账相关会话：';
$_['help_general_clear_session'] 				= '激活此项时，结账页面刷新后，原有的个人数据将被清除。';
$_['entry_general_login_refresh']				= '登录成功后刷新页面：';
$_['help_general_login_refresh']				= '登录时，系统将刷新顶部的相关数据。';
$_['entry_general_default_email']				= '设为默认邮箱:';
$_['help_general_default_email'] 				= '如果你将注册时去掉了电邮，则需要一个默认的电邮来接收顾客的订单信息。否则，接收不到任何信息。';
$_['entry_general_version']  					= '检查新版本:';
$_['help_general_version'] 						= '当检测到新版本时，可以在购买处下载或购买新版本。';
$_['button_version_check']  					= '检测新版本';
$_['entry_general_debug']  						= '调试模式:';
$_['help_general_debug'] 						= '激活调试模式，则在前台可以看到相关的变量';
$_['entry_general_min_order']  					= '设置最小订单金额:';
$_['help_general_min_order'] 					= '只有达到此最小订单金额时才可结账';
$_['text_value_min_order']  					= '最小订单金额为 %s';
$_['entry_general_min_quantity']  				= '设定最低商品数量:';
$_['help_general_min_quantity'] 				= '只有达到此最低商品数量时才可结账';
$_['text_value_min_quantity']  					= '最低商品数量为 %s';
$_['entry_general_trigger']  					= '确认支付按钮样式';
$_['help_general_trigger'] 						= '不同的mycncart的支付方式，可能按钮的样式不一样，可以在此处加上您的样式的id';



//payment_address
$_['entry_payment_address_display']  			= '启用账单地址:';
$_['help_payment_address_display'] 				= '如果禁用账单地址，则填写账单地址项不会显示。请确保没有在账单地址选项中有必填项。';

//shipping_address
$_['entry_shipping_address_display'] 	 		= '启用配送地址:';
$_['help_shipping_address_display'] 			= '如果禁用了配送地址，则填写配送地址项不会显示，但账单地址部分会启用。';

//shipping_method
$_['entry_shipping_method_display']  			= '启用配送方式';
$_['entry_shipping_method_display_options']  	= '显示配送方式';
$_['entry_shipping_method_display_title']  		= '显示配送组别标题';
$_['entry_shipping_method_input_style']  		= '配送方式样式';
$_['entry_shipping_method_default_option']  	= '选择默认配送方式';
$_['help_shipping_method_display'] 				= '可以显示或隐藏配送方式步骤，但必须要选择一个默认的配送方式。';
$_['help_shipping_method_display_options']		= '';
$_['help_shipping_method_display_title'] 		= '隐藏配送方式组别标题，仅仅显示配送方式名称';
$_['help_shipping_method_input_style'] 			= '选择样式：下拉列表还是单选按钮';
$_['help_shipping_method_default_option'] 		= '为每个新访问者设定默认的配送方式。';


//payment_method
$_['entry_payment_method_display']  			= '启用支付方式步骤';
$_['entry_payment_method_display_options'] 		= '显示支付方式';
$_['entry_payment_method_display_images']  		= '显示支付方式图片';
$_['entry_payment_method_input_style']  		= '支付方式样式';
$_['entry_payment_method_default_option']  		= '选择默认支付方式';
$_['help_payment_method_display'] 				= '可以显示或隐藏支付方式步骤，但必须选择了某一个默认的支付方式。';
$_['help_payment_method_display_options'] 		= '';
$_['help_payment_method_display_images'] 		= '可以为单选按钮样式选择是否显示支付方式图片。';
$_['help_payment_method_input_style'] 			= '选择支付方式显示样式：下拉列表或单选按钮';
$_['help_payment_method_default_option'] 		= '为每个新访问者设定默认的支付方式。';

//cart
$_['entry_cart_display']  						= '显示购物车';
$_['entry_cart_columns_image']  				= '显示图片列';
$_['entry_cart_columns_name']  					= '显示名称列';
$_['entry_cart_columns_model']  				= '显示型号列';
$_['entry_cart_columns_quantity']  				= '显示数量列';
$_['entry_cart_columns_price'] 					= '显示单价列';
$_['entry_cart_columns_total']  				= '显示小计列';
$_['entry_cart_option_coupon']  				= '显示优惠券项';
$_['entry_cart_option_voucher']  				= '显示礼品券项';
$_['entry_cart_option_reward']  				= '显示积分项';
$_['entry_confirm_display']  					= '显示确认';
$_['help_cart_display'] 						= '如果隐藏了购物车，则其内所有都隐藏了，但确认按钮会显示以完成订单。';
$_['help_cart_option_coupon'] 					= '显示或隐藏优惠券项。如果达不到最低订单金额设定，则是不会显示的。';
$_['help_cart_option_voucher'] 					= '显示或隐藏折扣券项，如果达不到最低订单金额设定，则是不会显示的。';
$_['help_cart_option_reward'] 					= '显示或隐藏奖励积分项。如果达不到最低订单金额设定，则是不会显示的。注意，奖励积分只对登陆后的会员有效，并且该会员有可用奖励积分时才显示。';


//design
$_['entry_design_theme']  						= '选择显示样式';
$_['entry_design_field']  						= '选择字段样式';
$_['entry_design_login_option']  				= '设定登录参数';
$_['entry_design_login']  						= '选择登录样式';
$_['entry_design_address']  					= '选择地址样式';
$_['entry_design_cart_image_size']  			= '设定鼠标放置在图片上时图片的尺寸';
$_['entry_design_max_width']  					= '结账页面最大宽度';
$_['entry_design_uniform']  					= '复选框样式';
$_['entry_design_only_quickcheckout']  			= '只显示结账部分';
$_['entry_design_column']  						= '设定列';
$_['entry_design_custom_style']  				= '定制样式';

$_['help_payment_address'] 						= '顾客信息及配送地址。';
$_['help_shipping_address'] 					= '配送额外地址';
$_['help_shipping_method'] 						= '第三步。设定默认方法并隐藏此步。';
$_['help_payment_method'] 						= '第四步。设定默认方法并隐藏此步。';
$_['help_cart'] 								= '购物车部分，也可以将其移动到顶部。';
$_['help_payment'] 								= '一些支付方式会需要填写更多选项，如 paypal pro.';
$_['help_confirm'] 								= '最后一步是确认订单。';


$_['help_design_theme'] 						= '选择样式，可以安装其他样式或者自己创建。';
$_['help_design_field'] 						= '行样式，标签会与编辑框在一条线。块样式，标签会位于编辑框上面。';
$_['help_design_login_option'] 					= '在结账页面的开始部分显示或隐藏的选项。';
$_['help_design_login'] 						= '选择登录块的样式。';
$_['help_design_address'] 						= '单选按钮组或下拉列表样式显示已有的地址。';
$_['help_design_cart_image_size']	 			= '当鼠标放置于购物车中商品图片上时，弹出的图片尺寸。';
$_['help_design_max_width'] 					= '如果看到结账页面充斥了整个屏幕宽度，则设定最大的显示宽度。比如 960 px';
$_['help_design_uniform'] 						= '可以禁用结账中的单选按钮和复选框样式。';
$_['help_design_only_quickcheckout'] 			= '启用此项，则不显示网站的顶部，底部以及其他的模组显示部分，只显示单页结账部分。';
$_['help_design_column'] 						= '设定列数。最多设定三列。';
$_['help_design_custom_style'] 					= '为结账页面添加自己的样式，请有经验的CSS美工人员处理此部分。';

// Entry
$_['text_your_address']              			= '地址';
$_['entry_address']           		 			= '地址:';
$_['entry_email']                    			= 'E-Mail 邮箱:';
$_['entry_email_confirm'] 						= '确认 E-mail 邮箱';
$_['entry_password']                 			= '密码:';
$_['entry_confirm']                  			= '确认密码:';
$_['entry_fullname']                			= '姓名:';
$_['entry_telephone']                			= '电话:';
$_['entry_fax']                     			= '传真:';
$_['entry_company']                  			= '公司:';
$_['entry_customer_group']           			= '会有类型:';
$_['entry_company_id']               			= '公司商户号:';
$_['entry_tax_id']                   			= '税号:';
$_['entry_address_1']                			= '地址:';
$_['entry_shipping_telephone']                	= '收件人电话:';
$_['entry_postcode']                 			= '邮政编码:';
$_['entry_city']                     			= '城市:';
$_['entry_country']                  			= '国家:';
$_['entry_zone']                     			= '州/省份:';
$_['entry_newsletter']               			= '订阅新闻邮件。';
$_['entry_shipping'] 	             			= '配送地址与账单地址相同。';
$_['text_agree']        		     			= '我已阅读并同意条款。';
$_['text_comments']        		     			= '填写订单留言。';
 

// Entry
$_['entry_layout']      						= '布局:';
$_['entry_position']      						= '位置:';
$_['entry_status']        						= '状态:';
$_['entry_sort_order']    						= '排序:';



$_['settings_select'] 							= '下拉选择';
$_['settings_image'] 							= '显示图片';

//Supporting
$_['text_no_update'] 							= '祝贺，目前所用为最新版本。';
$_['text_new_update'] 							= '哇唔！目前有新版本可以下载。';
$_['text_error_update'] 						= '抱歉，有问题，请联系技术支持。';
$_['text_error_failed'] 						= '唔...，网络故障，请稍后再试。';
