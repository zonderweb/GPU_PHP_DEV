<div class="form-area">
  <div class="form-container">
    <form action="" method="POST" enctype="multipart/form-data">
      <p>Title: <input type="text" name="title" value="<?php if (isset($result['title'])) echo $result['title']; ?>"></p>
      <p>URL: <input type="text" name="url" value="<?php if (isset($result['url'])) echo $result['url']; ?>"></p>
      <p>Part NUM: <input type="text" name="part-num" value="<?php if (isset($result['part-num'])) echo $result['part-num']; ?>"></p>
      <p>Vendor: <input type="text" name="vendor" value="<?php if (isset($result['vendor'])) echo $result['vendor']; ?>"></p>
      <p>GPU Clock (MHz):<br> <input type="number" name="gpu-clock" value="<?php if (isset($result['gpu-clock'])) echo $result['gpu-clock']; ?>"></p>
      <p>Boost Clock (MHz):<br> <input type="number" name="boost-clock" value="<?php if (isset($result['boost-clock'])) echo $result['boost-clock']; ?>"></p>
      <p>Memory Clock (MHz):<br> <input type="number" name="memory-clock" value="<?php if (isset($result['memory-clock'])) echo $result['memory-clock']; ?>"></p>
      <p>Graph Processor: <input type="text" name="graph-processor" value="<?php if (isset($result['graph-processor'])) echo $result['graph-processor']; ?>"></p>
      <p>Cores (q):<br> <input type="number" name="cores" value="<?php if (isset($result['cores'])) echo $result['cores']; ?>"></p>
      <p>Tmus (q):<br> <input type="number" name="tmus" value="<?php if (isset($result['tmus'])) echo $result['tmus']; ?>"></p>
      <p>Rops (q):<br> <input type="number" name="rops" value="<?php if (isset($result['rops'])) echo $result['rops']; ?>"></p>
      <p>Memory Size (GB):<br> <input type="number" name="memory-size" value="<?php if (isset($result['memory-size'])) echo $result['memory-size']; ?>"></p>
      <p>Memory type: <input type="text" name="memory-type" value="<?php if (isset($result['memory-type'])) echo $result['memory-type']; ?>"></p>
      <p>Bus Width (bit):<br> <input type="number" name="bus-width" value="<?php if (isset($result['bus-width'])) echo $result['bus-width']; ?>"></p>
      <p>Other Changes: <input type="text" name="other-change" value="<?php if (isset($result['other-change'])) echo $result['other-change']; ?>"></p>
      <p>Description: <textarea name="description"><?php if (isset($result['description'])) echo $result['description']; ?></textarea>
      </p>

      <p>Select category:<br>
        <select name="cid">
          <?php
          $out = '';
          for ($i = 0; $i < count($category); $i++) {
            if ($category[$i]['id'] === $result['cid']) {
              $out .= '<option value="' . $category[$i]['id'] . '" selected>' . $category[$i]['title'] . "</option>";
            } else {
              $out .= '<option value="' . $category[$i]['id'] . '">' . $category[$i]['title'] . "</option>";
            }
          }
          echo $out;
          ?>
        </select>
      </p>
      <div>Photo: <input type="file" name="image"></div>
      <?php
      if (isset($result['img']) and $result['img'] != '') {
        echo '<img src="/static/images/vendor/' . $result['img'] . '" style="width:300px">';
      }
      ?>
      <div class="btn-create-gpu"><input type="submit" name="submit" value="<?php echo $action; ?>"></div>
    </form>
  </div>
</div>