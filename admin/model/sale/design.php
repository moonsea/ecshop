<?php
class ModelSaleDesign extends Model {
	public function getDesignById($design_id){
			$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "design WHERE design_id = '" .$design_id . "'");
			return $query->row;
		}
}
?>