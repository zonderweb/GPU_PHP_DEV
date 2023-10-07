<?php require_once 'template/header.php'; ?>

<!-- MAIN PAGE TEMPLATE
вывод материалов статей на главной -->

<main class="main">
  <h1 class="title">GPU DataBase</h1>
  <div class="menu-box-category">
    <?php require 'template/include/_founders-menu.php' ?>
  </div>
  <div class="columns">
    <?php echo getMainData(); ?>
  </div>
</main>

<?php require_once 'template/footer.php'; ?>