<!-- pagina inicial carregando todos os produtos da tabela produtos no banco de dados -->
<?php
require "cabecalho.php"; // chamada do cabeçalho no arquivo cabecalho.php

$jogos = lerJogos($conexao); // $jogos armazenando todos os jogos da tabela

// loop de repetição buscando os dados dentro $jogos e armazenando um jogo apenas em $jogo
?>  <div class="row"> <?php
foreach($jogos as $jogo){
    if(isset($_POST[$jogo['id_jogo']])){ // ação do botão COMPRAR, que possui no "name" o id_jogo
        header("location:compra.php?id=".$jogo['id_jogo']); //a pagina de compra irá carregar uma sessão com o id do jogo selecionado        
    }
?>
    <!-- carregamento dos jogos na página conforme execução do loop em $jogos -->
    
    <div class="col-6">
        <a href="jogos.php?id=<?=$jogo['id_jogo']?>">
            <img class="img mx-auto d-block img-fluid" src="<?=$jogo['link_img']?>" alt="imagem Overwatch">
            <p class="text-center"><?=$jogo['nome_jogo']?></p>
        </a>
        <p class="text-center">R$ <?=number_format($jogo['preco_jogo'],2,",",".")?></p>  
        <form action="" method="post">              
            <p  class="text-center"><button class="btn" name="<?=$jogo['id_jogo']?>" type="submith">COMPRAR</button></p>
        </form>
    </div>
    
    <hr>
<?php
}
?> </div> <?php
require "rodape.php"; // chamada do rodapé no arquivo rodape.php
?>