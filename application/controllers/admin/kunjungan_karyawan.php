<?php
class Kunjungan_karyawan extends CI_Controller{
	function __construct(){
		parent::__construct();
		if($this->session->userdata('masuk') !=TRUE){
            $url=base_url('administrator');
            redirect($url);
        };
		//$this->load->model('m_kunjungan_kryawan');
		//$this->load->model('m_department');
		$this->load->library('upload');
	}


	function index(){
		//$x['data']=$this->m_kecelakaan_kerja->get_all_kecelakaan_kerja();
		//$x['department']=$this->m_department->get_all_department();
		$this->load->view('admin/v_kunjungan_karyawan');
	}

	function simpan_kecelakaan_kerja(){
		$jenis_kecelakaan=strip_tags($this->input->post('xjenis_kecelakaan'));
		$nama_kecelakaan=strip_tags($this->input->post('xnama_kecelakaan'));
		$nip=$this->input->post('xnip');
		$tanggal_kejadian=$this->input->post('xtanggal_kejadian');
		$waktu_kejadian=$this->input->post('xwaktu_kejadian');
		$department=strip_tags($this->input->post('xdepartment'));
		
		$alat=$this->input->post('xalat');
		$kronologi=$this->input->post('xkronologi');
		$penyebab_utama=$this->input->post('xpenyebab_utama');
		$hasil_pemeriksaan=$this->input->post('xhasil_pemeriksaan');
		$rencana_tindakan=$this->input->post('xrencana_tindakan');
		
		
		$this->m_kecelakaan_kerja->simpan_kecelakaan_kerja($jenis_kecelakaan,$nama_kecelakaan,$tanggal_kejadian,$nip,$department,$waktu_kejadian,$alat,$kronologi,$penyebab_utama,$hasil_pemeriksaan,$rencana_tindakan);
			
		echo $this->session->set_flashdata('msg','success');
		redirect('admin/kecelakaan_kerja');
	}

	function update_kecelakaan_kerja(){
		$kode=strip_tags($this->input->post('kode'));
		$jenis_kecelakaan=strip_tags($this->input->post('xjenis_kecelakaan'));
		$nama_kecelakaan=strip_tags($this->input->post('xnama_kecelakaan'));
		$nip=$this->input->post('xnip');
		$tanggal_kejadian=$this->input->post('xtanggal_kejadian');
		$waktu_kejadian=$this->input->post('xwaktu_kejadian');
		$department=strip_tags($this->input->post('xdepartment'));
		
		$alat=$this->input->post('xalat');
		$kronologi=$this->input->post('xkronologi');
		$penyebab_utama=$this->input->post('xpenyebab_utama');
		$hasil_pemeriksaan=$this->input->post('xhasil_pemeriksaan');
		$rencana_tindakan=$this->input->post('xrencana_tindakan');
		$this->m_kecelakaan_kerja->update_kecelakaan_kerja($kode,$jenis_kecelakaan,$nama_kecelakaan,$tanggal_kejadian,$nip,$department,$waktu_kejadian,$alat,$kronologi,$penyebab_utama,$hasil_pemeriksaan,$rencana_tindakan);
		
		echo $this->session->set_flashdata('msg','info');
		redirect('admin/kecelakaan_kerja');
	}
	function hapus_kecelakaan_kerja(){
		$kode=strip_tags($this->input->post('kode'));
		$this->m_kecelakaan_kerja->hapus_kecelakaan_kerja($kode);
		echo $this->session->set_flashdata('msg','success-hapus');
		redirect('admin/kecelakaan_kerja');
	}

}