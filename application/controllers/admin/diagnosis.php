<?php
class Diagnosis extends CI_Controller{
	function __construct(){
		parent::__construct();
		if($this->session->userdata('masuk') !=TRUE){
            $url=base_url('administrator');
            redirect($url);
        };
		$this->load->model('m_diagnosis');
		$this->load->library('upload');
	}


	function index(){
		$x['data']=$this->m_diagnosis->get_all_diagnosis();
		$this->load->view('admin/v_diagnosis',$x);
	}

	function simpan_diagnosis(){
		$diagnosis_nama=strip_tags($this->input->post('xdiagnosis_nama'));
		$this->m_diagnosis->simpan_diagnosis($diagnosis_nama);
		echo $this->session->set_flashdata('msg','success');
		redirect('admin/diagnosis');
	}

	function update_diagnosis(){
		$kode=strip_tags($this->input->post('kode'));
		$diagnosis_nama=strip_tags($this->input->post('xdiagnosis_nama'));
		$this->m_diagnosis->update_diagnosis($kode,$diagnosis_nama);
		echo $this->session->set_flashdata('msg','info');
		redirect('admin/diagnosis');
	}
	function hapus_diagnosis(){
		$kode=strip_tags($this->input->post('kode'));
		$this->m_diagnosis->hapus_diagnosis($kode);
		echo $this->session->set_flashdata('msg','success-hapus');
		redirect('admin/diagnosis');
	}

}