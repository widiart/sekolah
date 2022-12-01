
<section class="berita">
    <div class="container">

    <div class="section-title">
        <h2>Berita Terbaru</h2>
    </div>
    
    <div class="row content">
        <?php
        foreach($berita as $isi):
        ?>
            <div class="col-lg-4 pt-4 pt-lg-0">
                <a class="berita" href="<?= base_url("home/berita/$isi->id/$isi->judul")?>">
                    <div class="card text-black">
                        <img src="<?= base_url($isi->thumbnail)?>" class="img-fluid" alt="">
                        <div class="card-body">
                            <h5 class="card-title text-center fs-4"><?= $isi->judul?></h5>
                            <p class="card-text text-left mt-3 fs-6">
                                <?= substr(strip_tags($isi->isi),0,126) ?> ...
                            </p>
                        </div>
                    </div>
                </a>
            </div>
        <?php
        endforeach;
        ?>
        <div class="col-lg-12 mt-4">
            <a class="btn btn-primary float-end" href="">Berita Lainnya</a>
        </div>
    </div>

    </div>
</section>

<section class="about">
    <div class="container">

    <div class="section-title">
        <h2>Visi & Misi</h2>
    </div>
    
    <div class="row content">
        <p class="text-center">
            <blockquote class="blockquote text-center"><?=$about['visi']?></blockquote>
        </p>
        <div class="offset-lg-3 col-lg-6 pt-4 pt-lg-0">
            <p class="text-center">
                Adapun Misi Sekolah
            </p>
            <ul>
                <?php
                foreach(json_decode($about['misi'],true) as $misi):
                ?>
                    <li><i class="ri-check-double-line"></i><?=$misi?></li>
                <?php
                endforeach;
                ?>
            </ul>
        </div>
    </div>

    </div>
</section>

<section class="recent-photos">
    <div class="container">

    <div class="section-title">
        <h2>Guru</h2>
        <p>Daftar Guru yang sangat kompeten dalam bidangnya.</p>
    </div>

    <div class="recent-photos-slider swiper">
        <div class="swiper-wrapper align-items-center">
            <?php foreach($guru as $isi): ?>
                <div class="swiper-slide">
                    <div class="card">
                        <a href="<?= base_url($isi->foto)?>" class="glightbox">
                            <img src="<?= base_url($isi->foto)?>" class="img-fluid" alt="">
                        </a>
                        <div class="card-body">
                            <h5 class="card-title text-center"><?=$isi->nama_jabatan?></h5>
                            <p class="card-text text-center"><?=$isi->nama?></p>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
        <div class="swiper-pagination"></div>
    </div>

    </div>
</section>
