-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23-Jan-2025 às 01:41
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `frente_caixa`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `denominacao` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nome_cliente` varchar(50) NOT NULL,
  `codigo` varchar(2000) NOT NULL,
  `natureza` enum('fisico','juridico') NOT NULL,
  `cnpj_cpf` varchar(14) NOT NULL,
  `rg` int(50) NOT NULL,
  `nascimento` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_municipio` int(11) NOT NULL,
  `inscricao_estadual` varchar(80) NOT NULL,
  `bairro` varchar(80) NOT NULL,
  `numero` int(11) NOT NULL,
  `logradouro` varchar(80) NOT NULL,
  `email` varchar(80) NOT NULL,
  `pacote_preco` decimal(11,2) NOT NULL,
  `ativo` enum('y','n') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nome_cliente`, `codigo`, `natureza`, `cnpj_cpf`, `rg`, `nascimento`, `id_municipio`, `inscricao_estadual`, `bairro`, `numero`, `logradouro`, `email`, `pacote_preco`, `ativo`) VALUES
(1, 'Rafael', 'rfkhl2006', 'fisico', '2147483647', 1234567890, '2025-01-23 00:08:55', 4316808, '', 'margarida', 48, 'rua Henrique Chuster', 'rafaelkloh@gmail.com', '0.00', 'y'),
(2, 'Marcelo', 'mrclyag22', 'fisico', '56891230456', 1234567890, '2025-01-23 00:08:58', 4316808, '', 'centro', 65, 'rua João Pessoa', 'marcelodofigo@hotmail.com', '0.00', 'y'),
(3, 'Vitor', 'vitink0rn0', 'fisico', '02934528834', 1234567890, '2025-01-23 00:09:03', 4316808, '', 'higienópolis', 129, 'rua Venâncio Aires', 'vitorchifre69@bol.com.br', '0.00', 'y'),
(4, 'Munchen', 'mnch54', 'fisico', '65711021159', 1234567890, '2025-01-23 00:06:55', 4316808, '0', 'goiás', 23, 'rua Venezuela', 'residencialmunchen@gmail.com', '0.00', 'y'),
(5, 'Sofia', 'b4!x!nh4', 'juridico', '98928230981992', 1234567890, '2025-01-23 00:11:12', 4316808, '190911455722', 'belvedere', 382, 'rua Rio de Janeiro', 'sofiaIST@gmail.com', '0.00', 'y');

-- --------------------------------------------------------

--
-- Estrutura da tabela `forma_pagamento`
--

CREATE TABLE `forma_pagamento` (
  `id_forma_pagamento` int(11) NOT NULL,
  `id_tipo_recebimento` int(11) NOT NULL,
  `denominacao` varchar(50) NOT NULL,
  `permite_parcelamento` enum('y','n') NOT NULL,
  `qtd_max_parcelas` int(11) DEFAULT NULL,
  `ativo` enum('y','n') NOT NULL,
  `codigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `forma_pagamento`
--

INSERT INTO `forma_pagamento` (`id_forma_pagamento`, `id_tipo_recebimento`, `denominacao`, `permite_parcelamento`, `qtd_max_parcelas`, `ativo`, `codigo`) VALUES
(1, 4, 'itau debito', 'n', 0, 'y', 0),
(2, 5, 'Itau credito', 'y', 6, 'y', 23),
(3, 4, 'Banrisul debito', 'n', 0, 'y', 190),
(4, 5, 'Banrisul credito', 'y', 6, 'y', 827),
(5, 4, 'bradesco debito', 'n', 0, 'y', 157),
(6, 5, 'bradesco credito', 'y', 6, 'y', 8261);

-- --------------------------------------------------------

--
-- Estrutura da tabela `item`
--

