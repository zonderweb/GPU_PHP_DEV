<div class="form-area">
  <div class="form-container">
    <form action="" method="POST" enctype="multipart/form-data">
      <p>Назва (Title): <input type="text" name="title" value="<?php if (isset($result['title'])) echo $result['title']; ?>"></p>
      <p>URL: <input type="text" name="url" value="<?php if (isset($result['url'])) echo $result['url']; ?>"></p>
      <p>Опис: <textarea name="description"><?php if (isset($result['description'])) echo $result['description']; ?></textarea></p>
      <div class="btn-create-gpu"><input type="submit" name="submit" value="<?php echo $action; ?>"></div>
    </form>
  </div>
</div>