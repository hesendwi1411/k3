<?php
class M_improvement extends CI_Model{

	function get_all_improvement(){
		$hsl=$this->db->query("SELECT tbl_improvement.*,DATE_FORMAT(improvement_tanggal_kejadian,'%d/%m/%Y') AS improvement_tanggal_kejadian,DATE_FORMAT(improvement_tanggal_penyelesaian,'%d/%m/%Y') AS improvement_tanggal_penyelesaian,DATE_FORMAT(improvement_tanggal_rencana,'%d/%m/%Y') AS improvement_tanggal_rencana,DATE_FORMAT(improvement_tanggal,'%d/%m/%Y') AS tanggal FROM tbl_improvement ORDER BY improvement_id DESC");
		return $hsl;
	}
	function get_all_improvement_bydate(){
		$hsl=$this->db->query("SELECT tbl_improvement.*,DATE_FORMAT(improvement_tanggal_kejadian,'%d/%m/%Y') AS improvement_tanggal_kejadian,DATE_FORMAT(improvement_tanggal_penyelesaian,'%d/%m/%Y') AS improvement_tanggal_penyelesaian,DATE_FORMAT(improvement_tanggal_rencana,'%d/%m/%Y') AS improvement_tanggal_rencana,DATE_FORMAT(improvement_tanggal,'%d/%m/%Y') AS tanggal FROM tbl_improvement ORDER BY improvement_id DESC");
		return $hsl;
	}
	function simpan_improvement_old($cluster,$ketua,$tanggal_kejadian,$masalah,$area_perbaikan,$perbaikan,$by_rencana,$tanggal_rencana,$status,$progres,$by_target,$tanggal_penyelesaian,$photo_temuan,$photo_perbaikan,$foto_temuan,$foto_perbaikan){
		$author=$this->session->userdata('nama');
		$hsl=$this->db->query("INSERT INTO tbl_improvement(improvement_cluster,improvement_ketua,improvement_tanggal_kejadian,improvement_masalah,improvement_area_perbaikan,improvement_perbaikan,improvement_by_rencana,improvement_author,improvement_tanggal_rencana,improvement_status,improvement_progres,improvement_by_target,improvement_tanggal_penyelesaian,improvement_photo_temuan,improvement_photo_perbaikan,improvement_photo_temuan1,improvement_photo_temuan2,improvement_photo_temuan3,improvement_photo_temuan4,improvement_photo_perbaikan1,improvement_photo_perbaikan2,improvement_photo_perbaikan3,improvement_photo_perbaikan4) VALUES ('$cluster','$ketua','$tanggal_kejadian','$masalah','$area_perbaikan','$perbaikan','$by_rencana','$author','$tanggal_rencana','$status','$progres','$by_target','$tanggal_penyelesaian','$photo_temuan','$photo_perbaikan','$foto_temuan[0]','$foto_temuan[1]','$foto_temuan[2]','$foto_temuan[3]','$foto_perbaikan[0]','$foto_perbaikan[1]','$foto_perbaikan[2]','$foto_perbaikan[3]')");		
		return $hsl;
	}
	function simpan_improvement_tanpa_perbaikan($cluster,$ketua,$tanggal_kejadian,$masalah,$area_perbaikan,$perbaikan,$by_rencana,$tanggal_rencana,$status,$progres,$by_target,$tanggal_penyelesaian,$photo_temuan,$photo_perbaikan,$foto_temuan){
		$author=$this->session->userdata('nama');
		$hsl=$this->db->query("INSERT INTO tbl_improvement(improvement_cluster,improvement_ketua,improvement_tanggal_kejadian,improvement_masalah,improvement_area_perbaikan,improvement_perbaikan,improvement_by_rencana,improvement_author,improvement_tanggal_rencana,improvement_status,improvement_progres,improvement_by_target,improvement_tanggal_penyelesaian,improvement_photo_temuan,improvement_photo_perbaikan,improvement_photo_temuan1,improvement_photo_temuan2,improvement_photo_temuan3,improvement_photo_temuan4) VALUES ('$cluster','$ketua','$tanggal_kejadian','$masalah','$area_perbaikan','$perbaikan','$by_rencana','$author','$tanggal_rencana','$status','$progres','$by_target','$tanggal_penyelesaian','$photo_temuan','$photo_perbaikan','$foto_temuan[0]','$foto_temuan[1]','$foto_temuan[2]','$foto_temuan[3]')");		
		return $hsl;
	}
	function update_improvement($kode,$cluster,$ketua,$tanggal_kejadian,$masalah,$area_perbaikan,$perbaikan,$by_rencana,$tanggal_rencana,$status,$progres,$by_target,$tanggal_penyelesaian,$foto_perbaikan){
		$author=$this->session->userdata('nama');
		$hsl=$this->db->query("UPDATE tbl_improvement SET improvement_cluster='$cluster',improvement_ketua='$ketua',improvement_tanggal_kejadian='$tanggal_kejadian',improvement_masalah='$masalah',improvement_area_perbaikan='$area_perbaikan',improvement_perbaikan='$perbaikan',improvement_by_rencana='$by_rencana',improvement_tanggal_rencana='$tanggal_rencana',improvement_author='$author',improvement_status='$status',improvement_progres='$progres',improvement_by_target='$by_target',improvement_tanggal_penyelesaian='$tanggal_penyelesaian',improvement_photo_perbaikan1='$foto_perbaikan[0]',improvement_photo_perbaikan2='$foto_perbaikan[1]',improvement_photo_perbaikan3='$foto_perbaikan[2]',improvement_photo_perbaikan4='$foto_perbaikan[3]' where improvement_id='$kode'");

	return $hsl;
	}
	function update_improvement_foto_temuan($kode,$cluster,$ketua,$tanggal_kejadian,$masalah,$area_perbaikan,$perbaikan,$by_rencana,$tanggal_rencana,$status,$progres,$by_target,$tanggal_penyelesaian,$foto_temuan){
		$author=$this->session->userdata('nama');
		$hsl=$this->db->query("UPDATE tbl_improvement SET improvement_cluster='$cluster',improvement_ketua='$ketua',improvement_tanggal_kejadian='$tanggal_kejadian',improvement_masalah='$masalah',improvement_area_perbaikan='$area_perbaikan',improvement_perbaikan='$perbaikan',improvement_by_rencana='$by_rencana',improvement_tanggal_rencana='$tanggal_rencana',improvement_author='$author',improvement_status='$status',improvement_progres='$progres',improvement_by_target='$by_target',improvement_tanggal_penyelesaian='$tanggal_penyelesaian',improvement_photo_temuan1='$foto_temuan[0]',improvement_photo_temuan2='$foto_temuan[1]',improvement_photo_temuan3='$foto_temuan[2]',improvement_photo_temuan4='$foto_temuan[3]' where improvement_id='$kode'");

	return $hsl;
	}
	function update_improvement_tanpa_foto($kode,$cluster,$ketua,$tanggal_kejadian,$masalah,$area_perbaikan,$perbaikan,$by_rencana,$tanggal_rencana,$status,$progres,$by_target,$tanggal_penyelesaian){
		$author=$this->session->userdata('nama');
		$hsl=$this->db->query("UPDATE tbl_improvement SET improvement_cluster='$cluster',improvement_ketua='$ketua',improvement_tanggal_kejadian='$tanggal_kejadian',improvement_masalah='$masalah',improvement_area_perbaikan='$area_perbaikan',improvement_perbaikan='$perbaikan',improvement_by_rencana='$by_rencana',improvement_tanggal_rencana='$tanggal_rencana',improvement_author='$author',improvement_status='$status',improvement_progres='$progres',improvement_by_target='$by_target',improvement_tanggal_penyelesaian='$tanggal_penyelesaian' where improvement_id='$kode'");

	return $hsl;
	}
	function update_improvement_old($kode,$cluster,$ketua,$tanggal_kejadian,$masalah,$area_perbaikan,$perbaikan,$by_rencana,$tanggal_rencana,$status,$progres,$by_target,$tanggal_penyelesaian){
		$author=$this->session->userdata('nama');
		$hsl=$this->db->query("UPDATE tbl_improvement SET improvement_cluster='$cluster',improvement_ketua='$ketua',improvement_tanggal_kejadian='$tanggal_kejadian',improvement_masalah='$masalah',improvement_area_perbaikan='$area_perbaikan',improvement_perbaikan='$perbaikan',improvement_by_rencana='$by_rencana',improvement_tanggal_rencana='$tanggal_rencana',improvement_author='$author',improvement_status='$status',improvement_progres='$progres',improvement_by_target='$by_target',improvement_tanggal_penyelesaian='$tanggal_penyelesaian' where improvement_id='$kode'");

	return $hsl;
	}
	function update_improvement_tanpa_lampiran($kode,$cluster,$ketua,$tanggal_kejadian,$masalah,$area_perbaikan,$perbaikan,$by_rencana,$tanggal_rencana,$status,$progres,$by_target,$tanggal_penyelesaian){
		$author=$this->session->userdata('nama');
		$hsl=$this->db->query("UPDATE tbl_improvement SET improvement_cluster='$cluster',improvement_ketua='$ketua',improvement_tanggal_kejadian='$tanggal_kejadian',improvement_masalah='$masalah',improvement_area_perbaikan='$area_perbaikan',improvement_perbaikan='$perbaikan',improvement_by_rencana='$by_rencana',improvement_tanggal_rencana='$tanggal_rencana',improvement_author='$author',improvement_status='$status',improvement_progres='$progres',improvement_by_target='$by_target',improvement_tanggal_penyelesaian='$tanggal_penyelesaian' where improvement_id='$kode'");

	return $hsl;
	}
	function hapus_improvement($kode){
		$hsl=$this->db->query("DELETE FROM tbl_improvement WHERE improvement_id='$kode'");
		return $hsl;
	}

