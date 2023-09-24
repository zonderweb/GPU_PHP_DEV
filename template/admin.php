<?php
// ADMIN PAGE TEMPLATE

if (!getUser()) {
    header("Location: /login");
}

echo '<h1>Амін панель</h1>';
echo '<div><a href="/admin/create">Створити матеріал</a></div>';
echo '<div><a href="/logout">Вихід</a></div>';
echo articleAdmin();
