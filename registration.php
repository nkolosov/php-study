<?php
require 'db_config.php';

$data = $_POST;
$username = $data['username'];
$password = $data['password'];
$email = $data['email'];
$contact = $data['contact'];

if (!empty($_POST)) {
    if (filter_var($email, FILTER_VALIDATE_EMAIL)) {
        $pdo = new PDO($dsn, $user, $pass, $opt);
        $sql = $pdo->prepare("INSERT INTO `users`(username, password, email, contact) VALUES(?, ?, ?, ?)");
        $sql->execute([$username, $password, $email, $contact]);

    }else{
        echo 'email некорректный';
    }
}
