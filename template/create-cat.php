<?php
// CREATE CATEGORY PAGE TEMPLATE
$action = "Створити категорію";

if (isset($_POST['submit'])) {
  $title = trim($_POST['title']);
  $url = trim($_POST['url']);
  $description = trim($_POST['description']);

  $createCat = createCategory(
    $title,
    $url,
    $description
  );

  if ($createCat) {
    header('Location: /admin/admin-list-cat');
  } else {
    setcookie("alert", "create error", time() + 60 * 10);
  }
  if (isset($_COOKIE['alert'])) {
    $alert = $_COOKIE['alert'];
    setcookie("alert", "", time() - 60 * 10);
    unset($_COOKIE['alert']);
    echo $alert;
  } else {
    $editCat = array(
      "title" => "",
      "url" => "",
      "description" => "",
    );
  }
}

require_once 'include/_create-cat-form.php';
