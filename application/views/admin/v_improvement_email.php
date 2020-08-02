
<div class="modal-header">
                      
                        <h4 class="modal-title" id="myModalLabel">Periode : 26 Nov 2018 sd 30 Nov 2018</h4>
                    </div>
    <table  class="table table-bordered table-striped" border="1">
         <thead>
		    
			 		  
		 
              <tr>
					  <th style="width:70px;">Date Created</th>
                    <th>Cluster</th>
                    <th>Penangung Jawab</th>
					<th>Area Perbaikan</th>
                    <th>Tanggal kejadian</th>
					<th>Masalah</th>
                    <th>Status</th>
                    <th>Added by</th>
                    <th style="text-align:right;">Aksi</th>
                </tr>
        </thead>
        <tbody>
            <?php
               $no=0;
  					foreach ($data_bydate->result_array() as $i) :
  					   $no++;
					   
                       $improvement_id=$i['improvement_id'];
					   $cluster=$i['improvement_cluster'];
                       $ketua=$i['improvement_ketua'];
                       $tanggal_kejadian=$i['improvement_tanggal_kejadian'];
					   $masalah=$i['improvement_masalah'];
					   $area_perbaikan=$i['improvement_area_perbaikan'];
                       $perbaikan=$i['improvement_perbaikan'];
                       $by_rencana=$i['improvement_by_rencana'];
                       $tanggal_rencana=$i['improvement_tanggal_rencana'];
                       $improvement_author=$i['improvement_author'];
					   $status=$i['improvement_status'];
					   $progres=$i['improvement_progres'];
					   $by_target=$i['improvement_by_target'];
					   $tanggal_penyelesaian=$i['improvement_tanggal_penyelesaian'];
					    $photo_temuan=$i['improvement_photo_temuan'];
						 $foto_temuan1=$i['improvement_photo_temuan1'];
						  $foto_temuan2=$i['improvement_photo_temuan2'];
						   $foto_temuan3=$i['improvement_photo_temuan3'];
						    $foto_temuan4=$i['improvement_photo_temuan4'];
							 	$foto_perbaikan1=$i['improvement_photo_perbaikan1'];
						  $foto_perbaikan2=$i['improvement_photo_perbaikan2'];
						   $foto_perbaikan3=$i['improvement_photo_perbaikan3'];
						    $foto_perbaikan4=$i['improvement_photo_perbaikan4'];
							
							
							
							
                       $tanggal=$i['tanggal'];
            ?>
 
            <tr>
            <td><?php echo $tanggal;?></td>
                  <td><?php echo $cluster;?></td>
				  <td><?php echo $ketua;?></td>
                    
                  <td><?php echo $area_perbaikan;?></td>
                  <td><?php echo $tanggal_kejadian;?></td>
				   <td><?php echo $masalah;?></td>
				   
				    <?php if($status=='PENDING'):?>
						<td > <font color="red"><?php echo $status;?></font> </td>
					<?php elseif ($status=='PROGRES'):?>
						<td > <font color="#FFD700"><?php echo $status;?></font> </td>
					<?php elseif($status=='DONE'):?>
						<td > <font color="green"><?php echo $status;?></font> </td>
					<?php elseif($status==''):?>
						<td > <font color="green"><?php echo "-";?></font> </td>
					<?php endif;?>
					
                  <td><?php echo $improvement_author;?></td>
                  <td style="text-align:right;">
                   <a class="moreinfo" href="<?php echo base_url().'berita_improvement/berita_improvement_detail/'.$improvement_id;?>">View</a>
						
                  </td>
            </tr>
            <?php
                endforeach;
            ?>
        </tbody>
    </table>
</div>