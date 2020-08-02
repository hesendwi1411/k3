<?php
class M_diagnosis extends CI_Model{

	function get_all_diagnosis(){
		$hsl=$this->db->query("select * from tbl_diagnosis");
		return $hsl;
	}
	function simpan_diagnosis($diagnosis_nama){
		$hsl=$this->db->query("insert into tbl_diagnosis(diagnosis_nama) values('$diagnosis_nama')");
		return $hsl;
	}
	function update_diagnosis($kode,$diagnosis_nama){
		$hsl=$this->db->query("update tbl_diagnosis set diagnosis_nama='$diagnosis_nama' where diagnosis_id='$kode'");
		return $hsl;
	}
	function hapus_diagnosis($kode){
		$hsl=$this->db->query("delete from tbl_diagnosis where diagnosis_id='$kode'");
		return $hsl;
	}
	
	function get_diagnosis_byid($diagnosis_id){
		$hsl=$this->db->query("select * from tbl_diagnosis where diagnosis_id='$diagnosis_id'");
		return $hsl;
	}

}