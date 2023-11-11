<?php require_once 'template/header.php'; ?>

<!-- GPUDB CATEGORY -->

<main class="main">
  <?php
  $out = '';
  $out .= '<div class="wrap-category">';
  $out .= '<div class="left-category-side">';
  $out .= '<img class="responsive-img gpudb-img" src="/static/images/gpucat/' . $gpudb['img'] . '">';
  $out .= '</div>';
  $out .= '<div class="rigth-category-side">';
  $out .= '<h1 class="title"><span>Референс </span>' . $gpudb['title'] . '</h1>';
  $out .= '<table class="category-item-info">';
  $out .= '<tbody>';
  $out .= '<tr>';
  $out .= '<td class="bold">Графічний Чіп</td>';
  $out .= '<td>' . $gpudb['graph-processor'] . '</td>';
  $out .= '</tr>';
  $out .= '<tr>';
  $out .= '<td class="bold">К-сть Ядер</td>';
  $out .= '<td>' . $gpudb['cores'] . '</td>';
  $out .= '</tr>';
  $out .= '<tr>';
  $out .= '<td class="bold">Tmus</td>';
  $out .= '<td>' . $gpudb['tmus'] . '</td>';
  $out .= '</tr>';
  $out .= '<tr>';
  $out .= '<td class="bold">Rops</td>';
  $out .= '<td>' . $gpudb['rops'] . '</td>';
  $out .= '</tr>';
  $out .= '<tr>';
  $out .= '<td class="bold">Обʼєм памʼяті</td>';
  $out .= '<td>' . $gpudb['memory-size'] . ' GB</td>';
  $out .= '</tr>';
  $out .= '<tr>';
  $out .= '<td class="bold">Тип памʼяті</td>';
  $out .= '<td>' . $gpudb['memory-type'] . '</td>';
  $out .= '</tr>';
  $out .= '<tr>';
  $out .= '<td class="bold">Ширина шини</td>';
  $out .= '<td>' . $gpudb['bus-width'] . ' bit</td>';
  $out .= '</tr>';
  $out .= '</tbody>';
  $out .= '</table>';
  $out .= '</div>';
  $out .= '</div>';
  $out .= '<div class="content-gpudb">' . $gpudb['description'] . '</div>';
  echo $out;

  if (isset($result)) require_once 'template/include/_vendor.php';
  ?>
</main>

<?php require_once 'template/footer.php'; ?>