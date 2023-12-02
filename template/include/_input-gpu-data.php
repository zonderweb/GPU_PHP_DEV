<div class="form-area">
  <div class="data-form">
    <form action="" method="POST" enctype="multipart/form-data">
      <div class="data-grid">
        <div class="data-item">
          <div class="data-img-upload">
            <?php
            if (isset($result['img']) and $result['img'] != '') {
              echo '<img class="data-img-core" src="/static/images/vendor/' . $result['img'] . '">';
            }
            ?>
            <p>Upload photo:<br> <input class="upl-img" type="file" name="image"></p>
          </div>
        </div>
        <div class="data-item">
          <p>Title: * <input type="text" name="title" value="<?php if (isset($result['title'])) echo $result['title']; ?>"></p>
          <p>URL: *<input type="text" name="url" value="<?php if (isset($result['url'])) echo $result['url']; ?>"></p>
          <p>Part NUM: <input type="text" name="part-num" value="<?php if (isset($result['part-num'])) echo $result['part-num']; ?>"></p>
          <div class="double-inpt">
            <p class="vendor-p">Vendor: <input type="text" name="vendor" value="<?php if (isset($result['vendor'])) echo $result['vendor']; ?>"></p>
            <p class="cat-select">Select category:<br>
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
          </div>
        </div>
        <div class="data-item">
          <div class="double-inpt">
            <p class="g-clock">GPU Clock:<br> <input type="number" name="gpu-clock" value="<?php if (isset($result['gpu-clock'])) echo $result['gpu-clock']; ?>"></p>
            <p class="boost-clock">Boost Clock:<br> <input type="number" name="boost-clock" value="<?php if (isset($result['boost-clock'])) echo $result['boost-clock']; ?>"></p>
          </div>
          <div class="double-inpt">
            <p class="memory-clock">Memory Clock:<br> <input type="number" name="memory-clock" value="<?php if (isset($result['memory-clock'])) echo $result['memory-clock']; ?>"></p>
            <p class="cores">Cores:<br> <input type="number" name="cores" value="<?php if (isset($result['cores'])) echo $result['cores']; ?>"></p>
          </div>
          <div class="double-inpt">
            <p class="tmus">Tmus:<br> <input type="number" name="tmus" value="<?php if (isset($result['tmus'])) echo $result['tmus']; ?>"></p>
            <p class="rops">Rops:<br> <input type="number" name="rops" value="<?php if (isset($result['rops'])) echo $result['rops']; ?>"></p>
          </div>
          <p class="other-ch">Other Changes: <input type="text" name="other-change" value="<?php if (isset($result['other-change'])) echo $result['other-change']; ?>"></p>
        </div>
        <div class="data-item">
          <div class="double-inpt">
            <p class="g-proc">G Processor: <input type="text" name="graph-processor" value="<?php if (isset($result['graph-processor'])) echo $result['graph-processor']; ?>"></p>
            <p class="m-size">Memory Size:<br> <input type="number" name="memory-size" value="<?php if (isset($result['memory-size'])) echo $result['memory-size']; ?>"></p>
          </div>
          <div class="double-inpt">
            <p class="m-type">Memory type: <input type="text" name="memory-type" value="<?php if (isset($result['memory-type'])) echo $result['memory-type']; ?>"></p>
            <p class="bus-w">Bus Width:<br> <input type="number" name="bus-width" value="<?php if (isset($result['bus-width'])) echo $result['bus-width']; ?>"></p>
          </div>
          <p>TDP (W):<br> <input type="number" name="tdp" value="<?php if (isset($result['tdp'])) echo $result['tdp']; ?>"></p>
          <p>Rec. PSU (W):<br> <input type="number" name="psu" value="<?php if (isset($result['psu'])) echo $result['psu']; ?>"></p>
        </div>
      </div>
      <p class="description-data-text">Description: <textarea name="description"><?php if (isset($result['description'])) echo $result['description']; ?></textarea>
      </p>

      <div class="btn-create-gpu"><input type="submit" name="submit" value="<?php echo $action; ?>"></div>
    </form>
  </div>
</div>