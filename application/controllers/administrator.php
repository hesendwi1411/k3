<?php
class Administrator extends CI_Controller{
    function __construct(){
        parent:: __construct();
        $this->load->model('m_login');
    }
    function index(){
        $this->load->view('admin/v_login');
        //redirect('admin/dashboard');
    }
    function auth(){
        $username=strip_tags(str_replace("'", "", $this->input->post('username')));
        $password=strip_tags(str_replace("'", "", $this->input->post('password')));
        $u=$username;
        $p=$password;
        //$u="klinik";
        //$p="123456";
        $cadmin=$this->m_login->cekadmin($u,$p);
        //echo $u;
        //echo $p;

        if($cadmin->num_rows > 0){
         $this->session->set_userdata('masuk',true);
         $this->session->set_userdata('user',$u);
         $xcadmin=$cadmin->row_array();
         
         if($xcadmin['pengguna_level']=='1')
            $this->session->set_userdata('akses','1');
            $idadmin=$xcadmin['pengguna_id'];
			$last_login=$xcadmin['pengguna_last_login'];
            $user_nama=$xcadmin['pengguna_nama'];
            $this->session->set_userdata('idadmin',$idadmin);
            $this->session->set_userdata('nama',$user_nama);
			$this->session->set_userdata('last_login',$last_login);
         if($xcadmin['pengguna_level']=='2'){
             $this->session->set_userdata('akses','2');
             $idadmin=$xcadmin['pengguna_id'];
			 $last_login=$xcadmin['pengguna_last_login'];
             $user_nama=$xcadmin['pengguna_nama'];
             $this->session->set_userdata('idadmin',$idadmin);
             $this->session->set_userdata('nama',$user_nama);
			 $this->session->set_userdata('last_login',$last_login);
         }
       
        }
        
        
        if($this->session->userdata('masuk')==true) {
		//echo "sukses";
		redirect('administrator/berhasillogin');
		}else{
            redirect('administrator/gagallogin');
        }
    }
    
    function berhasillogin(){
            redirect('admin/dashboard');
            //redirect('admin/department');
        }
        
    function gagallogin(){
            $url=base_url('administrator');
            echo $this->session->set_flashdata('msg','<div class="alert alert-danger" role="alert"><button type="button" class="close" data-dismiss="alert"><span class="fa fa-close"></span></button> Username Atau Password Salah</div>');
            redirect($url);
        }
		
    function logout(){
            $this->session->sess_destroy();
            $url=base_url('administrator');
            redirect($url);
        }
}