<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
	
	class email extends CI_Controller {
		
		public function index()
		{
			$this->load->helper('form');
			$this->load->view('admin/v_email');
			
		}
		
		public function kirim()
		{
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
			$config['smtp_user']= "hesen@ameyaindo.com";
			$config['smtp_pass']= "yatmmiko";
			$config['crlf']="\r\n"; 
			$config['newline']="\r\n"; 
		
			$config['wordwrap'] = TRUE;
			//memanggil library email dan set konfigurasi untuk pengiriman email
			
			$this->email->initialize($config);
			//konfigurasi pengiriman
			$this->email->from($this->input->post('from'));
			$this->email->to($this->input->post('to'));
			$this->email->subject($this->input->post('subject'));
			$this->email->message($this->input->post('isi'));
			//Configure upload.
			
			$this->upload->initialize(array(
            "upload_path"   => "./uploads/",
			"allowed_types" => "*"
			));
			
			//Perform upload.
			if($this->upload->do_multi_upload("lampiran"))
				{
				
				$lamp = $this->upload->get_multi_upload_data();
				foreach ($lamp as $key=>$value)
				{
					$this->email->attach($value['full_path']);
				}
			}else
			{
				echo $this->upload->display_errors();	
			}
			
			if($this->email->send())
			{
				echo "berhasil mengirim email";
			}else
			{
				echo "gagal mengirim email";
			}
			
		}
	}
	
	/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */