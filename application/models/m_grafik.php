<?php
class M_grafik extends CI_Model{

	function get_data_findings(){
       // $query = $this->db->query("SELECT merk,SUM(stok) AS stok FROM barang GROUP BY merk");
		//$query=$this->db->query("SELECT tbl_improvement.*,count(improvement_cluster) AS improvement_count FROM tbl_improvement GROUP BY improvement_cluster ORDER BY improvement_count DESC");
         $query = $this->db->query("SELECT improvement_cluster as cluster,count(improvement_cluster) AS jumlah_findings FROM tbl_improvement GROUP BY cluster"); 
        if($query->num_rows() > 0){
            foreach($query->result() as $data){
                $hasil[] = $data;
            }
            return $hasil;
        }
    }
	
	

}