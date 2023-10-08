<?php

// ВИВЕДЕННЯ СПИСКУ СТАТЕЙ НА ГОЛОВНІЙ СТОРІНЦІ
function getMainData()
{
  global $result;
  $out = '';
  for ($i = 0; $i < count($result); $i++) {
    $out .= '<div class="column">';
    $out .= '<img class="img-title" src="/static/images/' . $result[$i]['image'] . '" width=285>';
    $out .= '<h3 class="title title-main">' . $result[$i]['title'] . '</h3>';
    $out .= '<p>' . $result[$i]['descr_min'] . '</p>';
    $out .= '<div><a href="/article/' . $result[$i]['url'] . '">Читати далі</a></div>';
    $out .= '</div>';
  }
  return $out;
}

// ВИВЕДЕННЯ ПОВНОЇ СТАТТІ
function getArticleFull()
{
  global $result;

  $out = '';
  $out .= '<div class="row">';
  $out .= '<h3>' . $result['title'] . '</h3>';
  $out .= '<img class="img-title" src="/static/images/' . $result['image'] . '" width=380>';
  $out .= '<div>' . $result['description'] . '</div>';
  $out .= '</div>';
  return $out;
}

// ВИВЕДЕННЯ КАТЕГОРІЇ
function getCategoryData()
{
  global $cat;

  $out = '';
  $out .= '<div class="row">';
  $out .= '<h3><span>Категорія: </span>' . $cat['title'] . '</h3>';
  $out .= '<div>' . $cat['description'] . '</div>';
  $out .= '</div>';
  return $out;
}

// ВИВЕДЕННЯ СТАТЕЙ В АДМІН ПАНЕЛІ
function articleAdmin()
{
  global $result;
  $out = '';
  for ($i = 0; $i < count($result); $i++) {
    $out .= '<div class="admin-article-item">';
    $out .= '<div class="a-img-area">';
    $out .= '<img class="img-admin-article" src="/static/images/' . $result[$i]['image'] . '">';
    $out .= '</div>';
    $out .= '<div class="a-title-area">';
    $out .= '<h3 class="admin-article-title">' . $result[$i]['title'] . '</h3>';
    $out .= '<span class="admin-article-subtitle">' . $result[$i]['descr_min'] . '</span>';
    $out .= '</div>';
    $out .= '<div class="a-link-area">';
    $out .= '<a class="article-edit" title="Редагувати матеріал" href="/admin/update/' . $result[$i]['id'] . '" onclick="return confirm(\'Точно оновити?\')">Редагувати <span class="material-symbols-outlined">edit_square</span></a>';
    $out .= '<a class="article-del" title="Видалити матеріал" href="/admin/delete/' . $result[$i]['id'] . '" onclick="return confirm(\'Точно видалити?\')"><span class="material-symbols-outlined">delete_forever</span></a>';
    $out .= '</div>';
    $out .= '</div>';
  }
  return $out;
}

function explodeURL($url)
{
  return explode('/', $url ?? '');
}

function getArticle($url, $table)
{
  $query = "SELECT * FROM " . $table . " WHERE url='" . $url . "'";
  if (isset(select($query)[0])) return select($query)[0];
  else header('Location: /404.php');
}

function getCategory($url, $table)
{
  $query = "SELECT * FROM " . $table . " WHERE url='" . $url . "'";
  if (isset(select($query)[0])) return select($query)[0];
  else header('Location: /404.php');
}

function getCategoryArticle($cid, $table)
{
  $query = "SELECT * FROM " . $table . " WHERE cid='" . $cid . "'";
  if (select($query) != NULL) return select($query);
}

function getVendor($cid, $table)
{
  $query = "SELECT * FROM " . $table . " WHERE cid='" . $cid . "' ORDER BY vendor";
  if (select($query) != NULL) return select($query);
}

function isLoginExist($login)
{
  $query = "SELECT id FROM users WHERE login = '" . $login . "'";
  $result = select($query);
  if (count($result) === 0) return false;
  return true;
}

