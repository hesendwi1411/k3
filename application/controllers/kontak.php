<?php
class Kontak extends CI_Controller{
        function __construct(){
		parent::__construct();
                $this->load->model('m_kontak');
	}
	function index(){
		$this->load->library('googlemaps');
                $config=array();
                $config['center']="-7.8748492, 110.2939864";
                $config['zoom']=17;
                $config['map_height']="400px";
                $this->googlemaps->initialize($config);
                $marker=array();
                $marker['position']="-7.8748492, 110.2939864";
                $this->googlemaps->add_marker($marker);
                $data['map']=$this->googlemaps->create_map();
		$this->load->view('depan/v_contact',$data);
	}

        function kirim_pesan(){
                $nama=str_replace("'", "", $this->input->post('xnama',TRUE));
                $email=str_replace("'", "", $this->input->post('xemail',TRUE));
                $kontak=str_replace("'", "", $this->input->post('xkontak',TRUE));
                $pesan=str_replace("'", "", $this->input->post('xpesan',TRUE));
                $this->m_kontak->kirim_pesan($nama,$email,$kontak,$pesan);
                echo $this->session->set_flashdata('msg','<div class="note1"><p><strong> NB: </strong> Terima Kasih Telah Menghubungi Kami.</p></div>');
                redirect('kontak');
        }
}