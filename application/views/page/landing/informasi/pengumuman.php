<section>
    <div class="container">

        <div class="section-title">
            <h5>Informasi</h5>
            <h2>Pengumuman</h2>
        </div>

        <div class="row content">
            <?php
            foreach ($pengumuman as $isi) :
            ?>
                <div class="col-lg-12 pt-5">
                    <a class="berita" href="<?= base_url("informasi/pengumuman/$isi->id/$isi->judul") ?>">
                        <div class="card text-black">
                            <div class="row">
                                <div class="col-lg-3">
                                    <img src="<?= base_url($isi->thumbnail) ?>" class="img-fluid" alt="">
                                </div>
                                <div class="col-lg-9">
                                    <div class="card-body px-0">
                                        <h5 class="card-title text-left fs-4"><?= $isi->judul ?></h5>
                                        <p class="card-text text-left mt-3 fs-6">
                                            <?= substr(strip_tags($isi->isi), 0, 256) ?> ...
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            <?php
            endforeach;
            ?>
        </div>

</section>