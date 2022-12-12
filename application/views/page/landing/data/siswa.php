<section>
    <div class="container">

        <div class="section-title">
            <h5>Data</h5>
            <h2>Siswa</h2>
        </div>

        <div class="row content">
            <div class="col-lg-12 pt-5">
                <div class="card text-black">
                    <div class="card-body px-4">
                        <h5 class="card-title text-left fs-4"></h5>
                        <table class="table table-bordered">
                            <thead class="text-center table-secondary" style="vertical-align: middle;">
                                <tr>
                                    <th width="5%" rowspan="2">No</th>
                                    <th rowspan="2">Nama</th>
                                    <th rowspan="2">Kelas</th>
                                    <th rowspan="2">Jurusan</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $no =  1;
                                foreach ($siswa as $isi) :
                                ?>
                                    <tr>
                                        <th class="text-center"><?= $no ?></th>
                                        <td><?= $isi->nama ?></td>
                                        <td><?= $isi->nama_kelas ?></td>
                                        <td><?= $isi->nama_jurusan ?></td>
                                    </tr>
                                <?php
                                    $no++;
                                endforeach;
                                ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>

</section>