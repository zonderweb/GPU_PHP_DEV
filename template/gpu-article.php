<?php require_once 'template/header.php'; ?>

<!-- VENDOR ARTICLE
ВИВЕДЕННЯ ПОВНОГО МАТЕРІАЛУ VENDOR -->

<main class="main">
  <!-- BREADCRUMBS -->
  <div class="breadcrumbs">
    <ul class="breadcrumbs-items">
      <li class="breadcrumbs-item">
        <a href="/">Головна</a>
        <span class="material-symbols-outlined">navigate_next</span>
      </li>
      <li class="breadcrumbs-item breadcrumbs-category">
        <?php echo breadcrumbsCategoryName('gpucategory', 'gpuarticle', 'gpudb') ?>
        <span class="material-symbols-outlined">navigate_next</span>
      </li>
      <li class="breadcrumbs-item">
        <?php echo breadcrumbsArticleName('gpuarticle') ?>
      </li>
    </ul>
  </div>

  <?php
  $out = '';
  $out .= '<div class="wrap-category">';
  $out .= '<div class="left-category-side">';
  $out .= '<img class="responsive-img gpudb-img" src="/static/images/vendor/' . $result['img'] . '">';
  $out .= '</div>';
  $out .= '<div class="rigth-category-side bg-gray b-radius-1">';
  $out .= '<h1 class="title"><span>Retail</span> ' . $result['title'] . '</h1>';
  $out .= '<div class="part-num"><span>Part Number: </span>' . $result['part-num'] . '</div>';
  $out .= '<table class="category-item-info">';
  $out .= '<tbody>';
  $out .= '<tr>';
  $out .= '<td class="bold">Vendor</td>';
  $out .= '<td><span class="vendor-btn">' . $result['vendor'] . '</span></td>';
  $out .= '</tr>';
  $out .= '<tr>';
  $out .= '<td class="bold">Графічний Чіп</td>';
  $out .= '<td>' . $result['graph-processor'] . '</td>';
  $out .= '</tr>';
  $out .= '<tr>';
  $out .= '<td class="bold">К-сть Ядер</td>';
  $out .= '<td>' . $result['cores'] . '</td>';
  $out .= '</tr>';
  $out .= '<tr>';
  $out .= '<td class="bold">Tmus</td>';
  $out .= '<td>' . $result['tmus'] . '</td>';
  $out .= '</tr>';
  $out .= '<tr>';
  $out .= '<td class="bold">Rops</td>';
  $out .= '<td>' . $result['rops'] . '</td>';
  $out .= '</tr>';
  $out .= '<tr>';
  $out .= '<td class="bold">Обʼєм памʼяті</td>';
  $out .= '<td>' . $result['memory-size'] . ' GB</td>';
  $out .= '</tr>';
  $out .= '<tr>';
  $out .= '<td class="bold">Тип памʼяті</td>';
  $out .= '<td>' . $result['memory-type'] . '</td>';
  $out .= '</tr>';
  $out .= '<tr>';
  $out .= '<td class="bold">Ширина шини</td>';
  $out .= '<td>' . $result['bus-width'] . ' bit</td>';
  $out .= '</tr>';
  $out .= '<tr>';
  $out .= '<td class="bold">GPU Clock</td>';
  $out .= '<td>' . $result['gpu-clock'] . ' Mhz</td>';
  $out .= '</tr>';
  $out .= '</tbody>';
  $out .= '<tr>';
  $out .= '<td class="bold">Boost Clock</td>';
  $out .= '<td>' . $result['boost-clock'] . ' Mhz' . ' ' . '<span class="c-red mar-left-5 percent">' . percent($result['gpu-clock'], $result['boost-clock']) . '</span></td>';
  $out .= '</tr>';
  $out .= '<tr>';
  $out .= '<td class="bold">Memory Clock</td>';
  $out .= '<td>' . $result['memory-clock'] . ' Mhz</td>';
  $out .= '</tr>';
  $out .= '<tr>';
  $out .= '<td class="bold">Особливості</td>';
  $out .= '<td>' . $result['other-change'] . '</td>';
  $out .= '</tr>';
  $out .= '<td class="bold">TDP</td>';
  $out .= '<td>' . $result['tdp'] . ' W</td>';
  $out .= '</tr>';
  $out .= '<tr>';
  $out .= '<td class="bold">Suggested PSU</td>';
  $out .= '<td>' . $result['psu'] . ' W</td>';
  $out .= '</tr>';
  $out .= '</tbody>';
  $out .= '</table>';
  $out .= '</div>';
  $out .= '</div>';
  $out .= '<div class="content-gpudb">' . $result['description'] . '</div>';
  echo $out;
  ?>

</main>

<?php require_once 'template/footer.php'; ?>