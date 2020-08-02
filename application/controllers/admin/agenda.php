<?php
class Agenda extends CI_Controller{
	function __construct(){
		parent::__construct();
		if($this->session->userdata('masuk') !=TRUE){
            $url=base_url('administrator');
            redirect($url);
        };
		$this->load->model('m_agenda');
		$this->load->library('upload');
	}


	function index(){
		$x['data']=$this->m_agenda->get_all_agenda();
		$this->load->view('admin/v_agenda',$x);
	}

	function simpan_agenda(){
		$nama_agenda=strip_tags($this->input->post('xnama_agenda'));
		$deskripsi=$this->input->post('xdeskripsi');
		$mulai=$this->input->post('xmulai');
		$selesai=$this->input->post('xselesai');
		$tempat=$this->input->post('xtempat');
		$waktu=$this->input->post('xwaktu');
		$keterangan=$this->input->post('xketerangan');
		$this->m_agenda->simpan_agenda($nama_agenda,$deskripsi,$mulai,$selesai,$tempat,$waktu,$keterangan);
		
		$this->load->helper(array('form', 'url'));
		$this->load->library('upload');
		$this->load->library('email');
		
			//konfigurasi email
			$config = array();
			$config['charset'] = 'utf-8';
			$config['useragent'] = 'Codeigniter';
			$config['protocol']= "smtp";
			$config['mailtype']= "html or text";
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
				
       // $list = array('hesendwiyatmiko@gmail.com','hesen@ameyaindo.com');
		
		$this->email->from('k3@ameyaindo.com','Balai K3 Ameya');
		$this->email->to($daftar);
		//$this->email->to($this->input->post('to'));
        $this->email->subject('Agenda :'.$nama_agenda);
		
					$message = 'Dear All, '."\r\n";
                    $message .= "We would like to invite you to come :"."\n";
                    $message .="\n". 'Agenda'."\t\t: ".$nama_agenda;
					$message .="\n". 'Deskripsi'."\t: ".$deskripsi;
					$message .="\n". 'Tanggal'."\t\t: ".date("l,d F Y", strtotime($mulai));
					$message .="\n". 'Waktu'."\t\t: ".$waktu;
					$message .="\n". 'Tempat'."\t\t: ".$tempat;
					$message .="\n". 'Keterangan'."\t: ".$keterangan."\n";
                    $message .= "\nThank you!";
					$message .= " \n \n ---------------------------------------------------------------------";
					 
        $this->email->message($message);
		
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
		redirect('admin/agenda');
	}

	function update_agenda(){
		$kode=strip_tags($this->input->post('kode'));
		$nama_agenda=strip_tags($this->input->post('xnama_agenda'));
		$deskripsi=$this->input->post('xdeskripsi');
		$mulai=$this->input->post('xmulai');
		$selesai=$this->input->post('xselesai');
		$tempat=$this->input->post('xtempat');
		$waktu=$this->input->post('xwaktu');
		$keterangan=$this->input->post('xketerangan');
		$this->m_agenda->update_agenda($kode,$nama_agenda,$deskripsi,$mulai,$selesai,$tempat,$waktu,$keterangan);
		
		
		$this->load->helper(array('form', 'url'));
		$this->load->library('upload');
		$this->load->library('email');
		
			//konfigurasi email
			$config = array();
			$config['charset'] = 'utf-8';
			$config['useragent'] = 'Codeigniter';
			$config['protocol']= "smtp";
			$config['mailtype']= "html or text";
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
				
       // $list = array('hesendwiyatmiko@gmail.com','hesen@ameyaindo.com');
		
		$this->email->from('k3@ameyaindo.com','Balai K3 Ameya');
		$this->email->to($daftar);
		//$this->email->to($this->input->post('to'));
        $this->email->subject('*** Reminder *** Agenda :'.$nama_agenda);
		
					$message = 'Dear All, '."\r\n";
                    $message .= "We would like to invite you to come :"."\n";
                    $message .="\n". 'Agenda'."\t\t: ".$nama_agenda;
					$message .="\n". 'Deskripsi'."\t: ".$deskripsi;
					$message .="\n". 'Tanggal'."\t\t: ".date("l,d F Y", strtotime($mulai));
					$message .="\n". 'Waktu'."\t\t: ".$waktu;
					$message .="\n". 'Tempat'."\t\t: ".$tempat;
					$message .="\n". 'Keterangan'."\t: ".$keterangan."\n";
                    $message .= "\nThank you!";
					$message .= " \n \n ---------------------------------------------------------------------";
					 
        $this->email->message($message);
		
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
		
			
		
		echo $this->session->set_flashdata('msg','info');
		redirect('admin/agenda');
	}
	function hapus_agenda(){
		$kode=strip_tags($this->input->post('kode'));
		$this->m_agenda->hapus_agenda($kode);
		echo $this->session->set_flashdata('msg','success-hapus');
		redirect('admin/agenda');
	}

}