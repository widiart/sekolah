<div class="pagetitle">
    <h1><?= $form['title'] ?> <?= $form['subtitle'] ?></h1>
    <nav>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="<?= base_url('/') ?>">Home</a></li>
            <li class="breadcrumb-item"><a href="<?= base_url('/admin/pengumuman') ?>"><?= $form['subtitle'] ?></a></li>
            <li class="breadcrumb-item active"><?= $form['title'] ?></li>
        </ol>
    </nav>
</div><!-- End Page Title -->

<section class="section">
    <div class="card">
        <div class="card-body">
            <div class="row mb-3">
                <div class="col-6">
                    <h5 class="card-title">Data pengumuman</h5>
                </div>
                <div class="col-6 mt-3">
                    <a href="<?= base_url("admin/pengumuman/hapus/{$pengumuman->id}") ?>" class="btn btn-danger btn-sm float-end">
                        <i class="bi bi-trash me-1"></i>
                        Hapus Data
                    </a>
                    <a href="<?= base_url("admin/pengumuman/update/{$pengumuman->id}") ?>" class="btn btn-info btn-sm float-end mx-3">
                        <i class="bi bi-pencil-square me-1"></i>
                        Update Data
                    </a>
                </div>
            </div>
            <!-- Bordered Table -->
            <table class="table table-bordered">
                <tbody>
                    <tr>
                        <td>Judul Pengumuman</td>
                        <td><?= $pengumuman->judul ?></td>
                    </tr>
                    <tr>
                        <td>Tanggal Dibuat</td>
                        <td><?= date("d M Y", strtotime($pengumuman->create_date)) ?></td>
                    </tr>
                    <tr>
                        <td>Isi Pengumuman</td>
                        <td><?= $pengumuman->isi ?></td>
                    </tr>
                    <tr>
                        <td>Foto</td>
                        <td><img src="<?= base_url($pengumuman->thumbnail) ?>" alt="" width="250px"></td>
                    </tr>
                </tbody>
            </table>
            <!-- End Bordered Table -->

        </div>
    </div>
</section>