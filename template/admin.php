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
    ?>
    <div class="admin-area">
        <div class="left-area">
            <div class="left-dashboard">
                <div class="logo">
                    <a href="/" target="_blank" class="logo-link">GPU<span>.dataBase</span></a>
                </div>
                <div class="left-menu">
                    <h3 class="left-dash-title">Матеріали</h3>
                    <span class="left-dash-subtitle">Блогова частина</span>
                    <ul class="m-left-list">
                        <li class="m-left-item">
                            <a href="/admin/create"><span class="material-symbols-outlined">add_box</span>Створити матеріал</a>
                        </li>
                    </ul>
                </div>

                <div class="left-menu">
                    <h3 class="left-dash-title">Матеріали Бази Відеокарт</h3>
                    <span class="left-dash-subtitle">База данних</span>
                    <ul class="m-left-list">
                        <li class="m-left-item">
                            <a href="/admin/create"><span class="material-symbols-outlined">add_box</span>Створити матеріал</a>
                        </li>
                    </ul>
                </div>

                <div class="left-menu">
                    <h3 class="left-dash-title">Статистика</h3>
                    <span class="left-dash-subtitle">Статистичні данні по БД</span>
                    <ul class="m-left-list">
                        <li class="m-left-item">
                            <a href="#"><span class="material-symbols-outlined">monitoring</span>Загальний звіт</a>
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
                    header-bottom
                </div>
            </div>

        </header>
        <main class="admin-main">
            <div class="main-container">
                <div class="admin-article-wrapper">
                    <?php echo articleAdmin(); ?>
                </div>
            </div>
        </main>
    </div>
</body>

</html>