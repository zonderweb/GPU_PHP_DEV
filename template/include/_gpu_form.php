<div class="form-area">
  <div class="form-container">
    <form action="" method="POST" enctype="multipart/form-data">
      <p>Title: <input type="text" name="title" value="<?php if (isset($result['title'])) echo $result['title']; ?>"></p>
      <p>URL: <input type="text" name="url" value="<?php if (isset($result['url'])) echo $result['url']; ?>"></p>
      <p>Part NUM: <input type="text" name="part-num" value="<?php if (isset($result['partNum'])) echo $result['partNum']; ?>"></p>
      <p>Vendor: <input type="text" name="vendor" value="<?php if (isset($result['vendor'])) echo $result['vendor']; ?>"></p>
      <p>GPU Clock (MHz):<br> <input type="number" name="gpu-clock" value="<?php if (isset($result['gpuClock'])) echo $result['gpuClock']; ?>"></p>
      <p>Boost Clock (MHz):<br> <input type="number" name="boost-clock" value="<?php if (isset($result['boostClock'])) echo $result['boostClock']; ?>"></p>
      <p>Memory Clock (MHz):<br> <input type="number" name="memory-clock" value="<?php if (isset($result['memoryClock'])) echo $result['memoryClock']; ?>"></p>
      <p>Other Changes: <input type="text" name="other-change" value="<?php if (isset($result['otherChange'])) echo $result['otherChange']; ?>"></p>



      <p>Description: <textarea name="description"><?php if (isset($result['description'])) echo $result['description']; ?></textarea>
      </p>


      <p>Category:
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