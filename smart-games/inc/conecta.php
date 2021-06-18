<?php
// dados para conexão com o banco smart_games
$servidor = "localhost";
$usuario = "root";
$senha = "";
$banco = "smart_games";

$conexao = mysqli_connect($servidor, $usuario, $senha, $banco); // váriavel de conexão

mysqli_set_charset($conexao, "utf8"); // convertendo para utf8
