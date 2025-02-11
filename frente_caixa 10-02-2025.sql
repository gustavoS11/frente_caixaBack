-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11-Fev-2025 às 01:40
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.0

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
-- Estrutura da tabela `bairro`
--

CREATE TABLE `bairro` (
  `id_bairro` int(11) NOT NULL,
  `nome_bairro` varchar(80) NOT NULL,
  `id_municipio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `bairro`
--

INSERT INTO `bairro` (`id_bairro`, `nome_bairro`, `id_municipio`) VALUES
(1, 'Centro', 1),
(2, 'Arroio Grande', 1),
(3, 'Esmeralda', 1),
(4, 'São João', 1),
(5, 'Aliança', 1),
(6, 'Nonoai', 2),
(7, 'Dona Eliza', 2),
(8, 'Parque Leão XIII', 2),
(9, 'Loteamento São Bento', 2),
(10, 'Vila Hípica', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `denominacao` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `denominacao`) VALUES
(1, 'Alimentos'),
(2, 'Higiene'),
(3, 'Limpeza'),
(4, 'Tecnologia'),
(5, 'Animais'),
(6, 'Bebês'),
(7, 'Saúde'),
(8, 'Tabacaria'),
(9, 'Decoração'),
(10, 'Outros');

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
  `ativo` enum('y','n') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nome_cliente`, `codigo`, `natureza`, `cnpj_cpf`, `rg`, `nascimento`, `id_municipio`, `inscricao_estadual`, `bairro`, `numero`, `logradouro`, `email`, `ativo`) VALUES
