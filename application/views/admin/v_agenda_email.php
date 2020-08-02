<!DOCTYPE html>
<html lang="id">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Agenda Kegiatan</title>
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
                                                      <li><a href="<?php echo base_url().'kata_sambutan'?>">Kata Sambutan</a></li>
                                                      <li><a href="<?php echo base_url().'visi_misi'?>">Visi Misi</a></li>
                                                      <li><a href="<?php echo base_url().'tugas_dan_fungsi'?>">Tugas dan Fungsi</a></li>
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
																<li><a href="<?php echo base_url().'hygine'?>">5S / 5R</a></li>
																<li><a href="<?php echo base_url().'apd'?>">Emergency Response Plan and Evacuation</a></li>	
																<li><a href="<?php echo base_url().'hygine'?>">First Aid and Work Accident </a></li>
																<li><a href="<?php echo base_url().'hygine'?>">Personal Protective Equipment</a></li>
																<li><a href="<?php echo base_url().'hygine'?>">Chemical Handling  </a></li>
																<li><a href="<?php echo base_url().'hygine'?>">Ergonomy</a></li>
																<li><a href="<?php echo base_url().'hygine'?>">Hygiene</a></li>
															</ul>
															</li>
														
														</ul>
													</li>
														
													<li><a href="<?php echo base_url().'siswa'?>">Data Anggota</a></li>
													<li><a href="<?php echo base_url().'laporan_kecelakaan_kerja'?>">Laporan Kecelakaan Kerja</a></li>
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
                                          <li><a href="#">Kontak</a>
												<ul>
												<li><a href="<?php echo base_url().'kontak'?>" class="last">Hubungi Kami</a>
												<li><a href="<?php echo base_url().'guru'?>">Emergancy Call</a> </li>
												</ul>
										  
										  </li>
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
                        	<div id="banner1">
									<a href="#"><img src="<?php echo base_url().'template/images/news.png'?>" alt="" /></a>
                                <div class="heading">
                                	<h1>Agenda Kegiatan</h1>
                                </div>
                           </div>
                         <!-- Content Links -->
                         	
                         <!-- Content Heading -->
                         	<div id="content2">	
                                <h2 class="pad8">Agenda Kegiatan</h2>
                                <!-- Blog Listing -->
                                <ul class="listing">
                                <?php
                                  $no=0;
                                  foreach ($data->result_array() as $i) :
                                     $no++;
                                     $agenda_id=$i['agenda_id'];
                                     $agenda_nama=$i['agenda_nama'];
                                     $agenda_deskripsi=$i['agenda_deskripsi'];
                                     $agenda_mulai=$i['agenda_mulai'];
                                     $agenda_selesai=$i['agenda_selesai'];
                                     $agenda_tempat=$i['agenda_tempat'];
                                     $agenda_waktu=$i['agenda_waktu'];
                                     $agenda_keterangan=$i['agenda_keterangan'];
                                     $agenda_author=$i['agenda_author'];
                                     $tanggal=$i['tanggal'];
                                     
                                  ?>
                                	<li>
                                		<div class="thumb"><a href=""><img width="126" height="106" src="<?php echo base_url().'template/images/agenda.png'?>"  alt="" /></a></div>
                                        <div class="description">
                                        	<h6><a href="" class="colr"><?php echo $agenda_nama;?></a></h6>
                                            <?php echo $agenda_deskripsi;?>
                                            <div class="clear"></div>
                                            <div class="info">
                                            	<span class="postedby">Di Post Oleh: <?php echo $agenda_author;?></span>
                                                <span class="lastupdte">Tanggal: <i><?php echo $tanggal;?></i></span> 
                
                                            </div>
                                         </div>
                                         <div class="clear"></div>
                                	</li>
                                <?php endforeach;?>
                                   
                                </ul>
                                <div class="clear"></div>
                                <!-- pagination Listing -->
                               	 	  <div class="pginaiton pad9">
                                    	<ul>
                                   			<li><?php echo $page;?></li>
                                            
                                        </ul>
                                    </div>
                            	<div class="clear"></div>    
                           </div>		   
                         <div class="clear"></div>
                   	 </div>
               <!-- Col2 -->
                	<div class="col2">
                    	<div class="ads">
                        	<a href="#"><img src="<?php echo base_url().'template/images/ads.png'?>"  alt="" /></a>
                        </div>
                      <!-- Block Guru dan Siswa -->  
                             <div class="rtab">
                                  <div class="tab_navigation">
                                      <ul>
                                          <li class="active" ><a   href="#rtab1">Siswa Baru</a></li>
                                          <li><a href="#rtab2">Guru Baru</a> </li>
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
                                <!-- Post New  Blog  -->
                                 <div class="course_right">
                                  <div class="crheading">
                                        <h5 style="margin-left: 20px;">Post Terbaru</h5>
                                  </div>
                                    <ul>
                                      <?php 
                                          $query=$this->db->query("SELECT tbl_tulisan.*,DATE_FORMAT(tulisan_tanggal,'%d/%m/%Y') AS tanggal FROM tbl_tulisan where tulisan_img_slider='0' ORDER BY tulisan_id DESC limit 5");
                                          foreach ($query->result_array() as $n) :
                                          $berita_id=$n['tulisan_id'];
                                          $berita_judul=$n['tulisan_judul'];
                                          $berita_isi=$n['tulisan_isi'];
                                          $berita_tgl=$n['tanggal'];
                                          $berita_kategori=$n['tulisan_kategori_nama'];
                                          $berita_gambar=$n['tulisan_gambar'];
                                          $berita_author=$n['tulisan_author'];
                                                      
                                        ?>
                                      <li>
                                          <div class="thumb"><a href="<?php echo base_url().'berita/berita_detail/'.$berita_id;?>"><img width="32" height="32" src="<?php echo base_url().'assets/images/'.$berita_gambar;?>"  alt="" /></a></div> 
                                            <div class="description">
                                              <h6 style="margin-left: 5px;"><a href="<?php echo base_url().'berita/berita_detail/'.$berita_id;?>"><?php echo $berita_judul;?></a></h6>
                                                <a class="gray1" href="#" style="margin-left: 5px;"><?php echo $berita_tgl;?> </a>
                                         </div> 
                                        </li>
                                      <?php endforeach;?>

                                    </ul>
                                </div>
                            <div class="clear"></div>	
 						<!--col2 ends -->			
              		</div>
                <div class="clear"></div>
			</div>	
		<div class="clear"></div>
	</div>
</div>   

<?php $this->load->view('depan/v_footer');?>

</body>
</html>
















