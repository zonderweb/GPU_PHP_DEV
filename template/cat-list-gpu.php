<div class="admin-article-wrapper main-gpu-category-box">
  <div class="admin-article-item p-20">
    <table class="list-category-admin">
      <tr>
        <th>Категорія</th>
        <th>Img</th>
        <th>Виробник</th>
        <th>Графічний чіп</th>
        <th>Action</th>
      </tr>
      <?php
      $out = '';
      for ($i = 0; $i < count($listGpuCat); $i++) {
        $out .= '<tr>';
        $out .= '<td class="table-cat-name">' . $listGpuCat[$i]['title'] . '</td>';
        $out .= '<td><span><img class="table-img" src=/static/images/gpucat/' . $listGpuCat[$i]['img'] . '></span></td>';
        $out .= '<td><span class="text-u">' . $listGpuCat[$i]['found'] . '</span></td>';
        $out .= '<td><span>' . $listGpuCat[$i]['graph-processor'] . '</span></td>';
        $out .= '<td>';
        $out .= '<div class="action-box action-link">';
        $out .= '<a class="view-link" href="/gpudb/' . $listGpuCat[$i]['url'] . '" target="_blank"><span class="material-symbols-outlined">visibility</span></a>';
        $out .= '<a class="update-link" href="update-gpu-cat/' . $listGpuCat[$i]['id'] . '" onclick="return confirm(\'Точно оновити?\')"><span class="material-symbols-outlined">edit_note</span></a>';
        $out .= '<a class="delete-link" href="delete-gpu-cat/' . $listGpuCat[$i]['id'] . '" onclick="return confirm(\'Точно видалити?\')"><span class="material-symbols-outlined">delete</span></a>';
        $out .= '</div>';
        $out .= '</td>';
        $out .= '</tr>';
      }
      echo $out;
      ?>
    </table>
  </div>
</div>