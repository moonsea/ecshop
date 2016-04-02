<?php
/*
 *	location: admin/language
 *  author: dreamvention
 */

// Heading
$_['heading_title']       						= '';
$_['heading_title_main']       					= 'Ajax Quick Checkout';
$_['text_edit'] 								= 'Edit Ajax Quick Checkout settings';

// Text
$_['text_module']        					 	= 'Modules';
$_['text_success']      					 	= 'Success: You have modified module welcome!';
$_['text_content_top']    						= 'Content Top';
$_['text_content_bottom'] 						= 'Content Bottom';
$_['text_column_left']    						= 'Column Left';
$_['text_column_right']   						= 'Column Right';
$_['button_save_and_stay']  					= 'Save and stay';

$_['text_enable'] 								= 'Enable';
$_['text_guest']  								= 'Guest';
$_['text_register']  							= 'Register';
$_['text_login']  								= 'Login';
$_['text_logged_in']  							= 'Loggen in';
$_['text_yes']   								= 'Yes';
$_['text_no']   								= 'No';
$_['text_display']   							= 'Display';
$_['text_always_show']   						= 'Always show';
$_['text_require']   							= 'Require';
$_['text_input_radio']   						= 'Radio';
$_['text_input_select']   						= 'Select';
$_['text_row']  								= 'Row';
$_['text_block']  								= 'Block';
$_['text_popup']  								= 'Popup';
$_['text_width']  								= 'Width:';
$_['text_height']  								= 'Height:';

$_['text_home']  								= 'Home';
$_['text_intro_home']  							= 'Customize your One-step checkout to increase your sales';

$_['text_intro_general']  						= 'Set up the general settings of your Ajax Quick Checkout (AQC). You can also define positions as a module.';
$_['text_intro_login']  						= 'Add settings for google, facebook, linked, twitter, paypal, tumblr, VK and more login options.';
$_['text_intro_payment_address']  				= 'Display and hide, then sort the fields you want to have in your checkout. If you don\'t need this step - simply hide it.';
$_['text_intro_shipping_address']  				= 'Like with payment address, you can display/hide and sort the fields. Sorting is easy - simply drag and drop.';
$_['text_intro_shipping_method']  				= 'Set a default value, show/hide the step and select the style of the options - radio or select.';
$_['text_intro_payment_method']  				= 'Like shipping method, you can define the default option, show or hide the step and set the style of the options.';
$_['text_intro_confirm']  						= 'Style your cart - define the columns of the cart as well as the coupon, voucher and reward.';
$_['text_intro_design']  						= 'Set the number of columns in the checkout: there width and the position of steps in it. Use drag-and-drop to do it.';
$_['text_intro_analytics']  					= 'Get insites on how your customers use your checkout and make the best out of it.';
$_['text_intro_plugins']  						= 'Add more plugins to the checkout to increase its functionality. Extra fields, analytics and more.';


$_['text_general']  							= 'General settings';
$_['text_payment_address']  					= 'Payment address';
$_['text_shipping_address'] 				 	= 'Shipping address';
$_['text_shipping_method']  					= 'Shipping method';
$_['text_payment_method']						= 'Payment method';
$_['text_confirm']  							= 'Confirm';
$_['text_design']  								= 'Design';
$_['text_cart']  								= 'Cart';
$_['text_payment']  							= 'Payment';
$_['text_analytics']  							= 'Analytics';
$_['text_plugins']  							= 'Plugins';

