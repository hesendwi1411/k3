<?php
class M_penyebab_kecelakaan_kerja extends CI_Model{

	function get_all_penyebab_kecelakaan_kerja(){
		$hsl=$this->db->query("select * from tbl_penyebab_kecelakaan_kerja");
		return $hsl;
	}
	function simpan_penyebab_kecelakaan_kerja($penyebab_kecelakaan_kerja){
		$hsl=$this->db->query("insert into tbl_penyebab_kecelakaan_kerja(penyebab_nama) values('$penyebab_kecelakaan_kerja')");
		return $hsl;
	}
	function update_penyebab_kecelakaan_kerja($kode,$penyebab_kecelakaan_kerja){
		$hsl=$this->db->query("update tbl_penyebab_kecelakaan_kerja set penyebab_nama='$penyebab_kecelakaan_kerja' where penyebab_id='$kode'");
		return $hsl;
	}
	function hapus_penyebab_kecelakaan_kerja($kode){
		$hsl=$this->db->query("delete from tbl_penyebab_kecelakaan_kerja where penyebab_id='$kode'");
		return $hsl;
	}
	
	function get_penyebab_kecelakaan_kerja_byid($kategori_id){
		$hsl=$this->db->query("select * from tbl_penyebab_kecelakaan_kerja where penyebab_id='$kategori_id'");
		return $hsl;
	}

}