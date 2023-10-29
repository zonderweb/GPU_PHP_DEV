<div class="admin-article-wrapper">
  <div class="admin-article-item p-25">
    <table class="list-category-admin">
      <tr>
        <th>Категорія</th>
        <th class="th-ico-center"><span class="material-symbols-outlined">image</span></th>
        <th>Виробник</th>
        <th>Графічний чіп</th>
        <th>Тип памяті</th>
        <th class="w-10">Редагувати</th>
        <th class="w-10">Видалити</th>
      </tr>
      <?php
      $out = '';
      for ($i = 0; $i < count($listGpuCat); $i++) {
        $out .= '<tr>';
        $out .= '<td><span class="bold-600">' . $listGpuCat[$i]['title'] . '</span></td>';
        $out .= '<td><span><img class="table-img" src=/static/images/gpucat/' . $listGpuCat[$i]['img'] . '></span></td>';
        $out .= '<td><span class="text-u">' . $listGpuCat[$i]['found'] . '</span></td>';
        $out .= '<td><span>' . $listGpuCat[$i]['graph-processor'] . '</span></td>';
        $out .= '<td><span>' . $listGpuCat[$i]['memory-type'] . '</span></td>';
        $out .= '<td class="war-edit"><a class="edit-cat" href="edit-cat/' . $listGpuCat[$i]['id'] . '" onclick="return confirm(\'Точно оновити?\')"><span class="material-symbols-outlined">edit</span></a></td>';
        $out .= '<td class="war-del"><a class="del-cat" href="delete-category/' . $listGpuCat[$i]['id'] . '" onclick="return confirm(\'Точно видалити?\')"><span class="material-symbols-outlined">remove_selection</span></a></td>';
        $out .= '</tr>';
      }
      echo $out;
      ?>
    </table>
  </div>
</div>