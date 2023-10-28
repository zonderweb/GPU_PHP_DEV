<div class="form-area">
  <div class="form-container">
    <form action="" method="POST" enctype="multipart/form-data">
      <p>Назва Категорії (Title): <input type="text" name="title" value="<?php if (isset($editCat['title'])) echo $editCat['title']; ?>"></p>
      <p>URL: <input type="text" name="url" value="<?php if (isset($editCat['url'])) echo $editCat['url']; ?>"></p>
      <p>Опис: <textarea name="description"><?php if (isset($editCat['description'])) echo $editCat['description']; ?></textarea></p>
      <div class="btn-create-gpu"><input type="submit" name="submit" value="<?php echo $action; ?>"></div>
    </form>
  </div>
</div>