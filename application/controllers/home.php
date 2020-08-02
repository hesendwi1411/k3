<?php
class Home extends CI_Controller{
	function __construct(){
		parent::__construct();
		$this->load->model('m_tulisan');
		$this->load->model('m_galeri');
		$this->load->model('m_pengumuman');
		$this->load->model('m_agenda');
		$this->load->model('m_files');
		$this->load->model('m_pengunjung');
	}
	function index(){

		$user_ip=$_SERVER['REMOTE_ADDR'];
		if ($this->agent->is_browser()){
		    $agent = $this->agent->browser();
		}elseif ($this->agent->is_robot()){
		    $agent = $this->agent->robot(); 
		}elseif ($this->agent->is_mobile()){
		    $agent = $this->agent->mobile();
		}else{
			$agent='Other';
		}
		$cek_ip=$this->m_pengunjung->cek_ip($user_ip);
		$cek=$cek_ip->num_rows();
		if($cek > 0){
			$x['galeri']=$this->m_galeri->get_galeri_home();
			$x['brt']=$this->m_tulisan->get_berita_slider();
			$x['berita']=$this->m_tulisan->get_berita_home();
			$x['pengumuman']=$this->m_pengumuman->get_pengumuman_home();
			$x['agenda']=$this->m_agenda->get_agenda_home();
			$x['download']=$this->m_files->get_files_home();
			$this->load->view('depan/v_home',$x);
		}else{
			$this->m_pengunjung->simpan_user_agent($user_ip,$agent);
			$x['galeri']=$this->m_galeri->get_galeri_home();
			$x['brt']=$this->m_tulisan->get_berita_slider();
			$x['berita']=$this->m_tulisan->get_berita_home();
			$x['pengumuman']=$this->m_pengumuman->get_pengumuman_home();
			$x['agenda']=$this->m_agenda->get_agenda_home();
			$x['download']=$this->m_files->get_files_home();
			$this->load->view('depan/v_home',$x);
		}
		
		
	}

	
}