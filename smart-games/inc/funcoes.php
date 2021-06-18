<?php
require "conecta.php";
// função realiza a leitura dos dados da tabela jodos. Usada em index.php
function lerJogos($conexao){
    $sql = "SELECT * FROM jogos";
    $resultado = mysqli_query($conexao, $sql) or die(mysqli_error($conexao));
    $jogos = [];
    while($jogo = mysqli_fetch_assoc($resultado)){
        array_push($jogos, $jogo);
    }
    return $jogos;
}
// função realiza a leitura de uma linha da tabela jodos conformo argumento passado para a função.Usada em jogos.php e compra.php
function lerUmJogo($conexao, $id){
    $sql = "SELECT * FROM jogos WHERE id_jogo = $id";
    $resultado = mysqli_query($conexao, $sql) or die(mysqli_error($conexao));
    return mysqli_fetch_assoc($resultado);
}
// função realiza a leitura de de dados nas tabelas jogos_lojas e lojas. Usada em jogos.php e compra.php
function lerLojas($conexao, $id){
    $sql = "SELECT jogos_lojas.*, lojas.* FROM jogos_lojas INNER JOIN lojas ON jogos_lojas.loja_id = lojas.id_loja WHERE jogos_lojas.jogo_id = $id";
    $resultado = mysqli_query($conexao, $sql) or die(mysqli_error($conexao));
    $lojas = [];
    while($loja = mysqli_fetch_assoc($resultado)){
        array_push($lojas, $loja);
    }
    return $lojas;
}
// função realiza insersão de dados na tabela compra. Usada em compra.php
function inserirCompra($conexao, $nome_cliente, $email, $quantidade, $jogo_id, $loja_id){
    $sql = "INSERT INTO compra(nome_cliente, email, quantidade, jogo_id, loja_id) 
            VALUES('$nome_cliente', '$email', $quantidade, $jogo_id, $loja_id)";
    mysqli_query($conexao, $sql) or die(mysqli_error($conexao));
}
