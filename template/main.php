<?php require_once 'template/header.php'; ?>

<!-- MAIN PAGE TEMPLATE
вывод материалов статей на главной -->

<main class="main">
  <h1 class="title">GPU DataBase</h1>
  <div class="menu-box-category">
    <?php require 'template/include/_founders-menu.php' ?>
  </div>
  <!-- <div class="article-row">
    <?php
    // echo getMainData(); 
    ?>
  </div> -->
  <div class="article-title">
    <h1>Останні статті</h1>
  </div>
  <div class="article-row">
    <?php
    $out = '';
    for ($i = 0; $i < count($result); $i++) {
      $out .= '<div class="article-item">';
      $out .= '<div><img class="img-article-title" src="/static/images/' . $result[$i]['image'] . '"></div>';
      // $out .= '<h3 class="main-article-title">' . $result[$i]['title'] . '</h3>';
      // $out .= '<p>' . $result[$i]['descr_min'] . '</p>';
      $out .= '<a class="article-item-link" href="/article/' . $result[$i]['url'] . '">' . $result[$i]['title'] . '</a>';
      $out .= '</div>';
    }
    echo $out;
    ?>

  </div>
</main>

<?php require_once 'template/footer.php'; ?>