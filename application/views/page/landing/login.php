<section class="vh-100 mt-5">
  <div class="container-fluid h-custom">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-md-9 col-lg-6 col-xl-5">
        <img src="<?= base_url("assets/img/login.webp") ?>" class="img-fluid" alt="Login image">
      </div>
      <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
        <?= form_open('login/auth') ?>

        <?php if ($this->session->flashdata('login')) : ?>
          <div class="alert alert-danger" role="alert">
            Username atau Password Salah !
          </div>
        <?php endif; ?>

        <div class="form-outline mb-4">
          <label class="form-label" for="form3Example3">Username</label>
          <input type="text" name="username" id="form3Example3" class="form-control form-control-lg" placeholder="Enter Username" />
        </div>

        <div class="form-outline mb-3">
          <label class="form-label" for="form3Example4">Password</label>
          <input type="password" name="password" id="form3Example4" class="form-control form-control-lg" placeholder="Enter password" />
        </div>

        <div class="text-center text-lg-start mt-4 pt-2">
          <button type="submit" name="submit" class="btn btn-primary btn-lg" style="padding-left: 2.5rem; padding-right: 2.5rem;">Login</button>
        </div>

        <?= form_close() ?>
      </div>
    </div>
  </div>
</section>