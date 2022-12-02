<section>
    <div class="container">

        <div class="section-title">
            <h2><?= $agenda->judul ?></h2>
            <h4><?= date('d M Y', strtotime($agenda->create_date)) ?></h4>
        </div>

        <div class="row content">
            <div class="col-lg-12 pt-0">
                <div class="text-black">
                    <div class="container">
                        <div class="text-center">
                            <img src="<?= base_url($agenda->thumbnail) ?>" class="img-fluid" alt="">
                        </div>
                        <div class="mt-3">
                            <?= $agenda->isi ?>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-12 mt-4">
                <a class="btn btn-primary float-end" href="<?= base_url('home/agenda') ?>">Pengumuman Lainnya</a>
            </div>
        </div>

</section>