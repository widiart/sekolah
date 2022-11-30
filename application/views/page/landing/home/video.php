<section>
    <div class="container">

    <div class="section-title">
        <h5>Beranda</h5>
        <h2>Video</h2>
    </div>
    
    <div class="row content">
        <?php
        foreach($video as $isi):
        ?>
            <div class="col-lg-6 pt-5">
                <div class="card">
                    <video
                        class="video-js vjs-fluid vjs-big-play-centered"
                        controls
                        poster="<?= base_url($isi->thumbnail)?>"
                        data-setup="{}"
                    >
                        <source src="<?=base_url($isi->file)?>" type="video/mp4" />
                        
                        <p class="vjs-no-js">
                        To view this video please enable JavaScript, and consider upgrading to a
                        web browser that
                        <a href="https://videojs.com/html5-video-support/" target="_blank"
                            >supports HTML5 video</a
                        >
                        </p>
                    </video>
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