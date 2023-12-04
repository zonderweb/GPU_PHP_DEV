<div class="main-gpu-category-box">
  <form action="" method="POST" enctype="multipart/form-data">

    <div class="gpu-category-input-area">
      <div class="gpu-input-area">
        <p>Title: * <input type="text" name="title" value="<?php if (isset($result['title'])) echo $result['title']; ?>"></p>
        <p>URL: * <input type="text" name="url" value="<?php if (isset($result['url'])) echo $result['url']; ?>"></p>
        <p>Description: <textarea name="description"><?php if (isset($result['description'])) echo $result['description']; ?></textarea>
        <div class="duo-inpt">
          <p>Founders: <input type="text" name="found" value="<?php if (isset($result['found'])) echo $result['found']; ?>"></p>
          <p>Rel. Date: <input type="text" name="date" value="<?php if (isset($result['date'])) echo $result['date']; ?>">
            <span class="grey-marker">for exem. 01-01-2020</span>
          </p>
        </div>
      </div>
      <div class="gpu-input-area">

        <?php
        if (isset($result['img']) and $result['img'] != '') {
          echo '<img class="data-img-core" src="/static/images/gpucat/' . $result['img'] . '">';
        }
        ?>
        <p>Upload photo:<br>
          <label class="pic-field">
            <input type="file" name="image" id="image-gpu">
            <img src="/static/images/svg/add_photo.svg" id="preview-ico" class="preview-img">
          </label>
        <p>Графічний чіп: <input type="text" name="graph-processor" value="<?php if (isset($result['graph-processor'])) echo $result['graph-processor']; ?>"></p>
        <div class="duo-inpt">
          <p>К-сть ядер:<br> <input type="number" name="cores" value="<?php if (isset($result['cores'])) echo $result['cores']; ?>"></p>
          <p>TMUS:<br> <input type="number" name="tmus" value="<?php if (isset($result['tmus'])) echo $result['tmus']; ?>"></p>
        </div>
        <div class="duo-inpt">
          <p>ROPS:<br> <input type="number" name="rops" value="<?php if (isset($result['rops'])) echo $result['rops']; ?>"></p>
          <p>Memory Size (GB):<br> <input type="number" name="memory-size" value="<?php if (isset($result['memory-size'])) echo $result['memory-size']; ?>"></p>
        </div>
        <div class="duo-inpt">
          <p>Memory type: <input type="text" name="memory-type" value="<?php if (isset($result['memory-type'])) echo $result['memory-type']; ?>"></p>
          <p>Bus Width (bit):<br> <input type="number" name="bus-width" value="<?php if (isset($result['bus-width'])) echo $result['bus-width']; ?>"></p>
        </div>
        <div class="duo-inpt">
          <p>TDP (W):<br> <input type="number" name="tdp" value="<?php if (isset($result['tdp'])) echo $result['tdp']; ?>"></p>
          <p>Recomended PSU (W):<br> <input type="number" name="psu" value="<?php if (isset($result['psu'])) echo $result['psu']; ?>"></p>
        </div>
      </div>
    </div>

    <div class="btn-create-gpu"><input type="submit" name="submit" value="<?php echo $action; ?>"></div>

  </form>
</div>