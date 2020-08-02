<?php
class Improvement extends CI_Controller{
	function __construct(){
		parent::__construct();
		if($this->session->userdata('masuk') !=TRUE){
            $url=base_url('administrator');
            redirect($url);
        };
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
		
		$this->load->view('admin/v_improvement',$x);
		
	}
	
	function simpan_improvement(){
	  	
		$config['upload_path'] = './assets/images/improvement/'; //path folder
	    $config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
	    $config['encrypt_name'] = TRUE; //nama yang terupload nantinya

		$this->load->library('image_lib', $config);
		$this->upload->initialize($config);
		
		
		$error = array();
		$foto_temuan = array();
		 for ($i=1; $i <=4 ; $i++) { 
	    	if(!empty($_FILES['foto_temuan'.$i]['name'])){
	    		if(!$this->upload->do_upload('foto_temuan'.$i))
	    			$this->upload->display_errors();
  		
	    		else
	    		{ 
					$foto_temuan0 = $this->upload->data();
					$config['image_library']='gd2';
					$config['source_image']='./assets/images/improvement/'.$foto_temuan0['file_name'];
					$config['create_thumb']= FALSE;
					$config['maintain_ratio']= FALSE;
					$config['quality']= '60%';
					$config['width']= 300;
					$config['height']= 300;
					$config['new_image']= './assets/images/improvement/'.$foto_temuan0['file_name'];

					
					$foto_temuan[] = $foto_temuan0['file_name'];

				}
	    	}
	    }
		
	
				$cluster=strip_tags($this->input->post('xcluster'));
				$ketua=$this->input->post('xketua');
				$tanggal_kejadian=$this->input->post('xtanggal_kejadian');
				$masalah=$this->input->post('xmasalah');
				$area_perbaikan=$this->input->post('xarea_perbaikan');
				$perbaikan=$this->input->post('xperbaikan');
				$by_rencana=$this->input->post('xby_rencana');
				$tanggal_rencana=$this->input->post('xtanggal_rencana');
				$status=$this->input->post('xstatus');
				$progres=$this->input->post('xprogres');
				$by_target=$this->input->post('xby_target');
				$tanggal_penyelesaian=$this->input->post('xtanggal_penyelesaian');
				
						
				$this->m_improvement->simpan_improvement_tanpa_perbaikan($cluster,$ketua,$tanggal_kejadian,$masalah,$area_perbaikan,$perbaikan,$by_rencana,$tanggal_rencana,$status,$progres,$by_target,$tanggal_penyelesaian,$foto_temuan,$foto_temuan,$foto_temuan,$foto_temuan,$foto_perbaikan,$foto_perbaikan,$foto_perbaikan,$foto_perbaikan);
								
				$query = $this->db->query("SELECT program_id FROM tbl_program_k3 where program_nama='$cluster'");
				$con = mysqli_connect("localhost","root","managersql","db_balaik3ameya");
							$mnprofil = mysqli_query($con,"SELECT program_id FROM tbl_program_k3 where program_nama='$cluster'");
							while ($rmnprofil = mysqli_fetch_array($mnprofil)){
								echo $programid= $rmnprofil['program_id'];
							}
				//$programid=5;
				echo $this->session->set_flashdata('msg','success');
				redirect('admin/improvement?id='.$programid);
			
				
	}
	
	
	
	
	function update_improvement(){
					
				
		$config['upload_path'] = './assets/images/improvement/'; //path folder
	    $config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
	    $config['encrypt_name'] = TRUE; //nama yang terupload nantinya

		$this->load->library('image_lib', $config);
		$this->upload->initialize($config);
		
		
		$error = array();
		$foto_temuan = array();
		$foto_perbaikan = array();
		 for ($i=1; $i <=4 ; $i++) 
		 { 
	    	if(!empty($_FILES['foto_perbaikan'.$i]['name']))
			{
	    		if(!$this->upload->do_upload('foto_perbaikan'.$i))
	    			$this->upload->display_errors();
				
	    		else
	    		{ 
					$foto_perbaikan0 = $this->upload->data();
					$config['image_library']='gd2';
					$config['source_image']='./assets/images/improvement/'.$foto_perbaikan0['file_name'];
					$config['create_thumb']= FALSE;
					$config['maintain_ratio']= FALSE;
					$config['quality']= '60%';
					$config['width']= 300;
					$config['height']= 300;
					$config['new_image']= './assets/images/improvement/'.$foto_perbaikan0['file_name'];

					
					$foto_perbaikan[] = $foto_perbaikan0['file_name'];

				}
	    	}
			
			if(!empty($_FILES['foto_temuan'.$i]['name'])){
	    		if(!$this->upload->do_upload('foto_temuan'.$i))
	    			$this->upload->display_errors();
  		
	    		else
	    		{ 
					$foto_temuan0 = $this->upload->data();
					$config['image_library']='gd2';
					$config['source_image']='./assets/images/improvement/'.$foto_temuan0['file_name'];
					$config['create_thumb']= FALSE;
					$config['maintain_ratio']= FALSE;
					$config['quality']= '60%';
					$config['width']= 300;
					$config['height']= 300;
					$config['new_image']= './assets/images/improvement/'.$foto_temuan0['file_name'];

					
					$foto_temuan[] = $foto_temuan0['file_name'];

				}
	    	}
			
	    }
			
		
				$kode=strip_tags($this->input->post('kode'));
				$cluster=strip_tags($this->input->post('xcluster'));
				$ketua=$this->input->post('xketua');
				$tanggal_kejadian=$this->input->post('xtanggal_kejadian');
				$masalah=$this->input->post('xmasalah');
				$area_perbaikan=$this->input->post('xarea_perbaikan');
				$perbaikan=$this->input->post('xperbaikan');
				$by_rencana=$this->input->post('xby_rencana');
				$tanggal_rencana=$this->input->post('xtanggal_rencana');
				$status=$this->input->post('xstatus');
				$progres=$this->input->post('xprogres');
				$by_target=$this->input->post('xby_target');
				$tanggal_penyelesaian=$this->input->post('xtanggal_penyelesaian');
				
			if(!empty($foto_perbaikan)){		
				$this->m_improvement->update_improvement($kode,$cluster,$ketua,$tanggal_kejadian,$masalah,$area_perbaikan,$perbaikan,$by_rencana,$tanggal_rencana,$status,$progres,$by_target,$tanggal_penyelesaian,$foto_perbaikan,$foto_perbaikan,$foto_perbaikan,$foto_perbaikan);
			}else{
			$this->m_improvement->update_improvement_tanpa_foto($kode,$cluster,$ketua,$tanggal_kejadian,$masalah,$area_perbaikan,$perbaikan,$by_rencana,$tanggal_rencana,$status,$progres,$by_target,$tanggal_penyelesaian,$foto_perbaikan,$foto_perbaikan,$foto_perbaikan,$foto_perbaikan);		
			}
			if(!empty($foto_temuan)){		
				$this->m_improvement->update_improvement_foto_temuan($kode,$cluster,$ketua,$tanggal_kejadian,$masalah,$area_perbaikan,$perbaikan,$by_rencana,$tanggal_rencana,$status,$progres,$by_target,$tanggal_penyelesaian,$foto_temuan,$foto_temuan,$foto_temuan,$foto_temuan);
			}else{
			$this->m_improvement->update_improvement_tanpa_foto($kode,$cluster,$ketua,$tanggal_kejadian,$masalah,$area_perbaikan,$perbaikan,$by_rencana,$tanggal_rencana,$status,$progres,$by_target,$tanggal_penyelesaian,$foto_perbaikan,$foto_perbaikan,$foto_perbaikan,$foto_perbaikan);		
			}
		
			$query = $this->db->query("SELECT program_id FROM tbl_program_k3 where program_nama='$cluster'");
				$con = mysqli_connect("localhost","root","managersql","db_balaik3ameya");
							$mnprofil = mysqli_query($con,"SELECT program_id FROM tbl_program_k3 where program_nama='$cluster'");
							while ($rmnprofil = mysqli_fetch_array($mnprofil)){
								echo $programid= $rmnprofil['program_id'];
							}
				//$programid=5;
				echo $this->session->set_flashdata('msg','info');
				redirect('admin/improvement?id='.$programid);
				
	}

	

