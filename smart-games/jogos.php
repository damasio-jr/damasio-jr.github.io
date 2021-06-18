<?php
require "cabecalho.php"; // chamada do cabeçalho no arquivo cabecalho.php

$id = $_GET['id']; // $id obtendo o id do jogo carregado na sessão
$jogo = lerUmJogo($conexao, $id); // chamada da função lerUmjogo no arquivo funcoes.php
$lojas = lerLojas($conexao, $id); // chamada da função lerLojas no arquivo funcoes.php

if(isset($_POST[$jogo['id_jogo']])){    // ação de chamada do botão COMPRAR
    header("location:compra.php?id=".$jogo['id_jogo']); //a pagina de compra irá carregar uma sessão com o id do jogo 
}
?>
<br>
<div>                
    <img class="mx-auto d-block img-fluid" src="<?=$jogo['link_img']?>" alt="imagem Overwatch">
    <p class="text-center"><?=$jogo['nome_jogo']?></p> 
    <p class="text-center">R$ <?=number_format($jogo['preco_jogo'],2,",",".")?></p>
    <form action="" method="post">
        <p class="text-center"><button class="btn" name="<?=$jogo['id_jogo']?>">COMPRAR</button></p>
    </form>
</div>
<hr>
<div>       
    <p><strong>Plataforma(as) disponíveis: </strong><?=$jogo['plataformas']?></p>
</div>
<hr>
<div>
    <p><strong>Descrição do jogo</strong></p>
    <p><?=$jogo['desc_jogo']?></p>
</div>
    <hr>
<div>
    <p>Selecione uma loja para visualizar a localização no mapa</p>
    <select onChange="abrir.location = options[selectedIndex].value">
        <option>Selecione</option>        
        <?php foreach($lojas as $loja){ ?>  <!-- loop carregando os dados da tabela lojas no seletor, a partir da seleção de algum valor irá carregar o mapa no iframe abaixo -->
        <option value="<?=$loja['link_local']?>"><?=$loja['nome_loja']?></option>
        <?php } ?>
    </select>       
    <iframe id="abrir" name="abrir" scrolling="auto" src="" width="100%" height="600px" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
</div>    
<?php
require "rodape.php"; // chamada do rodapé no arquivo rodape.php
?>