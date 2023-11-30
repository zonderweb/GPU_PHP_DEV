<?php
// CREATE GPU CATEGORY TEMPLATE
$action = "Створити";

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

  move_uploaded_file($_FILES['image']['tmp_name'], 'static/images/gpucat/' . $_FILES['image']['name']);
  $image = $_FILES['image']['name'];
  $date = trim($_POST['date']);
  $tdp = $_POST['tdp'];
  $psu = $_POST['psu'];

  $create = createCategoryGpu(
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
    $date,
    $tdp,
    $psu
  );

  if ($create) {
    header('Location: /admin/cat-list-gpu');
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
    "found" => "",
    "graph-processor" => "",
    "cores" => "",
    "tmus" => "",
    "rops" => "",
    "memory-size" => "",
    "memory-type" => "",
    "bus-width" => "",
    "description" => "",
    "img" => "",
    "date" => "",
    "tdp" => "",
    "psu" => ""
  );
}
require_once 'include/_category_gpu_form.php';
