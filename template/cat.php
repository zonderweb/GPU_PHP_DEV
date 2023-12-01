<?php require_once 'template/header.php'; ?>
<!-- CATEGORY PAGE TEMPLATE -->
<main class="main">

  <!-- BREADCRUMBS -->
  <div class="breadcrumbs">
    <ul class="breadcrumbs-items">
      <li class="breadcrumbs-item">
        <a href="/">Головна</a>
        <span class="material-symbols-outlined">navigate_next</span>
      </li>
      <li class="breadcrumbs-item">
        <?php echo breadcrumbsArticleName('category') ?>
      </li>
    </ul>
  </div>

  <div class="cat-wrapper">
    <div class="cat-main-content">
      <?php echo getMainData(); ?>
    </div>
    <div class="cat-sidebar">
      <div class="sidebar-item">
        <?php echo getCategoryData(); ?>
      </div>
      <div class="sidebar-item">
        <h3 class="sidebar-title">Категорії</h3>
        <ul class="sidebar-cat-menu">
          <?php
          // Виведення меню категорій
          echo catMenu('cat', 'category', 'url', 'title');
          ?>
        </ul>
      </div>
      <div class="sidebar-item">
        <h3 class="sidebar-title mb-15">Останні плати</h3>
        <?php require_once 'template/include/_sidebar_vendor.php' ?>
      </div>
    </div>
  </div>
</main>
<?php require_once 'template/footer.php'; ?>