function createUser($login, $password)
{
  $password = md5(md5(trim($password)));
  $login = trim($login);
  $query = "INSERT INTO users SET login = '" . $login . "', password='" . $password . "'";
  return execQuery($query);
}

function login($login, $password)
{
  $password = md5(md5(trim($password)));
  $login = trim($login);
  $query = "SELECT id, login FROM users WHERE login = '" . $login . "' AND password='" . $password . "'";
  $result = select($query);
  if (count($result) != 0) return $result;
  return false;
}

function generateCode($length = 7)
{
  $chars = "qwertyuiopasdfghjklQWERTYUIOPASDFGHJKL1234567890";
  $code = "";
  $clen = strlen($chars) - 1;
  while (strlen($code) < $length) {
    $code .= $chars[mt_rand(0, $clen)];
  }
  return $code;
}

function updateUser($id, $hash, $ip)
{
  if (is_null($ip)) {
    $query = "UPDATE users SET hash = '" . $hash . "' WHERE id = " . $id;
  } else {
    $query = "UPDATE users SET hash = '" . $hash . "', ip = INET_ATON('" . $ip . "') WHERE id = " . $id;
  }
  return execQuery($query);
}

function getUser()
{
  if (isset($_COOKIE['id']) and isset($_COOKIE['hash'])) {
    $query = "SELECT id, login, hash, INET_NTOA(ip) as ip FROM users WHERE id = " . intval($_COOKIE['id']) . " LIMIT 1";
    $user = select($query);
    if (count($user) === 0) {
      return false;
    } else {
      $user = $user[0];
      if ($user['hash'] !== $_COOKIE['hash']) {
        clearCookies();
        return false;
      }
      if (!is_null($user['ip'])) {
        if ($user['ip'] !== $_SERVER['REMOTE_ADDR']) {
          clearCookies();
          return false;
        }
      }
      $_GET['login'] = $user['login'];
      return true;
    }
  } else {
    clearCookies();
    return false;
  }
}

function clearCookies()
{
  setcookie('id', "", time() - 60 * 60 * 24 * 30, "/");
  setcookie('hash', "", time() - 60 * 60 * 24 * 30, "/", null, null, true);
  unset($_GET['login']);
}

function createArticle($title, $url, $descr_min, $description, $cid, $image)
{
  $query = "INSERT INTO info (title, url, descr_min, description, cid, image) VALUES ('" . $title . "', '" . $url . "', '" . $descr_min . "', '" . $description . "', " . $cid . ", '" . $image . "')";
  return execQuery($query);
}

function createArticleGpu($title, $url, $description, $cid, $vendor, $gpuClock, $boostClock, $image)
{
  $query = "INSERT INTO gpuarticle (title, url, description, cid, vendor, `gpu-clock`, `boost-clock`, img) VALUES ('" . $title . "', '" . $url . "', '" . $description . "', " . $cid . ", '" . $vendor . "', " . $gpuClock . ", " . $boostClock . ", '" . $image . "')";
  return execQuery($query);
}

function updateArticle($id, $title, $url, $descr_min, $description, $cid, $image)
{
  $query = "UPDATE info SET title = '" . $title . "', url = '" . $url . "', descr_min = '" . $descr_min . "', description = '" . $description . "', cid = " . $cid . ", image = '" . $image . "' WHERE id =" . $id;
  return execQuery($query);
}

function logout()
{
  clearCookies();
  header("Location: /");
  exit;
}

function catMenu($classList, $subUrl, $tableName, $url, $title)
{
  $query = "SELECT * FROM $tableName";
  $result = select($query);
  $out = '';
  for ($i = 0; $i < count($result); $i++) {
    $out .= '<li><a href="/' . $subUrl . '/' . $result[$i][$url] . '">' . $result[$i][$title] . '</a></li>';
  }
  return "<ul class=" . $classList . ">$out</ul>";
}
