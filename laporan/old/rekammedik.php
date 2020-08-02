<?php
	include ("../config/koneksi.php");
	include ("../config/fungsi_indotgl.php");
	include ("../config/fungsi_minggu.php");
	$limit=$_GET['limit'];
    $tgl1=$_GET['tgl1'];
	$tgl2=$_GET['tgl2'];
	?>
<!doctype html>
<html>
	<head>
		<title>Laporan Data Pasien</title>
		<link rel="shortcut icon" href="../img/laporan.png">
		<link rel="stylesheet" type="text/css" href="../css/laporan.css">

	
	</head>
	<body>
		<div class="page">
		<div class="kop">
            <img src="../img/kop.png" id="kop">
            <div class="header">
			<h2>SYSTEM APLIKASI REKAM MEDIS <br />  PT.Ameya Livingstyle Indonesia</h2>
            <h6><?php
                if($tgl1=='' AND $tgl2==''){
                    
                }
                else{
                    echo tgl_indo($tgl1)." s/d ".tgl_indo($tgl2);
                }
                ?>
            
            </h6>
                </div>
		</div>
		
            <div class="batas"></div>
            <?php
			
			if($tgl1=='' AND $tgl2==''){
		?>
		<table class="table" border="1px">
			<tr  class="head">
				<td>NO. </td><td>NO RM</td><td>NAMA</td><td>DEPT</td><td>PETUGAS MEDIS</td><td>KELUHAN</td><td>PEMERIKSAAN FISIK</td><td>DIAGNOSA</td><td >TINDAKAN</td><td>TANGGAL</td>
			</tr>
			
			<?php										
					$query=mysqli_query($conn,"SELECT * FROM rekammedik, pasien, pegawai, dokter WHERE rekammedik.kodepasien=pasien.kodePasien AND pasien.id_pegawai=pegawai.id_pegawai AND dokter.kodeDokter=rekammedik.kodedokter ORDER BY rekammedik.id_rm DESC");
					$no=1;
					while($r=mysqli_fetch_array($query)){
					?>					
						<tr bgcolor="#fff">
							<td align="center"><?php echo $no; ?></td><td><?php echo $r['nomorRm']; ?></td><td style='width:100px;'><?php echo $r['nama_pegawai']; ?></td><td style='width:50px;'><?php echo $r['unit']; ?></td><td><?php echo $r['nama_dokter']; ?></td><td style='width:130px;'><?php echo $r['keluhan']; ?></td><tdstyle='width:100px;'><?php echo $r['pemeriksaan_fisik']; ?></td>
                             <td><?php $id_diagnosis=$r['id_diagnosis'];
                                $qutin=mysqli_query($conn,"SELECT * FROM diagnosis WHERE id_diagnosis='$id_diagnosis'");
                                $st=mysqli_fetch_array($qutin);
                                echo $st['nama_diagnosis'];
                                ?></td>
							<td><?php $tindakan=$r['tindakan'];
                                $qutin=mysqli_query($conn,"SELECT * FROM tindakan WHERE id_tindakan='$tindakan'");
                                $rt=mysqli_fetch_array($qutin);
                                echo $rt['nm_tindakan'];
                                ?></td>
                            <td><?php echo tgl_indo($r['tgl']); ?></td>
						</tr>
					
					<?php
					$no++;
					}
					?>
              
					
		</table>
            <?php
            }
            else{
                ?>
            <table class="table" border="1px">
			<tr class="head">
				<td>NO. </td><td>NO RM</td><td>NAMA</td><td>DEPT</td><td>PETUGAS MEDIS</td><td>KELUHAN</td><td>PEMERIKSAAN FISIK</td><td>DIAGNOSA</td><td >TINDAKAN</td><td>TANGGAL</td>
			</tr>
			
			<?php	$query=mysqli_query($conn,"SELECT * FROM rekammedik, pasien, pegawai, dokter WHERE rekammedik.kodepasien=pasien.kodePasien AND pasien.id_pegawai=pegawai.id_pegawai AND dokter.kodeDokter=rekammedik.kodedokter AND rekammedik.tgl BETWEEN '".$tgl1."' AND '".$tgl2."' ORDER BY rekammedik.id_rm DESC");									
					
					$no=1;
					while($r=mysqli_fetch_array($query)){
					?>					
						<tr bgcolor="#fff">
							<td align="center"><?php echo $no; ?></td><td><?php echo $r['nomorRm']; ?></td><td style='width:100px;'><?php echo $r['nama_pegawai']; ?></td><td style='width:50px;'><?php echo $r['unit']; ?></td><td><?php echo $r['nama_dokter']; ?></td><td style='width:130px;'><?php echo $r['keluhan']; ?></td><td style='width:100px;'><?php echo $r['pemeriksaan_fisik']; ?></td>
							<td><?php $x=$r['id_diagnosis']; 
							
							 $qt=mysqli_query($conn,"SELECT * FROM diagnosis WHERE id_diagnosis='$x'");
                            $st=mysqli_fetch_array($qt);
                            echo $st['nama_diagnosis'];
							
							?></td>
							<td><?php $t=$r['tindakan'];
                            $qt=mysqli_query($conn,"SELECT * FROM tindakan WHERE id_tindakan='$t'");
                            $rt=mysqli_fetch_array($qt);
                            echo $rt['nm_tindakan'];
                            ?></td><td><?php echo tgl_indo($r['tgl']); ?></td>
						</tr>
					
					<?php
					$no++;
					}
					?>
              
					
		</table>
            <?php
            }
            ?>
   
		</div>
	</body>
</html>