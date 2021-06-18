-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18-Jun-2021 às 16:20
-- Versão do servidor: 10.4.18-MariaDB
-- versão do PHP: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `smart_games`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `compra`
--

CREATE TABLE `compra` (
  `id_compra` smallint(6) NOT NULL,
  `nome_cliente` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `quantidade` smallint(6) NOT NULL,
  `jogo_id` smallint(6) NOT NULL,
  `loja_id` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `compra`
--

INSERT INTO `compra` (`id_compra`, `nome_cliente`, `email`, `quantidade`, `jogo_id`, `loja_id`) VALUES
(1, '', 'damasio@teste.com', 5, 2, 2),
(2, '', 'danilo@teste.com', 5, 1, 1),
(3, 'Danilo', 'danilo@teste.com', 2, 5, 3),
(4, 'Damasio', 'teste@teste.com', 1, 2, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `jogos`
--

CREATE TABLE `jogos` (
  `id_jogo` smallint(6) NOT NULL,
  `nome_jogo` varchar(50) NOT NULL,
  `desc_jogo` text NOT NULL,
  `link_img` text NOT NULL,
  `preco_jogo` double NOT NULL,
  `plataformas` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `jogos`
--

INSERT INTO `jogos` (`id_jogo`, `nome_jogo`, `desc_jogo`, `link_img`, `preco_jogo`, `plataformas`) VALUES
(1, 'Overwatch', 'Overwatch é um jogo de tiro em equipe que conta com um elenco diversificado de heróis poderosíssimos. Viaje pelo mundo, monte uma equipe e dispute objetivos em combates 6v6 de tirar o fôlego.', 'https://upload.wikimedia.org/wikipedia/pt/b/bf/Overwatch_logo.jpg', 160, 'PC/PS4/XBoxOne/Switch'),
(2, 'Spider-Man', 'Spider-Man é um jogo eletrônico de ação-aventura desenvolvido pela Insomniac Games e publicado pela Sony Interactive Entertainment. É baseado nos personagens, mitologia e adaptações em outras mídias do super-herói de histórias em quadrinhos Homem-Aranha da Marvel Comics, tendo sido lançado exclusivamente para PlayStation 4 em 7 de setembro de 2018. Na história, o criminoso super-humano Senhor Negativo organiza um plano para se vingar do prefeito Norman Osborn e assumir o controle do submundo criminal de Nova Iorque. O Homem-Aranha precisa proteger a cidade assim que o Senhor Negativo ameaça lançar um vírus mortal por toda a área, ao mesmo tempo que é forçado a lidar com seus problemas pessoais como Peter Parker.', 'https://upload.wikimedia.org/wikipedia/pt/7/78/Spider-Man_jogo_2018_capa.png', 116.9, 'PS4'),
(3, 'God Of War', 'É um novo começo para Kratos. Vivendo como um homem longe da sombra dos deuses, ele se aventura pelas selvagens florestas nórdicas com seu filho Atreus, lutando para cumprir uma missão profundamente pessoal. O Santa Monica Studio e o diretor de criação Cory Barlog lançam um novo começo para um dos personagens mais conhecidos dos jogos. Vivendo como um homem, fora da sombra dos deuses, Kratos deve se adaptar a terras desconhecidas, ameaças inesperadas e a uma segunda oportunidade de ser pai. Junto ao seu filho, Atreus, os dois vão se aventurar pelas selvagens florestas nórdicas e lutar para cumprir uma missão profundamente pessoal.', 'https://upload.wikimedia.org/wikipedia/pt/8/82/God_of_War_2018_capa.png', 69.9, 'PS4'),
(4, 'Ghost of Tsushima', 'No final do século XIII, o império mongol devastou nações inteiras durante sua campanha para conquistar o Oriente. A Ilha de Tsushima é tudo o que está entre o Japão continental e uma enorme frota invasora mongol comandada pelo implacável e sagaz general Khotun Khan. À medida que a ilha queima na esteira da primeira onda do assalto mongol, o guerreiro samurai Jin Sakai mantém-se como um dos último membros sobreviventes de seu clã. Ele está decidido a proteger seu povo e recuperar seu lar, independente do que aconteça, custe o que custar. Será preciso romper com as tradições que o tornaram um guerreiro para forjar um novo caminho do Fantasma e declarar uma guerra incomum pela liberdade de Tsushima.', 'https://upload.wikimedia.org/wikipedia/pt/thumb/d/dc/Ghost_of_Tsushima_capa.png/270px-Ghost_of_Tsushima_capa.png', 249, 'PS4'),
(5, 'Tom Clancy\'s Splinter Cell: Double Agent', 'Vivencie a tensão incessante e os dilemas da vida de um agente duplo. Minta. Mate. Prejudique. Traia. Tudo para proteger os inocentes. Até onde você iria para ganhar a confiança do inimigo? Como o agente secreto Sam Fisher, você deve se infiltrar num grupo terrorista cruel e destruí-lo internamente. Você precisará ponderar muito bem as consequências dos seus atos. Mate terroristas demais e estragará seu disfarce. Hesite e milhões morrerão. Faça o que for preciso para completar a missão, mas procure sobreviver.', 'https://store.ubi.com/dw/image/v2/ABBS_PRD/on/demandware.static/-/Sites-masterCatalog/default/dwb3dccb35/images/large/56c4948a88a7e300458b482c.jpg?sw=341&sh=450&sm=fit', 36, 'XBOX/PS2/PS3/PC'),
(6, 'God of War III', 'Kratos está devolta, ainda com a vingança pulsando forte em suas veias. O Olimpo e seus deuses é o seu alvo, não importa o preço que o Deus da Guerra irá pagar. Neste terceiro e épico capítulo você irá controlar Kratos através de batalhas celestiais contra os deuses mais poderosos de todo o Olimpo  inclusive voltará ao inferno e acertar as contas com seu pai colossal e poderoso, Kronos. Deuses como Hermes e Hades não serão páreo para seu poder, os olhos ardentes daquele que busca vingança que nem a mais cruel das mortes pode deter. Enfrente desafios arrasadores e enfrente monstros poderosos como a Quimera, o Cérberus e muitos outros seres místicos que estão ali apenas para acabar com sua existência. Não pare por nada até enfrentar o deus dos deuses: Zeus, e acabar com isso de uma vez por todas.', 'https://s3.amazonaws.com/comparegame/thumbnails/41421/large.jpg', 50, 'PS3/PS4'),
(7, 'Watch Dogs 2', 'Junte-se ao Dedsec, um grupo notório de hackers, para executar o maior hack da história; Derrube o ctOS 2.0, um sistema operacional invasivo que está sendo usado por um gênio do crime para monitorar e manipular os cidadãos em uma escala massiva.', 'https://s3.amazonaws.com/comparegame/thumbnails/42209/large.jpg', 60, 'PC/PS4/XBoxOne'),
(8, 'Batman arkham city', 'Batman: Arkham City é um jogo eletrônico de Ação-Aventura e Stealth, baseado na série de quadrinhos Batman da DC Comics. O jogo é distribuído para: PlayStation 3, Xbox 360 e Microsoft Windows. Foi desenvolvido pela Rocksteady Studios e foi publicado pela Warner Bros. Interactive Entertainment e DC Entertainment.', 'https://upload.wikimedia.org/wikipedia/pt/thumb/f/f0/Batman_arkham_city_logo.jpg/200px-Batman_arkham_city_logo.jpg', 31, 'Xbox/PC/WiiU');

-- --------------------------------------------------------

--
-- Estrutura da tabela `jogos_lojas`
--

CREATE TABLE `jogos_lojas` (
  `jogo_id` smallint(6) NOT NULL,
  `loja_id` smallint(6) NOT NULL,
  `id` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `jogos_lojas`
--

INSERT INTO `jogos_lojas` (`jogo_id`, `loja_id`, `id`) VALUES
(1, 1, 1),
(1, 2, 2),
(2, 1, 3),
(2, 2, 4),
(2, 3, 5),
(3, 1, 6),
(3, 2, 7),
(4, 2, 8),
(4, 3, 9),
(5, 1, 10),
(5, 2, 11),
(5, 3, 12),
(6, 2, 13),
(6, 3, 14),
(7, 1, 15),
(7, 2, 16),
(8, 1, 17),
(8, 2, 18),
(8, 3, 19);

-- --------------------------------------------------------

--
-- Estrutura da tabela `lojas`
--

CREATE TABLE `lojas` (
  `id_loja` smallint(6) NOT NULL,
  `nome_loja` varchar(50) DEFAULT NULL,
  `link_local` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `lojas`
--

INSERT INTO `lojas` (`id_loja`, `nome_loja`, `link_local`) VALUES
(1, 'Loja Tamboré', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7317.493784162371!2d-46.8340157!3d-23.5056245!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94cf017b8c1a5da9%3A0x22a277028d33acc!2sShopping%20Tambor%C3%A9!5e0!3m2!1spt-BR!2sbr!4v1623871950879!5m2!1spt-BR!2sbr'),
(2, 'Loja União', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1828.8748725360467!2d-46.76733514192678!3d-23.541501696173167!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ceff41bd4fbbb3%3A0x883f18a9d028d6!2sShopping%20Uni%C3%A3o%20de%20Osasco!5e0!3m2!1spt-BR!2sbr!4v1623868525664!5m2!1spt-BR!2sbr'),
(3, 'Loja Iguatemi', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3658.77635384422!2d-46.850550885023374!3d-23.504563684711083!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94cf0220fcf1dc29%3A0x3b84ef70a4e234e9!2sShopping%20Iguatemi%20Alphaville!5e0!3m2!1spt-BR!2sbr!4v1623868378947!5m2!1spt-BR!2sbr');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`id_compra`),
  ADD KEY `fk_compra_jogos` (`jogo_id`),
  ADD KEY `fk_compra_lojas` (`loja_id`);

--
-- Índices para tabela `jogos`
--
ALTER TABLE `jogos`
  ADD PRIMARY KEY (`id_jogo`);

--
-- Índices para tabela `jogos_lojas`
--
ALTER TABLE `jogos_lojas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_jogos_id` (`jogo_id`),
  ADD KEY `fk_lojas_id` (`loja_id`);

--
-- Índices para tabela `lojas`
--
ALTER TABLE `lojas`
  ADD PRIMARY KEY (`id_loja`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `compra`
--
ALTER TABLE `compra`
  MODIFY `id_compra` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `jogos`
--
ALTER TABLE `jogos`
  MODIFY `id_jogo` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `jogos_lojas`
--
ALTER TABLE `jogos_lojas`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `lojas`
--
ALTER TABLE `lojas`
  MODIFY `id_loja` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `fk_compra_jogos` FOREIGN KEY (`jogo_id`) REFERENCES `jogos` (`id_jogo`),
  ADD CONSTRAINT `fk_compra_lojas` FOREIGN KEY (`loja_id`) REFERENCES `lojas` (`id_loja`);

--
-- Limitadores para a tabela `jogos_lojas`
--
ALTER TABLE `jogos_lojas`
  ADD CONSTRAINT `fk_jogos_id` FOREIGN KEY (`jogo_id`) REFERENCES `jogos` (`id_jogo`),
  ADD CONSTRAINT `fk_lojas_id` FOREIGN KEY (`loja_id`) REFERENCES `lojas` (`id_loja`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
