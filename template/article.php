<!-- ARTICLE PAGE TEMPLATE -->
<?php require_once 'template/header.php'; ?>

<main class="main">
  <div class="cat-wrapper">
    <div class="article-main-content">
      <?php echo getArticleFull(); ?>
    </div>
    <div class="cat-sidebar">
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