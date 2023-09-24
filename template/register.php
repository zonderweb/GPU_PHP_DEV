<?php
// REGISTER PAGE TEMPLATE

if (isset($_POST['submit'])) {
    $err = [];
    if (strlen($_POST['login']) < 4 or strlen($_POST['login']) > 30) {
        $err[] = "Логін повинен бути не меньше 4 символів і не більше 30";
    }
    if (isLoginExist($_POST['login'])) {
        $err[] = "Такий логін існує";
    }
    if (count($err) === 0) {
        createUser($_POST['login'], $_POST['password']);
        header('Location: /login');
        exit();
    } else {
        echo '<div>Помилка реестрації</div>';
        foreach ($err as $error) {
            echo $error . '<br>';
        }
    }
}
?>

<h2>Регістрація</h2>
<form method="POST">
    Login: <input type="text" name="login" required><br>
    Password: <input type="text" name="password" required><br>
    <input type="submit" name="submit" value="Зарееструватися">
</form>
