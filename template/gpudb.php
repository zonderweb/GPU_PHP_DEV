<?php require_once 'template/header.php'; ?>

<!-- GPUDB CATEGORY
ВИВІД КАТЕГОРІЇ gpudb -->

<main class="main">
  <?php
  $out = '';

  $out .= '<h1 class="title">' . $gpudb['title'] . '</h1>';
  $out .= '<img class="responsive-img gpudb-img" src="/static/images/gpucat/' . $gpudb['img'] . '">';

  $out .= '<ul class="spec-list">';
  $out .= '<li>' . $gpudb['g-proc'] . '</li>';
  $out .= '<li>' . $gpudb['cores'] . '</li>';
  $out .= '<li>' . $gpudb['tmus'] . '</li>';
  $out .= '<li>' . $gpudb['rops'] . '</li>';
  $out .= '<li>' . $gpudb['msize'] . ' ' . 'gb' . '</li>';
  $out .= '<li>' . $gpudb['mtype'] . '</li>';
  $out .= '<li>' . $gpudb['busw'] . ' ' . '<span>bit</span>' . '</li>';
  $out .= '</ul>';
  $out .= '<p>' . $gpudb['description'] . '</p>';

  echo $out;
  ?>
</main>



<?php require_once 'template/footer.php'; ?>