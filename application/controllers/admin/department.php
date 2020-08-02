<?php
class Department extends CI_Controller{
	function __construct(){
		parent::__construct();
		if($this->session->userdata('masuk') !=TRUE){
            $url=base_url('administrator');
            redirect($url);
        };
		$this->load->model('m_department');
		$this->load->library('upload');
	}


	function index(){
		$x['data']=$this->m_department->get_all_department();
		$this->load->view('admin/v_department',$x);
	}

	function simpan_department(){
		$department_nama=strip_tags($this->input->post('xdepartment_nama'));
		$this->m_department->simpan_department($department_nama);
		echo $this->session->set_flashdata('msg','success');
		redirect('admin/department');
	}

	function update_department(){
		$kode=strip_tags($this->input->post('kode'));
		$department_nama=strip_tags($this->input->post('xdepartment_nama'));
		$this->m_department->update_department($kode,$department_nama);
		echo $this->session->set_flashdata('msg','info');
		redirect('admin/department');
	}
	function hapus_department(){
		$kode=strip_tags($this->input->post('kode'));
		$this->m_department->hapus_department($kode);
		echo $this->session->set_flashdata('msg','success-hapus');
		redirect('admin/department');
	}

}