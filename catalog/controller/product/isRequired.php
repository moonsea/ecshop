<?php 
	//判断该作品是否包含必选选项
	class ControllerProductIsRequired extends Controller{
		public function index(){
			
			$this->load->model('catalog/product');
			
			$product_option_data=array();
			
			if(isset($this->request->post['product_id'])){
				$product_option_data=$this->model_catalog_product->getProductOptions($this->request->post['product_id']);
				
				foreach($product_option_data as $product_option){
					
					if(isset($product_option['required'])&&(int)$product_option['required']==1){
						$this->response->setOutput(true);
						return true;
					}
				}
			}
			$this->response->setOutput(false);
		}
	}
	
?>