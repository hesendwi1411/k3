<?php
class Improvement_email_mingguan extends CI_Controller{
	function __construct(){
		parent::__construct();
		
		$this->load->model('m_improvement');
		$this->load->model('m_department');
		$this->load->model('m_program_k3');
		$this->load->model('m_siswa');
		$this->load->library('upload');
	}


	function index(){
		$x['data']=$this->m_improvement->get_all_improvement();
		$x['department']=$this->m_department->get_all_department();
		$x['program_k3']=$this->m_program_k3->get_all_program_k3();
		$x['siswa']=$this->m_siswa->get_all_siswa();
		$x['data_bydate']=$this->m_improvement->get_all_improvement_bydate();
		$this->finding_report();
		$this->load->view('admin/v_improvement',$x);
		
	}
	
	function finding_report(){
	  	
	
		$this->upload->initialize($config);
		
		$this->load->helper(array('form', 'url'));
		$this->load->library('upload');
		$this->load->library('email');
		
	
			
				
			
			//konfigurasi email
			$config = array();
			$config['charset'] = 'utf-8';
			$config['useragent'] = 'Codeigniter';
			$config['protocol']= "smtp";
			$config['mailtype']= "html";
			$config['smtp_host']= "lokal.ameyaindo.com";
			$config['smtp_port']= "587";
			$config['smtp_timeout']= "465";
			$config['smtp_user']= "k3@ameyaindo.com";
			$config['smtp_pass']= "Ameyaalsi0393";
			$config['crlf']="\r\n"; 
			$config['newline']="\r\n"; 
		
			$config['wordwrap'] = TRUE;
			//memanggil library email dan set konfigurasi untuk pengiriman email
			
			
			$this->email->initialize($config);
			//$this->email->from('hesen@ameyaindo.com','Balai K3 Ameya');
			
		$query = $this->db->query("SELECT siswa_email FROM tbl_siswa ");
		$list=array();
     $daftar ="";
		foreach ($query->result() as $row)
				{
						array_push($list, $row->siswa_email);
						//echo $row->siswa_email;
						$daftar = $daftar . $row-> siswa_email . ",";
				}
				//echo print_r($list);
				// exit;
				
				$daftar = "". $daftar . "";
				echo $daftar;
			
				//exit;
		$this->email->from('k3@ameyaindo.com','Balai K3 Ameya');
		$this->email->to($daftar);
		//$this->email->to('hesendwiyatmiko@gmail.com','hesen@ameyaindo.com');
		
        $this->email->subject('*** Balai K3 Ameya Finding Report ***');
		$x['data_bydate']=$this->m_improvement->get_all_improvement_bydate();
		$isi=$this->load->view('admin/v_improvement_email',$x,true);
		//echo print_r($isi);
				//exit;
	
		
		$this->email->message($isi);
        //$this->email->message('Area perbaikan :'.$area_perbaikan.' Masalah :'.$masalah);
		
		
		//$list = array('hesendwiyatmiko@gmail.com','hesen@ameyaindo.com');
		
        //$this->email->to($list);
		//$this->email->to($this->input->post('to'));
      //  $this->email->subject('Program :'.$cluster.' (Penanggung Jawab:'.$ketua.')');
      //  $this->email->message('Area perbaikan :'.$area_perbaikan.' Masalah :'.$masalah);
		
			
			if($this->email->send())
			{
				echo "berhasil mengirim email";
			}else
		{
				echo "gagal mengirim email";
			}
			
				echo $this->session->set_flashdata('msg','success');
				redirect('admin/improvement?id=1');
	}

	
	

	


}