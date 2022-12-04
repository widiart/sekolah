<section>
    <div class="container">

        <div class="section-title">
            <h5>Osis</h5>
            <h2>Pengurus OSIS</h2>
        </div>

        <div class="row content">
            <?php
            foreach ($pengurus as $isi) :
            ?>
                <div class="col-lg-3 pt-5">
                    <div class="card">
                        <a href="<?= base_url($isi->foto) ?>" class="glightbox">
                            <img src="<?= base_url($isi->foto) ?>" class="img-fluid" width="600" height="600" alt="">
                        </a>
                        <div class="card-body">
                            <h5 class="card-title text-center"><?= $isi->nama ?></h5>
                            <p class="card-text text-center"><?= $isi->nama_jabatan ?></p>
                        </div>
                    </div>
                </div>
            <?php
            endforeach;
            ?>
        </div>

</section>