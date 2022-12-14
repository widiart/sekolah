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
    <div class="row">
        <div class="col-lg-12">

            <div class="card">
                <div class="card-body">
                    <h5 class="card-title text-center mb-3">Form Siswa</h5>

                    <!-- General Form Elements -->
                    <?= form_open_multipart($form['action']) ?>
                    <div class="row mb-3">
                        <label for="inputText" class="col-sm-2 col-form-label">NIK</label>
                        <div class="col-sm-10">
                            <input type="number" onKeyDown="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);" maxlength="16" name="nik" value="<?= get_form_value($form, 'nik') ?>" class="form-control" required>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="inputText" class="col-sm-2 col-form-label">NISN</label>
                        <div class="col-sm-10">
                            <input type="number" onKeyDown="javascript: if (this.value.length > this.maxLength) this.value = this.value.slice(0, this.maxLength);" maxlength="16" name="nisn" value="<?= get_form_value($form, 'nisn') ?>" class="form-control" required>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="inputText" class="col-sm-2 col-form-label">Nama Lengkap</label>
                        <div class="col-sm-10">
                            <input type="text" name="nama" value="<?= get_form_value($form, 'nama') ?>" class="form-control" required>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="inputText" class="col-sm-2 col-form-label">Tahun Masuk</label>
                        <div class="col-sm-10">
                            <input type="text" name="tahun_masuk" value="<?= get_form_value($form, 'tahun_masuk') ?>" class="form-control" required>
                        </div>
                    </div>
                    <fieldset class="row mb-3">
                        <legend class="col-form-label col-sm-2 pt-0">Jenis Kelamin</legend>
                        <div class="col-sm-10">
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="jk" id="gridRadios1" value="L" <?= get_form_value($form, 'jk') == 'L' ? 'checked' : '' ?> required>
                                <label class="form-check-label" for="gridRadios1">
                                    Laki-laki
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="jk" id="gridRadios2" value="P" <?= get_form_value($form, 'jk') == 'P' ? 'checked' : '' ?> required>
                                <label class="form-check-label" for="gridRadios2">
                                    Perempuan
                                </label>
                            </div>
                        </div>
                    </fieldset>
                    <div class="row mb-3">
                        <label for="inputText" class="col-sm-2 col-form-label">Tempat Lahir</label>
                        <div class="col-sm-4">
                            <input type="text" name="tempat_lahir" value="<?= get_form_value($form, 'tempat_lahir') ?>" class="form-control" required>
                        </div>
                        <label for="inputText" class="col-sm-2 col-form-label">Tanggal Lahir</label>
                        <div class="col-sm-4">
                            <input type="date" name="tanggal_lahir" value="<?= get_form_value($form, 'tanggal_lahir') ?>" class="form-control" required>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label class="col-sm-2 col-form-label">Kelas</label>
                        <div class="col-sm-10">
                            <select class="form-select" name="id_kelas" aria-label="Default select example" required>
                                <option>Silahkan Pilih Kelas</option>
                                <?php foreach ($ruang as $isi) : ?>
                                    <option value="<?= $isi->id ?>" <?= get_form_value($form, 'id_kelas') == $isi->id ? 'selected' : '' ?>><?= $isi->nama ?></option>
                                <?php endforeach; ?>
                            </select>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="alamat" class="col-sm-2 col-form-label">Alamat</label>
                        <div class="col-sm-10">
                            <textarea class="form-control" name="alamat" style="height: 100px"><?= get_form_value($form, 'alamat') ?></textarea>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label for="formFile" class="col-sm-2 col-form-label">Foto</label>
                        <div class="col-sm-10">
                            <input class="form-control" type="file" name="foto" id="formFile">
                            <?php if (!empty(get_form_value($form, 'foto'))) : ?>
                                <img src="<?= base_url(str_replace(" ", "_", get_form_value($form, 'foto'))) ?>" alt="" width="150px" class="text-center m-3">
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