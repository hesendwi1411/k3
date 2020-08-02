<?php
class Penyebab_kecelakaan_kerja extends CI_Controller{
	function __construct(){
		parent::__construct();
		if($this->session->userdata('masuk') !=TRUE){
            $url=base_url('administrator');
            redirect($url);
        };
		$this->load->model('m_penyebab_kecelakaan_kerja');
		$this->load->library('upload');
	}


	function index(){
		$x['data']=$this->m_penyebab_kecelakaan_kerja->get_all_penyebab_kecelakaan_kerja();
		$this->load->view('admin/v_penyebab_kecelakaan_kerja',$x);
	}

	function simpan_penyebab_kecelakaan_kerja(){
		$penyebab_kecelakaan_kerja=strip_tags($this->input->post('xpenyebab_kecelakaan_kerja'));
		$this->m_penyebab_kecelakaan_kerja->simpan_penyebab_kecelakaan_kerja($penyebab_kecelakaan_kerja);
		echo $this->session->set_flashdata('msg','success');
		redirect('admin/penyebab_kecelakaan_kerja');
	}

	function update_penyebab_kecelakaan_kerja(){
		$kode=strip_tags($this->input->post('kode'));
		$penyebab_kecelakaan_kerja=strip_tags($this->input->post('xpenyebab_kecelakaan_kerja'));
		$this->m_penyebab_kecelakaan_kerja->update_penyebab_kecelakaan_kerja($kode,$penyebab_kecelakaan_kerja);
		echo $this->session->set_flashdata('msg','info');
		redirect('admin/penyebab_kecelakaan_kerja');
	}
	function hapus_penyebab_kecelakaan_kerja(){
		$kode=strip_tags($this->input->post('kode'));
		$this->m_penyebab_kecelakaan_kerja->hapus_penyebab_kecelakaan_kerja($kode);
		echo $this->session->set_flashdata('msg','success-hapus');
		redirect('admin/penyebab_kecelakaan_kerja');
	}

}