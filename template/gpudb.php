<?php require_once 'template/header.php'; ?>

<!-- GPUDB CATEGORY
ВИВІД КАТЕГОРІЇ gpudb -->

<main class="main">
  <?php
  $out = '';
  $out .= '<h1 class="title">' . $gpudb['title'] . '</h1>';
  $out .= '<img class="responsive-img gpudb-img" src="/static/images/gpucat/' . $gpudb['img'] . '">';
  $out .= '<ul class="spec-list">';
  $out .= '<li>' . $gpudb['graph-processor'] . '</li>';
  $out .= '<li>' . $gpudb['cores'] . '</li>';
  $out .= '<li>' . $gpudb['tmus'] . '</li>';
  $out .= '<li>' . $gpudb['rops'] . '</li>';
  $out .= '<li>' . $gpudb['memory-size'] . ' ' . 'gb' . '</li>';
  $out .= '<li>' . $gpudb['memory-type'] . '</li>';
  $out .= '<li>' . $gpudb['bus-width'] . ' ' . '<span>bit</span>' . '</li>';
  $out .= '</ul>';
  $out .= '<div class="content-gpudb">' . $gpudb['description'] . '</div>';
  echo $out;

  if (isset($result)) require_once 'template/_vendor.php';
  ?>
</main>

<?php require_once 'template/footer.php'; ?>