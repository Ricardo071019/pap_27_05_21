-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20-Maio-2021 às 14:29
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `pap`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `pagina` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `categoria`, `pagina`) VALUES
(1, 'Carrocaria', 'carrocaria.php'),
(2, 'Pneus', 'pneus.php'),
(3, 'Diagnositcos', 'diagnosticos.php'),
(4, 'Revisao', 'revisao.php'),
(5, 'Sitemas Travagem', 'sistemadetravagem.php'),
(6, 'Sistema Eletrico e Alimentacao', 'sia.php'),
(7, 'Embraiagem', 'embraiagem.php'),
(8, 'Motor', 'motor.php'),
(9, 'Suspensao', 'suspensao.php'),
(10, 'AC e Climatizacao', 'ac.php'),
(11, 'Escape', 'escape.php'),
(12, 'Transmissao', 'transmissao.php');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `morada` varchar(50) NOT NULL,
  `telefone` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `marcacoes`
--

CREATE TABLE `marcacoes` (
  `id_marcacao` int(11) NOT NULL,
  `Data` date NOT NULL,
  `id_servico` int(11) NOT NULL,
  `id_veiculo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `modelos`
--

CREATE TABLE `modelos` (
  `id_modelo` int(11) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `modelo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicos`
--

CREATE TABLE `servicos` (
  `id_servico` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `imagem` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `servicos`
--

INSERT INTO `servicos` (`id_servico`, `id_categoria`, `nome`, `descricao`, `imagem`) VALUES
(1, 1, 'Oticas', 'Substituição da ótica danificada do seu automóvel (ótica não incluída). Montagem e calibração da ótica nova, de acordo com as especificações do fabricante.', '2021.05.20-01.02.13.png'),
(2, 1, 'Servico Bate Chapa', 'Reposição da geometria original ou usada do(s) painel(eis) danificado(s).', '2021.05.20-12.09.36.png'),
(3, 1, 'Servico de Pintura', 'Reposição do visual original do(s) painel(eis) danificado(s)', '2021.05.20-12.10.38.png'),
(4, 1, 'Tratamento Ceramico', 'Dá uma nova vida à pintura do seu carro e aumenta a durabilidade da mesma.', '2021.05.20-12.11.17.png'),
(5, 1, 'Reparacao/Troca de Vidros', 'Avaliação do estado do vidro danificado, seguida de reparação ou troca em caso de danos profundos.', '2021.05.20-12.12.26.png'),
(6, 1, 'Escovas Limpa Vidros', 'Substituição das escovas limpa-vidros por um kit de escovas novo, de acordo com as especificações indicadas.', '2021.05.20-12.15.30.png'),
(7, 2, 'Substituicao de pneus', 'Troca aconselhada antes que o piso dos seus pneus seja utilizado além do seu limite de segurança. A nossa equipa indicar-lhe-á qual a melhor altura para a substituição dos seus pneus e qual o modelo indicado para o tipo de utilização que dá ao seu carro', '2021.05.20-12.16.41.png'),
(8, 2, 'Alinhar direcao', 'Este serviço permite aumentar o tempo de vida útil dos pneus e reduzir o consumo de combustível. O ', '2021.05.20-12.17.12.png'),
(9, 2, 'Enchimento dos pneus com Nitrogenio', 'É altamente recomendável para os pneus sobresselentes, dado que mantém a pressão dos pneus correta durante mais tempo e, provavelmente, no momento que seja forçado a utilizá-los.', '2021.05.20-12.18.06.png'),
(10, 3, 'Diagnóstico de Problema', 'A sua viatura será inspecionada, na oficina e/ou em estrada, para detetar a origem dos problemas. O preço é válido para trabalhos realizados até o máximo de uma hora.', '2021.05.20-12.20.16.png'),
(11, 3, 'Diagnostico Eletronico', 'Serão inspecionados os sistemas eletrónicos de segurança e de funcionamento do motor para descobrir se existem códigos de erro que indiquem problemas no veículo.', '2021.05.20-12.20.54.png'),
(12, 3, 'Enchimento dos pneus com Nitrogenio', 'É altamente recomendável para os pneus sobresselentes, dado que mantém a pressão dos pneus correta durante mais tempo e, provavelmente, no momento que seja forçado a utilizá-los.', '2021.05.20-12.21.22.png'),
(13, 4, 'Revisao Simples', 'Uma opção rápida e mais económica para garantir uma manutenção mínima entre revisões programadas. Inclui: Mudança de óleo recomendado pelo fabricante Filtro de óleo do motor Revisão dos principais pontos de segurança do veículo e nível dos fluídos', '2021.05.20-12.22.03.png'),
(14, 4, 'Revisao Oficial', 'A revisão que cumpre o plano de manutenção estipulado pelo fabricante automóvel. Selecione esta opção e indique a quilometragem do seu veículo para garantir que será executada a manutenção adequada.', '2021.05.20-12.22.24.png'),
(15, 4, 'Mudança de oleo', 'Mudança e reposição do nível do óleo de acordo com as especificações do fabricante. Filtro de óleo não incluído.', '2021.05.20-12.23.35.png'),
(16, 5, 'Líquido de Travoes', 'O líquido de travões antigo é substituído pelo novo e o sistema de travões é sangrado, respeitando as especificações do fabricante', '2021.05.20-13.11.45.png'),
(17, 5, 'Tambores de travao traseiros', 'Reposição dos Tambores de Travão traseiros. Peça com qualidade equivalente ao original para um sistema de travagem com fiabilidade acrescida.', '2021.05.20-12.25.40.png'),
(18, 5, 'Pastilhas de Travao Dianteiras', 'Serão substituídas as pastilhas de travão dianteiras do seu veículo.', '2021.05.20-13.12.09.png'),
(19, 6, 'Motor de Arranque', 'A função do motor de arranque é colocar o motor em movimento quando o condutor liga a ignição. Neste serviço esta componente é substituída por uma nova', '2021.05.20-12.27.48.png'),
(20, 6, 'Alternador', 'O alternador é a componente que carrega a bateria do seu veículo.', '2021.05.20-12.28.31.png'),
(21, 6, 'Servico de Pintura', 'Reposição do visual original do(s) painel(eis) danificado(s)', '2021.05.20-12.29.03.png'),
(22, 7, 'Kit de Embraiagem', 'O preço indicado para este serviço tem em conta a substituição do kit de embraiagem de origem da sua viatura por um semelhante', '2021.05.20-12.29.38.png'),
(23, 7, 'Volante do Motor', 'O preço indicado para este serviço tem em conta a substituição do volante do motor de origem da sua viatura por um semelhante.', '2021.05.20-13.10.43.png'),
(24, 7, 'Bimassa', 'Isolar a transmissão das vibrações do motor', '2021.05.20-12.31.03.png'),
(25, 8, 'Correia de Distribuicao', 'Neste serviço é mudado o kit de distribuição por completo, incluindo tensor e polia', '2021.05.20-12.31.40.png'),
(26, 8, 'Bomba de Agua', 'Substituição da bomba de água, que é uma componente essencial para controlar a temperatura do motor e evitar avarias muito graves.', '2021.05.20-12.32.08.png'),
(27, 8, 'Anticongelante', 'Reposição do nível de líquido anticongelante. Garante uma proteção acrescida contra a corrosão de todos os componentes do sistema de refrigeração.', '2021.05.20-12.32.28.png'),
(28, 8, 'Tratamento Ceramico', 'A sua troca atempada ajuda a prevenir problemas no motor. Substituição do componente antigo por um novo e correta afinação de acordo com as especificações do fabricante.', '2021.05.20-12.33.31.png'),
(29, 8, 'Suportes do motor', 'Absorve as vibrações do volante do motor e o seu peso. A sua substituição atempada garante um posicionamento do motor equilibrado.', '2021.05.20-13.05.13.png'),
(30, 8, 'Junta da Cabeca do Motor', 'Quando a junta da cabeça do motor perde as suas propriedades, a estanquicidade das câmaras de combustão fica comprometida. Motor sem compressão (ou força), é um idicador da necessidade de intervenção.', '2021.05.20-13.02.57.png'),
(31, 9, 'Amortecedores Dianteiros', 'O par dianteiro de amortecedores desgastados ou danificados será substituído.', '2021.05.20-13.03.22.png'),
(32, 9, 'Amortecedores Traseiros', 'O par traseiro de amortecedores desgastados ou danificados será substituído', '2021.05.20-13.03.53.png'),
(33, 9, 'Molas Dianteiras/Traseiras', 'O par de molas dianteiras e traseiras será substituído.', '2021.05.20-13.04.21.png'),
(34, 10, 'Recarga do Ar Condicionado', 'A verificação do seu sistema de AC deve ser feita anualmente. Serviço de recarga do gás de ar condicionado e verificação de fugas no circuito.', '2021.05.20-13.06.01.png'),
(35, 10, 'Desinfecao do habitaculo', 'Higienização com tratamento antibacteriano para um maior conforto e segurança dos ocupantes do veículo.', '2021.05.20-13.06.30.png'),
(36, 10, 'Diagnostico do Sistema de Climatizacao', 'Verificação de fugas e/ou outras anomalias no sistema de Climatização. Relatório de anomalias e indicação da intervenção adequada, caso seja necessário.', '2021.05.20-13.07.54.png'),
(37, 11, 'Sistema de Escape', 'Deteção e reparação de fugas no sistema de escape do seu automóvel. Relatório de anomalias e indicação da intervenção adequada, caso seja necessário.', '2021.05.20-13.08.25.png'),
(38, 11, 'Diagnostico a emissao de gases', 'Verificação do nível de emissão de gases do seu carro. Relatório de anomalias e indicação da intervenção adequada, caso seja necessário.', '2021.05.20-13.09.00.png'),
(39, 11, 'Filtro de Partículas', 'Substituição do filtro de partículas, de acordo com as especificações do fabricante. Garante o bom funcionamento do veículo e o controlo da emissão de gases poluentes.', '2021.05.20-13.09.31.png'),
(50, 1, 'teste', 'teste 2', '2021.05.13-13.15.38.png'),
(51, 1, 'teste2', 'mariana', '2021.05.20-01.01.37');

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculos`
--

CREATE TABLE `veiculos` (
  `id_veiculo` int(11) NOT NULL,
  `matriula` varchar(50) NOT NULL,
  `ano` int(11) NOT NULL,
  `cm` int(11) NOT NULL,
  `id_modelo` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Índices para tabela `marcacoes`
--
ALTER TABLE `marcacoes`
  ADD PRIMARY KEY (`id_marcacao`),
  ADD KEY `id_servico` (`id_servico`),
  ADD KEY `id_veiculo` (`id_veiculo`);

--
-- Índices para tabela `modelos`
--
ALTER TABLE `modelos`
  ADD PRIMARY KEY (`id_modelo`);

--
-- Índices para tabela `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`id_servico`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Índices para tabela `veiculos`
--
ALTER TABLE `veiculos`
  ADD PRIMARY KEY (`id_veiculo`),
  ADD KEY `id_modelo` (`id_modelo`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `marcacoes`
--
ALTER TABLE `marcacoes`
  MODIFY `id_marcacao` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `modelos`
--
ALTER TABLE `modelos`
  MODIFY `id_modelo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `servicos`
--
ALTER TABLE `servicos`
  MODIFY `id_servico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de tabela `veiculos`
--
ALTER TABLE `veiculos`
  MODIFY `id_veiculo` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `marcacoes`
--
ALTER TABLE `marcacoes`
  ADD CONSTRAINT `marcacoes_ibfk_1` FOREIGN KEY (`id_servico`) REFERENCES `servicos` (`id_servico`),
  ADD CONSTRAINT `marcacoes_ibfk_2` FOREIGN KEY (`id_veiculo`) REFERENCES `veiculos` (`id_veiculo`);

--
-- Limitadores para a tabela `servicos`
--
ALTER TABLE `servicos`
  ADD CONSTRAINT `servicos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`);

--
-- Limitadores para a tabela `veiculos`
--
ALTER TABLE `veiculos`
  ADD CONSTRAINT `veiculos_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  ADD CONSTRAINT `veiculos_ibfk_2` FOREIGN KEY (`id_modelo`) REFERENCES `modelos` (`id_modelo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
