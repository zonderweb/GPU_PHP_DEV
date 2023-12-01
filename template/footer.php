<footer class="footer">
  <div class="footer-container">
    <?php
    if ($route[0] != 'cat' and $route[0] != 'article') {
      require_once 'template/include/_cat_menu.php';
    }
    ?>
    <div class="footer-section">
      <h3>dataBase GPU</h3>
      <ul class="test">
        <?php echo catMenu('gpudb', 'gpucategory', 'url', 'title'); ?>
      </ul>
    </div>
  </div>
</footer>
</div>

<script src="/static/js/script.js"></script>
</body>

</html>