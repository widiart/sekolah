<!DOCTYPE html>
<html lang="en">

<head>
  <?php $this->load->view('/template/admin/head') ?>
</head>

<body>

  <?php $this->load->view('/template/admin/topmenu') ?>
  
  <?php $this->load->view('/template/admin/sidemenu') ?>

  <main id="main" class="main">

  <?php $this->load->view($page,[]) ?>

  </main><!-- End #main -->

  <?php $this->load->view('/template/admin/footer') ?>

</body>

</html>