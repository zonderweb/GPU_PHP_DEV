<!-- 
    REGISTER PAGE TEMPLATE 
-->
<?php require_once 'template/header.php'; ?>

<main class="main main-flex">
    <div class="register-section">
        <h2>Регістрація</h2>
        <form method="POST" class="register-form">
            <div> Логін:</div>
            <input class="reg-inpt" type="text" name="login" placeholder="Login" required>
            <div>Пароль:</div>
            <input class="reg-inpt" type="password" name="password" placeholder="Password" required>
            <button class="reg-btn" type="submit" name="submit">
                <span class="material-symbols-outlined">how_to_reg</span>Зарееструватися
            </button>
        </form>
        <div class="error-section">
            <?php
            if (isset($_POST['submit'])) {
                $err = [];
                if (strlen($_POST['login']) < 4 or strlen($_POST['login']) > 30) {
                    $err[] = "<span>Логін повинен бути не меньше 4 символів <br> та не більше 30!</span>";
                }
                if (isLoginExist($_POST['login'])) {
                    $err[] = "<span>Такий логін вже існує</span>";
                }
                if (count($err) === 0) {
                    createUser($_POST['login'], $_POST['password']);
                    header('Location: /login');
                    exit();
                } else {
                    echo '<div>*Помилка реестрації:</div>';
                    foreach ($err as $error) {
                        echo $error;
                    }
                }
            }
            ?>
        </div>
        <div class="message-if-reg">Вже маєте аккаунт? <a class="link-form-login" href="/login">Вхід</a></div>
    </div>
</main>

<?php require_once 'template/footer.php' ?>