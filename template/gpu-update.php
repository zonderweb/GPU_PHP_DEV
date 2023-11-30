<?php
// UPDATE ARTICLE GPU TEMPLATE

$action = "Оновити матеріал";

if (isset($_POST['submit'])) {
  $title = trim($_POST['title']);
  $url = trim($_POST['url']);
  $partNum = trim($_POST['part-num']);
  $description = trim($_POST['description']);
  $cid = $_POST['cid'];
  $vendor = trim($_POST['vendor']);
  $gpuClock = $_POST['gpu-clock'];
  $boostClock = $_POST['boost-clock'];
  $memoryClock = $_POST['memory-clock'];
  $graphPrc = trim($_POST['graph-processor']);
  $cores = $_POST['cores'];
  $tmus = $_POST['tmus'];
  $rops = $_POST['rops'];
  $memSize = $_POST['memory-size'];
  $memType = trim($_POST['memory-type']);
  $busW = trim($_POST['bus-width']);
  $otherChange = $_POST['other-change'];

  if (isset($_FILES['image']['tmp_name']) and $_FILES['image']['tmp_name'] != '') {
    move_uploaded_file($_FILES['image']['tmp_name'], 'static/images/vendor/' . $_FILES['image']['name']);
    $image = $_FILES['image']['name'];
  } else {
    $image = $result['img'];
  }

  $id = $route[2];
  $tdp = $_POST['tdp'];
  $psu = $_POST['psu'];

  $update = updateArticleGpu(
    $id,
    $title,
    $url,
    $partNum,
    $description,
    $cid,
    $vendor,
    $gpuClock,
    $boostClock,
    $memoryClock,
    $graphPrc,
    $cores,
    $tmus,
    $rops,
    $memSize,
    $memType,
    $busW,
    $otherChange,
    $image,
    $tdp,
    $psu
  );


  if ($update) {
    setcookie("alert", "update ok", time() + 60 * 10);
    // header('Location: ' . $_SERVER['REQUEST_URI']);
    header('Location: /admin/db-gpu');
  } else {
    setcookie("alert", "update error", time() + 60 * 10);
    header('Location: ' . $_SERVER['REQUEST_URI']);
  }

  if (isset($_COOKIE['alert'])) {
    $alert = $_COOKIE['alert'];
    setcookie("alert", "", time() - 60 * 10);
    unset($_COOKIE['alert']);
    echo $alert;
  }
}
require_once 'include/_gpu_form.php';
