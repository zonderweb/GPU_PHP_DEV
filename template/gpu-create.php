<?php

// CREATE ARTICLE GPU TEMPLATE

$action = "Create";

if (isset($_POST['submit'])) {
  $title = trim($_POST['title']);
  $url = trim($_POST['url']);
  $description = trim($_POST['description']);
  $cid = $_POST['cid'];
  $vendor = trim($_POST['vendor']);
  $gpuClock = $_POST['gpu-clock'];
  $boostClock = $_POST['boost-clock'];
  $memoryClock = $_POST['memory-clock'];


  move_uploaded_file($_FILES['image']['tmp_name'], 'static/images/vendor/' . $_FILES['image']['name']);
  $image = $_FILES['image']['name'];


  $create = createArticleGpu($title, $url, $description, $cid, $vendor, $gpuClock, $boostClock, $memoryClock, $image);
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
      "vendor" => "",
      "gpuClock" => "",
      "boostClock" => "",
      "memoryClock" => "",
      "img" => "",
    );
  }
}
require_once 'include/_gpu_form.php';
