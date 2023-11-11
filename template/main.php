<?php require_once 'template/header.php'; ?>

<!-- MAIN PAGE TEMPLATE
виведення матеріалів статей на головній сторінці -->

<main class="main">
  <h1 class="title">GPU DataBase</h1>
  <?php require_once 'template/include/_main-founders-table.php' ?>
  <div class="article-title">
    <h2>Останні відеоадаптери від вендорів</h2>
  </div>
  <div class="article-row">
    <?php
    $queryTable = "SELECT vendor, url, title, img FROM gpuarticle";
    $queryVendors = select($queryTable);

    $vendorOut = '';
    for ($i = 0; $i < 4; $i++) {
      $vendorOut .= '<div class="article-item">';
      $vendorOut .= '<span class="vendor-label vendor-title"><span class="material-symbols-outlined">star</span>' . $queryVendors[$i]['vendor'] . '</span>';
      $vendorOut .= '<div><img class="img-article-title" src="/static/images/vendor/' . $queryVendors[$i]['img'] . '"></div>';
      $vendorOut .= '<a class="article-item-link" href="/vendor/' . $queryVendors[$i]['url'] . '">' . $queryVendors[$i]['title'] . '</a>';
      $vendorOut .= '</div>';
    }
    echo $vendorOut;
    ?>
  </div>
  <div class="article-title">
    <h2>Останні статті</h2>
  </div>
  <div class="article-row">
    <?php
    $out = '';
    for ($i = 0; $i < 4; $i++) {
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