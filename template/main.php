<?php require_once 'template/header.php'; ?>

<!-- MAIN PAGE TEMPLATE
вывод материалов статей на главной -->
<?php echo '<h1 class="title is-1">Платформа для вивчення коду</h1>'; ?>
<div class="columns">
  <?php echo getMainData(); ?>
</div>

<?php require_once 'template/cat_menu.php'; ?>


<?php require_once 'template/footer.php'; ?>