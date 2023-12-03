<!--  ADMIN LIST DB GPU TEMPLATE  -->
<div class="admin-vendors-data">
  <div class="vendors-header-row vendors-header-style">
    <div class="vendor-pic"></div>
    <div class="retail-name">Retail</div>
    <div class="vendor-name">Vendor</div>
    <div class="p-number">Part Num.</div>
    <div class="btn-edit-data-item">Details</div>
  </div>

  <?php
  $out = '';
  for ($i = 0; $i < count($resultGpu); $i++) {
    $out .= '<div class="vendors-header-row vendors-data-list-style">';
    $out .= '<div class="vendor-pic"><img src="/static/images/vendor/' . $resultGpu[$i]['img'] . '"></div>';
    $out .= '<div class="retail-name">' . $resultGpu[$i]['title'] . '</div>';
    $out .= '<div class="vendor-name">' . $resultGpu[$i]['vendor'] . '</div>';
    $out .= '<div class="p-number">' . $resultGpu[$i]['part-num'] . '</div>';
    $out .= '<div class="btn-edit-data-item">';
    $out .= '<a href="/admin/gpu-update/' . $resultGpu[$i]['id'] . '" >Edit</a>';
    $out .= '<a class="delete-item" title="Видалити матеріал" href="/admin/delete-vendor/' . $resultGpu[$i]['id'] . '" onclick="return confirm(\'Точно видалити?\')">Delete</a>';
    $out .= '</div>';
    $out .= '</div>';
  }
  echo $out;
  ?>
</div>