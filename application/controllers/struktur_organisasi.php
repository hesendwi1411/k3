<?php
class Struktur_organisasi extends CI_Controller{
	function __construct(){
		parent::__construct();
		$this->load->model('m_struktur_organisasi');
	}
	function index(){
		$jum=$this->m_struktur_organisasi->siswa();
        $page=$this->uri->segment(3);
        if(!$page):
            $offset = 0;
        else:
            $offset = $page;
        endif;
        $limit=7;
        $config['base_url'] = base_url() . 'struktur_organisasi/index/';
            $config['total_rows'] = $jum->num_rows();
            $config['per_page'] = $limit;
            $config['uri_segment'] = 3;
            $config['first_link'] = 'Awal';
            $config['last_link'] = 'Akhir';
            $config['next_link'] = 'Next >>';
            $config['prev_link'] = '<< Prev';
            $this->pagination->initialize($config);
            $x['page'] =$this->pagination->create_links();
		$x['data']=$this->m_struktur_organisasi->siswa_perpage($offset,$limit);
		//$x['brt']=$this->berita->beritaasc();
		$this->load->view('depan/v_struktur_organisasi',$x);
	}

    

}