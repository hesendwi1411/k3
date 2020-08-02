<?php
class Kecelakaan_kerja extends CI_Controller{
	function __construct(){
		parent::__construct();
		if($this->session->userdata('masuk') !=TRUE){
            $url=base_url('administrator');
            redirect($url);
        };
		$this->load->model('m_kecelakaan_kerja');
		$this->load->model('m_department');
		$this->load->library('upload');
		$this->load->helper('download');
	}


	function index(){
		$x['data']=$this->m_kecelakaan_kerja->get_all_kecelakaan_kerja_bulan();
		$x['department']=$this->m_department->get_all_department();
		$this->load->view('admin/v_kecelakaan_kerja',$x);
	}
	function download(){
		
		$kecelakaan_id=$this->uri->segment(4);
		$get_db=$this->m_kecelakaan_kerja->get_file_byid($kecelakaan_id);
		$q=$get_db->row_array();
		$file=$q['form_investigasi'];
		$path='./assets/files/investigasi/'.$file;
		$data =  file_get_contents($path);
		$name = $file;

		force_download($name, $data); 
		redirect('admin/files/investigasi');
	}
	function simpan_kecelakaan_kerja(){
		
		$config['upload_path'] = './assets/files/investigasi/'; //path folder
		$config['allowed_types'] = 'gif|jpg|png|jpeg|bmp|pdf|doc|docx|ppt|pptx|zip|xls|xlsx'; //type yang dapat diakses bisa anda sesuaikan
		$config['encrypt_name'] = TRUE; //nama yang terupload nantinya
           
	    $this->upload->initialize($config);
		if(!empty($_FILES['filefoto']['name']))
	    {
			if ($this->upload->do_upload('filefoto'))
	                {
					$gbr = $this->upload->data();
	                        
	                $gambar=$gbr['file_name'];
					$jenis_kecelakaan=strip_tags($this->input->post('xjenis_kecelakaan'));
					$nama_kecelakaan=strip_tags($this->input->post('xnama_kecelakaan'));
					$nip=$this->input->post('xnip');
					$tanggal_kejadian=$this->input->post('xtanggal_kejadian');
					$waktu_kejadian=$this->input->post('xwaktu_kejadian');
					$department=strip_tags($this->input->post('xdepartment'));
					
					$alat=$this->input->post('xalat');
					$kronologi=$this->input->post('xkronologi');
					$penyebab_utama=$this->input->post('xpenyebab_utama');
					$hasil_pemeriksaan=$this->input->post('xhasil_pemeriksaan');
					$rencana_tindakan=$this->input->post('xrencana_tindakan');
					$this->m_kecelakaan_kerja->simpan_kecelakaan_kerja_dengan_form($jenis_kecelakaan,$nama_kecelakaan,$tanggal_kejadian,$nip,$department,$waktu_kejadian,$alat,$kronologi,$penyebab_utama,$hasil_pemeriksaan,$rencana_tindakan,$gambar);
						
					echo $this->session->set_flashdata('msg','success');
					redirect('admin/kecelakaan_kerja');	
								
					}else{
	                    echo $this->session->set_flashdata('msg','warning');
	                    redirect('admin/kecelakaan_kerja');
	                }
		}else{	
		$jenis_kecelakaan=strip_tags($this->input->post('xjenis_kecelakaan'));
		$nama_kecelakaan=strip_tags($this->input->post('xnama_kecelakaan'));
		$nip=$this->input->post('xnip');
		$tanggal_kejadian=$this->input->post('xtanggal_kejadian');
		$waktu_kejadian=$this->input->post('xwaktu_kejadian');
		$department=strip_tags($this->input->post('xdepartment'));
		
		$alat=$this->input->post('xalat');
		$kronologi=$this->input->post('xkronologi');
		$penyebab_utama=$this->input->post('xpenyebab_utama');
		$hasil_pemeriksaan=$this->input->post('xhasil_pemeriksaan');
		$rencana_tindakan=$this->input->post('xrencana_tindakan');
		
		
		$this->m_kecelakaan_kerja->simpan_kecelakaan_kerja($jenis_kecelakaan,$nama_kecelakaan,$tanggal_kejadian,$nip,$department,$waktu_kejadian,$alat,$kronologi,$penyebab_utama,$hasil_pemeriksaan,$rencana_tindakan);
			
		echo $this->session->set_flashdata('msg','success');
		redirect('admin/kecelakaan_kerja');
		}
	}

