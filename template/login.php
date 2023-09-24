<?php
// LOGIN PAGE TEMPLATE
if (isset($_POST['submit'])) {
    $user = login($_POST['login'], $_POST['password']);
    if ($user) {
        $user = $user[0];
        $hash = md5(generateCode(10));
        $ip = null;
        if (!empty($_POST['ip'])) {
            $ip = $_SERVER['REMOTE_ADDR'];
        }
        updateUser($user['id'], $hash, $ip);
        setcookie('id', $user['id'], time() + 60 * 60 * 24 * 30, "/");
        setcookie('hash', $hash, time() + 60 * 60 * 24 * 30, "/");
        header("Location: /admin");
        exit();
    }
} else {
    echo 'Не вірний логін або пароль';
}
?>


<h2>Авторизація</h2>
<form method="POST">
    Login: <input type="text" name="login" required><br>
    Password: <input type="text" name="password" required><br>
    Привязка по IP: <input type="checkbox" name="ip"><br>
    <input type="submit" name="submit" value="Авторизуватись">
</form>