//general
$_['entry_general_enable']  					= 'Enable/Disable AQC:';
$_['help_general_enable'] 						= 'Enable the checkout or disable AQC. This option will turn on all the modules and extensions, that are connected with AQC.';
$_['entry_general_default_option']  			= 'Select default option at checkout:';
$_['help_general_default_option'] 				= 'Set the default option for the visitor - it can be guest checkout or registration. Please remeber that if you select guest, but you have downloadable items or items that require a registration - the checkout will still show registrated, so that we do not break any of the opencart defualt functions.';
$_['entry_general_main_checkout']  				= 'Replace the main checkout:';
$_['help_general_main_checkout'] 				= 'Replace the main checkout with the AQC';
$_['entry_general_clear_session']  				= 'Clear checkout session after page refresh:';
$_['help_general_clear_session'] 				= 'When enabled, after the checkout page is refreshed - the personal data will be cleared.';
$_['entry_general_login_refresh']				= 'Refresh page after login is successful:';
$_['help_general_login_refresh']				= 'When you login, the system will refresh the page compleatly to update the values in the header.';
$_['entry_general_default_email']				= 'Set default email:';
$_['help_general_default_email'] 				= 'If you remove the email field from the registration, you need to specify an email which will receive the client\'s order information. Otherwise you will also not receive orders as a store administrator';
$_['entry_general_version']  					= 'Check for new version:';
$_['help_general_version'] 						= 'When there is a new version available, you can download it from the location you have purchased the module.';
$_['button_version_check']  					= 'Check for update';
$_['entry_general_debug']  						= 'Debug mode:';
$_['help_general_debug'] 						= 'Enable the debug option. You will start seeing varibles in the console';
$_['entry_general_min_order']  					= 'Set min order amount:';
$_['help_general_min_order'] 					= 'Set the minimum order value to allow checkout';
$_['text_value_min_order']  					= 'The minimum order is %s';
$_['entry_general_min_quantity']  				= 'Set min order quantity:';
$_['help_general_min_quantity'] 				= 'Set the minimum order quantity to allow checkout';
$_['text_value_min_quantity']  					= 'The minimum quantity is %s';
$_['entry_general_trigger']  					= 'Payment Tiggers';
$_['help_general_trigger'] 						= 'Opencart has many paypemt methods and every payment method has a PAY button. There are no standards for this button and some developers add different types of buttons: divs, input buttons, a etc with different classes. Over time we have come to this pattern,  But in some rare cases you may need to add another trigger to this field for the AQC to see the paybutton. it can be a class or an id of the tag. List them here separating by comma , ex. #confirm_payment .button, #confirm_payment .btn, #confirm_payment .button_oc, #confirm_payment input[type=submit]';


//modules
$_['text_position_module']  					= 'Position modules:';		
$_['help_position_module']  					= 'If you want the AQC to show up in other locations, then you can use this option. If you just want to replace the main checkout - then do not use this option and use the optiob "Replace main checkout"';
$_['button_add_module']  						= 'Add module';

$_['entry_general_settings']  					= 'Bulk settings:';
$_['text_general_settings_value']  				= 'Use bulk settings';
$_['help_general_settings'] 					= 'Copy and save to a file the settings or use the saved settings and set the checkout to them by coping them into the textarea';


//social login
$_['text_social_login_required']  				= '<h4>Social Login Required</h4><p>To use social login option in AQC, you need to install the Social Login module from Dreamvention, and setup the Social Apps. To learn how to do it follow the instructions from the Social login module.</p><p>By activating the social login buttons here, you are displaying them in the Ajax Quick Checkout in the step Login</p>';
$_['entry_socila_login_style']  				= 'Select Social login style';
$_['help_socila_login_style']  					= 'Social login for AQC uses its own settigns so that you can set different sizes of login buttons for different locations on your shop. The rest of the settings is pulled from the social login module.';
$_['text_icons']        						= 'Icons';
$_['text_small']        						= 'Small';
$_['text_medium']      		 					= 'Medium';
$_['text_large']        						= 'Large';
$_['text_huge']         						= 'Huge';
$_['button_social_login_edit']  				= 'Edit Social login Settings';

//payment_address
$_['entry_payment_address_display']  			= 'Enable payment address:';
$_['help_payment_address_display'] 				= 'If you disable payment address - the payment address step will not show. Be sure no not have any required input fields in the payment address list.';

//shipping_address
$_['entry_shipping_address_display'] 	 		= 'Enable shipping address:';
$_['help_shipping_address_display'] 			= 'If you disable shipping address - the shipping address step will not show. But the option in the payment address block will still be visible. You will need to turn it off so that it doesn\'t show as well. You can require the shipping address - this will make the option always show no matter what the checkbox value is. This is made to force the customer input his shipping address.';

