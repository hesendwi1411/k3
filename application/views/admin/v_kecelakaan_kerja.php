<!--Counter Inbox-->
<?php 
    $query=$this->db->query("SELECT * FROM tbl_inbox WHERE inbox_status='1'");
    $jum_pesan=$query->num_rows();
?>
<?php
	function tgl_indo($tgl){
			$tanggal = substr($tgl,8,2);
			$bulan = getBulan(substr($tgl,5,2));
			$tahun = substr($tgl,0,4);
			return $tanggal.' '.$bulan.' '.$tahun;		 
	}	

	function getBulan($bln){
				switch ($bln){
					case 1: 
						return "Januari";
						break;
					case 2:
						return "Februari";
						break;
					case 3:
						return "Maret";
						break;
					case 4:
						return "April";
						break;
					case 5:
						return "Mei";
						break;
					case 6:
						return "Juni";
						break;
					case 7:
						return "Juli";
						break;
					case 8:
						return "Agustus";
						break;
					case 9:
						return "September";
						break;
					case 10:
						return "Oktober";
						break;
					case 11:
						return "November";
						break;
					case 12:
						return "Desember";
						break;
				}
			} 
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>B-K3 Ameya | Kecelakaan Kerja</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="shorcut icon" type="text/css" href="<?php echo base_url().'assets/images/favicon.png'?>">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="<?php echo base_url().'assets/bootstrap/css/bootstrap.min.css'?>">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?php echo base_url().'assets/font-awesome/css/font-awesome.min.css'?>">
  <!-- DataTables -->
  <link rel="stylesheet" href="<?php echo base_url().'assets/plugins/datatables/dataTables.bootstrap.css'?>">
  <link rel="stylesheet" href="<?php echo base_url().'assets/plugins/daterangepicker/daterangepicker.css'?>">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo base_url().'assets/dist/css/AdminLTE.min.css'?>">
  <link rel="stylesheet" href="<?php echo base_url().'assets/plugins/daterangepicker/daterangepicker.css'?>">
  <link rel="stylesheet" href="<?php echo base_url().'assets/plugins/timepicker/bootstrap-timepicker.min.css'?>">
  <!-- bootstrap datepicker -->
  <link rel="stylesheet" href="<?php echo base_url().'assets/plugins/datepicker/datepicker3.css'?>">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="<?php echo base_url().'assets/dist/css/skins/_all-skins.min.css'?>">
  <link rel="stylesheet" type="text/css" href="<?php echo base_url().'assets/plugins/toast/jquery.toast.min.css'?>"/>

