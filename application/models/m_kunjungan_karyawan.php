<?php<?php
class M_kunjungan_karyawan extends CI_Model{

	function get_nama_penyakit(){
		 $dua = $this->load->database('db2', TRUE); //load database
		$hsl = $this->db2->query("SELECT * FROM penyakit ORDER BY nama_penyakit ASC");
		return $hsl;
		
	}
		function get_all_kunjungan_karyawan(){
			$this->db2 = $CI->load->database('db2', TRUE);
$qry = $this->db2->query("SELECT * FROM penyakit, rekammedik, pasien WHERE penyakit.id_penyakit=rekammedik.id_penyakit AND pasien.kodePasien=rekammedik.kodepasien AND rekammedik.tgl BETWEEN '2018-10-01' AND '2018-10-30' ");
//print_r($qry->result());

		return $qry;
	}
	
	
	function simpan_kecelakaan_kerja($jenis_kecelakaan,$nama_kecelakaan,$tanggal_kejadian,$nip,$department,$waktu_kejadian,$alat,$kronologi,$penyebab_utama,$hasil_pemeriksaan,$rencana_tindakan){
		$author=$this->session->userdata('nama');
		$hsl=$this->db->query("INSERT INTO tbl_kecelakaan_kerja(kecelakaan_jenis,kecelakaan_nama,kecelakaan_tanggal_kejadian,kecelakaan_nip,kecelakaan_department,kecelakaan_waktu_kejadian,kecelakaan_alat,kecelakaan_author,kecelakaan_kronologi,kecelakaan_penyebab_utama,kecelakaan_hasil_pemeriksaan,kecelakaan_rencana_tindakan) VALUES ('$jenis_kecelakaan','$nama_kecelakaan','$tanggal_kejadian','$nip','$department','$waktu_kejadian','$alat','$author','$kronologi','$penyebab_utama','$hasil_pemeriksaan','$rencana_tindakan')");		
		return $hsl;
	}
	function update_kecelakaan_kerja($kode,$jenis_kecelakaan,$nama_kecelakaan,$tanggal_kejadian,$nip,$department,$waktu_kejadian,$alat,$kronologi,$penyebab_utama,$hasil_pemeriksaan,$rencana_tindakan){
		$author=$this->session->userdata('nama');
		$hsl=$this->db->query("UPDATE tbl_kecelakaan_kerja SET kecelakaan_jenis='$jenis_kecelakaan',kecelakaan_nama='$nama_kecelakaan',kecelakaan_tanggal_kejadian='$tanggal_kejadian',kecelakaan_nip='$nip',kecelakaan_department='$department',kecelakaan_waktu_kejadian='$waktu_kejadian',kecelakaan_alat='$alat',kecelakaan_kronologi='$kronologi',kecelakaan_author='$author',kecelakaan_penyebab_utama='$penyebab_utama',kecelakaan_hasil_pemeriksaan='$hasil_pemeriksaan',kecelakaan_rencana_tindakan='$rencana_tindakan' where kecelakaan_id='$kode'");

	return $hsl;
	}
	
	function hapus_kecelakaan_kerja($kode){
		$hsl=$this->db->query("DELETE FROM tbl_kecelakaan_kerja WHERE kecelakaan_id='$kode'");
		return $hsl;
	}

	//front-end
	function get_kecelakaan_kerja_home(){
		$hsl=$this->db->query("SELECT tbl_kecelakaan_kerja.*,DATE_FORMAT(kecelakaan_tanggal,'%d/%m/%Y') AS tanggal FROM tbl_kecelakaan_kerja ORDER BY kecelakaan_id DESC");
		return $hsl;
	}
	function kecelakaan_kerja(){
		$hsl=$this->db->query("SELECT tbl_kecelakaan_kerja.*,DATE_FORMAT(kecelakaan_tanggal,'%d/%m/%Y') AS tanggal FROM tbl_kecelakaan_kerja ORDER BY kecelakaan_id DESC");
		
		return $hsl;
	}
	function kecelakaan_kerja_perpage($offset,$limit){
	$hsl=$this->db->query("SELECT tbl_kecelakaan_kerja.*,DATE_FORMAT(kecelakaan_tanggal,'%d/%m/%Y') AS tanggal FROM tbl_kecelakaan_kerja ORDER BY kecelakaan_id DESC limit $offset,$limit");	
		return $hsl;
	}


} 