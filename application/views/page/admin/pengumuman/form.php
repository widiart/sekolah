<div class="pagetitle">
    <h1>Tambah Baru Data Pengumuman</h1>
    <nav>
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="<?= base_url('/') ?>">Home</a></li>
            <li class="breadcrumb-item"><a href="<?= base_url('/admin/pengumuman') ?>">Data Pengumuman</a></li>
            <li class="breadcrumb-item active">Tambah Baru</li>
        </ol>
    </nav>
</div><!-- End Page Title -->

<section class="section">
    <div class="row">
        <div class="col-lg-12">

            <div class="card">
                <div class="card-body">
                    <h5 class="card-title text-center mb-3">Form Pengumuman</h5>

                    <!-- General Form Elements -->
                    <?= form_open_multipart($form['action']) ?>
                    <div class="row mb-3">
                        <label for="inputText" class="col-sm-2 col-form-label">Judul</label>
                        <div class="col-sm-10">
                            <input type="text" name="judul" value="<?= get_form_value($form, 'judul') ?>" class="form-control">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="isi" class="col-sm-2 col-form-label">Isi</label>
                        <div class="col-sm-10">
                            <textarea class="form-control" name="isi" style="height: 225px"><?= get_form_value($form, 'isi') ?></textarea>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="formFile" class="col-sm-2 col-form-label">Foto</label>
                        <div class="col-sm-10">
                            <input class="form-control" type="file" name="thumbnail" id="formFile">
                            <?php if (!empty(get_form_value($form, 'thumbnail'))) : ?>
                                <img src="<?= base_url(str_replace(" ", "_", get_form_value($form, 'thumbnail'))) ?>" alt="" width="150px" class="text-center m-3">
                            <?php endif; ?>
                        </div>
                    </div>


                    <div class="row mb-3">
                        <div class="col-sm-12">
                            <button type="submit" name="submit" class="btn btn-primary float-end">Submit</button>
                        </div>
                    </div>

                    </form><!-- End General Form Elements -->

                </div>
            </div>

        </div>
    </div>
</section>