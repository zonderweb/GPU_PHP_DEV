<!-- // 
ADMIN PAGE TEMPLATE 
// -->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" rel="stylesheet" />
    <link rel="stylesheet" href="/static/css/admin.css">
    <title>ADMIN | GPU Dev </title>
</head>

<body>
    <?php
    if (!getUser()) {
        header("Location: /login");
    }
    if (@$route[1] == '') $title = '<span class="material-symbols-outlined">dashboard</span>' . 'Dashboard';
    if (@$route[1] == 'blog-part') $title = '<span class="material-symbols-outlined">article</span>' . 'Блогова Частина';
    if (@$route[1] == 'db-gpu') $title = '<span class="material-symbols-outlined">developer_board</span>' . 'База Вендорів Відеокарт';
    if (@$route[1] == 'gpu-create') $title = '<span class="material-symbols-outlined">draw</span>' . 'Створити новий запис в "Базі Вендорів Відеокарт"';
    if (@$route[1] == 'create') $title = '<span class="material-symbols-outlined">draw</span>' . 'Створити новий матеріал в основних категоріях';
    if (@$route[1] == 'gpu-update' or @$route[1] == 'update') $title = '<span class="material-symbols-outlined">edit_square</span>' . 'Редагувати матеріал';
    if (@$route[1] == 'create-cat') $title = '<span class="material-symbols-outlined">draw</span>' . 'Створити нову категорію';
    if (@$route[1] == 'admin-list-cat') $title = '<span class="material-symbols-outlined">list</span>' . 'Список категорій';
    if (@$route[1] == 'edit-cat') $title = '<span class="material-symbols-outlined">list</span>' . 'Редагувати категорію';
    if (@$route[1] == 'cat-list-gpu') $title = '<span class="material-symbols-outlined">list</span>' . 'Список категорій Бази Відеокарт';
    ?>
    <div class="admin-area">
        <div class="left-area">
            <div class="left-dashboard">
                <div class="logo">
                    <a href="/" target="_blank" class="logo-link">GPU<span>.dataBase</span></a>
                </div>

                <div class="left-menu">
                    <h3 class="left-dash-title"><a href="/admin">Головна</a></h3>
                    <span class="left-dash-subtitle">Адмін панель</span>
                    <ul class="m-left-list">
                        <li class="m-left-item">
                            <a href="/admin"><span class="material-symbols-outlined">dashboard</span>Загальний звіт</a>
                        </li>
                    </ul>
                </div>

                <div class="left-menu">
                    <h3 class="left-dash-title"><a href="/admin/db-gpu">Матеріали Бази Відеокарт</a></h3>
                    <span class="left-dash-subtitle">База данних</span>
                    <ul class="m-left-list">
                        <li class="m-left-item">
                            <a href="/admin/cat-list-gpu"><span class="material-symbols-outlined">list_alt</span>Список Категорій</a>
                        </li>
                        <li class="m-left-item">
                            <a href="/admin/"><span class="material-symbols-outlined">add_box</span>Створити Категорію</a>
                        </li>
                        <li class="m-left-item">
                            <a href="/admin/db-gpu"><span class="material-symbols-outlined">list_alt</span>Список Матеріалів</a>
                        </li>
                        <li class="m-left-item">
                            <a href="/admin/gpu-create"><span class="material-symbols-outlined">add_box</span>Створити матеріал</a>
                        </li>
                    </ul>
                </div>

                <div class="left-menu">
                    <h3 class="left-dash-title"><a href="/admin/blog-part">Блог</a></h3>
                    <span class="left-dash-subtitle">Огляди та статті</span>
                    <ul class="m-left-list">
                        <li class="m-left-item">
                            <a href="/admin/admin-list-cat"><span class="material-symbols-outlined">list_alt</span>Список Категорій</a>
                        </li>
                        <li class="m-left-item">
                            <a href="/admin/create-cat"><span class="material-symbols-outlined">add_box</span>Створити Категорію</a>
                        </li>
                        <li class="m-left-item">
                            <a href="/admin/blog-part"><span class="material-symbols-outlined">list_alt</span>Список Матеріалів</a>
                        </li>
                        <li class="m-left-item">
                            <a href="/admin/create"><span class="material-symbols-outlined">add_box</span>Створити матеріал</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <header class="admin-header">
            <div class="header-top">
                <h1 class="title title-h1">Адміністративна панель</h1>
                <a class="logout" href="/logout">Вихід <span class="material-symbols-outlined">logout</span></a>
            </div>
            <div class="header-bottom">
                <div class="header-container">
                    <h2 class="admin-subtitle"><?php echo $title; ?></h2>
                </div>
            </div>

        </header>
        <main class="admin-main">
            <div class="main-container">

                <?php
                switch ($route) {
                    case (@$route[1] == ''):
                        require_once 'template/include/_admin-index.php';
                        break;
                    case ($route[1] == 'db-gpu'):
                        require_once 'template/include/_admin-db-gpu.php';
                        break;
                    case ($route[1] == 'blog-part'):
                        require_once 'template/include/_admin-blog.php';
                        break;
                    case ($route[0] == 'admin' and @$route[1] === 'gpu-create'):
                        if (getUser()) {
                            $query = "SELECT id, title FROM gpucategory";
                            $category = select($query);
                            require_once 'template/gpu-create.php';
                        }
                        break;
                    case ($route[0] == 'admin' and @$route[1] === 'gpu-update' and isset($route[2])):
                        if (getUser()) {
                            $query = "SELECT id, title FROM gpucategory";
                            $category = select($query);
                            $query = "SELECT * FROM gpuarticle WHERE id = " . $route[2];
                            $result = select($query)[0];
                            require_once 'template/gpu-update.php';
                        }
                        break;
                        //Create Category
                    case ($route[0] == 'admin' and @$route[1] === 'create-cat'):
                        if (getUser()) {
                            require_once 'template/create-cat.php';
                        }
                        break;
                        //Create Category END
                        //Create list Category
                    case ($route[0] == 'admin' and @$route[1] === 'admin-list-cat'):
                        if (getUser()) {
                            $query = "SELECT * FROM category";
                            $listCat = select($query);
                            require_once 'template/admin-list-cat.php';
                        }
                        break;
                        //Create list Category END
                        //EDIT Category
                    case ($route[0] == 'admin' and @$route[1] === 'edit-cat' and isset($route[2])):
                        if (getUser()) {
                            $query = "SELECT id, title FROM category";
                            $category = select($query);
                            $query = "SELECT * FROM category WHERE id = " . $route[2];
                            $editCat = select($query)[0];
                            require_once 'template/admin-cat-update.php';
                        }
                        break;
                        // EDIT Category END
                    case ($route[0] == 'admin' and @$route[1] === 'create'):
                        if (getUser()) {
                            $query = "SELECT id, title FROM category";
                            $category = select($query);
                            require_once 'template/create.php';
                        }
                        break;
                    case ($route[0] == 'admin' and @$route[1] === 'update' and isset($route[2])):
                        if (getUser()) {
                            $query = "SELECT id, title FROM category";
                            $category = select($query);
                            $query = "SELECT * FROM info WHERE id = " . $route[2];
                            $result = select($query)[0];
                            require_once 'template/update.php';
                        }
                        break;
                    case ($route[0] == 'admin' and @$route[1] === 'cat-list-gpu'):
                        if (getUser()) {
                            $query = "SELECT * FROM gpucategory";
                            $listGpuCat = select($query);
                            require_once 'template/cat-list-gpu.php';
                        }
                        break;
                    default:
                        require_once 'template/include/_admin404.php';
                }
                ?>

            </div>
        </main>
    </div>
</body>

</html>