(1, 'Rafael', 'rfkhl2006', 'fisico', '2147483647', 1234567890, '2025-02-10 22:45:35', 4316808, '', 'margarida', 48, 'rua Henrique Chuster', 'rafaelkloh@gmail.com', 'y'),
(2, 'Marcelo', 'mrclyag22', 'fisico', '56891230456', 1234567890, '2025-02-10 22:45:32', 4316808, '', 'centro', 65, 'rua João Pessoa', 'marcelodofigo@hotmail.com', 'y'),
(3, 'Vitor', 'vitink0rn0', 'fisico', '02934528834', 1234567890, '2025-02-10 22:45:30', 4316808, '', 'higienópolis', 129, 'rua Venâncio Aires', 'vitorchifre69@bol.com.br', 'y'),
(4, 'Munchen', 'mnch54', 'fisico', '65711021159', 1234567890, '2025-02-10 22:45:28', 4316808, '', 'goiás', 23, 'rua Venezuela', 'residencialmunchen@gmail.com', 'y'),
(5, 'Ana', 'oiupo1i23', 'juridico', '98928230981992', 1234567890, '2025-02-10 22:45:26', 4316808, '1i39870', 'belvedere', 382, 'rua Rio de Janeiro', 'sofiaIST@gmail.com', 'y'),
(6, 'Gustavo', 'd41f14gh', 'fisico', '1235445', 654877654, '2025-02-10 22:46:37', 4316808, '', 'Margarida', 4, 'Rua Carlos Kern', 'gustavo@gmail.com', 'y'),
(16, 'Rafael', '12354hgf', 'fisico', '123123123', 2147483647, '2025-02-10 22:46:39', 4316808, '', 'Margarida', 7, 'Rua Carlos Kern', 'gustavo@gmail.com', 'y'),
(17, 'Victor', '12354hgf', 'fisico', '123123123', 2147483647, '2025-02-10 22:46:41', 4316808, '', 'Margarida', 82, 'Rua Carlos Kern', 'gustavo@gmail.com', 'y'),
(18, 'Victor', '12354hgf', 'fisico', '123123123', 2147483647, '2025-02-10 22:46:43', 4316808, '', 'Margarida', 48, 'Rua Carlos Kern', 'gustavo@gmail.com', 'y'),
(19, 'Victor', '12354hgf', 'fisico', '123123123', 2147483647, '2025-02-10 22:46:45', 4316808, '', 'Margarida', 91, 'Rua Carlos Kern', 'gustavo@gmail.com', 'y'),
(25, 'Victor', 'f123324df52', 'fisico', '4354566537654', 123123123, '2025-02-10 22:43:55', 4316808, '', 'Margarida', 45, 'Rua Carlos Kern', 'gustavo@gmail.com', 'y'),
(26, 'Bampi', '234234234gfdgfd', 'fisico', '123123123', 2147483647, '2025-02-10 22:43:53', 4316808, '', 'Margarida', 12, 'Rua Carlos Kern', 'bampI@gmail.com', 'y'),
(27, 'teste', '179VslO', 'fisico', '1234213', 1234321, '2025-02-10 22:39:31', 4316808, '', 'Higienópolis', 392, 'Rua João Werlang', 'rafael@hotmail.com', 'y'),
(28, 'Carlos', 'EdEH0ex', 'juridico', '213901238943', 2147483647, '1997-02-04 03:00:00', 4316808, '321kjocvx', 'Margarida', 12, 'Rua Carlos Kern', 'carlos@gmail.com', 'y'),
(29, 'Carlos', 'xKzNd22', 'fisico', '213901238943', 2147483647, '2025-02-10 22:43:50', 4316808, '', 'Margarida', 12, 'Rua Carlos Kern', 'carlos@gmail.com', 'y'),
(30, 'Carlos', 'njmTIsB', 'fisico', '12334345435', 2147483647, '2025-02-05 03:00:00', 4316808, '', 'Margarida', 12, 'Rua Carlos Kern', 'carlos@gmail.com', 'y');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estado`
--

CREATE TABLE `estado` (
  `id_estado` int(11) NOT NULL,
  `nome_estado` varchar(80) NOT NULL,
  `sigla_estado` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `estado`
--

INSERT INTO `estado` (`id_estado`, `nome_estado`, `sigla_estado`) VALUES
(1, 'Acre', 'AC'),
(2, 'Alagoas', 'AL'),
(3, 'Amapá', 'AP'),
(4, 'Amazonas', 'AM'),
(5, 'Bahia', 'BA'),
(6, 'Ceará', 'Ce'),
(7, 'Distrito Federal', 'DF'),
(8, 'Espírito Santo', 'ES'),
(9, 'Goiás', 'GO'),
(10, 'Maranhão', 'MA'),
(11, 'Mato Grosso', 'MT'),
(12, 'Mato Grosso do Sul', 'MS'),
(13, 'Minas Gerais', 'MG'),
(14, 'Pará', 'PA'),
(15, 'Paraíba', 'PB'),
(16, 'Paraná', 'PR'),
(17, 'Pernambuco', 'PE'),
(18, 'Piauí', 'PI'),
(19, 'Rio de Janeiro', 'RJ'),
(20, 'Rio Grande do Norte', 'RN'),
(21, 'Rio Grande do Sul', 'RS'),
(22, 'Rondônia', 'RO'),
(23, 'Roraima', 'RR'),
(24, 'Santa Catarina', 'SC'),
(25, 'São Paulo', 'SP'),
(26, 'Sergipe', 'SE'),
(27, 'Tocantins', 'TO');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `forma_pagamento`
--

INSERT INTO `forma_pagamento` (`id_forma_pagamento`, `id_tipo_recebimento`, `denominacao`, `permite_parcelamento`, `qtd_max_parcelas`, `ativo`, `codigo`) VALUES
(1, 4, 'itau debito', 'n', 0, 'y', 76),
(2, 5, 'Itau credito', 'y', 6, 'y', 23),
(3, 4, 'Banrisul debito', 'n', 0, 'y', 190),
(4, 5, 'Banrisul credito', 'y', 6, 'y', 827),
(5, 4, 'bradesco debito', 'n', 0, 'y', 157),
(6, 5, 'bradesco credito', 'y', 6, 'y', 8261),
(7, 4, 'Santander crédito', 'y', 6, 'y', 654),
(8, 5, 'Santander débito', 'n', 0, 'y', 876),
(9, 4, 'Banco do Brasil crédito', 'y', 6, 'y', 6),
(11, 4, 'sicredi credito', 'y', 6, 'y', 0),
(12, 5, 'santander débito', 'n', 0, 'y', 0),
(13, 1, 'Real', 'n', 0, 'y', 0),
(14, 1, 'Dólar', 'n', 0, 'y', 4499255),
(15, 1, 'Euro', 'n', 0, 'y', 9600767),
(16, 4, 'bradesco credito', 'y', 6, 'y', 7161254),
(17, 1, 'Yen', 'n', 0, 'y', 3728671);

-- --------------------------------------------------------

--
-- Estrutura da tabela `item`
--

CREATE TABLE `item` (
  `id_item` int(11) NOT NULL,
  `nome_item` varchar(50) NOT NULL,
  `valor_item` decimal(11,2) NOT NULL,
  `codigo` varchar(50) NOT NULL,
  `codigo_barra` varchar(200) NOT NULL,
  `unidade_medida` varchar(50) NOT NULL,
  `saldo_estoque_atual` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `registra_comissao` int(11) NOT NULL,
  `status` enum('em estoque','em falta') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `item`
--

INSERT INTO `item` (`id_item`, `nome_item`, `valor_item`, `codigo`, `codigo_barra`, `unidade_medida`, `saldo_estoque_atual`, `id_categoria`, `registra_comissao`, `status`) VALUES
(1, 'alho', '4.00', '98sdl23', 'https://barcode.tec-it.com/barcode.ashx?data=98sdl23&translate-esc=on', '100 gramas', 25, 1, 0, 'em estoque'),
(2, 'arroz', '6.00', 'fdp4dsa21', 'https://barcode.tec-it.com/barcode.ashx?data=fdp4dsa21&translate-esc=on', '1000 gramas', 546, 1, 0, 'em estoque'),
(3, 'feijao', '8.00', 's84j84da1', 'https://barcode.tec-it.com/barcode.ashx?data=s84j84da1&translate-esc=on', '1000 gramas', 12, 1, 0, 'em estoque'),
(4, 'batata', '5.00', '0zcx97', 'https://barcode.tec-it.com/barcode.ashx?data=0zcx97&translate-esc=on', '1000 gramas', 32, 1, 0, 'em estoque'),
(5, 'macarrao', '4.00', '0klliuq1', 'https://barcode.tec-it.com/barcode.ashx?data=0klliuq1&translate-esc=on', '500 gramas', 67, 4, 0, 'em estoque'),
(15, 'brocolis', '45.00', '213dsfdgf', 'https://barcode.tec-it.com/barcode.ashx?data=213dsfdgf&translate-esc=on', '250', 9000, 1, 0, 'em estoque'),
(16, 'cogumelo', '42.00', 'hgfh435', 'https://barcode.tec-it.com/barcode.ashx?data=hgfh435&translate-esc=on', '100', 7000, 1, 0, 'em estoque');

--
-- Acionadores `item`
--
DELIMITER $$
CREATE TRIGGER `atualizar_status_estoque` AFTER UPDATE ON `item` FOR EACH ROW BEGIN
    IF NEW.saldo_estoque_atual < 1 THEN
        UPDATE item
        SET status = 'em falta'
        WHERE id_item = NEW.id_item;
    END IF;
END
$$
DELIMITER ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `municipio`
--

CREATE TABLE `municipio` (
  `id_municipio` int(11) NOT NULL,
  `nome_municipio` varchar(80) NOT NULL,
  `id_estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `municipio`
