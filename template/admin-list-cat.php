<div class="admin-article-wrapper">
  <div class="admin-article-item p-25">
    <table class="list-category-admin">
      <tr>
        <th class="w-25">Нава</th>
        <th>Опис</th>
        <th class="w-10">Редагувати</th>
        <th class="w-10">Видалити</th>
      </tr>
      <?php
      $out = '';
      for ($i = 0; $i < count($listCat); $i++) {
        $out .= '<tr>';
        $out .= '<td><span class="bold-600">' . $listCat[$i]['title'] . '</span></td>';
        $out .= '<td><span class="size-14">' . $listCat[$i]['description'] . '</span></td>';
        $out .= '<td class="war-edit"><a class="edit-cat" href="edit-cat/' . $listCat[$i]['id'] . '" onclick="return confirm(\'Точно оновити?\')"><span class="material-symbols-outlined">edit</span></a></td>';
        $out .= '<td class="war-del"><a class="del-cat" href="delete-category/' . $listCat[$i]['id'] . '" onclick="return confirm(\'Точно видалити?\')"><span class="material-symbols-outlined">remove_selection</span></a></td>';
        $out .= '</tr>';
      }
      echo $out;
      ?>
    </table>
  </div>
</div>