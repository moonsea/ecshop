<?php
	/**
	 *保存作品控制器
	 **/
	class ControllerAccountDesign extends Controller {
		
		public function index() {
		if (!$this->customer->isLogged()) {
			$this->session->data['redirect'] = $this->url->link('account/design', '', 'SSL');

			$this->response->redirect($this->url->link('account/login', '', 'SSL'));
		}

		$this->load->language('module/qdingzhi');

		$this->load->model('catalog/product');
		
		$this->load->model('account/customer');
		
		$this->load->model("account/design");

		$this->load->model('tool/image');
		
		if (!isset($this->session->data['design'])) {
			$this->session->data['design'] = array();
		}

		$this->document->setTitle($this->language->get('heading_title_design'));

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_account'),
			'href' => $this->url->link('account/account', '', 'SSL')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title_design'),
			'href' => $this->url->link('account/design')
		);
		
		$data['tab_has_been_order_designs'] = $this->language->get('tab_has_been_order_designs');
		$data['tab_not_order_designs'] = $this->language->get('tab_not_order_designs');
		
		
		$data['text_time_over'] = $this->language->get('text_time_over');
		$data['text_limit'] = $this->language->get('text_limit');
		$data['text_time_remaining'] = $this->language->get('text_time_remaining');
		$data['text_design_empty'] = $this->language->get('text_design_empty');
		$data['text_not_confirmed'] = $this->language->get('text_not_confirmed');
		$data['text_has_confirmed'] = $this->language->get('text_has_confirmed');
		$data['text_design_state'] = $this->language->get('text_design_state');
		$data['text_design_title'] = $this->language->get('text_design_title');
		$data['text_has_been_order_designs_empty'] = $this->language->get('text_has_been_order_designs_empty');
		$data['text_not_order_designs_empty'] = $this->language->get('text_not_order_designs_empty');
		$data['heading_title'] = $this->language->get('heading_title_design');
		$data['column_save_time']=$this->language->get('column_save_time');//上次保存时间
		
		$data['button_create_change'] = $this->language->get('button_create_change');
		
		$data['heading_title_design'] = $this->language->get('heading_title_design');

		$data['text_empty'] = $this->language->get('text_empty');

		$data['column_image'] = $this->language->get('column_image');
		$data['column_name'] = $this->language->get('column_name');
		$data['column_model'] = $this->language->get('column_model');
		$data['column_stock'] = $this->language->get('column_stock');
		$data['column_price'] = $this->language->get('column_price');
		$data['column_action'] = $this->language->get('column_action');
		
		$data['button_continue'] = $this->language->get('button_continue');
		$data['button_cart'] = $this->language->get('button_cart');
		$data['button_remove'] = $this->language->get('button_remove');

		if (isset($this->session->data['success'])) {
			$data['success'] = $this->session->data['success'];

			unset($this->session->data['success']);
		} else {
			$data['success'] = '';
		}
		
		if (isset($this->session->data['error_warning'])) {
			$data['error_warning'] = $this->session->data['error_warning'];

			unset($this->session->data['error_warning']);
		} else {
			$data['error_warning'] = '';
		}

		
		//已下单页数
		if(isset($this->request->get["has_been_order_design_page"])){
			$has_been_order_design_page=$this->request->get["has_been_order_design_page"];
		}else{
			$has_been_order_design_page=1;
		}
		
		//未下单页数
		if(isset($this->request->get["not_order_design_page"])){
			$not_order_design_page=$this->request->get["not_order_design_page"];
		}else{
			$not_order_design_page=1;
		}
		
		if(isset($this->request->get["design_type"])){
			$data['design_type']=$this->request->get["design_type"];
		}else{
			$data['design_type']="not_order_design";
		}
		
		$data['limits'] = array();

		$limits = array_unique(array($this->config->get('config_product_limit'), 4, 6,8,10,15,20));

		sort($limits);

		foreach($limits as $value) {
			$data['limits'][] = array(
				'text'  => $value,
				'value' => $value,
				'href'  => $this->url->link('account/design', 'limit=' . $value.'&design_type='.$data['design_type'])
			);
		}
		$url = '';
		//取出已保存作品
		if($this->customer->isLogged()){
			
				$designs=array();
				$customer=$this->model_account_customer->getCustomer($this->customer->isLogged());
				//$design=$customer['design'];
				$access_token=$customer['access_token'];
				
				//每页显示条数
				if(isset($this->request->get["limit"])){
					$limit=$this->request->get["limit"];
					$this->model_account_customer->updateCustomerDesignLimit($this->customer->isLogged(),$limit);
				}else if(isset($customer['design_limit'])&&!empty($customer['design_limit'])&&(int)$customer['design_limit']>0){
					$limit=$customer['design_limit'];
				}else{
					$limit=2;
				}
				
				if($data['design_type']=="has_been_order_design"){
					//按分页获取已下单作品
					$designs=$this->model_account_design->getHasBeenOrderDesignsByCustomerId($this->customer->isLogged(),($has_been_order_design_page-1)*$limit,$limit);
				}else if($data['design_type']=="not_order_design"){
					//按分页获取未下单作品
					$designs=$this->model_account_design->getNotOrderDesignsByCustomerId($this->customer->isLogged(),($not_order_design_page-1)*$limit,$limit);
				}
				
				$design_total=$has_been_order_design_total=$not_order_design_total=0;
				//获取作品总数
				$design_total=$this->model_account_design->getDesignTotalByCustomerId($this->customer->isLogged());
				
				//获取已下单作品总数
				$has_been_order_design_total=$this->model_account_design->getHasBeenOrderDesignTotalByCustomerId($this->customer->isLogged());
				
				//未下单作品总数
				$not_order_design_total=(int)$design_total-(int)$has_been_order_design_total;
				
				//$limit_num=$limit;//当查询到的作品对应的商品信息无效时，从$limit处往后继续查询
				
				if($designs){
					foreach($designs as $des){
						if(!empty($des)){
							$product_info = $this->model_catalog_product->getProduct($des['product_id']);
							
							//获取作品选项信息
							$design_option_data=array();
							$design_option_price=0;
							if(isset($des["product_option_value_id"])){
								$product_option_value_ids=explode(',',$des['product_option_value_id']);
								
								foreach($product_option_value_ids as $product_option_value_id){
									if((int)$product_option_value_id>0){
										$design_option=$this->model_account_design->getDesignOption($product_option_value_id);
										if(isset($design_option)){
											if($design_option["price_prefix"]=="+"){
											$design_option_price=$design_option_price+$design_option["price"];
											}else if($design_option["price_prefix"]=="-"){
												$design_option_price=$design_option_price-(int)$design_option["price"];
											}
											array_push($design_option_data,$design_option);
										}
									}
								}
							}
							/*
							if(isset($des["product_option_value_id"])&&(int)($des["product_option_value_id"])>0){
								$design_option=$this->model_account_design->getDesignOption($des["product_option_value_id"]);
								if($design_option["price_prefix"]=="+"){
									$design_option_price=$design_option["price"];
								}else if($design_option["price_prefix"]=="-"){
									$design_option_price=0-(int)$design_option["price"];
								}else{
									$design_option_price=0;
								}
							}else{
								$design_option_price=0;
							}*/
						if ($product_info) {
							if ($product_info['image']) {
								//借用收藏功能配置信息，待修改
								$image = $this->model_tool_image->resize($product_info['image'], $this->config->get('config_image_wishlist_width'), $this->config->get('config_image_wishlist_height'));
							} else {
								$image = false;
							}

							if ($product_info['quantity'] <= 0) {
								$stock = $product_info['stock_status'];
							} elseif ($this->config->get('config_stock_display')) {
								$stock = $product_info['quantity'];
							} else {
								$stock = $this->language->get('text_instock');
							}

							if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
								$price = $this->currency->format($this->tax->calculate((float)$product_info['price']+(float)$design_option_price, $product_info['tax_class_id'], $this->config->get('config_tax')));
							} else {
								$price = false;
							}

							if ((float)$product_info['special']) {
								$special = $this->currency->format($this->tax->calculate($product_info['special'], $product_info['tax_class_id'], $this->config->get('config_tax')));
							} else {
								$special = false;
							}
							$overdue_time=strtotime("+25 days",strtotime($des['first_save_time']));
							$time_remaining=date("Y-m-d H:i:s",$overdue_time);
							$customer_designs[] = array(
								'product_option_value_ids'=>$des['product_option_value_id'],
								'design_option_data' =>$design_option_data,//商品选项属性
								'design_title'	 => $des['design_title'],//作品标题
								'has_confirmed' => $des['has_confirmed'],//是否定稿
								'design_id'  => $des['design_id'],//作品id
								'save_time'	 => $des['save_time'],//上次保存时间
								'time_remaining'=>$time_remaining,//作品过期时间
								'product_id' => $product_info['product_id'],
								'thumb'      => $image,
								'access_token' => $access_token,//用户token
								'name'       => $product_info['name'],
								'model'      => $product_info['model'],
								'stock'      => $stock,
								'price'      => $price,
								'special'    => $special,
								'href'       => $this->url->link('product/product', 'product_id=' . $product_info['product_id']),
								'remove'     => $this->url->link('account/design/remove', 'design_id=' . $des['design_id'])
							);
						}
						/*
						else{
							//当查询到的作品对应的商品信息无效时，做
							$limit_num++;
							if($data['design_type']=="has_been_order_design"){
								(int)$has_been_order_design_total=(int)$has_been_order_design_total-1;
								$design=$this->model_account_design->getHasBeenOrderDesignTotalByCustomerId($this->customer->isLogged(),$limit_num,1);
							}else if($data['design_type']=="not_order_design"){
								(int)$not_order_design_total=(int)$not_order_design_total-1;
								$design=$this->model_account_design->getNotOrderDesignsByCustomerId($this->customer->isLogged(),$limit_num,1);
							}
							array_push($designs,$design[0]);
						}*/
						}
					}
					
				}
				$data['has_been_order_designs']=array();
				$data['not_order_designs']=array();
				if($customer_designs){
					if($data['design_type']=="has_been_order_design"){
						$data['has_been_order_designs']=$customer_designs;
					}else if($data['design_type']=="not_order_design"){
						$data['not_order_designs']=$customer_designs;
					}
				}
			
				/*
				$data['has_been_order_designs']=array();
				$data['not_order_designs']=array();
				$has_been_order_designs_design_id=$this->model_account_design->getDesignIdFromOrder($this->customer->isLogged());
				foreach($all_designs as $design){
					if($this->deep_in_array($design["design_id"],$has_been_order_designs_design_id)){
						$data['has_been_order_designs'][]=$design;
					}else{
						$data['not_order_designs'][]=$design;
					}
				}*/
				
				//$has_been_order_design_total=count($data['has_been_order_designs']);
				//$not_order_design_total=count($data['not_order_designs']);
				/*已下单分页*/
				$has_been_order_design_pagination = new Pagination();
				$has_been_order_design_pagination->total = $has_been_order_design_total;
				$has_been_order_design_pagination->page = $has_been_order_design_page;
				$has_been_order_design_pagination->limit = $limit;
				$has_been_order_design_pagination->url = $this->url->link('account/design', 'has_been_order_design_page={page}&design_type=has_been_order_design');
				$data['has_been_order_design_pagination'] = $has_been_order_design_pagination->render();
				$data['has_been_order_design'] = sprintf($this->language->get('text_pagination'), ($has_been_order_design_total) ? (($has_been_order_design_page - 1) * $limit) + 1 : 0, ((($has_been_order_design_page - 1) * $limit) > ($has_been_order_design_total - $limit)) ? $has_been_order_design_total : ((($has_been_order_design_page - 1) * $limit) + $limit), $has_been_order_design_total, ceil($has_been_order_design_total / $limit));
				
				/*未下单分页*/
				$not_order_design_pagination = new Pagination();
				$not_order_design_pagination->total = $not_order_design_total;
				$not_order_design_pagination->page = $not_order_design_page;
				$not_order_design_pagination->limit = $limit;
				$not_order_design_pagination->url = $this->url->link('account/design', 'not_order_design_page={page}&design_type=not_order_design');
				$data['not_order_design_pagination'] = $not_order_design_pagination->render();
				$data['not_order_design'] = sprintf($this->language->get('text_pagination'), ($not_order_design_total) ? (($not_order_design_page - 1) * $limit) + 1 : 0, ((($not_order_design_page - 1) * $limit) > ($not_order_design_total - $limit)) ? $not_order_design_total : ((($not_order_design_page - 1) * $limit) + $limit), $not_order_design_total, ceil($not_order_design_total / $limit));
				
				$data['limit'] = $limit; 
				
				
				
				$data['get_has_been_order_designs']=$this->url->link('account/design','design_type=has_been_order_design');
				$data['get_not_order_designs']=$this->url->link('account/design','design_type=not_order_design');
				
				$data['continue'] = $this->url->link('common/home', '', 'SSL');

				$data['column_left'] = $this->load->controller('common/column_left');
				$data['column_right'] = $this->load->controller('common/column_right');
				$data['content_top'] = $this->load->controller('common/content_top');
				$data['content_bottom'] = $this->load->controller('common/content_bottom');
				$data['footer'] = $this->load->controller('common/footer');
				$data['header'] = $this->load->controller('common/header');
				

				if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/account/design.tpl')) {
					$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/account/design.tpl', $data));
				} else {
					$this->response->setOutput($this->load->view('default/template/account/design.tpl', $data));
				}
		}
		
	}
		public function add(){
			
			$customer_status=$this->customer->isLogged();//是否登录,登录则返回customer_id
			$this->load->model('account/design');
			if($customer_status){
				$opensite_reserved_param=base64_decode($this->request->post['opensite_reserved_param']);
				$opensite_reserved_param=json_decode($opensite_reserved_param,true);
				$this->request->post['product_id']=(int)$opensite_reserved_param['product_id'];
				if(isset($opensite_reserved_param['option'])&&!empty($opensite_reserved_param['option'])){
					$this->request->post['option']=$opensite_reserved_param['option'];
				}
				//更新保存或添加的时间
				$save_time=date("Y-m-d H:i:s");
				$this->request->post['save_time']=$save_time;
				
				//design_id,design_title,opensite_reserved_param,[has_confirmed]
				
				if(!isset($this->request->post['has_confirmed'])){
					$this->request->post['has_confirmed']=0;
				}
				$design_id=$this->request->post['design_id'];
				if(!isset($this->request->post['design_title'])){
					$this->request->post['design_title']='未命名';
				}
				if($this->model_account_design->getDesignById($design_id)){//如果design_id存在
					//更新
					$this->model_account_design->updateDesign($this->request->post);
				}else{
					//添加
					$this->model_account_design->saveDesign($this->request->post,$customer_status);
				}
				
			}
		}
		public function confirm(){
			$confirm_time=date("Y-m-d H:i:s");//定稿时间
			
			$this->load->model('account/design');//加载模型
			
			$design_id=$this->request->post['design_id'];
			
			$this->model_account_design->updateConfirm($design_id,$confirm_time);
		}
		
		public function remove(){
			$this->load->language('module/qdingzhi');
			$this->load->model('account/design');
			$customer_status=$this->customer->isLogged();
				if($customer_status){
					if (isset($this->request->get['design_id'])) {
						$key = array_search($this->request->get['design_id'], $this->session->data['design']);
						$design_id=$this->request->get['design_id'];
						if ($key !== false) {
							unset($this->session->data['design'][$key]);
						}
						if(!$this->is_in_cart($design_id)){//如果该商品不在购物车
								//将数据从作品表中删除
							$res=$this->model_account_design->removeDesign($design_id);
							$this->session->data['success'] = $this->language->get('text_remove');
							$this->response->redirect($this->url->link('account/design'));
						}else{
							$this->session->data['error_warning'] = $this->language->get('text_remove_error');
							$this->response->redirect($this->url->link('account/design'));
						}
						
					
				}
					
			}
		}
		public function is_in_cart($design_id){
				//查看购物车是否有该作品
				$designs=$this->cart->getProducts();
				foreach($designs as $design){
					if($design_id==$design['design_id']){
						return true;
					}
				}
				return false;
		}
		
		public function deep_in_array($value, $array) {   
			foreach($array as $item) {   
				if(!is_array($item)) {   
					if ($item == $value) {  
						return true;  
					} else {  
						continue;   
					}  
				}   
				   
				if(in_array($value, $item)) {  
					return true;      
				} else if($this->deep_in_array($value, $item)) {  
					return true;      
				}  
			}   
			return false;   
		}
	}
?>