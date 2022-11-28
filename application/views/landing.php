<!DOCTYPE html>
<html lang="en">

<head>
	<?php $this->load->view('/template/landing/head') ?>
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
    <div class="container d-flex align-items-center justify-content-between">

      <h1 class="logo"><a href="<?= base_url('') ?>"><?= NAV_BRAND ?></a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

	  <?php $this->load->view('/template/landing/nav') ?>

    </div>
  </header><!-- End Header -->

  <?php
	if(!empty($home)) {
		$this->load->view('/template/landing/slider');
	} 
  ?>
  
  <main id="main">
	  <?php $this->load->view($page) ?>
  </main><!-- End #main -->

  <?php $this->load->view('/template/landing/footer') ?>

</body>

</html>