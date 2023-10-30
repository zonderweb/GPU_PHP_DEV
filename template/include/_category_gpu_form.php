<div class="form-area">
  <div class="form-container">
    <form action="" method="POST" enctype="multipart/form-data">
      <p>Title: <input type="text" name="title" value="<?php if (isset($result['title'])) echo $result['title']; ?>"></p>
      <p>URL: <input type="text" name="url" value="<?php if (isset($result['url'])) echo $result['url']; ?>"></p>
      <p>Founders: <input type="text" name="found" value="<?php if (isset($result['found'])) echo $result['found']; ?>"></p>
      <p>Графічний чіп: <input type="text" name="graph-processor" value="<?php if (isset($result['graph-processor'])) echo $result['graph-processor']; ?>"></p>
      <p>К-сть ядер:<br> <input type="number" name="cores" value="<?php if (isset($result['cores'])) echo $result['cores']; ?>"></p>
      <p>TMUS:<br> <input type="number" name="tmus" value="<?php if (isset($result['tmus'])) echo $result['tmus']; ?>"></p>
      <p>ROPS:<br> <input type="number" name="rops" value="<?php if (isset($result['rops'])) echo $result['rops']; ?>"></p>
      <p>Memory Size (GB):<br> <input type="number" name="memory-size" value="<?php if (isset($result['memory-size'])) echo $result['memory-size']; ?>"></p>
      <p>Memory type: <input type="text" name="memory-type" value="<?php if (isset($result['memory-type'])) echo $result['memory-type']; ?>"></p>
      <p>Bus Width (bit):<br> <input type="number" name="bus-width" value="<?php if (isset($result['bus-width'])) echo $result['bus-width']; ?>"></p>
      <p>Description: <textarea name="description"><?php if (isset($result['description'])) echo $result['description']; ?></textarea>
      </p>
      <p>Upload photo:<br> <input class="upl-img" type="file" name="image"></p>
      <?php
      if (isset($result['img']) and $result['img'] != '') {
        echo '<img src="/static/images/gpucat/' . $result['img'] . '" style="width:300px">';
      }
      ?>
      <div class="btn-create-gpu"><input type="submit" name="submit" value="<?php echo $action; ?>"></div>
    </form>
  </div>
</div>