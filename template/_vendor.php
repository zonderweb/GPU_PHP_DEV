<div class="vendor">
  <h2>Vendor</h2>
  <?php
  $res = '';
  for ($i = 0; $i < count($result); $i++) {
    $res .= '<div>';
    $res .= '<a class="vendor-link" href="/vendor/' . $result[$i]['url'] . '">' . $result[$i]['title'] . '</a>';
    $res .= '</div>';
  }
  echo $res;
  ?>
</div>