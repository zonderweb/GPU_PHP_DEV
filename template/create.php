<?php
// CREATE PAGE TEMPLATE
$action = "Створити";

if (isset($_POST['submit'])) {
    $title = trim($_POST['title']);
    $url = trim($_POST['url']);
    $descr_min = trim($_POST['descr_min']);
    $description = trim($_POST['description']);
    $cid = $_POST['cid'];

    move_uploaded_file($_FILES['image']['tmp_name'], 'static/images/' . $_FILES['image']['name']);
    $image = $_FILES['image']['name'];
    $create = createArticle(
        $title,
        $url,
        $descr_min,
        $description,
        $cid,
        $image
    );
    if ($create) {
        header('Location: /admin/blog-part');
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
        "descr_min" => "",
        "description" => "",
        "cid" => "",
        "image" => "",
    );
}

require_once 'include/_form.php';
