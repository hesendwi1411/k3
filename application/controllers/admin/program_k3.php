<?php
class Program_k3 extends CI_Controller{
	function __construct(){
		parent::__construct();
		if($this->session->userdata('masuk') !=TRUE){
            $url=base_url('administrator');
            redirect($url);
        };
		$this->load->model('m_program_k3');
		$this->load->library('upload');
	}


	function index(){
		$x['data']=$this->m_program_k3->get_all_program_k3();
		$this->load->view('admin/v_program_k3',$x);
	}

	function simpan_program_k3(){
		$program_nama=strip_tags($this->input->post('xprogram_nama'));
		$program_tahun=strip_tags($this->input->post('xprogram_tahun'));
		$this->m_program_k3->simpan_program_k3($program_nama,$program_tahun);
		echo $this->session->set_flashdata('msg','success');
		redirect('admin/program_k3');
	}

	function update_program_k3(){
		$kode=strip_tags($this->input->post('kode'));
		$program_nama=strip_tags($this->input->post('xprogram_nama'));
		$program_tahun=strip_tags($this->input->post('xprogram_tahun'));
		$this->m_program_k3->update_program_k3($kode,$program_nama,$program_tahun);
		echo $this->session->set_flashdata('msg','info');
		redirect('admin/program_k3');
	}
	function hapus_program_k3(){
		$kode=strip_tags($this->input->post('kode'));
		$this->m_program_k3->hapus_program_k3($kode);
		echo $this->session->set_flashdata('msg','success-hapus');
		redirect('admin/program_k3');
	}

}