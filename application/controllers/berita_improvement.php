<?php
class Berita_improvement extends CI_Controller{
	function __construct(){
		parent::__construct();
		$this->load->model('m_improvement');

	}
	function index(){
		$jum=$this->m_improvement->berita_improvement();
        $page=$this->uri->segment(3);
        if(!$page):
            $offset = 0;
        else:
            $offset = $page;
        endif;
        $limit=7;
        $config['base_url'] = base_url() . 'berita_improvement/index/';
            $config['total_rows'] = $jum->num_rows();
            $config['per_page'] = $limit;
            $config['uri_segment'] = 3;
            $config['first_link'] = 'Awal';
            $config['last_link'] = 'Akhir';
            $config['next_link'] = 'Next >>';
            $config['prev_link'] = '<< Prev';
            $this->pagination->initialize($config);
            $x['page'] =$this->pagination->create_links();
		$x['data']=$this->m_improvement->berita_improvement_perpage($offset,$limit);
		//$x['brt']=$this->berita->beritaasc();
		$this->load->view('depan/v_berita_improvement',$x);
	}
	function berita_improvement_detail(){
		$kode=$this->uri->segment(3);
        //$this->db->query("UPDATE tbl_improvement SET improvement_masalah=improvement_masalah+1 WHERE improvement_id='$kode'");
		$x['data']=$this->m_improvement->get_berita_improvement_by_kode($kode);
		$this->load->view('depan/v_beritadetail_improvement',$x);
	}

    
    function search(){
        $keyword=str_replace("'", "", $this->input->post('textcari'));
        $x['data']=$this->m_improvement->cari_berita_improvement($keyword);
        $this->load->view('depan/v_berita_imrovement_search',$x);
    }

}