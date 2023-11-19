<?php require_once 'template/header.php'; ?>
<!-- CATEGORY PAGE TEMPLATE -->
<main class="main">
  <div class="cat-wrapper">
    <div class="cat-main-content">
      <?php echo getCategoryData();
      echo getMainData(); ?>
    </div>
    <div class="cat-sidebar">
      <h3 class="sidebar-title">Категорії</h3>
      <?php
      // Виведення меню категорій
      echo catMenu('sidebar-cat-menu', 'cat', 'category', 'url', 'title');
      ?>
    </div>
  </div>
</main>
<?php require_once 'template/footer.php'; ?>