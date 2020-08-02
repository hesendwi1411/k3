<!DOCTYPE html>
<html lang="id">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Home</title>
<!-- Stylesheet -->
<link rel="shorcut icon" type="text/css" href="<?php echo base_url().'assets/images/favicon.png'?>">
<link href="<?php echo base_url().'template/css/style.css'?>" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="<?php echo base_url().'template/css/ddsmoothmenu.css'?>" />
<link rel="stylesheet" type="text/css" href="<?php echo base_url().'template/css/jquery.fancybox-1.3.4.css'?>" media="screen" />
<!-- Javascript -->
<script src="<?php echo base_url().'template/js/jquery.min.js'?>" type="text/javascript"></script>
<script src="<?php echo base_url().'template/js/ddsmoothmenu.js'?>" type="text/javascript"></script>
<script src="<?php echo base_url().'template/js/contentslider.js'?>" type="text/javascript"></script>
<script type="text/javascript" src="<?php echo base_url().'template/js/jcarousellite_1.0.1.js'?>"></script>
<script type="text/javascript" src="<?php echo base_url().'template/js/jquery.easing.1.1.js'?>"></script>
<script type="text/javascript" src="<?php echo base_url().'template/js/cufon-yui.js'?>"></script>
<script type="text/javascript" src="<?php echo base_url().'template/js/DIN_500.font.js'?>"></script>
<script type="text/javascript" src="<?php echo base_url().'template/js/menu.js'?>"></script>
<script type="text/javascript" src="<?php echo base_url().'template/js/tabs.js'?>"></script>
<script type="text/javascript" src="<?php echo base_url().'template/js/jquery.mousewheel-3.0.4.pack.js'?>"></script>
<script type="text/javascript" src="<?php echo base_url().'template/js/jquery.fancybox-1.3.4.pack.js'?>"></script>

<?php 
            function limit_words($string, $word_limit){
                $words = explode(" ",$string);
                return implode(" ",array_splice($words,0,$word_limit));
            }
                
    ?>