	function hapus_improvement_old(){
		$kode=strip_tags($this->input->post('kode'));
		$this->m_improvement->hapus_improvement($kode);
		
		$query = $this->db->query("SELECT program_id FROM tbl_program_k3 where program_nama='$cluster'");
				$con = mysqli_connect("localhost","root","managersql","db_balaik3ameya");
							$mnprofil = mysqli_query($con,"SELECT program_id FROM tbl_program_k3 where program_nama='$cluster'");
							while ($rmnprofil = mysqli_fetch_array($mnprofil)){
								echo $programid= $rmnprofil['program_id'];
							}
				//$programid=5;
			
				
		echo $this->session->set_flashdata('msg','success-hapus');
		redirect('admin/improvement?id='.$programid);
	}
	
	function hapus_improvement(){
	
		$kode=strip_tags($this->input->post('kode'));
		$gambar=$this->input->post('gambar');
		$path='./assets/images/improvement'.$gambar;
		unlink($path);
		$this->m_improvement->hapus_improvement($kode);
		
		$query = $this->db->query("SELECT program_id FROM tbl_program_k3 where program_nama='$cluster'");
				$con = mysqli_connect("localhost","root","managersql","db_balaik3ameya");
							$mnprofil = mysqli_query($con,"SELECT program_id FROM tbl_program_k3 where program_nama='$cluster'");
							while ($rmnprofil = mysqli_fetch_array($mnprofil)){
								echo $programid= $rmnprofil['program_id'];
							}
				//$programid=5;
			
				
		echo $this->session->set_flashdata('msg','success-hapus');
		redirect('admin/improvement?id='.$programid);
	}
	
	


}