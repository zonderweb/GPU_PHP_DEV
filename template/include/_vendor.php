<div class="vendor">
  <h2 class="vendor-title"><span>Vendor</span> dataBase</h2>
  <h3 class="vendor-subtitle">Плати вендорів на основі данного дизайну (<?php echo count($result) ?>)</h3>
  <table class="vendor-table">
    <tr>
      <th>Name</th>
      <th class="th-img"><span class="material-symbols-outlined">
          image
        </span></th>
      <th>GPU Clock</th>
      <th>Boost Clock</th>
      <th>Memory Clock</th>
      <th>Other Changes</th>
    </tr>

    <?php
    $res = '';
    for ($i = 0; $i < count($result); $i++) {
      $res .= '<tr>';
      $res .= '<td><a class="vendor-link" href="/vendor/' . $result[$i]['url'] . '">' . $result[$i]['title'] . '</a></td>';
      $res .= '<td><img class="vendor-mini-img" src="/static/images/vendor/' . $result[$i]['img'] . '"></td>';
      $res .= '<td>' . $result[$i]['gpu-clock'] . ' ' . 'MHz' . '</td>';
      $res .= '<td>' . $result[$i]['boost-clock'] . ' ' . 'MHz' . '</td>';
      $res .= '<td>' . $result[$i]['memory-clock'] . ' ' . 'MHz' . '</td>';
      $res .= '<td>' . $result[$i]['other-change'] . '</td>';
      $res .= '</tr>';
    }
    echo $res;
    ?>

  </table>
</div>