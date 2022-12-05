<div class="pagetitle">
    <h1><?= $form['title'] ?> <?= $form['subtitle'] ?></h1>
    <nav>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="<?= base_url('/') ?>">Home</a></li>
            <li class="breadcrumb-item"><a href="<?= base_url('/admin/siswa') ?>"><?= $form['subtitle'] ?></a></li>
            <li class="breadcrumb-item active"><?= $form['title'] ?></li>
        </ol>
    </nav>
</div><!-- End Page Title -->

<section class="section">
    <div class="card">
        <div class="card-body">
            <div class="row mb-3">
                <div class="col-6">
                    <h5 class="card-title">Data Siswa</h5>
                </div>
                <div class="col-6 mt-3">
                    <a href="<?= base_url("admin/siswa/hapus/{$siswa->id}") ?>" class="btn btn-danger btn-sm float-end">
                        <i class="bi bi-trash me-1"></i>
                        Hapus Data
                    </a>
                    <a href="<?= base_url("admin/siswa/update/{$siswa->id}") ?>" class="btn btn-info btn-sm float-end mx-3">
                        <i class="bi bi-pencil-square me-1"></i>
                        Update Data
                    </a>
                </div>
            </div>
            <!-- Bordered Table -->
            <table class="table table-bordered">
                <tbody>
                    <tr>
                        <td>NISN</td>
                        <td><?= $siswa->nisn ?></td>
                    </tr>
                    <tr>
                        <td>NIK</td>
                        <td><?= $siswa->nik ?></td>
                    </tr>
                    <tr>
                        <td>Tahun Masuk</td>
                        <td><?= $siswa->tahun_masuk ?></td>
                    </tr>
                    <tr>
                        <td>Nama Lengkap</td>
                        <td><?= $siswa->nama ?></td>
                    </tr>
                    <tr>
                        <td>Kelas</td>
                        <td><?= $siswa->nama_kelas ?></td>
                    </tr>
                    <tr>
                        <td>Jenis Kelamin</td>
                        <td><?= $siswa->jk == 'L' ? 'Laki-laki' : 'Perempuan' ?></td>
                    </tr>
                    <tr>
                        <td>Tempat, Tanggal Lahir</td>
                        <td><?= "{$siswa->tempat_lahir}, {$siswa->tanggal_lahir}" ?></td>
                    </tr>
                    <tr>
                        <td>Alamat</td>
                        <td><?= $siswa->alamat ?></td>
                    </tr>
                    <tr>
                        <td>Foto</td>
                        <td><img src="<?= base_url($siswa->foto) ?>" alt="" width="150px"></td>
                    </tr>
                </tbody>
            </table>
            <!-- End Bordered Table -->

        </div>
    </div>
</section>