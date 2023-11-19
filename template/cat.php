<?php require_once 'template/header.php'; ?>
<!-- CATEGORY PAGE TEMPLATE -->
<main class="main">
  <div class="cat-wrapper">
    <div class="cat-main-content">
      <?php
      echo getMainData();
      ?>
    </div>
    <div class="cat-sidebar">
      <div class="sidebar-item">
        <?php echo getCategoryData(); ?>
      </div>
      <div class="sidebar-item">
        <h3 class="sidebar-title">Категорії</h3>
        <?php
        // Виведення меню категорій
        echo catMenu('sidebar-cat-menu', 'cat', 'category', 'url', 'title');
        ?>
      </div>
      <div class="sidebar-item">
        <h3 class="sidebar-title mb-15">Останні плати</h3>
        <?php require_once 'template/include/_sidebar_vendor.php' ?>
      </div>
    </div>
  </div>
</main>
<?php require_once 'template/footer.php'; ?>