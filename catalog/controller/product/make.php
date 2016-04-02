<?php
	/*
	 *
	 */
	class ControllerProductMake extends Controller {
		public function index(){
			include_once(DIR_APPLICATION.'controller/config.php');//加载自定义配置文件
			//加载模型
			$this->load->model('account/customer');
			$this->load->model('catalog/product');

			$data=array();
			$data['CONST_RESOURCE_SERVER_PATH']=CONST_RESOURCE_SERVER_PATH;
			$data['CONST_OAUTH2_SERVER_PATH']=CONST_OAUTH2_SERVER_PATH;
			$data['CONST_RESOURCE_PROTECTED_SERVER_PATH']=$data['CONST_RESOURCE_SERVER_PATH'].'/protected';
			$data['CONST_RESOURCE_SERVER_REL_PATH']='../protected';
			if(isset($this->request->get['designstudio_id'])){
				$data['designstudio_id']=$this->request->get['designstudio_id'];
			}
			if(isset($this->request->get['access_token'])){
				$data['access_token']=$this->request->get['access_token'];
			}
			if(isset($this->request->get['action'])){
				$data['action']=$this->request->get['action'];
			}else{
				$data['action']="new";
			}
			if(isset($this->request->get['design_id'])){
				$data['design_id']=$this->request->get['design_id'];
			}else{
				$data['design_id']="";
			}
			if(isset($this->request->get['opensite_reserved_param'])){
				$data['opensite_reserved_param']=$this->request->get['opensite_reserved_param'];
			}
			
			$data['url']=$this->config->get('config_url').'catalog/view/theme/default/template/editor/';

			

			$data['server_name']=$_SERVER['SERVER_NAME'];

			//加载模板
			$this->response->setOutput($this->load->view('default/template/editor/design.tpl',$data));
			//var_dump($request);
		}
	
	}
?>
