<?php include 'koneksi.php';?>
<center><h2>SISTEM PAKAR UNTUK MENDIAGNOSIS PENYAKIT KUSTA</h2>
<p class="lead">
  Silakan pilih gejala yang Anda rasakan.
</p>

<form class="col-6" method="POST" action="proses.php">
  <div style="overflow: scroll; height: 467px;">
	<?php
	$qry="select * from tb_gejala";
	$data=mysqli_query($kon,$qry);
	while ($d=mysqli_fetch_array($data)) {
	?>
	<div class="input-group mb-3">
  <div class="input-group-prepend">
    <div class="input-group-text">
      <input type="checkbox" aria-label="Checkbox for following text input" value="<?=$d['kode']?>" name="<?=$d['id']?>">
    </div>
  </div>
  <input type="text" class="form-control" aria-label="Text input with checkbox" value="<?=$d['gejala']?>" readonly>
</div>
	<?php
	}
	?>
  </div>
<input type="submit" class="btn btn-primary btn-lg btn-block" name="submit" value="DIAGNOSA">
</form>
</center>
