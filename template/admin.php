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
    if ($route[1] == '') $title = 'Головна сторінка';
    if ($route[1] == 'blog-part') $title = 'Блогова Частина';
    if ($route[1] == 'db-gpu') $title = 'База Данних Вендорів Відеокарт';
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
                            <a href="/admin"><span class="material-symbols-outlined">home</span>Загальний звіт</a>
                        </li>
                    </ul>
                </div>

                <div class="left-menu">
                    <h3 class="left-dash-title"><a href="/admin/db-gpu">Матеріали Бази Відеокарт</a></h3>
                    <span class="left-dash-subtitle">База данних</span>
                    <ul class="m-left-list">
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
                    <h2><?php echo $title; ?></h2>
                </div>
            </div>

        </header>
        <main class="admin-main">
            <div class="main-container">

                <?php
                switch ($route) {
                    case ($route[1] == ''):
                        require_once 'template/include/_admin-index.php';
                        break;
                    case ($route[1] == 'db-gpu'):
                        require_once 'template/include/_admin-db-gpu.php';
                        break;
                    case ($route[1] == 'blog-part'):
                        require_once 'template/include/_admin-blog.php';
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