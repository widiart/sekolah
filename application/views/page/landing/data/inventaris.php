
<section>
    <div class="container">

    <div class="section-title">
        <h5>Data</h5>
        <h2>Inventaris</h2>
    </div>
    
    <div class="row content">
        <?php
        foreach($inventaris as $isi):
        ?>
            <div class="col-lg-12 pt-5">
                <div class="card text-black">
                    <div class="row">
                        <div class="col-lg-3">
                            <img src="<?= base_url($isi->foto) ?>" class="img-fluid" alt="">
                        </div>
                        <div class="col-lg-9">
                            <div class="card-body px-0">
                                <h5 class="card-title text-left fs-4"><?=$isi->nama?></h5>
                                <p class="card-text text-left mt-3 fs-6">
                                    <table>
                                        <tr>
                                            <td>Jenis Ruang</td>
                                            <td class="px-2"> : </td>
                                            <td><?=$isi->nama_jenis?></td>
                                        </tr>
                                        <tr>
                                            <td>Panjang</td>
                                            <td class="px-2"> : </td>
                                            <td><?=$isi->panjang?> Meter</td>
                                        </tr>
                                        <tr>
                                            <td>Lebar</td>
                                            <td class="px-2"> : </td>
                                            <td><?=$isi->lebar?> Meter</td>
                                        </tr>
                                    </table>
                                </p>
                                <div class="float-end" style="margin-top:-10px;margin-right:20px">
                                    <a class="btn btn-primary" href="<?=base_url("data/inventaris/$isi->id/$isi->nama")?>">Lihat Detail</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <?php
        endforeach;
        ?>
    </div>

</section>