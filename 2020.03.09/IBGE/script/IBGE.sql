-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           5.6.13 - MySQL Community Server (GPL)
-- OS do Servidor:               Win32
-- HeidiSQL Versão:              10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para test
CREATE DATABASE IF NOT EXISTS `test` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `test`;

-- Copiando estrutura para tabela test.cidade
CREATE TABLE IF NOT EXISTS `cidade` (
  `id_c` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `populacao` varchar(100) NOT NULL,
  `data_fundacao` date NOT NULL,
  `id_uf` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_c`),
  KEY `fk_cidade_id_uf` (`id_uf`),
  CONSTRAINT `fk_cidade_id_uf` FOREIGN KEY (`id_uf`) REFERENCES `uf` (`id_uf`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela test.cidade: ~25 rows (aproximadamente)
/*!40000 ALTER TABLE `cidade` DISABLE KEYS */;
INSERT INTO `cidade` (`id_c`, `nome`, `populacao`, `data_fundacao`, `id_uf`) VALUES
	(1, 'Cafelandia', '17.500', '1925-07-30', 1),
	(2, 'São Gonsalo', '1.084.839', '1579-04-06', 2),
	(3, 'Brasilia', '2.481.000', '1960-04-21', 3),
	(9, 'Pirajui', '24.546', '1915-03-29', 1),
	(10, 'Lins', '76.092', '1919-12-27', 1),
	(11, 'Bauru', '337.094', '1896-08-01', 1),
	(12, 'Angra dos Reis', '169.270', '1502-01-06', 2),
	(13, 'Barra Mansa', '171.125', '1832-10-03', 2),
	(14, 'Cabo Frio', '140.269', '1615-11-13', 2),
	(15, 'Carmo', '17.439', '1832-05-29', 2),
	(16, 'Adelanto', '37,765', '1850-01-15', 7),
	(17, 'Agoura Hills', '20.330', '1805-03-11', 7),
	(18, 'Alameda', '73.812', '1700-07-09', 7),
	(19, 'Orlando', '280.257', '1808-08-26', 8),
	(20, 'Miami', '463.347', '1769-09-11', 8),
	(21, 'Tampa', '385.430', '1811-11-13', 8),
	(22, 'Dallas', '1.341.000', '1755-12-16', 9),
	(23, 'Waco', '271.942', '1819-12-10', 9),
	(24, 'Plano', '286.143', '1542-03-07', 9),
	(25, 'Cascais', '142.669', '1622-07-24', 4),
	(26, 'Sintra', '75.000', '1701-06-19', 4),
	(27, 'Lisboa', '542.123', '1666-09-10', 4),
	(28, 'Barcelo', '321.321', '2020-03-03', 5),
	(29, 'Vieira Do Minho', '82.991', '2020-03-31', 5),
	(30, 'Fafe', '50.633', '1400-07-09', 5),
	(31, 'Porto Alegre', '56.999', '2020-10-09', 6),
	(32, 'Maia', '426.999', '2020-12-31', 6),
	(33, 'Guaiba', '565.665', '1020-03-19', 6);
/*!40000 ALTER TABLE `cidade` ENABLE KEYS */;

-- Copiando estrutura para tabela test.pais
CREATE TABLE IF NOT EXISTS `pais` (
  `id_p` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `continente` varchar(50) NOT NULL,
  PRIMARY KEY (`id_p`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela test.pais: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` (`id_p`, `nome`, `continente`) VALUES
	(1, 'Brasil', 'Americano'),
	(2, 'EUA', 'Americano'),
	(3, 'Portugal', 'Europa');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;

-- Copiando estrutura para tabela test.uf
CREATE TABLE IF NOT EXISTS `uf` (
  `id_uf` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `sigla` varchar(100) NOT NULL,
  `id_p` int(11) NOT NULL,
  PRIMARY KEY (`id_uf`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela test.uf: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `uf` DISABLE KEYS */;
INSERT INTO `uf` (`id_uf`, `nome`, `sigla`, `id_p`) VALUES
	(1, 'São Paulo', 'SP', 1),
	(2, 'Rio de Janeiro', 'RJ', 1),
	(3, 'Distrito Federal', 'DF', 1),
	(4, 'Lisboa', 'LI', 1),
	(5, 'Braga', 'BG', 1),
	(6, 'Porto', 'PT', 1),
	(7, 'California', 'CA', 1),
	(8, 'Florida', 'FL', 1),
	(9, 'Texas', 'TX', 0);
/*!40000 ALTER TABLE `uf` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
