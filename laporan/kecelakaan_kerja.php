<?php

    $tgl1=$_GET['tgl1'];
    $tgl2=$_GET['tgl2'];
   
	?>
	
	<?php
$conn=@mysqli_connect("localhost","root","managersql") or die("Tidak Terkoneksi");
$db=@mysqli_select_db($conn,"db_balaik3ameya") or die ("Database Tidak Ditemukan");
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
<!doctype html>
<html>
	<head>
		<title>Laporan Kecelakaan Kerja</title>
		<!--<link rel="shortcut icon" href="../img/laporan.png"> -->
		<link rel="stylesheet" type="text/css" href="../assets/css/laporan.css">
	</head>
	<body>
		<div class="page">
		<div class="kop" >
            <!-- <img src="../assets/images/kop.png" id="kop"> -->
            <div class="header" align="center" >
                <h1>DATA KECELAKAAN KERJA</h1>
            
            <h4><?php
                if($tgl1=='' AND $tgl2==''){
                    
                }
                else{
                    echo tgl_indo($tgl1)." s/d ".tgl_indo($tgl2);
                }
                ?>
            
            </h4>
                </div>
		</div>
		
            <div class="batas"></div>
            <?php
			
			if($tgl1=='' AND $tgl2==''){
		?>
		<table class="table" border="1px">
			<tr class="head">
				<td width="2">NO. </td><td width="15">NIP </td><td width="100">NAMA</td><td width="60">DEPARTMENT </td><td width="50">TANGGAL </td><td width="15">WAKTU </td><td width="50">ALAT </td><td width="50">KRONOLOGI</td><td width="50">PENYEBAB</td><td width="50">PEMERIKSAAN MEDIS</td><td width="50">RENCANA TINDAKAN</td>
			</tr>
			
			<?php										
					$query=mysqli_query($conn,"SELECT tbl_kecelakaan_kerja.* DATE_FORMAT(kecelakaan_tanggal_kejadian,'%d/%m/%Y') AS kecelakaan_tanggal_kejadian,DATE_FORMAT(kecelakaan_tanggal,'%d/%m/%Y') AS tanggal FROM tbl_kecelakaan_kerja JOIN tbl_department ON kecelakaan_department=department_id AND tbl_kecelakaan_kerja.kecelakaan_tanggal BETWEEN '.$tgl1.' AND '.$tgl2.' ORDER BY kecelakaan_id DESC ");
					$no=1;
					while($r=mysqli_fetch_array($query)){
					?>					
						<tr bgcolor="#fff">
							<td width="2"><?php echo $no; ?></td>
							<td><?php echo $r['kecelakaan_nip']; ?></td>
                            <td><?php echo $r['kecelakaan_nama']; ?></td>
							<td ><?php 
                            $id_department=$r['kecelakaan_department'];
                            $queryDepartment=mysqli_query($conn,"SELECT * FROM tbl_department WHERE department_id='$id_department'");
                            $rDepartment=mysqli_fetch_array($queryDepartment);
                            echo $rDepartment['department_nama'];
                            ?></td>
							

							<td><?php echo tgl_indo($r['kecelakaan_tanggal_kejadian']); ?></td>
                            <td><?php echo $r['kecelakaan_waktu_kejadian']; ?></td>
							<td width="70" ><?php echo $r['kecelakaan_alat']; ?></td>
							<td width="100"><?php echo $r['kecelakaan_kronologi']; ?></td>
							<td width="85"><?php echo $r['kecelakaan_penyebab_utama']; ?></td>
							<td width="85" ><?php echo $r['kecelakaan_hasil_pemeriksaan']; ?></td>
							<td width="85" ><?php echo $r['kecelakaan_rencana_tindakan']; ?></td>
							
                           <!-- <td align="center"><?php 
                            $id_penyakit=$r['id_penyakit']; 
                            $queryKaryawan=mysqli_query($conn,"SELECT * FROM penyakit, rekammedik, pasien WHERE penyakit.id_penyakit=rekammedik.id_penyakit AND penyakit.id_penyakit='$id_penyakit' AND pasien.kodePasien=rekammedik.kodepasien");
                            echo $nKaryawan=mysqli_num_rows($queryKaryawan);
                            ?></td> -->
                           <!-- <td align="center"><?php 
                            $id_penyakit=$r['id_penyakit']; 
                            $queryIstri=mysqli_query($conn,"SELECT * FROM penyakit, rekammedik, tanggungan, pegawai_kel WHERE penyakit.id_penyakit=rekammedik.id_penyakit AND penyakit.id_penyakit='$id_penyakit' AND tanggungan.kodeTanggungan=rekammedik.kodepasien AND tanggungan.id_kpeg=pegawai_kel.id_kpeg AND pegawai_kel.status_kpeg='Istri' OR penyakit.id_penyakit=rekammedik.id_penyakit AND penyakit.id_penyakit='$id_penyakit' AND tanggungan.kodeTanggungan=rekammedik.kodepasien AND tanggungan.id_kpeg=pegawai_kel.id_kpeg AND pegawai_kel.status_kpeg='Suami'");
                            echo $nIstri=mysqli_num_rows($queryIstri);
                            ?></td> -->
                            <!--<td align="center"><?php 
                            $id_penyakit=$r['id_penyakit']; 
                            $queryAnak=mysqli_query($conn,"SELECT * FROM penyakit, rekammedik, tanggungan, pegawai_kel WHERE penyakit.id_penyakit=rekammedik.id_penyakit AND penyakit.id_penyakit='$id_penyakit' AND tanggungan.kodeTanggungan=rekammedik.kodepasien AND tanggungan.id_kpeg=pegawai_kel.id_kpeg AND pegawai_kel.status_kpeg='Anak Kandung'");
                            echo $nAnak=mysqli_num_rows($queryAnak);
                            ?></td> -->
                            <!--<td align="center"><?php echo $nKaryawan+$nIstri+$nAnak; ?></td> -->
						</tr>
					
					<?php
					$no++;
					}
					?>
                <tr>
                    <td colspan="2" align="center"><h4>Total</h4></td>
                    <td align="center">-</td>
                    <!--<td align="center"><?php 
                            $a=mysqli_query($conn,"SELECT * FROM rekammedik, pasien WHERE pasien.kodePasien=rekammedik.kodepasien");
                            echo $aa=mysqli_num_rows($a);
                            ?></td>-->
                    <!--<td align="center"><?php 
                            $b=mysqli_query($conn,"SELECT * FROM rekammedik, tanggungan, pegawai_kel WHERE tanggungan.kodeTanggungan=rekammedik.kodepasien AND tanggungan.id_kpeg=pegawai_kel.id_kpeg AND pegawai_kel.status_kpeg='Istri' OR tanggungan.kodeTanggungan=rekammedik.kodepasien AND tanggungan.id_kpeg=pegawai_kel.id_kpeg AND pegawai_kel.status_kpeg='Suami'");
                            echo $bb=mysqli_num_rows($b);
                            ?></td> -->
                    <!--<td align="center"><?php 
                            $c=mysqli_query($conn,"SELECT * FROM rekammedik, tanggungan, pegawai_kel WHERE tanggungan.kodeTanggungan=rekammedik.kodepasien AND tanggungan.kodeTanggungan=rekammedik.kodepasien AND tanggungan.id_kpeg=pegawai_kel.id_kpeg AND pegawai_kel.status_kpeg='Anak Kandung'");
                            echo $cc=mysqli_num_rows($c);
                            ?></td> -->
                   <!-- <td align="center"><?php echo $aa+$bb+$cc; ?></td>  -->
                </tr>
					
		</table>
            <?php
            }
            else{
                ?>
            <table class="table" border="1px">
			<tr class="head">
				<td width="2">NO. </td><td width="15">NIP </td><td width="50">NAMA</td><td width="45">DEPARTMENT </td><td width="25">TANGGAL </td><td width="15">WAKTU </td><td width="50">ALAT </td><td width="50">KRONOLOGI</td><td width="50">PENYEBAB</td><td width="50">PEMERIKSAAN MEDIS</td><td width="50">RENCANA TINDAKAN</td>
			</tr>
			
			<?php										
					$query=mysqli_query($conn,"SELECT tbl_kecelakaan_kerja.* FROM tbl_kecelakaan_kerja where kecelakaan_tanggal_kejadian BETWEEN '".$tgl1."' AND '".$tgl2."'ORDER BY kecelakaan_id ASC");
					$no=1;
					while($r=mysqli_fetch_array($query)){
					?>					
						<tr bgcolor="#fff">
							<td width="2"><?php echo $no; ?></td>
							<td ><?php echo $r['kecelakaan_nip']; ?></td>
                            <td width="50"><?php echo $r['kecelakaan_nama']; ?></td>
								 <td width="25"><?php 
                            $id_department=$r['kecelakaan_department'];
                            $queryDepartment=mysqli_query($conn,"SELECT * FROM tbl_department WHERE department_id='$id_department'");
                            $rDepartment=mysqli_fetch_array($queryDepartment);
                            echo $rDepartment['department_nama'];
                            ?></td>
                                            

							<td><?php echo tgl_indo($r['kecelakaan_tanggal_kejadian']); ?></td>
                            <td width="15"><?php echo $r['kecelakaan_waktu_kejadian']; ?></td>
							<td width="70"><?php echo $r['kecelakaan_alat']; ?></td>
							<td width="100"><?php echo $r['kecelakaan_kronologi']; ?></td>
							<td width="85"><?php echo $r['kecelakaan_penyebab_utama']; ?></td>
							<td width="85" ><?php echo $r['kecelakaan_hasil_pemeriksaan']; ?></td>
							<td width="85"><?php echo $r['kecelakaan_rencana_tindakan']; ?></td>
                            <!--<td align="center"><?php 
                            $id_penyakit=$r['id_penyakit']; 
                            $queryKaryawan=mysqli_query($conn,"SELECT * FROM penyakit, rekammedik, pasien WHERE penyakit.id_penyakit=rekammedik.id_penyakit AND penyakit.id_penyakit='$id_penyakit' AND pasien.kodePasien=rekammedik.kodepasien AND rekammedik.tgl BETWEEN '".$tgl1."' AND '".$tgl2."'");
                            echo $nKaryawan=mysqli_num_rows($queryKaryawan);
                            ?></td>  -->
                            <!--<td align="center"><?php 
                            $id_penyakit=$r['id_penyakit']; 
                            $queryIstri=mysqli_query($conn,"SELECT * FROM penyakit, rekammedik, tanggungan, pegawai_kel WHERE penyakit.id_penyakit=rekammedik.id_penyakit AND penyakit.id_penyakit='$id_penyakit' AND tanggungan.kodeTanggungan=rekammedik.kodepasien AND tanggungan.id_kpeg=pegawai_kel.id_kpeg AND pegawai_kel.status_kpeg='Istri' AND rekammedik.tgl BETWEEN '".$tgl1."' AND '".$tgl2."' OR penyakit.id_penyakit=rekammedik.id_penyakit AND penyakit.id_penyakit='$id_penyakit' AND tanggungan.kodeTanggungan=rekammedik.kodepasien AND tanggungan.id_kpeg=pegawai_kel.id_kpeg AND pegawai_kel.status_kpeg='Suami' AND rekammedik.tgl BETWEEN '".$tgl1."' AND '".$tgl2."'");
                            echo $nIstri=mysqli_num_rows($queryIstri);
                            ?></td>  -->
                            <!--<td align="center"><?php 
                            $id_penyakit=$r['id_penyakit']; 
                            $queryAnak=mysqli_query($conn,"SELECT * FROM penyakit, rekammedik, tanggungan, pegawai_kel WHERE penyakit.id_penyakit=rekammedik.id_penyakit AND penyakit.id_penyakit='$id_penyakit' AND tanggungan.kodeTanggungan=rekammedik.kodepasien AND tanggungan.id_kpeg=pegawai_kel.id_kpeg AND pegawai_kel.status_kpeg='Anak Kandung' AND rekammedik.tgl BETWEEN '".$tgl1."' AND '".$tgl2."'");
                            echo $nAnak=mysqli_num_rows($queryAnak);
                            ?></td> -->
                          <!--  <td align="center"><?php echo $nKaryawan+$nIstri+$nAnak; ?></td> -->
						</tr>
					
					<?php
					$no++;
					}
					?>
                <tr>
                     
                </tr>
					
		</table>
            <?php
            }
            ?>
			<!--
			  <br>
			  <h4>DEPARTMENT REKAP</h4>
			  <table class="table">
			
			  <tr class="head">
				
				<td width="50">Department</td><td width="15">Total </td>
			</tr>
			  
              <?php 
			 $query=mysqli_query($conn,"SELECT tbl_kecelakaan_kerja.*,count(kecelakaan_department) AS department_count FROM tbl_kecelakaan_kerja where tbl_kecelakaan_kerja.kecelakaan_tanggal_kejadian BETWEEN '".$tgl1."' AND '".$tgl2."' GROUP BY kecelakaan_department ORDER BY department_count DESC");
					
					while($r=mysqli_fetch_array($query)){
                     
              ?>
                  <tr>
                    <td><?php 
                            $id_department=$r['kecelakaan_department'];
                            $queryDepartment=mysqli_query($conn,"SELECT * FROM tbl_department WHERE department_id='$id_department'");
                            $rDepartment=mysqli_fetch_array($queryDepartment);
                            echo $rDepartment['department_nama'];
                            ?></td>
                    <td align="center"><?php echo $r['department_count'];?></td>
                  </tr>
             <?php
            }
            ?>
              </table>  -->
			
			  
            <table border="0px" style="float:right;" class="ttd">
            <tr>
                <td>Yogyakarta, <?php echo tgl_indo(date('Y-m-d')); ?></td>    
            </tr>
            <tr>
                <td>PT.Ameya Livingstyle Indonesia</td>    
            </tr>
            <tr>
                <td></td>    
            </tr>
            <tr>
                <td></td>    
            </tr>
                 <tr>
                <td>(..............................................)</td>    
            </tr>
            <tr>
                
            </tr>
            </table>
		</div>
	</body>
</html>