<?php
class Berita extends CI_Controller{
	function __construct(){
		parent::__construct();
		$this->load->model('m_tulisan');

	}
	function index(){
		$jum=$this->m_tulisan->berita();
        $page=$this->uri->segment(3);
        if(!$page):
            $offset = 0;
        else:
            $offset = $page;
        endif;
        $limit=7;
        $config['base_url'] = base_url() . 'berita/index/';
            $config['total_rows'] = $jum->num_rows();
            $config['per_page'] = $limit;
            $config['uri_segment'] = 3;
            $config['first_link'] = 'Awal';
            $config['last_link'] = 'Akhir';
            $config['next_link'] = 'Next >>';
            $config['prev_link'] = '<< Prev';
            $this->pagination->initialize($config);
            $x['page'] =$this->pagination->create_links();
		$x['data']=$this->m_tulisan->berita_perpage($offset,$limit);
		//$x['brt']=$this->berita->beritaasc();
		$this->load->view('depan/v_berita',$x);
	}
	function berita_detail(){
		$kode=$this->uri->segment(3);
        $this->db->query("UPDATE tbl_tulisan SET tulisan_views=tulisan_views+1 WHERE tulisan_id='$kode'");
		$x['data']=$this->m_tulisan->get_berita_by_kode($kode);
		$this->load->view('depan/v_beritadetail',$x);
	}

    
    function search(){
        $keyword=str_replace("'", "", $this->input->post('textcari'));
        $x['data']=$this->m_tulisan->cari_berita($keyword);
        $this->load->view('depan/v_berita_search',$x);
    }

}