<html>
	<head>
		<title>Tutorial CI: Mengirim Email</title>
	</head>
	<body>
		<h2>Kirim Email</h2>
		<table>
			<?php echo form_open_multipart('email/kirim'); ?>
			<tbody>
				<tr>
					<td>To</td>
					<td><input type="email" name="to"></td>
				</tr>
				<tr>
					<td>From</td>
					<td><input type="email" name="from"></td>
				</tr>
				<tr>
					<td>Subject / judul</td>
					<td><input type="text" name="subject"></td>	
				</tr>
				<tr>
					<td>Pesan / Isi</td> 
					<td><textarea name="isi"></textarea></td>	
				</tr>
				<tr>
					<td>Attachment</td> 
					<td><input type="file" name="lampiran[]"></td>	
				</tr>
				<tr>
					<td>Attachment</td> 
					<td><input type="file" name="lampiran[]"></td>	
				</tr>
				<tr>
					<td></td> 
					<td><input type="submit" value="Kirim"></td>	
				</tr>
			</tbody>
			<?php echo form_close();?>
		</table>
		<span>jangan lupa kunjungi <a href="http://blog.microtrafh.com/">http://blog.microtrafh.com/</a></span>
	</body>
</html>			