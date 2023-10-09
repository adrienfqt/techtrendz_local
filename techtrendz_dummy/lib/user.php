<?php

function addUser(PDO $pdo, string $first_name, string $last_name, string $email, string $password, $role = "user")
{
    $sql= 'Insert into users (email,password,first_name,last_name,role) VALUES (:email,:password,:firstName,:lastName,:role)';
    $stmt = $pdo->prepare($sql);
    $stmt->bindValue(':email', $email);
    $stmt->bindValue(':password', password_hash($password,PASSWORD_BCRYPT ));
    $stmt->bindValue(':firstName', $first_name);
    $stmt->bindValue(':lastName', $last_name);
    $stmt->bindValue(':role', $role);
    return $stmt->execute();
    /*
        @todo faire la requête d'insertion d'utilisateur et retourner $query->execute();
        Attention faire une requête préparer et à binder les paramètres
    */
}

function verifyUserLoginPassword(PDO $pdo, string $email, string $password)
{
    $sql= 'Select * from users where email = :email';
    $stmt = $pdo->prepare($sql);
    $stmt->bindValue(':email', $email);
    $stmt->execute();
    $user = $stmt->fetch();

    /*
        @todo faire une requête qui récupère l'utilisateur par email et stocker le résultat dans user
        Attention faire une requête préparer et à binder les paramètres
    */

    if(password_verify($password,$user['password'])){
        return $user;
    }else{
        return false;
    }

    /*
        @todo Si on a un utilisateur et que le mot de passe correspond (voir fonction  native password_verify)
              alors on retourne $user
              sinon on retourne false
    */
}
