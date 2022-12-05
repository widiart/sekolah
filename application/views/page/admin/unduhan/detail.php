<div class="pagetitle">
    <h1><?= $form['title'] ?> <?= $form['subtitle'] ?></h1>
    <nav>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="<?= base_url('/') ?>">Home</a></li>
            <li class="breadcrumb-item"><a href="<?= base_url('/admin/unduhan') ?>"><?= $form['subtitle'] ?></a></li>
            <li class="breadcrumb-item active"><?= $form['title'] ?></li>
        </ol>
    </nav>
</div><!-- End Page Title -->

<section class="section">
    <div class="card">
        <div class="card-body">
            <div class="row mb-3">
                <div class="col-6">
                    <h5 class="card-title">Data Unduhan</h5>
                </div>
                <div class="col-6 mt-3">
                    <a href="<?= base_url("admin/unduhan/hapus/{$unduhan->id}") ?>" class="btn btn-danger btn-sm float-end">
                        <i class="bi bi-trash me-1"></i>
                        Hapus Data
                    </a>
                    <a href="<?= base_url("admin/unduhan/update/{$unduhan->id}") ?>" class="btn btn-info btn-sm float-end mx-3">
                        <i class="bi bi-pencil-square me-1"></i>
                        Update Data
                    </a>
                </div>
            </div>
            <!-- Bordered Table -->
            <table class="table table-bordered">
                <tbody>
                    <tr>
                        <td>Judul File</td>
                        <td><?= $unduhan->judul ?></td>
                    </tr>
                    <tr>
                        <td>Tanggal Dibuat</td>
                        <td><?= date("d M Y", strtotime($unduhan->create_date)) ?></td>
                    </tr>
                    <tr>
                        <td>Keterangan</td>
                        <td><?= $unduhan->keterangan ?></td>
                    </tr>
                    <tr>
                        <td>File</td>
                        <td><?= $unduhan->file ?></td>
                    </tr>
                </tbody>
            </table>
            <!-- End Bordered Table -->

        </div>
    </div>
</section>