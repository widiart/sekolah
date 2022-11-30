
<!-- ======= Footer ======= -->
<footer id="footer">
  <div class="container">
    <div class="copyright">
      &copy; Copyright <strong><span><?= PAGE_TITLE ?></span></strong>. All Rights Reserved
    </div>
  </div>
</footer><!-- End Footer -->

<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<!-- Vendor JS Files -->
<script src="<?= base_url("assets/vendor/bootstrap/js/bootstrap.bundle.min.js") ?>"></script>
<script src="<?= base_url("assets/vendor/glightbox/js/glightbox.min.js") ?>"></script>
<script src="<?= base_url("assets/vendor/isotope-layout/isotope.pkgd.min.js") ?>"></script>
<script src="<?= base_url("assets/vendor/swiper/swiper-bundle.min.js") ?>"></script>
<script src="<?= base_url("assets/vendor/php-email-form/validate.js") ?>"></script>
<script src="<?= base_url("assets/js/video.min.js") ?>"></script>

<!-- Template Main JS File -->
<script src="<?= base_url("assets/js/main.js") ?>"></script>

<?php
  if(!empty($this->customJs)) {
    echo $this->customJs;
  }
?>