--

INSERT INTO `municipio` (`id_municipio`, `nome_municipio`, `id_estado`) VALUES
(1, 'Santa Cruz do Sul', 21),
(2, 'Vera Cruz', 21),
(3, 'Rio Branco', 1),
(4, 'Maceió', 2),
(5, 'Macapá', 3),
(6, 'Manaus', 4),
(7, 'Salvador', 5),
(8, 'Fortaleza', 6),
(9, 'Brasília', 7),
(10, 'Vitória', 8),
(11, 'Goiânia', 9),
(12, 'São Luís', 10),
(13, 'Cuiabá', 11),
(14, 'Campo Grande', 12),
(15, 'Belo Horizonte', 13),
(16, 'Belém', 14),
(17, 'João Pessoa', 15),
(18, 'Curitiba', 16),
(19, 'Recife', 17),
(20, 'Teresina', 18),
(21, 'Rio de Janeiro', 19),
(22, 'Natal', 20),
(23, 'Porto Alegre', 21),
(24, 'Porto Velho', 22),
(25, 'Boa Vista', 23),
(26, 'Florianópolis', 24),
(27, 'São Paulo', 25),
(28, 'Aracaju', 26),
(29, 'Palmas', 27);

-- --------------------------------------------------------

--
-- Estrutura da tabela `promocao`
--

