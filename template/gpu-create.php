<?php

// CREATE ARTICLE GPU TEMPLATE

$action = "Create";

if (isset($_POST['submit'])) {
  $title = trim($_POST['title']);
  $url = trim($_POST['url']);
  $description = trim($_POST['description']);
  $cid = $_POST['cid'];

  move_uploaded_file($_FILES['image']['tmp_name'], 'static/images/vendor/' . $_FILES['image']['name']);
  $image = $_FILES['image']['name'];
  $create = createArticleGpu($title, $url, $description, $cid, $image);
  if ($create) {
    header('Location: /admin/db-gpu');
  } else {
    setcookie("alert", "create error", time() + 60 * 10);
  }
  if (isset($_COOKIE['alert'])) {
    $alert = $_COOKIE['alert'];
    setcookie("alert", "", time() - 60 * 10);
    unset($_COOKIE['alert']);
    echo $alert;
  } else {
    $result = array(
      "title" => "",
      "url" => "",
      "description" => "",
      "cid" => "",
      "image" => "",
    );
  }
}

echo "<h1>Створити матеріал</h1>";

require_once 'include/_gpu_form.php';