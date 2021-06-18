<?php
require "cabecalho.php"; // chamada do cabeçalho no arquivo cabecalho.php

$id = $_GET['id']; // $id obtendo o id do jogo carregado na sessão
$jogo = lerUmJogo($conexao, $id); // chamada da função lerUmjogo no arquivo funcoes.php
$lojas = lerLojas($conexao, $id); // chamada da função lerLojas no arquivo funcoes.php

// chamada do botão FINALIZAR COMPRA para executar a inserção dos dados carregados no formulário na tabela de compras
if(isset($_POST['finalizar_compra'])){
    // validação dos campos preenchidos no formulário
    if(empty($_POST['nome_cliente']) || empty($_POST['email']) || empty($_POST['quantidade']) || empty($_POST['loja'])){ 
?>
      <div class="alert alert-warning" role="alert">Você deve preencher todos os campos</div>
<?php        
    } else{
        // váriaveis armazenando dados do formulário
        $nome_cliente = $_POST['nome_cliente'];
        $email = $_POST['email'];
        $quantidade = $_POST['quantidade'];
        $jogo_id = $jogo['id_jogo'];
        $loja_id = $_POST['loja'];

        inserirCompra($conexao, $nome_cliente, $email, $quantidade, $jogo_id, $loja_id); // chamada da função inserirCompra para inserir os dados na tabela de copras do banco de dados
        ?><div class="alert alert-success" role="alert">Parabéns, sua compra foi registrada.</div><?php
    }
}
?>
<form action="" method="post">
<table class="table">  
  <thead>
    <tr>
      <th scope="col">Nome do Jogo</th>
      <th scope="col">Preço unitário</th>
      <th scope="col">Quantidade</th>
      <th scope="col">Selecione uma lola</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td scope="row"><?=$jogo['nome_jogo']?></td>
      <td>R$ <?=number_format($jogo['preco_jogo'],2,",",".")?></td>
      <td><input name="quantidade" type="text" class="form-control col-md-2"></td>
      <td>
        <select name="loja" class="form-control">
          <option value="">Selecione</option>        
<?php foreach($lojas as $loja){ ?>
          <option value="<?=$loja['id_loja']?>"><?=$loja['nome_loja']?></option>
<?php } ?>
        </select>
      </td>
    </tr>
  </tbody>
</table>
<div class="form-row">
  <div class="form-group col-md-6">
    <input class="form-control" name="nome_cliente" type="text" placeholder="Nome Completo">
  </div>
  <div class="form-group col-md-6">
    <input class="form-control" name="email" type="text" placeholder="Email">
  </div>
</div>
    <p><button name="finalizar_compra" type="submit" class="btn">FINALIZAR COMPRA</button></p>
</form>

<?php
require "rodape.php"; // chamada do rodapé no arquivo rodape.php
?>