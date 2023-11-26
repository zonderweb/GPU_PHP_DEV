<?php
// UPDATE GPU CATEGORY TEMPLATE
$action = "Оновити";

if (isset($_POST['submit'])) {
  $title = trim($_POST['title']);
  $url = trim($_POST['url']);
  $found = trim($_POST['found']);
  $graphProc = trim($_POST['graph-processor']);
  $cores = $_POST['cores'];
  $tmus = $_POST['tmus'];
  $rops = $_POST['rops'];
  $memorySize = $_POST['memory-size'];
  $memoryType = trim($_POST['memory-type']);
  $busWidth = $_POST['bus-width'];
  $description = trim($_POST['description']);

  if (isset($_FILES['image']['tmp_name']) and $_FILES['image']['tmp_name'] != '') {
    move_uploaded_file($_FILES['image']['tmp_name'], 'static/images/gpucat/' . $_FILES['image']['name']);
    $image = $_FILES['image']['name'];
  } else {
    $image = $result['img'];
  }

  $id = $route[2];
  $date = trim($_POST['date']);

  $update = updateCategoryGpu(
    $title,
    $url,
    $found,
    $graphProc,
    $cores,
    $tmus,
    $rops,
    $memorySize,
    $memoryType,
    $busWidth,
    $description,
    $image,
    $id,
    $date
  );

  if ($update) {
    setcookie("alert", "update ok", time() + 60 * 10);
    header('Location: /admin/cat-list-gpu');
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

require_once 'include/_category_gpu_form.php';
