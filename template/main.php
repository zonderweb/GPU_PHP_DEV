<?php require_once 'template/header.php'; ?>

<!-- MAIN PAGE TEMPLATE
виведення матеріалів статей на головній сторінці -->

<main class="main">
  <h1 class="title">GPU DataBase</h1>
  <?php require_once 'template/include/_main-founders-table.php' ?>
  <div class="article-title">
    <h1>Останні статті</h1>
  </div>
  <div class="article-row">
    <?php
    $out = '';
    for ($i = 0; $i < count($result); $i++) {
      $out .= '<div class="article-item">';
      $out .= '<div><img class="img-article-title" src="/static/images/' . $result[$i]['image'] . '"></div>';
      $out .= '<a class="article-item-link" href="/article/' . $result[$i]['url'] . '">' . $result[$i]['title'] . '</a>';
      $out .= '</div>';
    }
    echo $out;
    ?>
  </div>
</main>

<?php require_once 'template/footer.php'; ?>