<?php require_once 'template/header.php'; ?>

<!-- VENDOR ARTICLE
ВИВІД ПОВНОГО МАТЕРІАЛУ VENDOR -->

<main class="main">

  <?php
  $out = '';
  $out .= '<h1 class="title">' . $result['title'] . '</h1>';
  $out .= '<div class="part-num">' . $result['part-num'] . '</div>';
  $out .= '<img class="responsive-img gpudb-img" src="/static/images/vendor/' . $result['img'] . '">';
  $out .= '<ul class="spec-list">';
  $out .= '<li>' . $result['graph-processor'] . '</li>';
  $out .= '<li>' . $result['cores'] . '</li>';
  $out .= '<li>' . $result['tmus'] . '</li>';
  $out .= '<li>' . $result['rops'] . '</li>';
  $out .= '<li>' . $result['memory-size'] . ' ' . 'gb' . '</li>';
  $out .= '<li>' . $result['memory-type'] . '</li>';
  $out .= '<li>' . $result['bus-width'] . ' ' . '<span>bit</span>' . '</li>';
  $out .= '</ul>';
  $out .= '<div>' . $result['description'] . '</div>';

  echo $out;
  ?>

</main>

<?php require_once 'template/footer.php'; ?>