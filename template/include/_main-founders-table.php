<?php
$queryTable = "SELECT * FROM gpucategory";
$queryResult = select($queryTable);
?>
<div class="main-table-founders">
  <table class="vendor-table">
    <tr>
      <th>Назва Категорії</th>
      <th class="th-img"><span class="material-symbols-outlined">
          image
        </span></th>
      <th>Founders</th>
      <th>Графічний Чіп</th>
      <th>Тип Памʼяті</th>
      <th>Обʼєм Памяті</th>
      <th>Ширина Шини</th>
    </tr>

    <?php
    $out = '';
    for ($i = 0; $i < count($queryResult); $i++) {
      $out .= '<tr>';
      $out .= '<td><a class="vendor-link bold" href="/gpudb/' . $queryResult[$i]['url'] . '">' . $queryResult[$i]['title'] . '</a></td>';
      $out .= '<td><img class="vendor-mini-img" src="/static/images/gpucat/' . $queryResult[$i]['img'] . '"></td>';
      $out .= '<td>' . $queryResult[$i]['found'] . '</td>';
      $out .= '<td class="bold">' . $queryResult[$i]['graph-processor'] . '</td>';
      $out .= '<td>' . $queryResult[$i]['memory-type'] . '</td>';
      $out .= '<td class="bold">' . $queryResult[$i]['memory-size'] . ' GB' . '</td>';
      $out .= '<td>' . $queryResult[$i]['bus-width'] . ' bit' . '</td>';
      $out .= '</tr>';
    }
    echo $out;
    ?>

  </table>
</div>