//shipping_method
$_['entry_shipping_method_display']  			= 'Enable shipping method step';
$_['entry_shipping_method_display_options']  	= 'Display shipping methods';
$_['entry_shipping_method_display_title']  		= 'Display shipping method group title';
$_['entry_shipping_method_input_style']  		= 'Shipping method style';
$_['entry_shipping_method_default_option']  	= 'Select a default shipping method';
$_['help_shipping_method_display'] 				= 'You can display the shipping step or hide it. you must still have at least one shipping method that will be selected by default';
$_['help_shipping_method_display_options']		= 'You can display just the shipping methods or hide them. If you have plugins for the shipping method step, this will allow you to show the plugins but hide the shipping method options';
$_['help_shipping_method_display_title'] 		= 'You can hide the title of the groups for the shipping methods and just keep their names';
$_['help_shipping_method_input_style'] 			= 'Choose the style for displaying the shipping methods: select or radio';
$_['help_shipping_method_default_option'] 		= 'This shipping method option will be selected by default for every new visitor. If the visitor is not new, it will use the saved values from the earlier select options. If this shipping method is not available for the current geo zone, the first shipping method will be selected.';


//payment_method
$_['entry_payment_method_display']  			= 'Enable payment method step';
$_['entry_payment_method_display_options'] 		= 'Display payment methods';
$_['entry_payment_method_display_images']  		= 'Display payment method images';
$_['entry_payment_method_input_style']  		= 'Payment method style';
$_['entry_payment_method_default_option']  		= 'Select a default payment method';
$_['entry_payment_method_input_style']  		= 'Payment method style';
$_['help_payment_method_display'] 				= 'You can display the payment step or hide it. you must still have at least one payment method that will be selected by default';
$_['help_payment_method_display_options'] 		= 'You can display just the payment methods or hide them. If you have plugins for the payment method step, this will allow you to show the plugins but hide the payment method options';
$_['help_payment_method_display_images'] 		= 'You can display the payment images for the radio style of payment methods. If you have selected the select style - the images will not show.';
$_['help_payment_method_input_style'] 			= 'Choose the style for displaying the payment methods: select or radio';
$_['help_payment_method_default_option'] 		= 'This payment method option will be selected by default for every new visitor. If the visitor is not new, it will use the saved values from the earlier select options. If this payment method is not available for the current geo zone, the first payment method will be selected.';

//cart
$_['entry_cart_display']  						= 'Display cart';
$_['entry_cart_columns_image']  				= 'Display column image';
$_['entry_cart_columns_name']  					= 'Display column name';
$_['entry_cart_columns_model']  				= 'Display column model';
$_['entry_cart_columns_quantity']  				= 'Display column quantity';
$_['entry_cart_columns_price'] 					= 'Display column price';
$_['entry_cart_columns_total']  				= 'Display column total';
$_['entry_cart_option_coupon']  				= 'Display coupon input';
$_['entry_cart_option_voucher']  				= 'Display voucher input';
$_['entry_cart_option_reward']  				= 'Display reward input';
$_['entry_confirm_display']  					= 'Display confirm';
$_['help_cart_display'] 						= 'By hiding the cart, you are hiding the cart and the options in it. the confirm button stays to still complete the order.';
$_['help_cart_option_coupon'] 					= 'Show or hide the coupon option. Remember, if the coupon option is disabled  in the checkout totals - it will not show up in the AQC as well. You must turn it on and then select which option gets to display it.';
$_['help_cart_option_voucher'] 					= 'Show or hide the voucher option. Remember, if the voucher option is disabled  in the checkout totals - it will not show up in the AQC as well. You must turn it on and then select which option gets to display it.';
$_['help_cart_option_reward'] 					= 'Show or hide the reward option. Remeber, if the reward option is disabled  in the checkout totals - it will not show up in the AQC as well. Also rewards are for logged in customers. You must turn it on and then select which option gets to display it.';


//design
$_['entry_design_theme']  						= 'Select theme for AQC';
$_['entry_design_field']  						= 'Select field design';
$_['entry_design_login_option']  				= 'Set Login options';
$_['entry_design_login']  						= 'Select login design';
$_['entry_design_address']  					= 'Select address design';
$_['entry_design_cart_image_size']  			= 'Set product image size on hover';
$_['entry_design_max_width']  					= 'Max width of the checkout';
$_['entry_design_uniform']  					= 'Checkbox styles';
$_['entry_design_only_quickcheckout']  			= 'Show only the checkout';
$_['entry_design_column']  						= 'Set columns';
$_['entry_design_custom_style']  				= 'Set Custom styles';

