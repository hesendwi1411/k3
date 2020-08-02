<?php
class Dashboard extends CI_Controller{
	function __construct(){
		parent::__construct();
		if($this->session->userdata('masuk') !=TRUE){
            $url=base_url('administrator');
            redirect($url);
			
        };
		$this->load->model('m_grafik');
		
		
	}
	function index(){
		if($this->session->userdata('akses')=='1'){	
		$x['data']=$this->m_grafik->get_data_findings();
		$this->load->view('admin/v_dashboard',$x);
		}
		else{
		if($this->session->userdata('akses')=='2'){
		$x['data']=$this->m_grafik->get_data_findings();
		$this->load->view('admin/v_dashboard',$x);	
		} 
		else{
			redirect('administrator');
		}
		}
	}
	
}

