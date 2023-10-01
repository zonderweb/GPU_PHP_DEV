<!-- 
    LOGIN PAGE TEMPLATE 
-->
<?php require_once 'template/header.php'; ?>



<main class="main main-flex">
    <div class="register-section">
        <h2>Авторизація</h2>
        <form method="POST" class="register-form">
            <div>Login:</div>
            <input class="reg-inpt" type="text" name="login" placeholder="Login" required>
            <div>Password:</div>
            <input class="reg-inpt" type="password" name="password" placeholder="Password" required>
            <div class="ip-conf">
                <input class="ip-check" type="checkbox" name="ip"><span>Привязка по IP</span>
            </div>
            <button class="reg-btn" type="submit" name="submit"><span class="material-symbols-outlined">login</span>Авторизуватись</button>
        </form>
        <div class="error-section">
            <?php

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
                echo '<div>Не вірний логін або пароль</div>';
            }
            ?>
        </div>
        <div class="message-if-reg">Не має аккаунту? <a class="link-form-login" href="/register">Регістрація</a></div>
    </div>
</main>
<?php require_once 'template/footer.php' ?>