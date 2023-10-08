<!-- 
  ADMIN INDEX TEMPLATE 
-->
<div class="admin-article-wrapper">
  <div class="statistic">
    <div class="static-item">
      <h3 class="title-staistic">
        <a href="/admin/db-gpu">База Відеокарт</a>
      </h3>
      <div class="count-article c-red">
        <?php echo count($resultGpu) ?>
      </div>
      <p class="info-statistic c-red">
        Кількість матеріалів
      </p>
      <p class="info-sub">Completed: <span><?php echo count($resultGpu) ?></span></p>
    </div>

    <div class="static-item">
      <h3 class="title-staistic">
        <a href="/admin/blog-part">Блогова Частина</a>
      </h3>
      <div class="count-article">
        <?php echo count($result) ?>
      </div>
      <p class="info-statistic">
        Кількість матеріалів
      </p>
      <p class="info-sub">Completed: <span><?php echo count($result) ?></span></p>
    </div>

    <div class="static-item">
      <h3 class="title-staistic">
        <a href="/admin/db-gpu"><span class="c-orange">База</span> Відеокарт</a>
      </h3>
      <div class="count-article c-orange">
        <a href="admin/gpu-create"><span class="material-symbols-outlined">add</span></a>
      </div>
      <p class="info-statistic c-orange">
        Створити матеріал
      </p>
      <p class="info-sub">К-сть матеріалів: <span><?php echo count($resultGpu) ?></span></p>
    </div>

    <div class="static-item">
      <h3 class="title-staistic">
        <a href="/admin/db-gpu"><span class="c-blue">Блогова</span> Частина</a>
      </h3>
      <div class="count-article c-blue">
        <a href="admin/create"><span class="material-symbols-outlined">add</span></a>
      </div>
      <p class="info-statistic c-blue">
        Створити матеріал
      </p>
      <p class="info-sub">К-сть матеріалів: <span><?php echo count($result) ?></span></p>
    </div>

  </div>
</div>