	function update_kecelakaan_kerja(){
		
		$config['upload_path'] = './assets/files/investigasi/'; //path folder
		$config['allowed_types'] = 'gif|jpg|png|jpeg|bmp|pdf|doc|docx|ppt|pptx|zip|xls|xlsx'; //type yang dapat diakses bisa anda sesuaikan
		$config['encrypt_name'] = TRUE; //nama yang terupload nantinya
           
	    $this->upload->initialize($config);
		if(!empty($_FILES['filefoto']['name']))
	    {
			if ($this->upload->do_upload('filefoto'))
	                {
					$gbr = $this->upload->data();
	                        
	                $gambar=$gbr['file_name'];
					$kode=strip_tags($this->input->post('kode'));
					$jenis_kecelakaan=strip_tags($this->input->post('xjenis_kecelakaan'));
					$nama_kecelakaan=strip_tags($this->input->post('xnama_kecelakaan'));
					$nip=$this->input->post('xnip');
					$tanggal_kejadian=$this->input->post('xtanggal_kejadian');
					//echo print_r($tanggal_kejadian);
					//echo exit; 
					$waktu_kejadian=$this->input->post('xwaktu_kejadian');
					$department=strip_tags($this->input->post('xdepartment'));
					
					$alat=$this->input->post('xalat');
					$kronologi=$this->input->post('xkronologi');
					$penyebab_utama=$this->input->post('xpenyebab_utama');
					$hasil_pemeriksaan=$this->input->post('xhasil_pemeriksaan');
					$rencana_tindakan=$this->input->post('xrencana_tindakan');
					$this->m_kecelakaan_kerja->update_kecelakaan_kerja_dengan_form($kode,$jenis_kecelakaan,$nama_kecelakaan,$tanggal_kejadian,$nip,$department,$waktu_kejadian,$alat,$kronologi,$penyebab_utama,$hasil_pemeriksaan,$rencana_tindakan,$gambar);
					echo $this->session->set_flashdata('msg','success');
					redirect('admin/kecelakaan_kerja');	
								
					}else{
	                    echo $this->session->set_flashdata('msg','warning');
	                    redirect('admin/kecelakaan_kerja');
	                }
		}else{			
		$kode=strip_tags($this->input->post('kode'));
		$jenis_kecelakaan=strip_tags($this->input->post('xjenis_kecelakaan'));
		$nama_kecelakaan=strip_tags($this->input->post('xnama_kecelakaan'));
		$nip=$this->input->post('xnip');
		$tanggal_kejadian=$this->input->post('xtanggal_kejadian');
		//echo print_r($tanggal_kejadian);
		//echo exit; 
		$waktu_kejadian=$this->input->post('xwaktu_kejadian');
		$department=strip_tags($this->input->post('xdepartment'));
		
		$alat=$this->input->post('xalat');
		$kronologi=$this->input->post('xkronologi');
		$penyebab_utama=$this->input->post('xpenyebab_utama');
		$hasil_pemeriksaan=$this->input->post('xhasil_pemeriksaan');
		$rencana_tindakan=$this->input->post('xrencana_tindakan');
		$this->m_kecelakaan_kerja->update_kecelakaan_kerja($kode,$jenis_kecelakaan,$nama_kecelakaan,$tanggal_kejadian,$nip,$department,$waktu_kejadian,$alat,$kronologi,$penyebab_utama,$hasil_pemeriksaan,$rencana_tindakan);
		
		echo $this->session->set_flashdata('msg','info');
		redirect('admin/kecelakaan_kerja');
		}
	}
	function upload_kecelakaan_kerja(){
				
				$config['upload_path'] = './assets/files/investigasi/'; //path folder
				$config['allowed_types'] = 'gif|jpg|png|jpeg|bmp|pdf|doc|docx|ppt|pptx|zip|xls|xlsx'; //type yang dapat diakses bisa anda sesuaikan
				$config['encrypt_name'] = TRUE; //nama yang terupload nantinya
				
	            
	            $this->upload->initialize($config);
	            if(!empty($_FILES['filefoto']['name']))
	            {
	                if ($this->upload->do_upload('filefoto'))
	                {
	                        $gbr = $this->upload->data();
	                        
	                        $gambar=$gbr['file_name'];
							$kode=strip_tags($this->input->post('kode'));
	                        $this->m_kecelakaan_kerja->upload_kecelakaan_kerja($kode,$gambar);
		
							echo $this->session->set_flashdata('msg','success');
							redirect('admin/kecelakaan_kerja_all');
                            	                    
	                }else{
	                    echo $this->session->set_flashdata('msg','warning');
	                    redirect('admin/kecelakaan_kerja_all');
	                }
	                
	            }

	}
	function hapus_kecelakaan_kerja(){
		$kode=strip_tags($this->input->post('kode'));
		$this->m_kecelakaan_kerja->hapus_kecelakaan_kerja($kode);
		echo $this->session->set_flashdata('msg','success-hapus');
		redirect('admin/kecelakaan_kerja');
	}

}