CREATE TABLE `promocao` (
  `id_promocao` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `valor_item` decimal(11,2) NOT NULL,
  `status` enum('ativo','inativo') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `promocao`
--

INSERT INTO `promocao` (`id_promocao`, `id_cliente`, `id_item`, `valor_item`, `status`) VALUES
(1, 2, 3, '6.00', 'ativo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `recebimento_venda`
--

CREATE TABLE `recebimento_venda` (
  `id_recebimento_venda` int(11) NOT NULL,
  `id_venda` int(11) NOT NULL,
  `id_forma_pagamento` int(11) NOT NULL,
  `ativo` binary(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sis_log_registro`
--

CREATE TABLE `sis_log_registro` (
  `id_log_registro` int(11) NOT NULL,
  `id_tipo_operacao` int(11) NOT NULL,
  `id_usuario_registro` int(11) NOT NULL,
  `ativo` binary(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_operacao`
--

CREATE TABLE `tipo_operacao` (
  `id_tipo_operacao` int(11) NOT NULL,
  `denominacao` varchar(50) NOT NULL,
  `ativo` enum('y','n') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `tipo_operacao`
--

INSERT INTO `tipo_operacao` (`id_tipo_operacao`, `denominacao`, `ativo`) VALUES
(1, 'INSERT', 'y'),
(2, 'UPDATE', 'y'),
(3, 'DELETE', 'y');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_recebimento`
--

CREATE TABLE `tipo_recebimento` (
  `id_tipo_recebimento` int(11) NOT NULL,
  `nome_tipo_recebimento` varchar(50) NOT NULL,
  `ativo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `tipo_recebimento`
--

INSERT INTO `tipo_recebimento` (`id_tipo_recebimento`, `nome_tipo_recebimento`, `ativo`) VALUES
(1, 'Dinheiro', 1),
(2, 'Pix', 1),
(3, 'Nota a prazo', 1),
(4, 'Crédito', 1),
(5, 'Débito', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `id_tipo_usuario` int(11) NOT NULL,
  `tipo_usuario` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `id_tipo_usuario`, `nome_usuario`, `login`, `ativo`) VALUES
(1, 1, 'Joao', 'joaoaugusto@gmail.com', 'y'),
(2, 2, 'Gabriel', 'gabriel29@gmail.com', 'y'),
(3, 1, 'Pedro', 'pedro@gmail.com', 'y'),
(4, 2, 'Rafael', 'rafael@gmail.com', 'y');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `bairro`
--
ALTER TABLE `bairro`
  ADD PRIMARY KEY (`id_bairro`),
  ADD KEY `id_municipio` (`id_municipio`);

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`),
  ADD KEY `id_municipio` (`id_municipio`);

--
-- Índices para tabela `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id_estado`);

--
-- Índices para tabela `forma_pagamento`
--
ALTER TABLE `forma_pagamento`
  ADD PRIMARY KEY (`id_forma_pagamento`),
  ADD KEY `id_tipo_recebimento` (`id_tipo_recebimento`);

--
-- Índices para tabela `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id_item`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Índices para tabela `item_venda`
--
ALTER TABLE `item_venda`
  ADD PRIMARY KEY (`id_item_venda`),
  ADD KEY `id_item` (`id_item`),
  ADD KEY `id_venda` (`id_venda`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Índices para tabela `municipio`
--
ALTER TABLE `municipio`
  ADD PRIMARY KEY (`id_municipio`),
  ADD KEY `id_estado` (`id_estado`);

--
-- Índices para tabela `promocao`
--
ALTER TABLE `promocao`
  ADD PRIMARY KEY (`id_promocao`);

--
-- Índices para tabela `recebimento_venda`
--
ALTER TABLE `recebimento_venda`
  ADD PRIMARY KEY (`id_recebimento_venda`),
  ADD KEY `id_forma_pagamento` (`id_forma_pagamento`),
  ADD KEY `id_venda` (`id_venda`);

--
-- Índices para tabela `sis_log_registro`
--
ALTER TABLE `sis_log_registro`
  ADD PRIMARY KEY (`id_log_registro`),
  ADD KEY `id_tipo_operacao` (`id_tipo_operacao`),
  ADD KEY `id_usuario_registro` (`id_usuario_registro`);

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
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_tipo_usuario` (`id_tipo_usuario`);

--
-- Índices para tabela `venda`
--
ALTER TABLE `venda`
  ADD PRIMARY KEY (`id_venda`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `bairro`
--
ALTER TABLE `bairro`
  MODIFY `id_bairro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `estado`
--
ALTER TABLE `estado`
  MODIFY `id_estado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de tabela `forma_pagamento`
--
ALTER TABLE `forma_pagamento`
  MODIFY `id_forma_pagamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `item`
--
ALTER TABLE `item`
  MODIFY `id_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `item_venda`
--
ALTER TABLE `item_venda`
  MODIFY `id_item_venda` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `municipio`
--
ALTER TABLE `municipio`
  MODIFY `id_municipio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de tabela `promocao`
--
ALTER TABLE `promocao`
  MODIFY `id_promocao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id_tipo_operacao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `venda`
--
ALTER TABLE `venda`
  MODIFY `id_venda` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `bairro`
--
ALTER TABLE `bairro`
  ADD CONSTRAINT `bairro_ibfk_1` FOREIGN KEY (`id_municipio`) REFERENCES `municipio` (`id_municipio`);

--
-- Limitadores para a tabela `forma_pagamento`
--
ALTER TABLE `forma_pagamento`
  ADD CONSTRAINT `forma_pagamento_ibfk_1` FOREIGN KEY (`id_tipo_recebimento`) REFERENCES `tipo_recebimento` (`id_tipo_recebimento`);

--
-- Limitadores para a tabela `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`);

--
-- Limitadores para a tabela `item_venda`
--
ALTER TABLE `item_venda`
  ADD CONSTRAINT `item_venda_ibfk_1` FOREIGN KEY (`id_item`) REFERENCES `item` (`id_item`),
  ADD CONSTRAINT `item_venda_ibfk_2` FOREIGN KEY (`id_venda`) REFERENCES `venda` (`id_venda`),
  ADD CONSTRAINT `item_venda_ibfk_3` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Limitadores para a tabela `municipio`
--
ALTER TABLE `municipio`
  ADD CONSTRAINT `municipio_ibfk_1` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id_estado`);

--
-- Limitadores para a tabela `recebimento_venda`
--
ALTER TABLE `recebimento_venda`
  ADD CONSTRAINT `recebimento_venda_ibfk_1` FOREIGN KEY (`id_forma_pagamento`) REFERENCES `forma_pagamento` (`id_forma_pagamento`),
  ADD CONSTRAINT `recebimento_venda_ibfk_2` FOREIGN KEY (`id_venda`) REFERENCES `venda` (`id_venda`);

--
-- Limitadores para a tabela `sis_log_registro`
--
ALTER TABLE `sis_log_registro`
  ADD CONSTRAINT `sis_log_registro_ibfk_1` FOREIGN KEY (`id_tipo_operacao`) REFERENCES `tipo_operacao` (`id_tipo_operacao`),
  ADD CONSTRAINT `sis_log_registro_ibfk_2` FOREIGN KEY (`id_usuario_registro`) REFERENCES `usuario` (`id_usuario`);

--
-- Limitadores para a tabela `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_tipo_usuario`) REFERENCES `tipo_usuario` (`id_tipo_usuario`);

--
-- Limitadores para a tabela `venda`
--
ALTER TABLE `venda`
  ADD CONSTRAINT `venda_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