</head>
<body>
<div id="bg">
<!-- Wapper Sec -->
	<div id="wrapper_sec">
		 <!-- masterhead -->
			<div id="masterhead">
				<!-- Logo -->
                	<div class="logo"><a href="<?php echo base_url().''?>"><img src="<?php echo base_url().'template/images/logo.png'?>" alt="" /></a></div>
                	<!-- masterhead Right Section -->
						          <div class="topright_sec">
                    		<!-- top navigation -->
                    			<div class="topnavigation">
                               		<ul>
                                  		<li class="first">&nbsp;</li>
                                    	<li><a href="#">Telp. (0274) 6466796</a></li>
                                    	<li><a href="#">PT. Ameya Livingstyle Indonesia</a></li>
                                      <li><a class="nobg" href="#">Yogyakarta</a></li>
                                    	<li class="last">&nbsp;</li>
                                    </ul>
                                </div>
                                <div class="clear"></div>
                    			<!-- top search -->
                                	<div class="top_search">
                                    	<div class="advance_search"><a href="#"></a></div>
                                      <form action="<?php echo base_url().'berita/search'?>" method="post">
                                        <ul>
                                          <li><input name="textcari" type="text" placeholder="Pencarian" /></li>
                                            <li><button class="search" type="submit">Search</button></li>
                                         </ul>
                                      </form>
                                        
                                    </div>
                         	<div class="clear"> </div>       	
                    	</div>
                    <div class="clear"></div>
                    	  <!-- Navigation -->
                    <div class="navigation">
                                  <div id="smoothmenu1" class="ddsmoothmenu">
                                  	  <ul>
                                  	      <li class="first"><a class="selected" href="<?php echo base_url().''?>">Home</a></li>
                                          <li><a href="#">Profil</a> 
                                              <!-- Sub Menu level 1 -->    
                                                  <ul>
                                                      <!-- <li><a href="<?php echo base_url().'kata_sambutan'?>">Kata Sambutan</a></li> -->  
                                                      <li><a href="<?php echo base_url().'visi_misi'?>">Visi Misi</a></li>
                                                      <!--<li><a href="<?php echo base_url().'tugas_dan_fungsi'?>">Tugas dan Fungsi</a></li> --> 
													  <li><a href="<?php echo base_url().'struktur_organisasi'?>">Struktur Organisasi</a></li>
                                                  </ul>			
                                          </li>
                                          
										  
                                          <li><a href="#">K3</a>
											  <!-- Sub Menu level 1 --> 
                                              <ul>
													<li><a href="<?php echo base_url().'program'?>">Program P2K3</a>
														<!-- Sub Menu level 2 -->
														<ul>
															<li><a href="<?php echo base_url().'program'?>">2018</a>
																<!-- Sub Menu level 3 -->
															<ul>
																<li><a href="<?php echo base_url().'berita_improvement'?>">5S / 5R</a></li>
																<li><a href="<?php echo base_url().'berita_improvement'?>">Emergency Response Plan and Evacuation</a></li>	
																<li><a href="<?php echo base_url().'berita_improvement'?>">First Aid and Work Accident </a></li>
																<li><a href="<?php echo base_url().'berita_improvement'?>">Personal Protective Equipment</a></li>
																<li><a href="<?php echo base_url().'berita_improvement'?>">Chemical Handling  </a></li>
																<li><a href="<?php echo base_url().'berita_improvement'?>">Ergonomy</a></li>
																<li><a href="<?php echo base_url().'berita_improvement'?>">Hygiene</a></li>
																<li><a href="<?php echo base_url().'berita_improvement'?>">Hygiene</a></li>
															</ul>
															</li>
														
														</ul>
													</li>
														
													<li><a href="<?php echo base_url().'siswa'?>">Data Anggota</a></li>
													<li><a href="<?php echo base_url().'kecelakaan_kerja'?>">Lapor Kecelakaan Kerja</a></li>
													<li><a href="<?php echo base_url().'prestasi_siswa'?>">Prestasi K3</a></li>
				
                                              </ul>     
                                          </li>
										  </li>
                                          
												
                                          <li><a href="#">Publikasi</a>
                                              <ul>
                                                <li><a href="<?php echo base_url().'berita'?>">Berita</a> </li>
												<li><a href="<?php echo base_url().'pengumuman'?>">Pengumuman</a></li>
												<li><a href="<?php echo base_url().'agenda'?>">Agenda</a></li> 
                                                 
                                              </ul>     
                                          </li>
                                         
                                          <li><a href="<?php echo base_url().'galeri'?>">Gallery</a> </li>
                                          <li><a href="<?php echo base_url().'download'?>">Regulasi</a> </li>                                         
                                         <!-- <li><a href="#">Kontak</a>
												<ul>
												<li><a href="<?php echo base_url().'kontak'?>" class="last">Hubungi Kami</a>
												<li><a href="<?php echo base_url().'guru'?>">Emergancy Call</a> </li>
												</ul>
										  
										  </li> -->
                                          <li><a href="<?php echo base_url().'administrator'?>">Login</a> </li>  
                                      </ul>				
                                  </div>
                           <!-- navigation ends -->       		                            
             	     <div class="clear"></div>	
                 </div>    
		    </div>
		<!-- Content Seciton -->
        	<div id="content_section">
        		<!-- News Updates -->
            		
                    <div class="clear"></div>
				<!-- Col1 -->
                	<div class="col1">
                    	<!-- Banner -->
                        	<div id="banner">
								<div id="slider2">
                                  <?php 
                                      foreach ($brt->result_array() as $br) {
                                        $berita_id=$br['tulisan_id'];
                                        $berita_judul=$br['tulisan_judul'];
                                        $berita_isi=$br['tulisan_isi'];
                                        $berita_kategori=$br['tulisan_kategori_nama'];
                                        $berita_gambar=$br['tulisan_gambar'];
                                        $berita_author=$br['tulisan_author'];
                                      
                                  ?>
                               		 <div class="contentdiv">
                                    	<a href="#"><img src="<?php echo base_url().'assets/images/'.$berita_gambar;?>" alt="" /></a>
                                        <div class="banner_des">
                                        	<h4><?php echo $berita_judul;?> </h4>
                                        	<?php echo limit_words($berita_isi,15).'...';?>
                                        </div>
                                    </div> 
                                  <?php } ?>
                                    
                                  
                                	</div> 
                                	<div id="paginate-slider2" class="pagination">
									                </div>
                       			<script type="text/javascript" src="<?php echo base_url().'template/js/slider.js'?>" ></script>
                              
							 </div>
                         
                         <!-- Content Heading -->
                         	<div class="content_heading">
                            	<div class="heading"><h2>Selamat datang di Balai K3 Ameya</h2> </div>
                          
                            </div>
                             <p class="text">
                                 Website Balai K3 Ameya adalah website yang dibangun untuk menunjang transparasi informasi tentang keselamatan dan kesehatan kerja.  
                             <p> Dengan telah dibukanya website Balai Keselamatan dan Kesehatan Kerja ini, dimaksud agar setiap tenaga kerja, para pekerja  yang ingin memperoleh informasi dari Balai K3 PT. Ameya Livingstyle Indonesia dapat langsung mengakses informasi yang diperlukan berkaitan dengan tugas dan fungsi  di bidang Pelayanan K3</p>
							 </p>
                          <div class="clear"></div>
                             <!-- Content Block -->
                             	<div class="contentblock">
                                	<!-- Tabs -->	
                                    	<div class="tabwrapper">
                                        	<div class="tabs_links">
                                            	<ul>
                                                	<li><a  href="#tab1">Berita</a></li>
                                                    <li><a href="#tab2">Pengumuman</a></li>
                                                    <li><a href="#tab3">Agenda</a></li>
                                                    
                                                </ul>
                                            </div>
                                            <div class="tab_content" id="tab1" style="display:none" >
                                            	<ul>
                                                	  
                                                  <?php 
                                                      foreach ($berita->result_array() as $n) {
                                                        $berita_id=$n['tulisan_id'];
                                                        $berita_judul=$n['tulisan_judul'];
                                                        $berita_isi=$n['tulisan_isi'];
                                                        $berita_tgl=$n['tanggal'];
                                                        $berita_kategori=$n['tulisan_kategori_nama'];
                                                        $berita_gambar=$n['tulisan_gambar'];
                                                        $berita_author=$n['tulisan_author'];
                                                      
                                                  ?>
                                                    <li>
                                                    	<div class="thumb">
                                                        	<a href="<?php echo base_url().'berita/berita_detail/'.$berita_id;?>"><img width="53" height="53" src="<?php echo base_url().'assets/images/'.$berita_gambar;?>"  alt=" " /></a>
                                                         </div>
                                                         <div class="descripton">
                                                        	<h6><a href="<?php echo base_url().'berita/berita_detail/'.$berita_id;?>"><?php echo $berita_judul;?></a></h6>
                                                            <em>(Tanggal <?php echo $berita_tgl;?> | by <?php echo $berita_author;?>)</em>
                                                            <?php echo limit_words($berita_isi,12).'...';?>
                                                        
                                                        </div>
                                                    </li>
                                                    <?php } ?>
                                                   
                                                </ul>
                                                <div class="clear"></div>
                                            </div>
                                            
                                            <div class="tab_content" id="tab2" style="display:none" >
                                            	<ul>
                                                <?php
                                                  $no=0;
                                                    foreach ($pengumuman->result_array() as $p) :
                                                       $no++;
                                                       $id=$p['pengumuman_id'];
                                                       $judul=$p['pengumuman_judul'];
                                                       $deskripsi=$p['pengumuman_deskripsi'];
                                                       $author=$p['pengumuman_author'];
                                                       $tanggal=$p['tanggal'];
                                                       
                                                    ?>

                                                	<li>
                                                    	<div class="thumb">
                                                        	<a href="<?php echo base_url().'pengumuman'?>"><img width="60" height="60" src="<?php echo base_url().'template/images/pengumuman.png'?>"  alt=" " /></a>
                                                         </div>
                                                         <div class="descripton">
                                                        	<h6><a href="<?php echo base_url().'pengumuman'?>"><?php echo $judul;?></a></h6>
                                                            <em>(Posted on <?php echo $tanggal;?>)</em>
                                                            <p>	<?php echo limit_words($deskripsi,10).'...';?></p>
                                                        
                                                        </div>
                                                    </li>
                                                    <?php endforeach; ?>

                                                </ul>
                                                <div class="clear"></div>
                                            </div>
                                            
                                            <div class="tab_content" id="tab3" style="display:none" >
                                            	<ul>
                                                	  <?php
                                                      $no=0;
                                                      foreach ($agenda->result_array() as $g) :
                                                         $no++;
                                                         $agenda_id=$g['agenda_id'];
                                                         $agenda_nama=$g['agenda_nama'];
                                                         $agenda_deskripsi=$g['agenda_deskripsi'];
                                                         $agenda_mulai=$g['agenda_mulai'];
                                                         $agenda_selesai=$g['agenda_selesai'];
                                                         $agenda_tempat=$g['agenda_tempat'];
                                                         $agenda_waktu=$g['agenda_waktu'];
                                                         $agenda_keterangan=$g['agenda_keterangan'];
                                                         $agenda_author=$g['agenda_author'];
                                                         $tanggal=$g['tanggal'];
                                                       
                                                    ?>
                                                    <li>
                                                    	<div class="thumb">
                                                        	<a href="<?php echo base_url().'agenda'?>"><img width="60" height="60" src="<?php echo base_url().'template/images/agenda.png'?>"  alt=" " /></a>
                                                         </div>
                                                         <div class="descripton">
                                                        	<h6><a href="<?php echo base_url().'agenda'?>"><?php echo $agenda_nama;?></a></h6>
                                                            <em>(Posted on <?php echo $tanggal;?>)</em>
                                                            <p><?php echo limit_words($agenda_deskripsi,10).'...'?></p>
                                                        
                                                        </div>
                                                    </li>
                                                  <?php endforeach;?>
                                                    <li>
                                                    
                                                </ul>
                                                <div class="clear"></div>
                                            </div>
                                            
                                           
                                            
                                        </div>
                                        <!-- Search Course -->

                                        	<div class="search_course">
                                            	<h4>Download</h4>
                                                Silahkan download file terbaru berikut:
                                                <div class="box">
                                                	 <div class="apply_now">
                                                      <a class="aply_now" href="#">Download</a>
                                                      
                                                    </div>
                                                 <!-- Degree Type -->
                                                  <div class="degree_type"><br/>
                                                  <ul>
                                                  <?php
                                                    $no=0;
                                                    foreach ($download->result_array() as $d) :
                                                            $no++;
                                                            $id=$d['file_id'];
                                                            $judul=$d['file_judul'];
                                                            $deskripsi=$d['file_deskripsi'];
                                                            $oleh=$d['file_oleh'];
                                                            $tanggal=$d['tanggal'];
                                                            $download=$d['file_download'];
                                                            $file=$d['file_data'];
                                                  ?>
                                                      
                                                        <li> <span><a href="<?php echo base_url().'download/get_file/'.$id;?>"><?php echo $judul;?></a></span> <a class="btn right" href="<?php echo base_url().'download/get_file/'.$id;?>">Download</a></li>
                                                  <?php endforeach;?>
                                                        

                                                    </ul>
                                                  </div> 
                                                
                                                    <div class="clear"></div>
                                                    
                                                    <!-- apply now -->
                                                    <div class="apply_now">
                                                    	<a class="aply_now" href="#"></a>
                                                    	<a class="find_out_how" href="<?php echo base_url().'download'?>">Lihat Semua</a>
                                                    </div>
                                                </div>       
                                               
                                            </div>
                                        <div class="clear"></div>
                               	 	</div>	   
                               	<div class="clear"></div>
                    		<!-- col1 ends -->	
                    </div>
               <!-- Col2 -->
                	<div class="col2">
                    	<div class="ads">
                        	<a href="#"><img src="<?php echo base_url().'template/images/ads.png'?>"  alt="" /></a>
                        </div>
                      		<!-- Blog guru dan Siswa Baru -->  
                        		<div class="rtab">
                                	<div class="tab_navigation">
                                    	<ul>
                                        	<li class="active" ><a   href="#rtab1">Team K3</a></li>
                                        	<li><a href="#rtab2">Emergancy Call</a> </li>
                                        </ul>
                                    </div>
                                    <div class="rtab_content" id="rtab1" style="display:none;">
                                    	<ul>
                                          <?php 
                                            $data_siswa=$this->db->query("SELECT * FROM tbl_siswa ORDER BY siswa_id DESC LIMIT 4");
                                            foreach ($data_siswa->result_array() as $i) :
                                                $siswa_nis=$i['siswa_nis'];
                                                $siswa_nama=$i['siswa_nama'];
                                                $siswa_photo=$i['siswa_photo'];
                                          ?>
                                        	<li>
                                            <?php if(empty($siswa_photo)):?>
                                            	<div class="thumb" ><a href="#"><img width="40" height="40" src="<?php echo base_url().'assets/images/user_blank.png';?>"  alt="" /></a></div> 
                                            <?php else:?>
                                              <div class="thumb" ><a href="#"><img width="40" height="40" src="<?php echo base_url().'assets/images/'.$siswa_photo;?>"  alt="" /></a></div> 
                                            <?php endif;?>
                                                <div class="description">
                                                	<h6><a href="#"><?php echo $siswa_nama;?></a></h6>
                                                    <p><a href="#" class="gray" ><?php echo $siswa_nis;?></a></p>
                                                </div> 
                                           </li>
                                         <?php endforeach;?>
                                        
                                        </ul>
                                        <div class="clear"></div>
                                    </div>
                                    
                                    <div class="rtab_content" id="rtab2" style="display:none;">
                                    	<ul>
                                          <?php 
                                            $data_siswa=$this->db->query("SELECT * FROM tbl_guru ORDER BY guru_id DESC LIMIT 4");
                                            foreach ($data_siswa->result_array() as $i) :
                                                $nip=$i['guru_nip'];
                                                $nama=$i['guru_nama'];
                                                $mapel=$i['guru_mapel'];
                                                $photo=$i['guru_photo'];
                                          ?>
                                          <li>
                                            <?php if(empty($siswa_photo)):?>
                                              <div class="thumb" ><a href="#"><img width="40" height="40" src="<?php echo base_url().'assets/images/user_blank.png';?>"  alt="" /></a></div> 
                                            <?php else:?>
                                              <div class="thumb" ><a href="#"><img width="40" height="40" src="<?php echo base_url().'assets/images/'.$photo;?>"  alt="" /></a></div> 
                                            <?php endif;?>
                                                <div class="description">
                                                  <h6><a href="#"><?php echo $nama;?></a></h6>
                                                    <p><a href="#" class="gray" ><?php echo $mapel;?></a></p>
                                                </div> 
                                           </li>
                                         <?php endforeach;?>
                                        
                                        </ul>
                                        <div class="clear"></div>
                                    </div>
                                    
                                </div>
                    		<!-- Our College Gallery -->	
                                <div class="college_gallery">
                                	<div style="background-color:#fffdd9;height:35px;font-size:16px;border-bottom:1px solid #ccc;"><h4 style="padding-top:5px;padding-left:9px;">Gallery Photo</h4></div>
                                	<ul>
                                    	  <?php 
                                              foreach ($galeri->result_array() as $g) {
                                                   $galeri_id=$g['galeri_id'];
                                                   $galeri_judul=$g['galeri_judul'];
                                                   $galeri_tanggal=$g['tanggal'];
                                                   $galeri_author=$g['galeri_author'];
                                                   $galeri_gambar=$g['galeri_gambar'];
                                                   $galeri_album_id=$g['galeri_album_id'];
                                                   $galeri_album_nama=$g['album_nama'];
                                              
                                          ?>
                                       <li>
                                        	<div class="thumb"><a href="<?php echo base_url().'galeri'?>"><img width="40" height="40" src="<?php echo base_url().'assets/images/'.$galeri_gambar;?>"  alt="" /></a></div> 
                                            <div class="description">
                                            	<h6><a href="<?php echo base_url().'galeri'?>"><?php echo $galeri_judul;?></a></h6>
                                                <a class="gray" href="#"><em><?php echo 'Tanggal '.$galeri_tanggal;?></em></a>
                                            </div> 
                                        </li>
                                        <?php } ?>
                                        
                                    </ul>
                                </div>
                    		<div class="clear"></div>	
 						<!--col2 ends -->			
              		</div>
                <div class="clear"></div>
			<!-- Slder -->	
            	<div class="image_scroll">
                	<a class="leftarrow" href="#"><img src="<?php echo base_url().'template/images/left_arrow.gif'?>"  alt="" /></a>
                    	<div class="slider1">
                        	<ul>
                    			    <li><a href="http://mfikri.com/"><img src="<?php echo base_url().'template/images/slider1.png'?>"  alt="" /></a></li>
                    			    <li><a href="http://mfikri.com/"><img src="<?php echo base_url().'template/images/slider2.png'?>"  alt="" /></a></li>
                    			    <li><a href="http://mfikri.com/"><img src="<?php echo base_url().'template/images/slider3.png'?>"  alt="" /></a></li>
                    			    <li><a href="http://mfikri.com/"><img src="<?php echo base_url().'template/images/slider4.png'?>"  alt="" /></a></li>
                              <li><a href="http://mfikri.com/"><img src="<?php echo base_url().'template/images/slider5.png'?>"  alt="" /></a></li>
                              <li><a href="http://mfikri.com/"><img src="<?php echo base_url().'template/images/slider6.png'?>"  alt="" /></a></li>
                    		</ul>
                        </div>  
                    <a class="rightarrow" href="#"><img src="<?php echo base_url().'template/images/right_arrow.gif'?>"  alt="" /></a>
                </div>
            </div>	
		<div class="clear"></div>
	</div>
</div>    

<?php $this->load->view('depan/v_footer');?>

</body>
</html>
