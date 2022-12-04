<div class="pagetitle">
    <h1><?= $form['title'] ?> <?= $form['subtitle'] ?></h1>
    <nav>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="<?= base_url('/') ?>">Home</a></li>
            <li class="breadcrumb-item"><a href="<?= base_url('/admin/guru') ?>"><?= $form['subtitle'] ?></a></li>
            <li class="breadcrumb-item active"><?= $form['title'] ?></li>
        </ol>
    </nav>
</div><!-- End Page Title -->

<section class="section">
    <div class="card">
        <div class="card-body">
            <div class="row mb-3">
                <div class="col-6">
                    <h5 class="card-title">Data Guru</h5>
                </div>
                <div class="col-6 mt-3">
                    <a href="<?= base_url("admin/guru/hapus/{$guru->id}") ?>" class="btn btn-danger btn-sm float-end">
                        <i class="bi bi-trash me-1"></i>
                        Hapus Data
                    </a>
                    <a href="<?= base_url("admin/guru/update/{$guru->id}") ?>" class="btn btn-info btn-sm float-end mx-3">
                        <i class="bi bi-pencil-square me-1"></i>
                        Update Data
                    </a>
                </div>
            </div>
            <!-- Bordered Table -->
            <table class="table table-bordered">
                <tbody>
                    <tr>
                        <td>NUPTK</td>
                        <td><?= $guru->nuptk ?></td>
                    </tr>
                    <tr>
                        <td>NIK</td>
                        <td><?= $guru->nik ?></td>
                    </tr>
                    <tr>
                        <td>Nama Lengkap</td>
                        <td><?= $guru->nama ?></td>
                    </tr>
                    <tr>
                        <td>Jabatan</td>
                        <td><?= $guru->nama_jabatan ?></td>
                    </tr>
                    <tr>
                        <td>Jenis Kelamin</td>
                        <td><?= $guru->jk == 'L' ? 'Laki-laki' : 'Perempuan' ?></td>
                    </tr>
                    <tr>
                        <td>Tempat, Tanggal Lahir</td>
                        <td><?= "{$guru->tempat_lahir}, {$guru->tanggal_lahir}" ?></td>
                    </tr>
                    <tr>
                        <td>Alamat</td>
                        <td><?= $guru->alamat ?></td>
                    </tr>
                    <tr>
                        <td>Foro</td>
                        <td><img src="<?= base_url($guru->foto) ?>" alt=""></td>
                    </tr>
                </tbody>
            </table>
            <!-- End Bordered Table -->

        </div>
    </div>
</section>