<?php
class M_department extends CI_Model{

	function get_all_department(){
		$hsl=$this->db->query("select * from tbl_department");
		return $hsl;
	}
	function simpan_department($department_nama){
		$hsl=$this->db->query("insert into tbl_department(department_nama) values('$department_nama')");
		return $hsl;
	}
	function update_department($kode,$department_nama){
		$hsl=$this->db->query("update tbl_department set department_nama='$department_nama' where department_id='$kode'");
		return $hsl;
	}
	function hapus_department($kode){
		$hsl=$this->db->query("delete from tbl_department where department_id='$kode'");
		return $hsl;
	}
	
	function get_department_byid($department_id){
		$hsl=$this->db->query("select * from tbl_department where department_id='$department_id'");
		return $hsl;
	}

}