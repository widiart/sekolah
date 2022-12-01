
<section>
    <div class="container">

    <div class="section-title">
        <h2><?=$inventaris->nama?></h2>
    </div>
    
    <div class="row content">
        <div class="col-lg-12 pt-0">
            <div class="text-black">
                <div class="container">
                    <div class="text-center">
                        <img src="<?= base_url($inventaris->foto) ?>" class="img-fluid" alt="">
                    </div>
                    <div class="mt-3">
                        <table class="table table-responsive">
                            <tr>
                                <td>Jenis Ruang</td>
                                <td class="px-2"> : </td>
                                <td><?=$inventaris->nama_jenis?></td>
                            </tr>
                            <tr>
                                <td>Panjang</td>
                                <td class="px-2"> : </td>
                                <td><?=$inventaris->panjang?> Meter</td>
                            </tr>
                            <tr>
                                <td>Lebar</td>
                                <td class="px-2"> : </td>
                                <td><?=$inventaris->lebar?> Meter</td>
                            </tr>
                            <tr>
                                <td>Kondisi Pencahayaan</td>
                                <td class="px-2"> : </td>
                                <td><?=$inventaris->pencahayaan?></td>
                            </tr>
                            <tr>
                                <td>Kondisi Udara</td>
                                <td class="px-2"> : </td>
                                <td><?=$inventaris->udara?></td>
                            </tr>
                            <tr>
                                <td>Kondisi Bangunan</td>
                                <td class="px-2"> : </td>
                                <td><?=$inventaris->bangunan?></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-12 mt-4">
            <a class="btn btn-primary float-end" href="<?=base_url('data/inventaris')?>">Inventaris Lainnya</a>
        </div>
    </div>

</section>