<!-- 
  ADMIN DB GPU TEMPLATE 
-->

<div class="admin-article-wrapper">
  <?php
  $out = '';
  for ($i = 0; $i < count($resultGpu); $i++) {
    $out .= '<div class="admin-article-item">';
    $out .= '<div class="a-img-area">';
    $out .= '<img class="img-admin-article" src="/static/images/vendor/' . $resultGpu[$i]['img'] . '">';
    $out .= '</div>';
    $out .= '<div class="a-title-area">';
    $out .= '<h3 class="admin-article-title">' . $resultGpu[$i]['title'] . '</h3>';
    $out .= '<span class="admin-article-subtitle">' . $resultGpu[$i]['part-num'] . '</span>';
    $out .= '</div>';
    $out .= '<div class="a-link-area">';
    $out .= '<a class="article-edit" title="Редагувати матеріал" href="/admin/gpu-update/' . $resultGpu[$i]['id'] . '" onclick="return confirm(\'Точно оновити?\')">Редагувати <span class="material-symbols-outlined">edit_square</span></a>';
    $out .= '<a class="article-del" title="Видалити матеріал" href="/admin/delete/' . $resultGpu[$i]['id'] . '" onclick="return confirm(\'Точно видалити?\')"><span class="material-symbols-outlined">delete_forever</span></a>';
    $out .= '</div>';
    $out .= '</div>';
  }
  echo $out;
  ?>
</div>