	//front-end
	function get_improvement_home(){
		$hsl=$this->db->query("SELECT tbl_improvement.*,DATE_FORMAT(improvement_tanggal,'%d/%m/%Y') AS tanggal FROM tbl_improvement ORDER BY improvement_id DESC");
		return $hsl;
	}
	function improvement(){
		$hsl=$this->db->query("SELECT tbl_improvement.*,DATE_FORMAT(improvement_tanggal,'%d/%m/%Y') AS tanggal FROM tbl_improvement ORDER BY improvement_id DESC");
		
		return $hsl;
	}
	function improvement_perpage($offset,$limit){
	$hsl=$this->db->query("SELECT tbl_improvement.*,DATE_FORMAT(improvement_tanggal,'%d/%m/%Y') AS tanggal FROM tbl_improvement where improvement_tanggal = CURDATE() ORDER BY improvement_id DESC limit $offset,$limit");
			
		return $hsl;
	}

//Front-End
	function get_berita_improvement_slider(){
		$hsl=$this->db->query("SELECT tbl_improvement.*,DATE_FORMAT(improvement_tanggal,'%d/%m/%Y') AS tanggal FROM tbl_improvement where improvement_img_slider='1' ORDER BY improvement_id DESC");
		return $hsl;
	}
	function get_berita_improvement_home(){
		$hsl=$this->db->query("SELECT tbl_improvement.*,DATE_FORMAT(improvement_tanggal,'%d/%m/%Y') AS tanggal FROM tbl_improvement where improvement_img_slider='0' ORDER BY improvement_id DESC limit 3");
		return $hsl;
	}

	function berita_improvement_perpage($offset,$limit){
		$hsl=$this->db->query("SELECT tbl_improvement.*,DATE_FORMAT(improvement_tanggal,'%d/%m/%Y') AS tanggal FROM tbl_improvement ORDER BY improvement_id DESC limit $offset,$limit");
		return $hsl;
	}

	function berita_improvement(){
		$hsl=$this->db->query("SELECT tbl_improvement.*,DATE_FORMAT(improvement_tanggal,'%d/%m/%Y') AS tanggal FROM tbl_improvement ORDER BY improvement_id DESC");
		return $hsl;
	} 
	function get_berita_improvement_by_kode($kode){
		$hsl=$this->db->query("SELECT tbl_improvement.*,DATE_FORMAT(improvement_tanggal,'%d/%m/%Y') AS tanggal FROM tbl_improvement where improvement_id='$kode'");
		return $hsl;
	}

	function cari_berita_improvement($keyword){
		$hsl=$this->db->query("SELECT tbl_improvement.*,DATE_FORMAT(improvement_tanggal,'%d/%m/%Y') AS tanggal FROM tbl_improvement WHERE improvement_cluster LIKE '%$keyword%'");
		return $hsl;
	}
	
	
	
} 