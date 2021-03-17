-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 17/03/2021 às 19:51
-- Versão do servidor: 10.4.14-MariaDB-cll-lve
-- Versão do PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `wkdata`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `clientes`
--

CREATE TABLE `clientes` (
  `codigo` int(11) NOT NULL,
  `nome` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cidade` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uf` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `clientes`
--

INSERT INTO `clientes` (`codigo`, `nome`, `cidade`, `uf`) VALUES
(1, 'José Monteiro', 'São Paulo', 'SP'),
(2, 'Jonas Block', 'Campinas', 'SP'),
(3, 'Julia Mendes', 'Salvador', 'BA'),
(4, 'Mario Andrade', 'Itabuna', 'BA'),
(5, 'Maria Souza', 'Vitoria', 'ES'),
(6, 'Sara Jorge', 'Canoas', 'RS'),
(7, 'Ana Maria', 'Joaçaba', 'SP'),
(8, 'Nana Correia', 'Itabuna', 'BA'),
(9, 'Jorge Fernando', 'Foz do Iguaçu', 'PR'),
(10, 'João Silva', 'Pantanal', 'MT'),
(11, 'John Doe', 'Michigan', 'EU'),
(12, 'Mariano Server', 'Cacoal', 'RO'),
(13, 'Tavares Drei', 'Porto Velho', 'RO'),
(14, 'Augusto Dias', 'Ilhéus', 'BA'),
(15, 'Maria Alice', 'Paris', 'FR'),
(16, 'Lucas Denner', 'Cuiabá', 'MT'),
(17, 'Agenor Silva', 'Curitiba', 'PR'),
(18, 'Ana de Andrade', 'Curitiba ', 'PR'),
(19, 'Mineiro Silva', 'Florianópolis', 'SC'),
(20, 'João Amenom', 'Santos', 'SP');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pdadosgerais`
--

CREATE TABLE `pdadosgerais` (
  `npedido` int(11) NOT NULL,
  `dtemissao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `cdcliente` int(11) NOT NULL,
  `vtotal` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `pdadosgerais`
--

INSERT INTO `pdadosgerais` (`npedido`, `dtemissao`, `cdcliente`, `vtotal`) VALUES
(13, '2021-03-17 00:00:00', 4, 0),
(14, '2021-03-17 00:00:00', 4, 0),
(15, '2021-03-17 00:00:00', 2, 0),
(16, '2021-03-17 00:00:00', 3, 0),
(17, '2021-03-17 00:00:00', 4, 0),
(18, '2021-03-17 00:00:00', 5, 0),
(19, '2021-03-17 00:00:00', 4, 0),
(20, '2021-03-17 00:00:00', 5, 0),
(21, '2021-03-17 00:00:00', 5, 0),
(22, '2021-03-17 00:00:00', 2, 0),
(23, '2021-03-17 00:00:00', 2, 0),
(24, '2021-03-17 00:00:00', 4, 0),
(25, '2021-03-17 00:00:00', 4, 0),
(26, '2021-03-17 00:00:00', 4, 0),
(27, '2021-03-17 00:00:00', 4, 0),
(28, '2021-03-17 00:00:00', 3, 0),
(29, '2021-03-17 00:00:00', 3, 0),
(30, '2021-03-17 00:00:00', 5, 0),
(31, '2021-03-17 00:00:00', 5, 0),
(32, '2021-03-17 00:00:00', 7, 0),
(33, '2021-03-17 00:00:00', 3, 0),
(34, '2021-03-17 00:00:00', 5, 0),
(35, '2021-03-17 00:00:00', 5, 0),
(36, '2021-03-17 00:00:00', 4, 0),
(37, '2021-03-17 00:00:00', 4, 0),
(38, '2021-03-17 00:00:00', 4, 0),
(39, '2021-03-17 00:00:00', 3, 0),
(40, '2021-03-17 00:00:00', 3, 0),
(41, '2021-03-17 00:00:00', 2, 0),
(42, '2021-03-17 00:00:00', 4, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pprodutos`
--

CREATE TABLE `pprodutos` (
  `codigo` int(11) NOT NULL,
  `npedido` int(11) NOT NULL,
  `codigoproduto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `vlrunitario` double NOT NULL,
  `vlrtotal` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `pprodutos`
--

INSERT INTO `pprodutos` (`codigo`, `npedido`, `codigoproduto`, `quantidade`, `vlrunitario`, `vlrtotal`) VALUES
(1, 33, 3, 4, 49.99, 199.96),
(2, 33, 3, 4, 49.99, 199.96),
(3, 34, 5, 2, 9.9, 19.8),
(4, 34, 5, 2, 99.89, 19.8),
(5, 35, 5, 2, 4.9, 9.8),
(6, 35, 5, 4, 64.8, 259.2),
(7, 36, 4, 2, 49.99, 99.98),
(8, 36, 4, 2, 11.6, 23.2),
(9, 37, 4, 1, 49.99, 49.99),
(10, 38, 4, 1, 4.9, 4.9),
(11, 38, 4, 5, 9.9, 49.5),
(12, 39, 3, 1, 35.6, 35.6),
(13, 39, 3, 1, 11.6, 35.6),
(14, 39, 3, 5, 5.6, 28),
(15, 39, 3, 1, 5.6, 5.6),
(16, 40, 3, 1, 4.9, 4.9),
(17, 40, 3, 1, 64.8, 4.9),
(18, 40, 3, 1, 64.8, 4.9),
(19, 40, 3, 1, 54.9, 4.9);

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `codigo` int(11) NOT NULL,
  `descricao` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prcvenda` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`codigo`, `descricao`, `prcvenda`) VALUES
(1, 'Manta', 34.9),
(2, 'Toalha', 35.6),
(3, 'Chave', 49.99),
(4, 'Caneta', 4.9),
(5, 'Caderno', 11.6),
(6, 'Chapeu', 9.9),
(7, 'Lustre', 64.8),
(8, 'Jornal', 5.6),
(9, 'Sapato', 99.89),
(10, 'Bermuda', 24.59),
(11, 'Cantil', 25.55),
(12, 'Chaveiro', 9.9),
(13, 'Borracha', 2.34),
(14, 'Tinta', 65.6),
(15, 'Blusa', 49.9),
(16, 'Maçaneta', 24.88),
(17, 'Corda', 1.5),
(18, 'Corneta', 9.9),
(19, 'Sapatilha', 44.7),
(20, 'Meia', 5.68),
(21, 'Luva', 9.89),
(22, 'Xícara', 14.99),
(23, 'Celular', 879.59),
(24, 'Fone de Ouvido', 33.9),
(25, 'Caixa de Som', 82.99),
(26, 'Monitor', 365.6),
(27, 'Teclado', 49.9);

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`codigo`);

--
-- Índices de tabela `pdadosgerais`
--
ALTER TABLE `pdadosgerais`
  ADD PRIMARY KEY (`npedido`),
  ADD KEY `cdcliente` (`cdcliente`);

--
-- Índices de tabela `pprodutos`
--
ALTER TABLE `pprodutos`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `codproduto` (`codigoproduto`),
  ADD KEY `npedido` (`npedido`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`codigo`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `pdadosgerais`
--
ALTER TABLE `pdadosgerais`
  MODIFY `npedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de tabela `pprodutos`
--
ALTER TABLE `pprodutos`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `pprodutos`
--
ALTER TABLE `pprodutos`
  ADD CONSTRAINT `pprodutos_ibfk_1` FOREIGN KEY (`npedido`) REFERENCES `pdadosgerais` (`npedido`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