</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

   <?php 
    $this->load->view('admin/v_header');
  ?>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu">
        <li class="header">Menu Utama</li>
        <li class="active">
          <a href="<?php echo base_url().'admin/dashboard'?>">
            <i class="fa fa-home"></i> <span>Dashboard</span>
            <span class="pull-right-container">
              <small class="label pull-right"></small>
            </span>
          </a>
        </li>
		<?php if($this->session->userdata('akses')=='1'):?>
		<li class="treeview">
          <a href="#">
            <i class="fa fa-archive"></i>
            <span>Master</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
		  <li><a href="<?php echo base_url().'admin/diagnosis'?>"><i class="fa fa-list"></i> Diagnosis</a></li>
            <li><a href="<?php echo base_url().'admin/department'?>"><i class="fa fa-list"></i> Department</a></li>
			<li><a href="<?php echo base_url().'admin/program_k3'?>"><i class="fa fa-list"></i> Program P2K3</a></li>
			<li><a href="<?php echo base_url().'admin/penyebab_kecelakaan_kerja'?>"><i class="fa fa-wrench"></i> Penyebab Kecelakan Kerja</a></li>
            
          </ul>
        </li>
		<?php endif;?>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-newspaper-o"></i>
            <span>Berita</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="<?php echo base_url().'admin/tulisan'?>"><i class="fa fa-list"></i> List Berita</a></li>
            <li><a href="<?php echo base_url().'admin/tulisan/add_tulisan'?>"><i class="fa fa-thumb-tack"></i> Post Berita</a></li>
            <li><a href="<?php echo base_url().'admin/kategori'?>"><i class="fa fa-wrench"></i> Kategori</a></li>
          </ul>
        </li>
		<li class="treeview">
          <a href="#">
            <i class="fa fa-heartbeat"></i>
            <span>Klinik</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
			
					<li class="treeview">
					  <a href="#">
						<i class="fa fa-cab"></i>
						<span>List Kecelakaan Kerja</span>
						<span class="pull-right-container">
						  <i class="fa fa-angle-left pull-right"></i>
						</span>
					  </a>
						   <ul class="treeview-menu">
							<li><a href="<?php echo base_url().'admin/kecelakaan_kerja_all'?>"><i class="fa fa-anchor"></i> All</a></li>
							<li><a href="<?php echo base_url().'admin/kecelakaan_kerja'?>"><i class="fa fa-bomb"></i> Bulan Ini</a></li>
						 </ul>
					</li>
            
			<li><a href="<?php echo base_url().'admin/kunjungan_karyawan'?>"><i class="fa fa-list"></i> List Kunjungan Klinik</a></li>
            <li><a href="<?php echo base_url().'admin/kecelakaan_kerja/add_kecelakaan_kerja'?>"><i class="fa fa-thumb-tack"></i> Post Kecelakaan Kerja</a></li>
            <li><a href="<?php echo base_url().'admin/penyebab_kecelakaan_kerja'?>"><i class="fa fa-wrench"></i> Penyebab Kecelakan Kerja</a></li>
          </ul>
        </li>
		<?php if($this->session->userdata('akses')=='1'):?>
        <li>
          <a href="<?php echo base_url().'admin/pengguna'?>">
            <i class="fa fa-users"></i> <span>Pengguna</span>
            <span class="pull-right-container">
              <small class="label pull-right"></small>
            </span>
          </a>
        </li>
		<?php endif;?>
        <li>
          <a href="<?php echo base_url().'admin/agenda'?>">
            <i class="fa fa-calendar"></i> <span>Agenda</span>
            <span class="pull-right-container">
              <small class="label pull-right"></small>
            </span>
          </a>
        </li>
        <li>
          <a href="<?php echo base_url().'admin/pengumuman'?>">
            <i class="fa fa-volume-up"></i> <span>Pengumuman</span>
            <span class="pull-right-container">
              <small class="label pull-right"></small>
            </span>
          </a>
        </li>
        <li>
          <a href="<?php echo base_url().'admin/files'?>">
            <i class="fa fa-download"></i> <span>Download</span>
            <span class="pull-right-container">
              <small class="label pull-right"></small>
            </span>
          </a>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-camera"></i>
            <span>Gallery</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="<?php echo base_url().'admin/album'?>"><i class="fa fa-clone"></i> Album</a></li>
            <li><a href="<?php echo base_url().'admin/galeri'?>"><i class="fa fa-picture-o"></i> Photos</a></li>
          </ul>
        </li>

        <li>
          <a href="<?php echo base_url().'admin/guru'?>">
            <i class="fa fa-graduation-cap"></i> <span>Emergency Call</span>
            <span class="pull-right-container">
              <small class="label pull-right"></small>
            </span>
          </a>
        </li>

        <li class="treeview">
          <a href="#">
            <i class="fa fa-user"></i>
            <span>K3</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="<?php echo base_url().'admin/siswa'?>"><i class="fa fa-users"></i> Data Anggota</a></li>
            <li><a href="#"><i class="fa fa-star-o"></i> Prestasi K3</a></li>
			
           	
			 
			 <li class="treeview">
				<a href="#">
					<i class="fa fa-user"></i>
					<span>Program P2K3</span>
					<span class="pull-right-container">
					<i class="fa fa-angle-left pull-right"></i>
					</span>
				</a>
					
						<ul class="treeview-menu">
							<?php
							$con = mysqli_connect("localhost","root","managersql","db_balaik3ameya");
							$mnprofil = mysqli_query($con,"SELECT * FROM tbl_program_k3 where program_tahun='2018' ORDER BY program_id");
							while ($rmnprofil = mysqli_fetch_array($mnprofil)){
								echo '<li><a href="improvement?id='.$rmnprofil['program_id'].'">'.strtoupper($rmnprofil['program_nama']).'</a></li>';
							}
							?>
						</li>			
				</ul>
			 
			 </li>
			
          </ul>
        </li>
        
        <li>
          <a href="<?php echo base_url().'admin/inbox'?>">
            <i class="fa fa-envelope"></i> <span>Inbox</span>
            <span class="pull-right-container">
              <small class="label pull-right bg-green"><?php echo $jum_pesan;?></small>
            </span>
          </a>
        </li>

         <li>
          <a href="<?php echo base_url().'administrator/logout'?>">
            <i class="fa fa-sign-out"></i> <span>Sign Out</span>
            <span class="pull-right-container">
              <small class="label pull-right"></small>
            </span>
          </a>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-print"></i>
            <span>Report</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
           <li><a data-toggle="modal" data-target="#lapKecelakaan"><i class="fa fa-print"></i> List Kecelakaan Kerja</a></li>
			<li><a data-toggle="modal" data-target="#lapPenyakit"><i class="fa fa-print"></i> List Kunjungan Klinik</a></li>
           
          </ul>
        </li>
       
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
	   
        Data Kecelakaan Kerja Bulan <?php echo getBulan(date('m')); ?>
        <small></small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Kecelakaan Kerja</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
           
          <div class="box">
            <div class="box-header">
              <a class="btn btn-success btn-flat" data-toggle="modal" data-target="#myModal"><span class="fa fa-plus"></span> Add Kecelakaan Kerja</a>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example1" class="table table-striped" style="font-size:12px;">
                <thead>
                <tr>
					<th style="width:20px;">No.</th>
                    <th>Jenis Kecelakaan</th>
                    <th>Nama</th>
					<th>NIP</th>
                    <th>Tanggal</th>
					<th>Waktu</th>
                    <th>Department</th>
					
                    <th>Author</th>
					<th>Form Investigasi</th>
                    <th style="text-align:right;">Aksi</th>
                </tr>
                </thead>
                <tbody>
				<?php
					$no=0;
  					foreach ($data->result_array() as $i) :
  					   $no++;
                       $kecelakaan_id=$i['kecelakaan_id'];
					   $kecelakaan_jenis=$i['kecelakaan_jenis'];
                       $kecelakaan_nama=$i['kecelakaan_nama'];
                       $kecelakaan_nip=$i['kecelakaan_nip'];
					   $department_id=$i['kecelakaan_department'];
					   $department_nama=$i['department_nama'];
                       $kecelakaan_tanggal_kejadian=$i['kecelakaan_tanggal_kejadian'];
                       $kecelakaan_waktu_kejadian=$i['kecelakaan_waktu_kejadian'];
                       $kecelakaan_alat=$i['kecelakaan_alat'];
                       $kecelakaan_author=$i['kecelakaan_author'];
					   $kecelakaan_kronologi=$i['kecelakaan_kronologi'];
					   $kecelakaan_penyebab_utama=$i['kecelakaan_penyebab_utama'];
					   $kecelakaan_hasil_pemeriksaan=$i['kecelakaan_hasil_pemeriksaan'];
					   $kecelakaan_rencana_tindakan=$i['kecelakaan_rencana_tindakan'];
                       $tanggal=$i['tanggal'];
                       $form_investigasi=$i['form_investigasi'];
                    ?>
                <tr>
                  <td><?php echo $no;?></td>
                  <td><?php echo $kecelakaan_jenis;?></td>
				  <td><?php echo $kecelakaan_nama;?></td>
                     <!-- <td><?php echo $agenda_mulai.' s/d '.$agenda_selesai;?></td> -->
                  <td><?php echo $kecelakaan_nip;?></td>
                  <td><?php echo tgl_indo($kecelakaan_tanggal_kejadian);?></td>
				   <td><?php echo $kecelakaan_waktu_kejadian;?></td>
				    <td><?php echo $department_nama;?></td>
					
                  <td><?php echo $kecelakaan_author;?></td>
				   
				   <?php if(empty($form_investigasi)):?>
                  <td><?php echo $kecelakaan_nip.' - Belum Upload ';?></td>
                  <?php else:?>
                  <td><a href="<?php echo base_url().'admin/kecelakaan_kerja/download/'.$kecelakaan_id;?>"><?php echo $kecelakaan_nip.' - '.$kecelakaan_nama;?></a></td>
                  <?php endif;?>
				  
				  
				  
				  
                  <td style="text-align:right;">
						<a class="btn" data-toggle="modal" data-target="#ModalUpload<?php echo $kecelakaan_id;?>"><span class="fa fa-paperclip"></span></a>
                        <a class="btn" data-toggle="modal" data-target="#ModalEdit<?php echo $kecelakaan_id;?>"><span class="fa fa-pencil"></span></a>
                        <a class="btn" data-toggle="modal" data-target="#ModalHapus<?php echo $kecelakaan_id;?>"><span class="fa fa-trash"></span></a>
						
                  </td>
                </tr>
				<?php endforeach;?>
                </tbody>
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> 1.0
    </div>
    <strong>Copyright &copy; 2018 <a href="#">IT Dept</a>.</strong> All rights reserved.
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Create the tabs -->
    <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
      <li><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
      <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
    </ul>
    <!-- Tab panes -->
    <div class="tab-content">
      <!-- Home tab content -->
      <div class="tab-pane" id="control-sidebar-home-tab">
        <h3 class="control-sidebar-heading">Recent Activity</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-birthday-cake bg-red"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

                <p>Will be 23 on April 24th</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-user bg-yellow"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Frodo Updated His Profile</h4>

                <p>New phone +1(800)555-1234</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-envelope-o bg-light-blue"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Nora Joined Mailing List</h4>

                <p>nora@example.com</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-file-code-o bg-green"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Cron Job 254 Executed</h4>

                <p>Execution time 5 seconds</p>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

        <h3 class="control-sidebar-heading">Tasks Progress</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Custom Template Design
                <span class="label label-danger pull-right">70%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Update Resume
                <span class="label label-success pull-right">95%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-success" style="width: 95%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Laravel Integration
                <span class="label label-warning pull-right">50%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-warning" style="width: 50%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Back End Framework
                <span class="label label-primary pull-right">68%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-primary" style="width: 68%"></div>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

      </div>
      <!-- /.tab-pane -->
      <!-- Stats tab content -->
      <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
      <!-- /.tab-pane -->
      <!-- Settings tab content -->
      <div class="tab-pane" id="control-sidebar-settings-tab">
        <form method="post">
          <h3 class="control-sidebar-heading">General Settings</h3>

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Report panel usage
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Some information about this general settings option
            </p>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Allow mail redirect
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Other sets of options are available
            </p>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Expose author name in posts
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Allow the user to show his name in blog posts
            </p>
          </div>
          <!-- /.form-group -->

          <h3 class="control-sidebar-heading">Chat Settings</h3>

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Show me as online
              <input type="checkbox" class="pull-right" checked>
            </label>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Turn off notifications
              <input type="checkbox" class="pull-right">
            </label>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Delete chat history
              <a href="javascript:void(0)" class="text-red pull-right"><i class="fa fa-trash-o"></i></a>
            </label>
          </div>
          <!-- /.form-group -->
        </form>
      </div>
      <!-- /.tab-pane -->
    </div>
  </aside>
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<!--Modal Add Pengguna-->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><span class="fa fa-close"></span></span></button>
                        <h4 class="modal-title" id="myModalLabel">FORM INVESTIGASI KECELAKAAN KERJA</h4>
                    </div>
                    <form class="form-horizontal" action="<?php echo base_url().'admin/kecelakaan_kerja/simpan_kecelakaan_kerja'?>" method="post" enctype="multipart/form-data">
                    <div class="modal-body">
                                
                            <div class="form-group">
                                <label for="inputUserName" class="col-sm-4 control-label">Jenis Kecelakaan Kerja</label>
                                <div class="col-sm-7">
                                  <input type="text" name="xjenis_kecelakaan" class="form-control" id="inputUserName" placeholder="Jenis Kecelakaan Kerja" required>
                                </div>
                            </div>
							 <div class="form-group">
                                <label for="inputUserName" class="col-sm-4 control-label">Nama</label>
                                <div class="col-sm-7">
                                  <input type="text" name="xnama_kecelakaan" class="form-control" id="inputUserName" placeholder="Nama Karyawan" required>
                                </div>
                            </div>
							<div class="form-group">
                                <label for="inputUserName" class="col-sm-4 control-label">NIK</label>
                                <div class="col-sm-7">
                                  <input type="text" name="xnip" class="form-control" id="inputUserName" placeholder="Nomor Induk Karyawan" required>
                                </div>
                            </div>
							<div class="form-group">
                                        <label for="inputUserName" class="col-sm-4 control-label">Department</label>
                                        <div class="col-sm-7">
                                          <select name="xdepartment" class="form-control" required>
                                            <option value="">-Pilih-</option>
                                            <?php
                                                foreach ($department->result_array() as $k) {
                                                  $id_department=$k['department_id'];
                                                  $nm_department=$k['department_nama'];
                                                
                                            ?>
                                            <option value="<?php echo $id_department;?>"><?php echo $nm_department;?></option>
                                            <?php } ?>
                                          </select>
                                        </div>
                                    </div>
							
                            
                              <!-- /.input group -->
                            </div>
                            <!-- /.form group -->

                            <!-- Date range -->
                            <div class="form-group">
                             <label for="inputUserName" class="col-sm-4 control-label">Tanggal Kejadian</label>
                              <div class="col-sm-7">
                                <div class="input-group date">
                                  <div class="input-group-addon">
                                    <i class="fa fa-calendar"></i>
                                  </div>
                                  <input type="text" name="xtanggal_kejadian" class="form-control pull-right" id="datepicker2" required>
                                </div>
                              </div>
                              <!-- /.input group -->
                            </div>
                            <!-- /.form group -->
                            <div class="form-group">
                                <label for="inputUserName" class="col-sm-4 control-label">Waktu Kejadian</label>
                                <div class="col-sm-7">
                                    <input type="text" name="xwaktu_kejadian" class="form-control" id="inputUserName" placeholder="Contoh: 10.30-11.00 WIB" required>
                                </div>
                            </div>
							 <div class="form-group">
                                <label for="inputUserName" class="col-sm-4 control-label">Alat Penyebab Kecelakaan</label>
                                <div class="col-sm-7">
                                    <input type="text" name="xalat" class="form-control" id="inputUserName" placeholder="Alat kerja penyebab kecelakaan" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputUserName" class="col-sm-4 control-label">Kronologi</label>
                                <div class="col-sm-7">
                                  <textarea class="form-control" name="xkronologi" rows="2" placeholder="Kronologi ..."></textarea>
                                </div>
                            </div>
							<div class="form-group">
                                <label for="inputUserName" class="col-sm-4 control-label">Penyebab Utama Kecelakaan Kerja</label>
                                <div class="col-sm-7">
                                  <textarea class="form-control" name="xpenyebab_utama" rows="2" placeholder="Penyebab Utama Kecelakaan Kerja ..."></textarea>
                                </div>
                            </div>
							<div class="form-group">
                                <label for="inputUserName" class="col-sm-4 control-label">Hasil Pemeriksaan Tenaga Medis</label>
                                <div class="col-sm-7">
                                  <textarea class="form-control" name="xhasil_pemeriksaan" rows="2" placeholder="Hasil Pemeriksaan Tenaga Medis ..."></textarea>
                                </div>
                            </div>
							<div class="form-group">
                                <label for="inputUserName" class="col-sm-4 control-label">Rencana Tindakan Pencegahan</label>
                                <div class="col-sm-7">
                                  <textarea class="form-control" name="xrencana_tindakan" rows="2" placeholder="Rencana Tindakan Pencegahan ..."></textarea>
                                </div>
                            </div>
							<div class="form-group">
                                        <label for="inputUserName" class="col-sm-4 control-label">Form Investigasi</label>
                                        <div class="col-sm-7">
                                            <input type="file" name="filefoto"/>
											NB: file harus bertype gif|jpg|png|jpeg|bmp|pdf|doc|docx|ppt|pptx|zip|xls|xlsx. ukuran maksimal 2,7 MB.
                                        </div>
                                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default btn-flat" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary btn-flat" id="simpan">Simpan</button>
                    </div>
                    </form>
                </div>
            </div>
        </div>
		
		
		
		<?php foreach ($data->result_array() as $i) :
		
					   $kecelakaan_id=$i['kecelakaan_id'];
					   $kecelakaan_jenis=$i['kecelakaan_jenis'];
                       $kecelakaan_nama=$i['kecelakaan_nama'];
                       $kecelakaan_nip=$i['kecelakaan_nip'];
					   $department_id=$i['kecelakaan_department'];
                       $kecelakaan_tanggal_kejadian=$i['kecelakaan_tanggal_kejadian'];
                       $kecelakaan_waktu_kejadian=$i['kecelakaan_waktu_kejadian'];
					   $kecelakaan_alat=$i['kecelakaan_alat'];
                       $kecelakaan_author=$i['kecelakaan_author'];
					   $kecelakaan_kronologi=$i['kecelakaan_kronologi'];
					   $kecelakaan_penyebab_utama=$i['kecelakaan_penyebab_utama'];
					   $kecelakaan_hasil_pemeriksaan=$i['kecelakaan_hasil_pemeriksaan'];
					   $kecelakaan_rencana_tindakan=$i['kecelakaan_rencana_tindakan'];
                       $tanggal=$i['tanggal'];
		
             
            ?>
	<!--Modal Edit Pengguna-->
        <div class="modal fade" id="ModalEdit<?php echo $kecelakaan_id;?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><span class="fa fa-close"></span></span></button>
                        <h4 class="modal-title" id="myModalLabel">Edit Kecelakaan Kerja</h4>
                    </div>
                    <form class="form-horizontal" action="<?php echo base_url().'admin/kecelakaan_kerja/update_kecelakaan_kerja'?>" method="post" enctype="multipart/form-data">
                    <div class="modal-body">
                             
                            <div class="form-group">
                                <label for="inputUserName" class="col-sm-4 control-label">Jenis Kecelakaan Kerja</label>
                                <div class="col-sm-7">
                                  <input type="hidden" name="kode" value="<?php echo $kecelakaan_id;?>">
                                  <input type="text" name="xjenis_kecelakaan" class="form-control" value="<?php echo $kecelakaan_jenis;?>" id="inputUserName" placeholder="Jenis Kecelakaan Kerja" required>
                                </div>
                            </div>
							<div class="form-group">
                                <label for="inputUserName" class="col-sm-4 control-label">Nama</label>
                                <div class="col-sm-7">
                                    <input type="text" name="xnama_kecelakaan" class="form-control" value="<?php echo $kecelakaan_nama;?>" id="inputUserName" placeholder="Nama" required>
                                </div>
                            </div>
														
							<div class="form-group">
                                <label for="inputUserName" class="col-sm-4 control-label">NIK</label>
                                <div class="col-sm-7">
                                    <input type="text" name="xnip" class="form-control" value="<?php echo $kecelakaan_nip;?>" id="inputUserName" placeholder="Nomor Induk Karyawan" required>
                                </div>
                            </div> 
							<div class="form-group">
                                        <label for="inputUserName" class="col-sm-4 control-label">Department</label>
                                        <div class="col-sm-7">
                                          <select name="xdepartment" class="form-control" required>
                                            <option value="">-Pilih-</option>
                                            <?php
                                                foreach ($department->result_array() as $k) {
                                                  $id_department=$k['department_id'];
                                                  $nm_department=$k['department_nama'];
                                                
                                            ?>
                                            <?php if($id_department==$department_id):?>
                                              <option value="<?php echo $id_department;?>" selected><?php echo $nm_department;?></option>
                                            <?php else:?>
                                              <option value="<?php echo $id_department;?>"><?php echo $nm_department;?></option>
                                            <?php endif;?>
                                            <?php } ?>
                                          </select>
                                        </div>
                                    </div>
							
							
                            
                              <!-- /.input group -->
                            </div>
                            <!-- /.form group -->

                            <!-- Date range -->
                            <div class="form-group">
                              <label for="inputUserName" class="col-sm-4 control-label">Tanggal Kejadian</label>
                              <div class="col-sm-7">
                                <div class="input-group date">
                                  <div class="input-group-addon">
                                    <i class="fa fa-calendar"></i>
                                  </div>
                                  <input type="text" name="xtanggal_kejadian" value="<?php echo $kecelakaan_tanggal_kejadian;?>" class="form-control pull-right datepicker3" required>
                                </div>
                              </div>
                              <!-- /.input group -->
                            </div>
                            <!-- /.form group -->
                            <div class="form-group">
                                <label for="inputUserName" class="col-sm-4 control-label">Waktu Kejadian</label>
                                <div class="col-sm-7">
                                    <input type="text" name="xwaktu_kejadian" class="form-control" value="<?php echo $kecelakaan_waktu_kejadian;?>" id="inputUserName" placeholder="Contoh: 10.30-11.00 WIB" required>
                                </div>
                            </div> 
                           <div class="form-group">
                                <label for="inputUserName" class="col-sm-4 control-label">Alat Penyebab Kecelakaan</label>
                                <div class="col-sm-7">
                                    <input type="text" name="xalat" class="form-control" value="<?php echo $kecelakaan_alat;?>" id="inputUserName" placeholder="Alat penyebab kecelakaan" required>
                                </div>
                            </div> 
							<div class="form-group">
                                <label for="inputUserName" class="col-sm-4 control-label">Kronologi</label>
                                <div class="col-sm-7">
                                    <input type="text" name="xkronologi" class="form-control" value="<?php echo $kecelakaan_kronologi;?>" id="inputUserName" placeholder="Kronologi" required>
                                </div>
                            </div> 
							<div class="form-group">
                                <label for="inputUserName" class="col-sm-4 control-label">Penyebab utama kecelakaan kerja</label>
                                <div class="col-sm-7">
                                    <input type="text" name="xpenyebab_utama" class="form-control" value="<?php echo $kecelakaan_penyebab_utama;?>" id="inputUserName" placeholder="Penyebab utama kecelakaan kerja" required>
                                </div>
                            </div> 
							<div class="form-group">
                                <label for="inputUserName" class="col-sm-4 control-label">Hasil pemeriksaan tenaga medis</label>
                                <div class="col-sm-7">
                                    <input type="text" name="xhasil_pemeriksaan" class="form-control" value="<?php echo $kecelakaan_hasil_pemeriksaan;?>" id="inputUserName" placeholder="Hasil pemeriksaan tenaga medis" required>
                                </div>
                            </div> 
							<div class="form-group">
                                <label for="inputUserName" class="col-sm-4 control-label">Rencana tindakan pencegahan</label>
                                
							<div class="col-sm-7">
								<textarea class="form-control"name="xrencana_tindakan"><?php echo $kecelakaan_rencana_tindakan;?></textarea>
								</div>
                            </div> 
							<div class="form-group">
                                        <label for="inputUserName" class="col-sm-4 control-label">Form Investigasi</label>
                                        <div class="col-sm-7">
                                            <input type="file" name="filefoto"/>
											NB: file harus bertype gif|jpg|png|jpeg|bmp|pdf|doc|docx|ppt|pptx|zip|xls|xlsx. ukuran maksimal 2,7 MB.
                                        </div>
                            </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default btn-flat" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary btn-flat" id="simpan">Update</button>
                    </div>
                    </form>
                </div>
            </div>
        </div>
	<?php endforeach;?>
	
	<?php foreach ($data->result_array() as $i) :
		
					   $kecelakaan_id=$i['kecelakaan_id'];
					   $kecelakaan_jenis=$i['kecelakaan_jenis'];
                       $kecelakaan_nama=$i['kecelakaan_nama'];
                       $kecelakaan_nip=$i['kecelakaan_nip'];
					   $department_id=$i['kecelakaan_department'];
                       $kecelakaan_tanggal_kejadian=$i['kecelakaan_tanggal_kejadian'];
                       $kecelakaan_waktu_kejadian=$i['kecelakaan_waktu_kejadian'];
					   $kecelakaan_alat=$i['kecelakaan_alat'];
                       $kecelakaan_author=$i['kecelakaan_author'];
					   $kecelakaan_kronologi=$i['kecelakaan_kronologi'];
					   $kecelakaan_penyebab_utama=$i['kecelakaan_penyebab_utama'];
					   $kecelakaan_hasil_pemeriksaan=$i['kecelakaan_hasil_pemeriksaan'];
					   $kecelakaan_rencana_tindakan=$i['kecelakaan_rencana_tindakan'];
                       $tanggal=$i['tanggal'];
		
             
            ?>
	<!--Modal Upload Form Ivestigasi-->
        <div class="modal fade" id="ModalUpload<?php echo $kecelakaan_id;?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><span class="fa fa-close"></span></span></button>
                        <h4 class="modal-title" id="myModalLabel">Upload Form Investigasi Kecelakaan Kerja</h4>
                    </div>
                    <form class="form-horizontal" action="<?php echo base_url().'admin/kecelakaan_kerja/upload_kecelakaan_kerja'?>" method="post" enctype="multipart/form-data">
                    <div class="modal-body">
                             
                            <div class="form-group">
                                <label for="inputUserName" class="col-sm-4 control-label">Jenis Kecelakaan Kerja</label>
                                <div class="col-sm-7">
                                  <input type="hidden" name="kode" value="<?php echo $kecelakaan_id;?>">
                                  <input type="text" name="xjenis_kecelakaan" class="form-control" value="<?php echo $kecelakaan_jenis;?>" id="inputUserName" placeholder="Jenis Kecelakaan Kerja" disabled>
                                </div>
                            </div>
							<div class="form-group">
                                <label for="inputUserName" class="col-sm-4 control-label">Nama</label>
                                <div class="col-sm-7">
                                    <input type="text" name="xnama_kecelakaan" class="form-control" value="<?php echo $kecelakaan_nama;?>" id="inputUserName" placeholder="Nama" disabled>
                                </div>
                            </div>
														
							<div class="form-group">
                                <label for="inputUserName" class="col-sm-4 control-label">NIK</label>
                                <div class="col-sm-7">
                                    <input type="text" name="xnip" class="form-control" value="<?php echo $kecelakaan_nip;?>" id="inputUserName" placeholder="Nomor Induk Karyawan" disabled>
                                </div>
                            </div> 
							<div class="form-group">
                                        <label for="inputUserName" class="col-sm-4 control-label">Department</label>
                                        <div class="col-sm-7">
                                          <select name="xdepartment" class="form-control" disabled>
                                            <option value="">-Pilih-</option>
                                            <?php
                                                foreach ($department->result_array() as $k) {
                                                  $id_department=$k['department_id'];
                                                  $nm_department=$k['department_nama'];
                                                
                                            ?>
                                            <?php if($id_department==$department_id):?>
                                              <option value="<?php echo $id_department;?>" selected><?php echo $nm_department;?></option>
                                            <?php else:?>
                                              <option value="<?php echo $id_department;?>"><?php echo $nm_department;?></option>
                                            <?php endif;?>
                                            <?php } ?>
                                          </select>
                                        </div>
                                    </div>
							
							
                            
                              <!-- /.input group -->
                            </div>
                            <!-- /.form group -->

                            <!-- Date range -->
                            <div class="form-group">
                              <label for="inputUserName" class="col-sm-4 control-label">Tanggal Kejadian</label>
                              <div class="col-sm-7">
                                <div class="input-group date">
                                  <div class="input-group-addon">
                                    <i class="fa fa-calendar"></i>
                                  </div>
                                  <input type="text" name="xtanggal_kejadian" value="<?php echo $kecelakaan_tanggal_kejadian;?>" class="form-control pull-right datepicker3" disabled>
                                </div>
                              </div>
                              <!-- /.input group -->
                            </div>
                            <!-- /.form group -->
                            <div class="form-group">
                                <label for="inputUserName" class="col-sm-4 control-label">Waktu Kejadian</label>
                                <div class="col-sm-7">
                                    <input type="text" name="xwaktu_kejadian" class="form-control" value="<?php echo $kecelakaan_waktu_kejadian;?>" id="inputUserName" placeholder="Contoh: 10.30-11.00 WIB" disabled>
                                </div>
                            </div> 
                           								
								<div class="form-group">
                                        <label for="inputUserName" class="col-sm-4 control-label">Form Investigasi</label>
                                        <div class="col-sm-7">
                                            <input type="file" name="filefoto"/>
                                        </div>
                                    </div>
                    
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default btn-flat" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary btn-flat" id="simpan">Upload</button>
                    </div>
                    </form>
                </div>
            </div>
        </div>
	<?php endforeach;?>
	
	<?php foreach ($data->result_array() as $i) :
             			
					   $kecelakaan_id=$i['kecelakaan_id'];
					   $kecelakaan_jenis=$i['kecelakaan_jenis'];
                       $kecelakaan_nama=$i['kecelakaan_nama'];
                       $kecelakaan_nip=$i['kecelakaan_nip'];
					   $kecelakaan_department=$i['kecelakaan_department'];
                       $kecelakaan_tanggal_kejadian=$i['kecelakaan_tanggal_kejadian'];
                       $kecelakaan_waktu_kejadian=$i['kecelakaan_waktu_kejadian'];
					   $kecelakaan_alat=$i['kecelakaan_alat'];
                       $kecelakaan_author=$i['kecelakaan_author'];
					   $kecelakaan_kronologi=$i['kecelakaan_kronologi'];
					   $kecelakaan_penyebab_utama=$i['kecelakaan_penyebab_utama'];
					   $kecelakaan_hasil_pemeriksaan=$i['kecelakaan_hasil_pemeriksaan'];
					   $kecelakaan_rencana_tindakan=$i['kecelakaan_rencana_tindakan'];
                       $tanggal=$i['tanggal'];


	
			  
            ?>
	<!--Modal Hapus Pengguna-->
        <div class="modal fade" id="ModalHapus<?php echo $kecelakaan_id;?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><span class="fa fa-close"></span></span></button>
                        <h4 class="modal-title" id="myModalLabel">Hapus Kecelakaan Kerja</h4>
                    </div>
                    <form class="form-horizontal" action="<?php echo base_url().'admin/kecelakaan_kerja/hapus_kecelakaan_kerja'?>" method="post" enctype="multipart/form-data">
                    <div class="modal-body">       
							<input type="hidden" name="kode" value="<?php echo $kecelakaan_id;?>"/> 
                            <p>Apakah Anda yakin mau menghapus  <b><?php echo $kecelakaan_jenis;?></b> ?</p>
                               
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default btn-flat" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary btn-flat" id="simpan">Hapus</button>
                    </div>
                    </form>
                </div>
            </div>
        </div>
	<?php endforeach;?>
	
	


