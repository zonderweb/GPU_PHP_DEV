<div class="form-area">
    <div class="form-container">
        <form action="" method="POST" enctype="multipart/form-data">
            <p>Назва (Title): <input type="text" name="title" value="<?php if (isset($result['title'])) echo $result['title']; ?>"></p>
            <p>URL: <input type="text" name="url" value="<?php if (isset($result['url'])) echo $result['url']; ?>"></p>
            <p>Початковий Опис: <textarea name="descr_min"><?php if (isset($result['descr_min'])) echo $result['descr_min']; ?></textarea></p>
            <p>Повний Опис: <textarea name="description"><?php if (isset($result['description'])) echo $result['description']; ?></textarea>
            </p>
            <p>Категорія:
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
            <div>Зображення: <input type="file" name="image"></div>
            <?php
            if (isset($result['image']) and $result['image'] != '') {
                echo '<img src="/static/images/' . $result['image'] . '" style="width:300px">';
            }
            ?>
            <div class="btn-create-gpu"><input type="submit" name="submit" value="<?php echo $action; ?>"></div>
        </form>
    </div>
</div>