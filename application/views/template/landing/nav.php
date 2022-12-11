
  <nav id="navbar" class="navbar">
    <ul>
      <?php
      foreach(get_landing_menu() as $menu):
        if(empty($menu['child'])) {
          echo '<li><a href="'.base_url($menu['url']).'">'.$menu['nama'].'</a></li>';
        } else {
          echo '<li class="dropdown"><a href="#"><span>'.$menu['nama'].'</span> <i class="bi bi-chevron-down"></i></a>';
          echo '<ul>';
          foreach($menu['child'] as $child):
            echo '<li><a href="'.base_url($child['url']).'">'.$child['nama'].'</a></li>';
          endforeach;
          echo '</ul>';
          echo '</li>';
        }
      endforeach; 
      ?>
      <?php if($this->session->userdata('role') == 'admin'): ?>
        <li><a href="<?=base_url("/admin")?>" class="btn btn-success px-3 py-1 mx-3 text-white">Admin Page</a></li>
      <?php else: ?>
        <li><a href="<?=base_url("/login")?>" class="btn btn-success px-3 py-1 mx-3 text-white">Login</a></li>
      <?php endif; ?>
    </ul>
    <i class="bi bi-list mobile-nav-toggle"></i>
  </nav><!-- .navbar -->