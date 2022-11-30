
<section class="about">
    <div class="container">

    <div class="section-title">
        <h4>Profil</h4>
        <h2>Visi & Misi</h2>
    </div>
    
    <div class="row content">
        <div class="col-lg-12 pt-0">
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