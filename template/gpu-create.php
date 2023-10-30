<?php
// CREATE ARTICLE GPU TEMPLATE

$action = "Створити";

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

  move_uploaded_file($_FILES['image']['tmp_name'], 'static/images/vendor/' . $_FILES['image']['name']);
  $image = $_FILES['image']['name'];

  $create = createArticleGpu(
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
    $image
  );
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
  }
} else {
  $result = array(
    "title" => "",
    "url" => "",
    "part-num" => "",
    "description" => "",
    "cid" => "",
    "vendor" => "",
    "gpu-clock" => "",
    "boost-clock" => "",
    "memory-clock" => "",
    "graph-processor" => "",
    "cores" => "",
    "tmus" => "",
    "rops" => "",
    "memory-size" => "",
    "memory-type" => "",
    "bus-width" => "",
    "other-change" => "",
    "img" => "",
  );
}

require_once 'include/_gpu_form.php';