<!-- jQuery 2.2.3 -->
<script src="<?php echo base_url().'assets/plugins/jQuery/jquery-2.2.3.min.js'?>"></script>
<!-- Bootstrap 3.3.6 -->
<script src="<?php echo base_url().'assets/bootstrap/js/bootstrap.min.js'?>"></script>
<!-- DataTables -->
<script src="<?php echo base_url().'assets/plugins/datatables/jquery.dataTables.min.js'?>"></script>
<script src="<?php echo base_url().'assets/plugins/datatables/dataTables.bootstrap.min.js'?>"></script>
<!-- SlimScroll -->
<script src="<?php echo base_url().'assets/plugins/slimScroll/jquery.slimscroll.min.js'?>"></script>
<script src="<?php echo base_url().'assets/plugins/datepicker/bootstrap-datepicker.js'?>"></script>
<script src="<?php echo base_url().'assets/plugins/timepicker/bootstrap-timepicker.min.js'?>"></script>
<script src="<?php echo base_url().'assets/plugins/daterangepicker/daterangepicker.js'?>"></script>
<!-- FastClick -->
<script src="<?php echo base_url().'assets/plugins/fastclick/fastclick.js'?>"></script>
<!-- AdminLTE App -->
<script src="<?php echo base_url().'assets/dist/js/app.min.js'?>"></script>
<!-- AdminLTE for demo purposes -->
<script src="<?php echo base_url().'assets/dist/js/demo.js'?>"></script>
<script type="text/javascript" src="<?php echo base_url().'assets/plugins/toast/jquery.toast.min.js'?>"></script>
<!-- page script -->
<script>
  $(function () {
    $("#example1").DataTable();
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false
    });

    $('#datepicker').datepicker({
      autoclose: true,
      format: 'yyyy-mm-dd'
	  
    });
    $('#datepicker2').datepicker({
      autoclose: true,
      format: 'yyyy-mm-dd'
    });
    $('.datepicker3').datepicker({
      autoclose: true,
      format: 'yyyy-mm-dd'
    });
    $('.datepicker4').datepicker({
      autoclose: true,
      format: 'yyyy-mm-dd'
    });
    $(".timepicker").timepicker({
      showInputs: true
    });

  });
