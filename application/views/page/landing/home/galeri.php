<section>
    <div class="container">

    <div class="section-title">
        <h5>Beranda</h5>
        <h2>Gallery</h2>
    </div>
    
    <div class="row content">
        <?php
        foreach($galeri as $isi):
        ?>
            <div class="col-lg-3 pt-5">
                <div class="card">
                    <a href="<?= base_url($isi->file)?>" class="glightbox">
                        <img src="<?= base_url($isi->file)?>" class="img-fluid" alt="">
                    </a>
                    <div class="card-body">
                        <h5 class="card-title text-center"><?=$isi->judul?></h5>
                        <p class="card-text text-center"><?=$isi->keterangan?></p>
                    </div>
                </div>
            </div>
        <?php
        endforeach;
        ?>
    </div>

</section>