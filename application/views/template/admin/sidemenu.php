<!-- ======= Sidebar ======= -->
<aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">

        <li class="nav-item">
            <a class="nav-link  <?= uri_string() == 'admin' ? '' : 'collapsed' ?>" href="<?= base_url('admin') ?>">
                <i class="bi bi-grid"></i>
                <span>Dashboard</span>
            </a>
        </li><!-- End Dashboard Nav -->

        <li class="nav-heading">Data</li>

        <li class="nav-item">
            <a class="nav-link  <?= uri_string() == 'admin/guru' ? '' : 'collapsed' ?>" href="<?= base_url('admin/guru') ?>">
                <i class="bi bi-journal-richtext"></i>
                <span>Guru</span>
            </a>
        </li><!-- End Dashboard Nav -->
        <li class="nav-item">
            <a class="nav-link  <?= uri_string() == 'admin/siswa' ? '' : 'collapsed' ?>" href="<?= base_url('admin/siswa') ?>">
                <i class="bi bi-journal-text"></i>
                <span>Siswa</span>
            </a>
        </li><!-- End Dashboard Nav -->

        <li class="nav-heading">Lainnya</li>

        <li class="nav-item">
            <a class="nav-link  <?= uri_string() == 'admin/pengumuman' ? '' : 'collapsed' ?>" href="<?= base_url('admin/pengumuman') ?>">
                <i class="bi bi-card-list"></i>
                <span>Pengumuman</span>
            </a>
        </li><!-- End Dashboard Nav -->
        <li class="nav-item">
            <a class="nav-link  <?= uri_string() == 'admin/unduhan' ? '' : 'collapsed' ?>" href="<?= base_url('admin/unduhan') ?>">
                <i class="bi bi-download"></i>
                <span>Unduhan</span>
            </a>
        </li><!-- End Dashboard Nav -->

    </ul>

</aside><!-- End Sidebar-->