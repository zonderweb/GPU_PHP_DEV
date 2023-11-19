<footer class="footer">
  <div class="footer-container">
    <?php
    if ($route[0] != 'cat' and $route[0] != 'article') {
      require_once 'template/include/_cat_menu.php';
    }
    ?>
    <div class="footer-section">
      <h3>dataBase GPU</h3>
      <?php echo catMenu('test', 'gpudb', 'gpucategory', 'url', 'title'); ?>
    </div>
  </div>
</footer>
</div>

</body>

</html>