$_['help_payment_address'] 						= 'Customer information and payment address.';
$_['help_shipping_address'] 					= 'Extra address for shipping purposes.';
$_['help_shipping_method'] 						= 'Third step. You can set a default method and hide this step.';
$_['help_payment_method'] 						= 'Fourth step. You can set a default method and hide this step.';
$_['help_cart'] 								= 'Part of the last step - the cart. You can move to the top as well.';
$_['help_payment'] 								= 'Some payment methods have more options to fill - like paypal pro.';
$_['help_confirm'] 								= 'The last step is the confirm. Edit fields.';


$_['help_design_theme'] 						= 'Select a style for the frontend of AQC. You can install other designs or create your own.';
$_['help_design_field'] 						= 'Set the style of the fields in payment and shipping address blocks. Row style - the labels will be on one line with the input. Block style - the labels will be above the inputs.';
$_['help_design_login_option'] 					= 'Show or hide the options that are at the beggining of the checkout';
$_['help_design_login'] 						= 'Select the style of the login block. you can select to show the block or use a popup for login, while the option for registration or guest checkout is a simple checkbox.';
$_['help_design_address'] 						= 'Select the style of the address block for logged in users. you can select to show address as a list or as radio button options.';
$_['help_design_cart_image_size']	 			= 'Set the width and height of the product pop up image when you hover on the smal product thumb image in the cart.';
$_['help_design_max_width'] 					= 'If you see the checkout fill the whole screen, set the max width of the checkout and it will fit nicly in the middle. i.e. 960';
$_['help_design_uniform'] 						= 'You can disable the checkbox and radio buttons styles on the checkout.';
$_['help_design_only_quickcheckout'] 			= 'Enable this option to hide all the information in header, footer and columns to make the checkout process as simple and clean as possible.';
$_['help_design_column'] 						= 'Set the number of columns. You can set up to 3 columns and there widths.';
$_['help_design_custom_style'] 					= 'Add custom styles to the checkout. Follow the right CSS standards.';

// Entry
$_['text_your_address']              			= 'Your Address';
$_['entry_email_address']           		 	= 'E-Mail Address:';
$_['entry_email']                    			= 'E-Mail:';
$_['entry_email_confirm'] 						= 'Confirm E-mail';
$_['entry_password']                 			= 'Password:';
$_['entry_confirm']                  			= 'Password Confirm:';
$_['entry_fullname']                			= 'Full Name:';
$_['entry_telephone']                			= 'Telephone:';
$_['entry_fax']                     			= 'Fax:';
$_['entry_company']                  			= 'Company:';
$_['entry_customer_group']           			= 'Business Type:';
$_['entry_company_id']               			= 'Company ID:';
$_['entry_tax_id']                   			= 'Tax ID:';
$_['entry_address_1']                			= 'Address 1:';
$_['entry_address_2']                			= 'Address 2:';
$_['entry_postcode']                 			= 'Post Code:';
$_['entry_city']                     			= 'City:';
$_['entry_country']                  			= 'Country:';
$_['entry_zone']                     			= 'Region / State:';
$_['entry_newsletter']               			= 'I wish to subscribe to the newsletter.';
$_['entry_shipping'] 	             			= 'My delivery and billing addresses are the same.';
$_['text_agree']        		     			= 'I agree to the conditions.';
$_['text_comments']        		     			= 'Leave a comment for the order.';
 

// Entry
$_['entry_layout']      						= 'Layout:';
$_['entry_position']      						= 'Position:';
$_['entry_status']        						= 'Status:';
$_['entry_sort_order']    						= 'Sort Order:';

$_['entry_status']       						= 'Status:';
$_['entry_sort_order']    						= 'Sort Order:';


$_['settings_select'] 							= 'Dropdown Select';
$_['settings_image'] 							= 'Display images';

//Supporting
$_['text_no_update'] 							= 'Super! You have the latest version.';
$_['text_new_update'] 							= 'Wow! There is a new version avalible for download.';
$_['text_error_update'] 						= 'Sorry! Something went wrong. If this repeats, contact the support please.';
$_['text_error_failed'] 						= 'Oops! We could not connect to the server. Please try again later.';
$_['error_shopunity_required'] 					= 'Don\'t worry, to make your module look great, please install Shopunity Admin them. You can download it from <a href="http://www.opencart.com/index.php?route=extension/extension/info&extension_id=14928">here</a>';
$_['error_permission']   						= 'Warning: You do not have permission to modify module welcome!';
?>
