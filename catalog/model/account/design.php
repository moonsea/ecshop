<?php
	class ModelAccountDesign extends Model {
		public function getDesignById($design_id){
			$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "design WHERE design_id = '" .$design_id . "'");
			return $query->row;
		}
		/**
		*按分页查询作品
		**/
		public function getDesignsByCustomerId($customer_id,$start,$limit){
			$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "design WHERE customer_id = '" .$customer_id . "' LIMIT ".$start.",".$limit);
			return $query->rows;
		}
		
		/**
		*按分页查询已下单作品
		**/
		public function getHasBeenOrderDesignsByCustomerId($customer_id,$start,$limit){
			$query = $this->db->query("SELECT d.* FROM " . DB_PREFIX . "design d, ".DB_PREFIX."order_product op,".DB_PREFIX."order o WHERE op.order_id=o.order_id and o.order_status_id>0 and d.design_id=op.design_id and d.product_id IN (SELECT product_id FROM ".DB_PREFIX."product) and d.customer_id = '" .$customer_id . "' GROUP BY d.design_id LIMIT ".$start.",".$limit);
			return $query->rows;
		}
		
		/**
		*按分页查询未下单作品(此处sql待优化)
		**/
		
		public function getNotOrderDesignsByCustomerId($customer_id,$start,$limit){
			$query = $this->db->query("SELECT d.* FROM " . DB_PREFIX . "design d WHERE d.design_id NOT IN (SELECT op.design_id FROM ".DB_PREFIX."order_product op,".DB_PREFIX."order o WHERE op.order_id=o.order_id AND o.order_status_id>0 AND o.customer_id='".$customer_id."') and d.product_id IN (SELECT product_id FROM ".DB_PREFIX."product) and d.customer_id = '" .$customer_id . "' GROUP BY d.design_id LIMIT ".$start.",".$limit);
			return $query->rows;
		}
		
		
		/**
		*获取作品总数(此处sql待优化)
		**/
		public function getDesignTotalByCustomerId($customer_id){
			$query = $this->db->query("SELECT COUNT(distinct d.design_id) as total FROM " . DB_PREFIX . "design as d WHERE d.product_id IN (SELECT product_id FROM ".DB_PREFIX."product) and d.customer_id = '" .$customer_id . "'");
			return $query->row['total'];
		}
		
		/**
		*获取已下单作品总数
		**/
		public function getHasBeenOrderDesignTotalByCustomerId($customer_id){
			$query = $this->db->query("SELECT d.product_option_value_id,COUNT(distinct d.design_id) as total FROM " . DB_PREFIX . "design d, ". DB_PREFIX ."order_product op, ". DB_PREFIX ."order o WHERE d.design_id = op.design_id AND op.order_id=o.order_id AND o.order_status_id>0 AND d.customer_id = '" .$customer_id . "'");
			return $query->row['total'];
		}
		
		/*
		public function getDesignsByCustomerId($customer_id){
			$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "design WHERE customer_id = '" .$customer_id . "'");
			return $query->rows;
		}*/
		public function saveDesign($data,$customer_id){
			$sql="INSERT INTO " . DB_PREFIX . "design SET design_id = '" . $data['design_id']. "', customer_id = '" .$customer_id. "', product_id = '" . $data['product_id']. "', product_option_value_id = '" . $data['option'] . "',save_time = '" . $data['save_time']. "',first_save_time = '" . $data['save_time']. "',  has_confirmed = '" . $data['has_confirmed'] . "',design_title = '" .$data['design_title'] . "'";
			$this->db->query($sql);
			
		}
		public function removeDesign($design_id){
			$this->db->query("DELETE FROM " . DB_PREFIX . "design WHERE design_id = '" .$design_id . "'");
			//echo $query-row;
			//exit;
		}
		public function updateDesign($data){
			$this->db->query("UPDATE " . DB_PREFIX . "design SET has_confirmed = '" . $data['has_confirmed']. "',save_time = '" . $data['save_time']. "',design_title = '" .$data['design_title'] . "'where design_id='".$data['design_id']."'");
		}
		public function updateConfirm($design_id,$confirm_time){
			$this->db->query("UPDATE " . DB_PREFIX . "design SET has_confirmed = 1 ,confirm_time = '".$confirm_time."' WHERE design_id ='".$design_id."'");
		}
		public function getDesignOption($product_option_value_id){
			$query=$this->db->query("SELECT*FROM ". DB_PREFIX . "product_option_value AS pov LEFT JOIN " . DB_PREFIX . "option_value_description ovd ON (	pov.option_value_id = ovd.option_value_id) WHERE pov.product_option_value_id ='".$product_option_value_id."'");
			return $query->row;
		}
		public function getDesignIdFromOrder($customer_id){
			$query=$this->db->query("SELECT op.design_id FROM ". DB_PREFIX . "order_product AS op LEFT JOIN ". DB_PREFIX . "order o ON(op.order_id=o.order_id) WHERE o.customer_id='".$customer_id."'");
			return $query->rows;
		}
	}

?>