CREATE TABLE `item` (
  `id_item` int(11) NOT NULL,
  `nome_item` varchar(50) NOT NULL,
  `valor_item` decimal(11,2) NOT NULL,
  `codigo` varchar(50) NOT NULL,
  `codigo_barra` varchar(50) NOT NULL,
  `unidade_medida` varchar(50) NOT NULL,
  `saldo_estoque_atual` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `registra_comissao` int(11) NOT NULL,
  `status` enum('em estoque','em falta') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `item`
--

INSERT INTO `item` (`id_item`, `nome_item`, `valor_item`, `codigo`, `codigo_barra`, `unidade_medida`, `saldo_estoque_atual`, `id_categoria`, `registra_comissao`, `status`) VALUES
(1, 'alho', '4.00', '98sdl23', '0981JF8KJFD', '100 gramas', 0, 0, 0, 'em estoque'),
(2, 'arroz', '6.00', 'fdp4dsa21', 'JALKDSJ098432E', '1000 gramas', 0, 0, 0, ''),
(3, 'feijao', '8.00', 's84j84da1', '0HGGNH06EWO1', '1000 gramas', 0, 0, 0, ''),
(4, 'batata', '5.00', '0zcx97', 'PZQL126789', '1000 gramas', 0, 0, 0, ''),
(5, 'macarrao', '4.00', '0klliuq1', 'P21O35NGNOW75', '500 gramas', 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `item_venda`
--

CREATE TABLE `item_venda` (
  `id_item_venda` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `id_venda` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `preco` decimal(11,2) NOT NULL,
  `total` decimal(11,2) NOT NULL,
  `desconto` decimal(11,2) NOT NULL,
  `acrescimo` decimal(11,2) NOT NULL,
  `data_venda` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_usuario` int(11) NOT NULL,
  `status` enum('em andamento','finalizado') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `recebimento_venda`
--

CREATE TABLE `recebimento_venda` (
  `id_recebimento_venda` int(11) NOT NULL,
  `id_venda` int(11) NOT NULL,
  `id_forma_pagamento` int(11) NOT NULL,
  `ativo` binary(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sis_log_registro`
--

CREATE TABLE `sis_log_registro` (
  `id_log_registro` int(11) NOT NULL,
  `id_tipo_operacao` int(11) NOT NULL,
  `id_usuario_registro` int(11) NOT NULL,
  `ativo` binary(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_operacao`
--

CREATE TABLE `tipo_operacao` (
  `id_tipo_operacao` int(11) NOT NULL,
  `denominacao` int(11) NOT NULL,
  `ativo` binary(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_recebimento`
--

CREATE TABLE `tipo_recebimento` (
  `id_tipo_recebimento` int(11) NOT NULL,
  `nome_tipo_recebimento` varchar(50) NOT NULL,
  `ativo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tipo_recebimento`
--

INSERT INTO `tipo_recebimento` (`id_tipo_recebimento`, `nome_tipo_recebimento`, `ativo`) VALUES
(1, 'dinheiro', 1),
(2, 'pix', 1),
(3, 'nota a prazo', 1),
(4, 'credito', 1),
(5, 'debito', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `id_tipo_usuario` int(11) NOT NULL,
  `tipo_usuario` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tipo_usuario`
--

INSERT INTO `tipo_usuario` (`id_tipo_usuario`, `tipo_usuario`) VALUES
(1, 'funcionario'),
(2, 'gerente');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `id_tipo_usuario` int(11) NOT NULL,
  `nome_usuario` varchar(50) NOT NULL,
  `login` varchar(80) NOT NULL,
  `ativo` enum('y','n') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `id_tipo_usuario`, `nome_usuario`, `login`, `ativo`) VALUES
(1, 1, 'Joao', '', 'y'),
(2, 2, 'Gabriel', '', 'y');

-- --------------------------------------------------------

--
-- Estrutura da tabela `venda`
--

CREATE TABLE `venda` (
  `id_venda` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `numero_venda` int(11) NOT NULL,
  `total_item` int(11) NOT NULL,
  `desconto` decimal(11,2) NOT NULL,
  `acrescimo` decimal(11,2) NOT NULL,
  `total_venda` int(11) NOT NULL,
  `data_registro_venda` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `observacao` varchar(80) NOT NULL,
  `status` enum('em andamento','finalizado') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Índices para tabela `forma_pagamento`
--
ALTER TABLE `forma_pagamento`
  ADD PRIMARY KEY (`id_forma_pagamento`);

--
-- Índices para tabela `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id_item`);

--
-- Índices para tabela `item_venda`
--
ALTER TABLE `item_venda`
  ADD PRIMARY KEY (`id_item_venda`);

--
-- Índices para tabela `recebimento_venda`
--
ALTER TABLE `recebimento_venda`
  ADD PRIMARY KEY (`id_recebimento_venda`);

--
-- Índices para tabela `sis_log_registro`
--
ALTER TABLE `sis_log_registro`
  ADD PRIMARY KEY (`id_log_registro`);

--
-- Índices para tabela `tipo_operacao`
--
ALTER TABLE `tipo_operacao`
  ADD PRIMARY KEY (`id_tipo_operacao`);

--
-- Índices para tabela `tipo_recebimento`
--
ALTER TABLE `tipo_recebimento`
  ADD PRIMARY KEY (`id_tipo_recebimento`);

--
-- Índices para tabela `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`id_tipo_usuario`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Índices para tabela `venda`
--
ALTER TABLE `venda`
  ADD PRIMARY KEY (`id_venda`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `forma_pagamento`
--
ALTER TABLE `forma_pagamento`
  MODIFY `id_forma_pagamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `item`
--
ALTER TABLE `item`
  MODIFY `id_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `item_venda`
--
ALTER TABLE `item_venda`
  MODIFY `id_item_venda` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `recebimento_venda`
--
ALTER TABLE `recebimento_venda`
  MODIFY `id_recebimento_venda` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `sis_log_registro`
--
ALTER TABLE `sis_log_registro`
  MODIFY `id_log_registro` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tipo_operacao`
--
ALTER TABLE `tipo_operacao`
  MODIFY `id_tipo_operacao` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tipo_recebimento`
--
ALTER TABLE `tipo_recebimento`
  MODIFY `id_tipo_recebimento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  MODIFY `id_tipo_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `venda`
--
ALTER TABLE `venda`
  MODIFY `id_venda` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