</script>
<?php if($this->session->flashdata('msg')=='error'):?>
        <script type="text/javascript">
                $.toast({
                    heading: 'Error',
                    text: "Password dan Ulangi Password yang Anda masukan tidak sama.",
                    showHideTransition: 'slide',
                    icon: 'error',
                    hideAfter: false,
                    position: 'bottom-right',
                    bgColor: '#FF4859'
                });
        </script>
    
    <?php elseif($this->session->flashdata('msg')=='success'):?>
        <script type="text/javascript">
                $.toast({
                    heading: 'Success',
                    text: "Data Kecelakaan Berhasil disimpan ke database.",
                    showHideTransition: 'slide',
                    icon: 'success',
                    hideAfter: false,
                    position: 'bottom-right',
                    bgColor: '#7EC857'
                });
        </script>
    <?php elseif($this->session->flashdata('msg')=='info'):?>
        <script type="text/javascript">
                $.toast({
                    heading: 'Info',
                    text: "Data Kecelakaan berhasil di update",
                    showHideTransition: 'slide',
                    icon: 'info',
                    hideAfter: false,
                    position: 'bottom-right',
                    bgColor: '#00C9E6'
                });
        </script>
    <?php elseif($this->session->flashdata('msg')=='success-hapus'):?>
        <script type="text/javascript">
                $.toast({
                    heading: 'Success',
                    text: "Data Kecelakaan Berhasil dihapus.",
                    showHideTransition: 'slide',
                    icon: 'success',
                    hideAfter: false,
                    position: 'bottom-right',
                    bgColor: '#7EC857'
                });
        </script>
    <?php else:?>

    <?php endif;?>
</body>
</html>