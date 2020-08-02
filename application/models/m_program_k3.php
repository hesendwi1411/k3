<?php
class M_program_k3 extends CI_Model{

	function get_all_program_k3(){
		$hsl=$this->db->query("select * from tbl_program_k3");
		return $hsl;
	}
	function simpan_program_k3($program_nama,$program_tahun){
		$hsl=$this->db->query("insert into tbl_program_k3(program_nama,program_tahun) values('$program_nama','$program_tahun')");
		return $hsl;
	}
	function update_program_k3($kode,$program_nama,$program_tahun){
		$hsl=$this->db->query("update tbl_program_k3 set program_nama='$program_nama',program_tahun='$program_tahun' where program_id='$kode'");
		return $hsl;
	}
	function hapus_program_k3($kode){
		$hsl=$this->db->query("delete from tbl_program_k3 where program_id='$kode'");
		return $hsl;
	}
	
	function get_program_k3_byid($program_id){
		$hsl=$this->db->query("select * from tbl_program_k3 where program_id='$program_id'");
		return $hsl;
	}

}