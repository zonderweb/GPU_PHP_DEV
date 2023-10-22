<?php
// if ERROR
ini_set('error_reporting', E_ALL);
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
// ERROR

require_once 'config/db.php';
require_once 'core/function_db.php';
require_once 'core/function.php';
$conn = connect();

$route = NULL;
if (isset($_GET['route'])) $route = $_GET['route']; // NULL
$route = explodeURL($route);

// main - главная страница
// cat - категории
// article - статья

switch ($route) {
  case ($route[0] == ''):
    $query = 'SELECT * FROM info ORDER BY id DESC LIMIT 10';
    $result = select($query);
    require_once 'template/main.php';
    break;
  case ($route[0] == 'article' and isset($route[1])):
    $result = getArticle($route[1], 'info');
    require_once 'template/article.php';
    break;
  case ($route[0] == 'vendor' and isset($route[1])):
    $result = getArticle($route[1], 'gpuarticle');
    require_once 'template/gpu-article.php';
    break;
  case ($route[0] == 'cat' and isset($route[1])):
    $cat = getCategory($route[1], 'category');
    $result = getCategoryArticle($cat['id'], 'info');
    require_once 'template/cat.php';
    break;
    // CAT 2
  case ($route[0] == 'gpudb' and $route[1]):
    $gpudb = getCategory($route[1], 'gpucategory');
    $result = getVendor($gpudb['id'], 'gpuarticle');
    require_once 'template/gpudb.php';
    break; // CAT 2 END
  case ($route[0] == 'register'):
    require_once 'template/register.php';
    break;
  case ($route[0] == 'login'):
    require_once 'template/login.php';
    break;
  case ($route[0] == 'admin' and @$route[1] === 'delete' and isset($route[2])):
    if (getUser()) {
      $query = "DELETE FROM info WHERE id=" . $route[2];
      execQuery($query);
      header("Location: /admin/blog-part");
      exit;
    }
    header("Location: /");
    break;
  case ($route[0] == 'admin' and @$route[1] === 'delete-vendor' and isset($route[2])):
    if (getUser()) {
      $query = "DELETE FROM gpuarticle WHERE id=" . $route[2];
      execQuery($query);
      header("Location: /admin/db-gpu");
      exit;
    }
    header("Location: /");
    break;
  case ($route[0] == 'admin'):
    $query = 'SELECT * FROM info ORDER BY id DESC';
    $queryGpu = 'SELECT * FROM gpuarticle ORDER BY id DESC';
    $result = select($query);
    $resultGpu = select($queryGpu);
    require_once 'template/admin.php';
    break;
  case ($route[0] == 'logout'):
    $query = 'SELECT * FROM info';
    $result = select($query);
    require_once 'template/logout.php';
    break;
  default:
    require_once 'template/404.php';
}
