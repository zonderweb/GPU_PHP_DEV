<?php
// UPDATE CATEGORY PAGE TAMPLATE
$action = "Оновити категорію";

if (isset($_POST['submit'])) {
  $title = trim($_POST['title']);
  $url = trim($_POST['url']);
  $description = trim($_POST['description']);

  $id = $route[2];

  $updateCat = updateCategory(
    $title,
    $url,
    $description,
    $id
  );
  if ($updateCat) {
    setcookie("alert", "update ok", time() + 60 * 10);
    header('Location: /admin/admin-list-cat');
  } else {
    setcookie("alert", "create error", time() + 60 * 10);
    header('Location: ' . $_SERVER['REQUEST_URI']);
  }
}

if (isset($_COOKIE['alert'])) {
  $alert = $_COOKIE['alert'];
  setcookie("alert", "", time() - 60 * 10);
  unset($_COOKIE['alert']);
  echo $alert;
}

require_once 'include/_create-cat-form.php';
