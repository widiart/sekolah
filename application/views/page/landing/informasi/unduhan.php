<section>
    <div class="container">

        <div class="section-title">
            <h5>Informasi</h5>
            <h2>Unduhan</h2>
        </div>

        <div class="row content">
            <?php
            foreach ($unduhan as $isi) :
            ?>
                <div class="col-lg-3 pt-5">
                    <div class="card text-black">
                        <div class="card-header">
                            <div class="card-title text-center fs-5"><?= $isi->judul ?></div>
                        </div>
                        <div class="card-body px-0">
                            <div class="text-center">
                                <img class="mb-3" src="<?= base_url("assets/img/doc.png") ?>" alt=""><br>
                                <a class="btn btn-sm btn-primary" href="<?= base_url("/informasi/download/{$isi->id}/{$isi->judul}") ?>">Unduh</a>
                            </div>
                            <p class="card-text text-left m-3 fs-6">
                                <?= substr(strip_tags($isi->keterangan), 0, 256) ?> ...
                            </p>
                        </div>
                    </div>
                </div>
            <?php
            endforeach;
            ?>
        </div>

</section>