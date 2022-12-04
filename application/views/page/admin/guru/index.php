<div class="pagetitle">
    <h1>Data Guru</h1>
    <nav>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="<?= base_url('/') ?>">Home</a></li>
            <li class="breadcrumb-item active">Data Guru</li>
        </ol>
    </nav>
</div><!-- End Page Title -->

<section class="section">
    <div class="card">
        <div class="card-body">
            <div class="row mb-3">
                <div class="col-6">
                    <h5 class="card-title">Daftar Guru</h5>
                </div>
                <div class="col-6 mt-3">
                    <a href="<?= base_url("admin/guru/add") ?>" class="btn btn-info btn-sm float-end">
                        <i class="bi bi-plus-lg me-1"></i>
                        Tambah Baru
                    </a>
                </div>
            </div>
            <!-- Bordered Table -->
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Name</th>
                        <th scope="col">Jabatan</th>
                        <th scope="col">Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $no =  1;
                    foreach ($guru as $isi) :
                    ?>
                        <tr>
                            <th scope="row"><?= $no ?></th>
                            <td><?= $isi->nama ?></td>
                            <td><?= $isi->nama_jabatan ?></td>
                            <td>
                                <a href="<?= base_url('/admin/guru/detail/' . $isi->id) ?>">
                                    <button type="button" class="btn btn-success btn-sm"><i class="bi bi-file-earmark-person me-1" title="Detail"></i></button>
                                </a>
                                <a href="<?= base_url('/admin/guru/update/' . $isi->id) ?>">
                                    <button type="button" class="btn btn-warning btn-sm"><i class="bi bi-pencil-square me-1" title="Ubah"></i></button>
                                </a>
                                <a href="<?= base_url('/admin/guru/hapus/' . $isi->id) ?>">
                                    <button type="button" class="btn btn-danger btn-sm"><i class="bi bi-trash me-1" title="Hapus"></i></button>
                                </a>
                            </td>
                        </tr>
                    <?php
                        $no++;
                    endforeach;
                    ?>
                </tbody>
            </table>
            <!-- End Bordered Table -->

        </div>
    </div>
</section>