<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" rel="stylesheet" />
  <link rel="stylesheet" href="/static/css/style.css">
  <title>GPU DEV</title>
</head>

<body>

  <div class="grid-container">
    <header class="header">
      <div class="logo">
        <a href="/" class="logo-link">dataBase<span>.</span></a>
      </div>

      <div class="header-menu">
        <ul class="root-nav">
          <li><a href="/">Головна</a></li>
          <li>
            <span class="drop-item-menu">База Данних</span>
            <ul class="root-nav-submenu">
              <?php echo catMenu('gpudb', 'gpucategory', 'url', 'title') ?>
            </ul>
          </li>
          <?php echo CatMenu('cat', 'category', 'url', 'title'); ?>
        </ul>
      </div>

      <div class="login-menu">
        <ul class="login-list dev-list">
          <li class="login-item">
            <span class="material-symbols-outlined">account_circle</span>
          </li>
          <li class="login-item">
            <a href="/login" class="login-link">Вхід</a>
          </li>
          <li class="login-item">
            <a href="/register" class="login-link reg-link">Регістрація</a>
          </li>
        </ul>
      </div>
    </header>