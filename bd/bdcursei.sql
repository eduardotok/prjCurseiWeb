-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27/04/2025 às 05:04
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bdcursei`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(43, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(44, '2025_04_19_172201_create_tb_admin_table', 1),
(45, '2025_04_19_172605_create_tb_user_table', 1),
(46, '2025_04_19_172606_create_tb_instituicao_table', 1),
(47, '2025_04_19_172911_create_tb_preferencia_table', 1),
(48, '2025_04_19_173053_create_tb_user_preferencia_table', 1),
(49, '2025_04_19_185735_create_tb_mensagem_table', 1),
(50, '2025_04_19_193650_create_tb_chat_table', 1),
(51, '2025_04_19_194332_create_tb_conteudo_curtei_table', 1),
(52, '2025_04_19_194333_create_tb_curtei_table', 1),
(53, '2025_04_19_194334_create_tb_post_table', 1),
(54, '2025_04_19_194335_create_tb_comentario_table', 1),
(55, '2025_04_19_195005_create_tb_resposta_comentario_table', 1),
(56, '2025_04_19_195149_create_tb_destaques_table', 1),
(57, '2025_04_19_195409_create_tb_storyes_table', 1),
(58, '2025_04_19_195626_create_tb_mencao_storyes_table', 1),
(59, '2025_04_19_195944_create_tb_planejamento_table', 1),
(60, '2025_04_19_200745_create_tb_tag_curtei_table', 1),
(61, '2025_04_19_200951_create_tb_denuncia_table', 1),
(62, '2025_04_19_201516_create_tb_curtida_table', 1),
(63, '2025_04_19_211801_create_tb_seguidores_table', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome_admin` varchar(100) NOT NULL,
  `email_admin` varchar(100) NOT NULL,
  `password` varchar(300) NOT NULL,
  `token_admin` varchar(300) NOT NULL,
  `img_admin` varchar(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `tb_admin`
--

INSERT INTO `tb_admin` (`id`, `nome_admin`, `email_admin`, `password`, `token_admin`, `img_admin`, `created_at`, `updated_at`) VALUES
(1, 'Eduardo', 'Eduardo@gmail.com', '$2y$10$Zss18l9nq/OjV7zwEf0w6OxOCBdcZIdxplv1EwGEqTsY.x2qQEDr2', '0Pxl0D5B27IVR8g8iSQgeXXBFAht63jpdfqd1umz', 'default_admin.png', '2025-04-27 00:39:15', '2025-04-27 00:39:15');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_chat`
--

CREATE TABLE `tb_chat` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user_recebidor` bigint(20) UNSIGNED NOT NULL,
  `id_mensagem` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_comentario`
--

CREATE TABLE `tb_comentario` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comentario` varchar(255) NOT NULL,
  `status_comentario` tinyint(1) NOT NULL,
  `id_user` bigint(20) UNSIGNED DEFAULT NULL,
  `id_post` bigint(20) UNSIGNED DEFAULT NULL,
  `id_curtei` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_conteudo_curtei`
--

CREATE TABLE `tb_conteudo_curtei` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `conteudo_curtei_1` varchar(255) DEFAULT NULL,
  `conteudo_curtei_2` varchar(255) DEFAULT NULL,
  `conteudo_curtei_3` varchar(255) DEFAULT NULL,
  `conteudo_curtei_4` varchar(255) DEFAULT NULL,
  `conteudo_curtei_5` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `tb_conteudo_curtei`
--

INSERT INTO `tb_conteudo_curtei` (`id`, `conteudo_curtei_1`, `conteudo_curtei_2`, `conteudo_curtei_3`, `conteudo_curtei_4`, `conteudo_curtei_5`, `created_at`, `updated_at`) VALUES
(1, 'Conteúdo 1 do Curtei', 'Conteúdo 2 do Curtei', 'Conteúdo 3 do Curtei', 'Conteúdo 4 do Curtei', 'Conteúdo 5 do Curtei', '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(2, 'Conteúdo 6 do Curtei', 'Conteúdo 7 do Curtei', 'Conteúdo 8 do Curtei', 'Conteúdo 9 do Curtei', 'Conteúdo 10 do Curtei', '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(3, 'Conteúdo 11 do Curtei', 'Conteúdo 12 do Curtei', 'Conteúdo 13 do Curtei', 'Conteúdo 14 do Curtei', 'Conteúdo 15 do Curtei', '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(4, 'Conteúdo 16 do Curtei', 'Conteúdo 17 do Curtei', 'Conteúdo 18 do Curtei', 'Conteúdo 19 do Curtei', 'Conteúdo 20 do Curtei', '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(5, 'Conteúdo 21 do Curtei', 'Conteúdo 22 do Curtei', 'Conteúdo 23 do Curtei', 'Conteúdo 24 do Curtei', 'Conteúdo 25 do Curtei', '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(6, 'Conteúdo 26 do Curtei', 'Conteúdo 27 do Curtei', 'Conteúdo 28 do Curtei', 'Conteúdo 29 do Curtei', 'Conteúdo 30 do Curtei', '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(7, 'Conteúdo 31 do Curtei', 'Conteúdo 32 do Curtei', 'Conteúdo 33 do Curtei', 'Conteúdo 34 do Curtei', 'Conteúdo 35 do Curtei', '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(8, 'Conteúdo 36 do Curtei', 'Conteúdo 37 do Curtei', 'Conteúdo 38 do Curtei', 'Conteúdo 39 do Curtei', 'Conteúdo 40 do Curtei', '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(9, 'Conteúdo 41 do Curtei', 'Conteúdo 42 do Curtei', 'Conteúdo 43 do Curtei', 'Conteúdo 44 do Curtei', 'Conteúdo 45 do Curtei', '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(10, 'Conteúdo 46 do Curtei', 'Conteúdo 47 do Curtei', 'Conteúdo 48 do Curtei', 'Conteúdo 49 do Curtei', 'Conteúdo 50 do Curtei', '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(11, 'Conteúdo 51 do Curtei', 'Conteúdo 52 do Curtei', 'Conteúdo 53 do Curtei', 'Conteúdo 54 do Curtei', 'Conteúdo 55 do Curtei', '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(12, 'Conteúdo 56 do Curtei', 'Conteúdo 57 do Curtei', 'Conteúdo 58 do Curtei', 'Conteúdo 59 do Curtei', 'Conteúdo 60 do Curtei', '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(13, 'Conteúdo 61 do Curtei', 'Conteúdo 62 do Curtei', 'Conteúdo 63 do Curtei', 'Conteúdo 64 do Curtei', 'Conteúdo 65 do Curtei', '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(14, 'Conteúdo 66 do Curtei', 'Conteúdo 67 do Curtei', 'Conteúdo 68 do Curtei', 'Conteúdo 69 do Curtei', 'Conteúdo 70 do Curtei', '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(15, 'Conteúdo 71 do Curtei', 'Conteúdo 72 do Curtei', 'Conteúdo 73 do Curtei', 'Conteúdo 74 do Curtei', 'Conteúdo 75 do Curtei', '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(16, 'Conteúdo 76 do Curtei', 'Conteúdo 77 do Curtei', 'Conteúdo 78 do Curtei', 'Conteúdo 79 do Curtei', 'Conteúdo 80 do Curtei', '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(17, 'Conteúdo 81 do Curtei', 'Conteúdo 82 do Curtei', 'Conteúdo 83 do Curtei', 'Conteúdo 84 do Curtei', 'Conteúdo 85 do Curtei', '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(18, 'Conteúdo 86 do Curtei', 'Conteúdo 87 do Curtei', 'Conteúdo 88 do Curtei', 'Conteúdo 89 do Curtei', 'Conteúdo 90 do Curtei', '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(19, 'Conteúdo 91 do Curtei', 'Conteúdo 92 do Curtei', 'Conteúdo 93 do Curtei', 'Conteúdo 94 do Curtei', 'Conteúdo 95 do Curtei', '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(20, 'Conteúdo 96 do Curtei', 'Conteúdo 97 do Curtei', 'Conteúdo 98 do Curtei', 'Conteúdo 99 do Curtei', 'Conteúdo 100 do Curtei', '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(21, 'Conteúdo 101 do Curtei', 'Conteúdo 102 do Curtei', 'Conteúdo 103 do Curtei', 'Conteúdo 104 do Curtei', 'Conteúdo 105 do Curtei', '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(22, 'Conteúdo 106 do Curtei', 'Conteúdo 107 do Curtei', 'Conteúdo 108 do Curtei', 'Conteúdo 109 do Curtei', 'Conteúdo 110 do Curtei', '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(23, 'Conteúdo 111 do Curtei', 'Conteúdo 112 do Curtei', 'Conteúdo 113 do Curtei', 'Conteúdo 114 do Curtei', 'Conteúdo 115 do Curtei', '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(24, 'Conteúdo 116 do Curtei', 'Conteúdo 117 do Curtei', 'Conteúdo 118 do Curtei', 'Conteúdo 119 do Curtei', 'Conteúdo 120 do Curtei', '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(25, 'Conteúdo 121 do Curtei', 'Conteúdo 122 do Curtei', 'Conteúdo 123 do Curtei', 'Conteúdo 124 do Curtei', 'Conteúdo 125 do Curtei', '2025-04-27 00:39:15', '2025-04-27 00:39:15');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_curtei`
--

CREATE TABLE `tb_curtei` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titulo_curtei` varchar(100) NOT NULL,
  `descricao_curtei` longtext DEFAULT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_conteudo_curtei` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `tb_curtei`
--

INSERT INTO `tb_curtei` (`id`, `titulo_curtei`, `descricao_curtei`, `id_user`, `id_conteudo_curtei`, `created_at`, `updated_at`) VALUES
(1, 'Título Curtei 1', 'Descrição do conteúdo curtei 1', 25, 1, '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(2, 'Título Curtei 2', 'Descrição do conteúdo curtei 2', 4, 25, '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(3, 'Título Curtei 3', 'Descrição do conteúdo curtei 3', 5, 13, '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(4, 'Título Curtei 4', 'Descrição do conteúdo curtei 4', 5, 2, '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(5, 'Título Curtei 5', 'Descrição do conteúdo curtei 5', 9, 15, '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(6, 'Título Curtei 6', 'Descrição do conteúdo curtei 6', 17, 19, '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(7, 'Título Curtei 7', 'Descrição do conteúdo curtei 7', 8, 20, '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(8, 'Título Curtei 8', 'Descrição do conteúdo curtei 8', 1, 11, '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(9, 'Título Curtei 9', 'Descrição do conteúdo curtei 9', 4, 18, '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(10, 'Título Curtei 10', 'Descrição do conteúdo curtei 10', 20, 9, '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(11, 'Título Curtei 11', 'Descrição do conteúdo curtei 11', 25, 21, '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(12, 'Título Curtei 12', 'Descrição do conteúdo curtei 12', 4, 2, '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(13, 'Título Curtei 13', 'Descrição do conteúdo curtei 13', 6, 12, '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(14, 'Título Curtei 14', 'Descrição do conteúdo curtei 14', 16, 25, '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(15, 'Título Curtei 15', 'Descrição do conteúdo curtei 15', 15, 7, '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(16, 'Título Curtei 16', 'Descrição do conteúdo curtei 16', 13, 19, '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(17, 'Título Curtei 17', 'Descrição do conteúdo curtei 17', 11, 20, '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(18, 'Título Curtei 18', 'Descrição do conteúdo curtei 18', 3, 20, '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(19, 'Título Curtei 19', 'Descrição do conteúdo curtei 19', 4, 3, '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(20, 'Título Curtei 20', 'Descrição do conteúdo curtei 20', 11, 24, '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(21, 'Título Curtei 21', 'Descrição do conteúdo curtei 21', 23, 20, '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(22, 'Título Curtei 22', 'Descrição do conteúdo curtei 22', 17, 21, '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(23, 'Título Curtei 23', 'Descrição do conteúdo curtei 23', 22, 21, '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(24, 'Título Curtei 24', 'Descrição do conteúdo curtei 24', 12, 13, '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(25, 'Título Curtei 25', 'Descrição do conteúdo curtei 25', 15, 9, '2025-04-27 00:39:15', '2025-04-27 00:39:15');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_curtida`
--

CREATE TABLE `tb_curtida` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status_curtida` tinyint(1) NOT NULL,
  `id_user` bigint(20) UNSIGNED DEFAULT NULL,
  `id_post` bigint(20) UNSIGNED DEFAULT NULL,
  `id_storyes` bigint(20) UNSIGNED DEFAULT NULL,
  `id_curtei` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `tb_curtida`
--

INSERT INTO `tb_curtida` (`id`, `status_curtida`, `id_user`, `id_post`, `id_storyes`, `id_curtei`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 68, NULL, NULL, '2025-05-01 01:31:03', '2025-05-01 01:31:03'),
(2, 1, 19, 70, NULL, NULL, '2025-04-27 01:56:17', '2025-04-27 01:56:17'),
(3, 0, 4, 70, NULL, NULL, '2025-04-27 01:57:05', '2025-04-27 01:57:05'),
(4, 1, 3, 70, NULL, NULL, '2025-04-27 01:57:32', '2025-04-27 01:57:32'),
(5, 1, 14, 69, NULL, NULL, '2025-04-27 01:58:13', '2025-04-27 01:58:13');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_denuncia`
--

CREATE TABLE `tb_denuncia` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `motivo_denuncia` varchar(255) NOT NULL,
  `descricao_denuncia` longtext NOT NULL,
  `id_user_denunciador` bigint(20) UNSIGNED DEFAULT NULL,
  `id_user_denunciado` bigint(20) UNSIGNED DEFAULT NULL,
  `id_post_denunciado` bigint(20) UNSIGNED DEFAULT NULL,
  `id_storyes_denunciado` bigint(20) UNSIGNED DEFAULT NULL,
  `id_curtei_denunciado` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_destaques`
--

CREATE TABLE `tb_destaques` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data_destaques` date NOT NULL,
  `status_destaques` tinyint(1) NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_instituicao`
--

CREATE TABLE `tb_instituicao` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cnpj_instituicao` varchar(18) NOT NULL,
  `verificado_instituicao` tinyint(1) NOT NULL,
  `logradouro_instituicao` varchar(255) NOT NULL,
  `num_logradouro_instituicao` varchar(50) NOT NULL,
  `bairro_instituicao` varchar(255) NOT NULL,
  `cidade_instituicao` varchar(255) NOT NULL,
  `estado_instituicao` varchar(2) NOT NULL,
  `cep_instituicao` varchar(9) NOT NULL,
  `complemento_instituicao` varchar(255) DEFAULT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `tb_instituicao`
--

INSERT INTO `tb_instituicao` (`id`, `cnpj_instituicao`, `verificado_instituicao`, `logradouro_instituicao`, `num_logradouro_instituicao`, `bairro_instituicao`, `cidade_instituicao`, `estado_instituicao`, `cep_instituicao`, `complemento_instituicao`, `id_user`, `created_at`, `updated_at`) VALUES
(1, '12.345.678/0001-90', 1, 'Rua das Flores', '123', 'Centro', 'São Paulo', 'SP', '01001-000', 'Próximo à praça', 21, '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(2, '98.765.432/0001-11', 0, 'Avenida Principal', '456', 'Jardim das Palmeiras', 'Rio de Janeiro', 'RJ', '20000-000', 'Sala 101', 22, '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(3, '11.222.333/0001-44', 1, 'Travessa das Oliveiras', '789', 'Bela Vista', 'Belo Horizonte', 'MG', '30000-000', 'Fundos', 23, '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(4, '55.666.777/0001-22', 1, 'Alameda dos Anjos', '101', 'Vila Nova', 'Curitiba', 'PR', '80000-000', 'Casa 2', 24, '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(5, '88.999.000/0001-55', 0, 'R. Feliciano de Mendonça, 290 ', '321', 'Guaianases', 'São Paulo', 'SP', '40000-000', 'Próximo a praça da glória', 25, '2025-04-27 00:39:15', '2025-04-27 00:39:15');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_mencao_storyes`
--

CREATE TABLE `tb_mencao_storyes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user_mencionado` bigint(20) UNSIGNED NOT NULL,
  `id_storyes` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_mensagem`
--

CREATE TABLE `tb_mensagem` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data_mensagem` date NOT NULL,
  `conteudo_mensagem` longtext NOT NULL,
  `status_mensagem` enum('enviado','recebido','visto') NOT NULL,
  `id_user_enviador` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_planejamento`
--

CREATE TABLE `tb_planejamento` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome_planejamento` varchar(100) NOT NULL,
  `data_inicio_planejamento` date NOT NULL,
  `data_fim_planejamento` date NOT NULL,
  `status_planejamento` tinyint(1) NOT NULL,
  `id_post` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_post`
--

CREATE TABLE `tb_post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status_post` tinyint(1) NOT NULL,
  `titulo_post` varchar(150) NOT NULL,
  `conteudo_post` varchar(36) NOT NULL,
  `descricao_post` varchar(255) DEFAULT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `tb_post`
--

INSERT INTO `tb_post` (`id`, `status_post`, `titulo_post`, `conteudo_post`, `descricao_post`, `id_user`, `created_at`, `updated_at`) VALUES
(68, 1, 'Inscrições abertas!', 'EtecInscricoes.jpg', 'Atenção candidatos do Vestibulinho!\r\nAs inscrições para nossos cursos para o 1° semestre de 2025 estão abertas!\r\nAproveitem as chances para ingressar em cursos de Ensino Médio ou Cursos Técnicos.', 25, '2025-04-26 21:58:29', '2025-04-26 21:58:29'),
(69, 1, 'Já sabe como fazer a inscrição?', 'EtecInstrucoes.png', 'Veja onde consultar seu local de exame e o que levar. Não cometa o erro de ir sem levar os documentos necessários. ', 25, '2025-04-26 22:35:15', '2025-04-26 22:35:15'),
(70, 1, 'Manual do candidato', 'EtecManual.png', 'Leia o manual do candidato para não se preparar e não cometer nenhum erro.', 25, '2025-04-26 22:39:34', '2025-04-26 22:39:34'),
(71, 1, 'Inscrições abertas.', 'FatecInscricoes.jpg', 'Inscrições abertas para a Fatec. Veja o calendário e se prepare para ingressar no ensino superior', 21, '2025-04-26 22:42:29', '2025-04-26 22:42:29'),
(72, 1, 'Período de isenção', 'FatecIsencao.png', 'Aproveite o período de isenção antes que acabe! ', 21, '2025-04-26 22:48:59', '2025-04-26 22:48:59'),
(73, 1, 'Etapas do processo seletivo', 'FatecProcesso.png', 'Confira as datas do nosso processo seletivo para não ter chances de perder o período.', 21, '2025-04-26 22:51:09', '2025-04-26 22:51:09'),
(74, 1, 'Inscrições abertas pro Senai', 'SenaiInscricoes.jpeg', 'Inscrições abertas para os cursos gratuitos do Senai! Comece o ano investindo no seu crescimento próprio. ', 22, '2025-04-26 22:57:02', '2025-04-26 22:57:02'),
(75, 1, 'Aproveite o processo seletivo', 'SenaiDica.png', 'Faça uma formação profissionalizante de qualidade.', 22, '2025-04-26 23:03:17', '2025-04-26 23:03:17'),
(76, 1, '10 mil vagas gratuitas.', 'SenaiVagas.png', 'Venha ser um dos nossos alunos neste ano e se inscreva para uma das vagas em algum curso de seu interesse!', 22, '2025-04-26 23:10:28', '2025-04-26 23:10:28'),
(77, 1, 'Inscrições do Sesi', 'SesiInscricoes.png', 'Acesse o Sesi e confira a disponibilidade de vagas.', 23, '2025-04-26 23:12:55', '2025-04-26 23:12:55'),
(78, 1, 'Não esqueça de fazer sua inscrição!', 'SesiNaoEsqueca.jpg', 'As inscrições de 2025 ainda estão abertas. Não perca a chance de fazer sua inscrição no Sesi. ', 23, '2025-04-26 23:16:45', '2025-04-26 23:16:45'),
(79, 1, 'Semana de inovação', 'EnapSemanaInovacao.png', 'As inscrições estão abertas para a semana de inovação! Entre no site e aproveite a oportunidade para conhecer este grande evento!', 24, '2025-04-26 23:20:30', '2025-04-26 23:20:30'),
(81, 1, 'Seleção para bolsa de Estudos!', 'EnapBolsaEstudo.png', 'A seleção para bolsa de estudos começou. Faça sua inscrição o quanmt', 24, '2025-04-26 23:32:46', '2025-04-26 23:32:46'),
(82, 1, 'Gestão pública', 'EnapGestao.png', 'Especialização de gestão pública', 24, '2025-04-26 23:32:57', '2025-04-26 23:32:57'),
(83, 1, 'quero dormir', 'imgRian.jpg', 'são 04:43 e to desde as 21:00 codando e não resolvi tudo kkkksocorro', 2, '2025-04-26 23:43:08', '2025-04-26 23:43:08'),
(84, 1, 'paz', 'imgRian2.jpeg', 'sexta feira, play tv. tamo como? no recolhe.', 2, '2025-04-26 23:51:19', '2025-04-26 23:51:19'),
(85, 1, 'slk isso é crueldade', 'imgHugo.jpg ', 'rapazeada oia oq eu aprendi KKKK', 4, '2025-04-26 23:53:43', '2025-04-26 23:53:43'),
(86, 1, 'Deus tenha piedade', 'imgHugo2.jpg', 'slk se minha mãe descobrir q eu to usando Java ela vai me deserdar tamaluco', 4, '2025-04-26 23:58:28', '2025-04-26 23:58:28'),
(87, 1, 'é oficial:', 'imgBreno.png', 'perdi meu projeto todo pq o arquivo corrompeu', 3, '2025-04-26 23:59:42', '2025-04-26 23:59:42'),
(88, 1, 'finalmente algo saiu', 'imgBreno2.png', 'horas no pc, mas finalmente saiu algo aqui', 3, '2025-04-27 00:04:02', '2025-04-27 00:04:02'),
(89, 1, '!!!!!!', 'imgCarol.png', 'Terminei esses dias e amei, entrou pra lista de meus animes favoritos com certeza!!! ', 8, '2025-04-27 00:09:31', '2025-04-27 00:09:31'),
(90, 1, 'aaa eu preciso disso', 'imgCarol2.png', 'Gente, alguém que já leu pode me dizer se esse livro é bom? To procurando um livro bom de programação pra sabe, programar...', 8, '2025-04-27 00:11:17', '2025-04-27 00:11:17'),
(91, 1, 'anotando', 'imgEduardo.jpg', 'estudando e anotando passo por passo.', 6, '2025-04-27 00:13:06', '2025-04-27 00:13:06'),
(92, 1, 'desculpa mãe desculpa pai', 'imgEduardo2.png', 'desculpa gente, fazem uns dias já, mas eu comecei a usar PHP... eu errei gente desculpa', 6, '2025-04-27 00:14:41', '2025-04-27 00:14:41'),
(93, 1, 'só reclamação aff', 'imgEllen.jpg', 'horas codando uma telinha bonitinha pra todo mundo apontar e dar risada, mds', 7, '2025-04-27 00:16:08', '2025-04-27 00:16:08'),
(94, 1, 'só queria um canto responsa', 'imgEllen2.jpg', 'Deus lhe pedi um canto para ficar e dormir, não um templo demolido acabado feio desmoronado...', 7, '2025-04-27 00:19:51', '2025-04-27 00:19:51'),
(95, 1, 'é o maior', 'imgFelipe.jpeg', '\"ai q n sei oq corinthians n sei oq lá\" xiu, apenas aceite fi.', 9, '2025-04-27 00:21:56', '2025-04-27 00:21:56'),
(96, 1, 'esse cara é bomzão', 'imgFelipe2.jpeg', 'slk numa hora com esse cara aprendi conteudo de semaninhas. Programação Web o canal do cara, vejam lá o cara ensina bem', 9, '2025-04-27 00:24:07', '2025-04-27 00:24:07'),
(97, 1, 'prontin pra chorar', 'imgGuilherme.png', 'começando esse joguinho agr, to jogando pq é indie ent deve ser bom', 1, '2025-04-27 00:43:26', '2025-04-27 00:43:26'),
(98, 1, 'alguem dá um help', 'imgGuilherme2.png', 'cês consegue recomendar um curso pra eu fazer aí? to mto em dúvida de qual curso fazer pro futuro', 1, '2025-04-27 00:49:55', '2025-04-27 00:49:55'),
(99, 1, 'silencio', 'imgVictor.jpg', 'silêncio rapazes, estou a estudar.', 5, '2025-04-27 01:01:28', '2025-04-27 01:01:28'),
(100, 1, 'incabível essa parada pprt', 'imgVictor2.jpeg', 'o cara não teve nem coragem de esconder que mudou o banco de base do PRÓPRIO JOGO pra passar da gente. (tá guardado Lulu, tá guardado)', 5, '2025-04-27 01:02:48', '2025-04-27 01:02:48'),
(101, 1, 'albumzão forte ', 'imgKlayver.png', 'albumzão fortissimo tamaluco, n erra nunca', 10, '2025-04-27 01:07:13', '2025-04-27 01:07:13'),
(102, 1, 'assistam...', 'imgKlayver2.jpg', 'esse carinha ta me motivando a cursar algo da área, parece o tipo de coisa q eu ia me ver trabalhando daqui uns anos', 10, '2025-04-27 01:12:02', '2025-04-27 01:12:02'),
(103, 1, 'pinguim.', 'imgClodoaldo.jpg', 'eu gosto muito de pinguins', 14, '2025-04-27 01:19:06', '2025-04-27 01:19:06'),
(104, 1, 'dúvida genuina', 'imgThiago.jpg', 'Preciso muito de alguém me recomendar o que cursar. To muito em duvida doq escolher antes de me inscrever', 16, '2025-04-27 01:20:57', '2025-04-27 01:20:57'),
(105, 1, 'cansados de TCC, juro', 'imgJuniorAline.png', 'Cansados desses alunos de TCC, só trabalho pra gente nossa, cadê as férias?', 19, '2025-04-27 01:22:43', '2025-04-27 01:22:43'),
(106, 1, 'livro muito bom', 'imgLuciano.jpg', 'Terminei e gostei. Recomendo a leitura pra todos.', 17, '2025-04-27 01:24:31', '2025-04-27 01:24:31');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_preferencia`
--

CREATE TABLE `tb_preferencia` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome_preferencia` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_resposta_comentario`
--

CREATE TABLE `tb_resposta_comentario` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `resposta_comentario` varchar(255) NOT NULL,
  `status_resposta_comentario` tinyint(1) NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_comentario` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_seguidores`
--

CREATE TABLE `tb_seguidores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user_seguido` bigint(20) UNSIGNED NOT NULL,
  `id_user_seguidor` bigint(20) UNSIGNED NOT NULL,
  `status_seguidores` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `tb_seguidores`
--

INSERT INTO `tb_seguidores` (`id`, `id_user_seguido`, `id_user_seguidor`, `status_seguidores`, `created_at`, `updated_at`) VALUES
(1, 25, 2, 1, '2025-04-27 01:32:00', '2025-04-27 01:32:00'),
(2, 25, 6, 1, '2025-04-27 01:32:19', '2025-04-27 01:32:19'),
(3, 25, 4, 1, '2025-03-27 01:32:52', '2025-03-27 01:32:52');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_storyes`
--

CREATE TABLE `tb_storyes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `conteudo_storyes` varchar(255) NOT NULL,
  `data_inicio` date NOT NULL,
  `status_storyes` tinyint(1) NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_tag_curtei`
--

CREATE TABLE `tb_tag_curtei` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome_tag_curtei` varchar(50) NOT NULL,
  `id_curtei` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_user`
--

CREATE TABLE `tb_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome_user` varchar(100) DEFAULT NULL,
  `email_user` varchar(100) DEFAULT NULL,
  `senha_user` varchar(100) DEFAULT NULL,
  `img_user` varchar(300) DEFAULT NULL,
  `banner_user` varchar(300) DEFAULT NULL,
  `token_user` varchar(300) DEFAULT NULL,
  `status_user` tinyint(1) DEFAULT NULL,
  `bio_user` longtext DEFAULT NULL,
  `arroba_user` varchar(30) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `tb_user`
--

INSERT INTO `tb_user` (`id`, `nome_user`, `email_user`, `senha_user`, `img_user`, `banner_user`, `token_user`, `status_user`, `bio_user`, `arroba_user`, `created_at`, `updated_at`) VALUES
(1, 'Guilherme', 'guilherme0@gmail.com', '$2y$10$QuKXZEcWqvfoxIWUbPf9x.v1yMIdMnnSi9ZbfY4etYCrC9dmgDxj2', 'default1.png', 'default_banner1.png', 'SkCVnCBnM0yup9rS7y1scPyZx49Q43dWIEhNS39Q', 1, 'Olá, eu sou Guilherme!', 'guilherme0', '2025-04-27 00:39:14', '2025-04-27 00:39:14'),
(2, 'Rian', 'rian1@gmail.com', '$2y$10$FWW7MJ3g09OveKUrEHgDn.i8DQiobzqyqw7Veso56/sC4BSdDQ0H.', 'default2.png', 'default_banner2.png', 'SAaBtQYHK2Xm4pjynXBSQrDWr9KpSkXLrdQerf0I', 1, 'Olá, eu sou Rian!', 'rian1', '2025-04-27 00:39:14', '2025-04-27 00:39:14'),
(3, 'Breno', 'breno2@gmail.com', '$2y$10$jLio6rij5QMXz7qEIzbpDe7KykThM5sYtd969MOODNmGGLOTN.hf.', 'default3.png', 'default_banner3.png', '1DgMWJ6AP9LbSTwzrv54oiDmEUHzbk5mrYc5BmAK', 1, 'Olá, eu sou Breno!', 'breno2', '2025-04-27 00:39:14', '2025-04-27 00:39:14'),
(4, 'Hugo', 'hugo3@gmail.com', '$2y$10$5LtYPZETzoM0vtcfKff3q.0VRs7vqSHlVVMlOJxKCMGMwQ0/bjKiG', 'default4.png', 'default_banner4.png', 'pBmW8f6hndPBAX9vZabMRrDrg7d0E60WFdukYVO9', 1, 'Olá, eu sou Hugo!', 'hugo3', '2025-04-27 00:39:14', '2025-04-27 00:39:14'),
(5, 'Victor', 'victor4@gmail.com', '$2y$10$rDt8NODvpWvYLL5t9NlXH.fxwf7sX5.nDeIFJD2eonH/KRBa2KM76', 'default5.png', 'default_banner5.png', 'lVzijXWwfTKz2rln1iwm0eDGNzSAgDT6shcwCOuB', 1, 'Olá, eu sou Victor!', 'victor4', '2025-04-27 00:39:14', '2025-04-27 00:39:14'),
(6, 'Eduardo', 'eduardo5@gmail.com', '$2y$10$LhyN3LyMqrKvl4C83A2dCu1aSa8BOsGXOXswyOvB18NoMA1GNu312', 'default6.png', 'default_banner6.png', 'uf8ZdikVTQ6OoW4FZOBW72M6EgvHKO1XjcJbojCn', 1, 'Olá, eu sou Eduardo!', 'eduardo5', '2025-04-27 00:39:14', '2025-04-27 00:39:14'),
(7, 'Ellen', 'ellen6@gmail.com', '$2y$10$iA.86SSSxW2ZIYrSpJb2VuFF9lLqIrR7RhEzmTBasFYqJoRsQ0fpa', 'default7.png', 'default_banner7.png', '0a5cVMXdoKa65VRtKizfWu0iLFkhemJOa9OgA7Hx', 1, 'Olá, eu sou Ellen!', 'ellen6', '2025-04-27 00:39:14', '2025-04-27 00:39:14'),
(8, 'Caroline', 'caroline7@gmail.com', '$2y$10$N856YVxUt8zvLgnBDPaZgeHHr9PYkUZjaOmvmhIBHoFNCTAaJLWFO', 'default8.png', 'default_banner8.png', 'FgOU9SCpPHazg7KiWIzuOnr40oRtQ1Uort0fLZH8', 1, 'Olá, eu sou Caroline!', 'caroline7', '2025-04-27 00:39:14', '2025-04-27 00:39:14'),
(9, 'Felipe', 'felipe8@gmail.com', '$2y$10$81oECzcI34ceVRRrRuFRW.dwe5PQob4GNxzSlbgYfBpY093l7ys6S', 'default9.png', 'default_banner9.png', 'zyOLALXbxAwhmE8skNxQeTU8FbeViJm454lEMKlx', 1, 'Olá, eu sou Felipe!', 'felipe8', '2025-04-27 00:39:14', '2025-04-27 00:39:14'),
(10, 'Klayver', 'klayver9@gmail.com', '$2y$10$aCMItXkvqkJ8QX3XGOJmp.fpCxsWyWs7g8Qfl/7IF9uq09RUovyZC', 'default10.png', 'default_banner10.png', 'kYptLDV0MbWZH3AIYYC51o5xVW4TKg5bJpmsfupn', 1, 'Olá, eu sou Klayver!', 'klayver9', '2025-04-27 00:39:14', '2025-04-27 00:39:14'),
(11, 'O alencar', 'o alencar10@gmail.com', '$2y$10$TRQajfJ7Fn/usOPGl/ikq.HrO1G8YpW5EmHDKCUjArCqawZ3/hvgu', 'default11.png', 'default_banner11.png', '6W6Vz1tMkoLKtETYWoo9fL7K2pXgsz4YSAXDZXzK', 1, 'Olá, eu sou O alencar!', 'o alencar10', '2025-04-27 00:39:14', '2025-04-27 00:39:14'),
(12, 'Clara', 'clara11@gmail.com', '$2y$10$VZZ55IIXJj5FcqvcGIrdWOQOMTyDxgFs3wzOoSxgXIMNUnUjmm75u', 'default12.png', 'default_banner12.png', 'fbHXSJqupxWDgwDov4xe9DATq6YbWZ96JYTpsmQm', 1, 'Olá, eu sou Clara!', 'clara11', '2025-04-27 00:39:14', '2025-04-27 00:39:14'),
(13, 'O sergio', 'o sergio12@gmail.com', '$2y$10$tNeA5ByP1l4BTKmBhAtSfuVZONV4jn9KyRRwZen4SNwFf7Y8mW2z.', 'default13.png', 'default_banner13.png', 'nsGbGFXMFsgbUoFBU6NepwFTtwSD9iV73HzKOYUg', 1, 'Olá, eu sou O sergio!', 'o sergio12', '2025-04-27 00:39:14', '2025-04-27 00:39:14'),
(14, 'Clodoaldo', 'clodoaldo13@gmail.com', '$2y$10$N72nI7IhhmDJijvZFxBTIO1FTojsJtUPPaVS.zG8SvGfmXrIG.Zyi', 'default14.png', 'default_banner14.png', 'dxIQB9BJRtfQrkCCL5ruRb13gM0ajecPIqxuzvSq', 1, 'Olá, eu sou Clodoaldo!', 'clodoaldo13', '2025-04-27 00:39:14', '2025-04-27 00:39:14'),
(15, 'Rafaela', 'rafaela14@gmail.com', '$2y$10$NJvaaecD6m4IBo3xPQiXkOnik3CbngQuV3ncicZ97OLYXFXWdXr8a', 'default15.png', 'default_banner15.png', 'B05ygaF3eRMG8PKJ1KWRXMb5XqkJiEfaIa3A5qkg', 1, 'Olá, eu sou Rafaela!', 'rafaela14', '2025-04-27 00:39:14', '2025-04-27 00:39:14'),
(16, 'Thiago', 'thiago15@gmail.com', '$2y$10$B4Y4xjcv4DZI7IdZNLDDCO6.fGN46LHrfSOSMC.AU9IfN2iuRl3Ze', 'default16.png', 'default_banner16.png', 'efeLBciMZb3Qsbx4Ra0Ln9sAJMFDcZMeIfHBA6tl', 1, 'Olá, eu sou Thiago!', 'thiago15', '2025-04-27 00:39:14', '2025-04-27 00:39:14'),
(17, 'Luciano', 'luciano16@gmail.com', '$2y$10$LYS8NPHSPFrrKI0oIQtJLOiiSmVAUofDJxPKzp8vPz7q9FLrJcJiW', 'default17.png', 'default_banner17.png', 'qZFdHHfNSInOD45aUl0VkNKyMLSGLdg0zrEhJ8Lt', 1, 'Olá, eu sou Luciano!', 'luciano16', '2025-04-27 00:39:14', '2025-04-27 00:39:14'),
(18, 'O santana', 'o santana17@gmail.com', '$2y$10$VhqqX.BtiOhP4Wm1r3jVK.52yibe0Q9K1Tyd/dEAAnsJgRvX2q4Rq', 'default18.png', 'default_banner18.png', 'XQGETdbGPxYPwT4PAayRVm2Avlhtd719SiE8cqL8', 1, 'Olá, eu sou O santana!', 'o santana17', '2025-04-27 00:39:14', '2025-04-27 00:39:14'),
(19, 'Junior & Aline', 'o inesqucido18@gmail.com', '$2y$10$.3jtPyAGpIb9lGfngUklfuY6vcSHF.5GVU95RszNXLZhg5vArBYcu', 'default19.png', 'default_banner19.png', '7JT8U7qse8bt95zkU0c2z9Ns49H5XzU79xuag2jz', 1, 'Olá, eu sou O inesqucido!', 'o inesqucido18', '2025-04-27 00:39:14', '2025-04-27 00:39:14'),
(20, 'Vinicius', 'junior & aline19@gmail.com', '$2y$10$KqQsEWB95xVgc1ceTK9lb.GyP3LTqle/o7kxGUahrt0lmrA9beqRO', 'default20.png', 'default_banner20.png', 'xGgAOO2yjOjbSVx4ztt3c18IxxNSiV3qT5F6baLd', 1, 'Olá, eu sou Junior & Aline!', 'junior & aline19', '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(21, 'Fatec', 'fatec20@gmail.com', '$2y$10$CncHu.zPR849kljwQHqMBupzQGTidosJncQcHlJ3nO3J2d4tkITLS', 'default21.png', 'default_banner21.png', 'nmU8Q8WKO4pbObkt2jtSmIq0FrLJLpgcBGIU3SWc', 1, 'Olá, eu sou Fatec!', 'fatec20', '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(22, 'Senai', 'senai21@gmail.com', '$2y$10$rEJFGUb02SF4TOoNv5nM/eFBMPLYmxFKOFbTwtlsZwZu.BD1SUruu', 'default22.png', 'default_banner22.png', '3UORPsl5uQwWDD6ZlrIsS7SWB0DDqJVOjTzxKfLy', 1, 'Olá, eu sou Senai!', 'senai21', '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(23, 'SESI', 'sesi22@gmail.com', '$2y$10$m9kCTRNcbd81cBZeghC1oe3uK6x4EMcCXVl1Di6VcGmq/pIt1Zwq.', 'default23.png', 'default_banner23.png', 'zeoibH0KLG5ZUJ5CCHkdW081vzRabdHt5rllJXlS', 1, 'Olá, eu sou SESI!', 'sesi22', '2025-04-27 00:39:15', '2025-04-27 01:21:34'),
(24, 'Enap', 'enap23@gmail.com', '$2y$10$KTe1UtIvBkhjYBrsYrGsm.eIW8CkcNWFHH7gmKg9YBFQLQa9eo8N2', 'default24.png', 'default_banner24.png', 'OXNJMObSYYYt8oEH3xJcIqdvaGmJctqsdrKeNd3m', 1, 'Olá, eu sou Enap!', 'enap23', '2025-04-27 00:39:15', '2025-04-27 00:39:15'),
(25, 'Etec de Guaianases', 'etec24@gmail.com', '$2y$10$KqQsEWB95xVgc1ceTK9lb.GyP3LTqle/o7kxGUahrt0lmrA9beqRO', '8531b4d9bc66e09526e17fbab01db96e', '131fa96e50395bd674dc7d2ba0c5239e', 'mllvEOnmFhziRy0pXW94u9NoiY7opECtNTapC5tv', 1, 'Olá, eu sou Etec!', 'etec24', '2025-04-27 00:39:15', '2025-04-27 00:57:16');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_user_preferencia`
--

CREATE TABLE `tb_user_preferencia` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `id_preferencia` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Índices de tabela `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tb_admin_email_admin_unique` (`email_admin`),
  ADD UNIQUE KEY `tb_admin_token_admin_unique` (`token_admin`);

--
-- Índices de tabela `tb_chat`
--
ALTER TABLE `tb_chat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_chat_id_user_recebidor_foreign` (`id_user_recebidor`),
  ADD KEY `tb_chat_id_mensagem_foreign` (`id_mensagem`);

--
-- Índices de tabela `tb_comentario`
--
ALTER TABLE `tb_comentario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_comentario_id_user_foreign` (`id_user`),
  ADD KEY `tb_comentario_id_post_foreign` (`id_post`),
  ADD KEY `tb_comentario_id_curtei_foreign` (`id_curtei`);

--
-- Índices de tabela `tb_conteudo_curtei`
--
ALTER TABLE `tb_conteudo_curtei`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tb_curtei`
--
ALTER TABLE `tb_curtei`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_curtei_id_user_foreign` (`id_user`),
  ADD KEY `tb_curtei_id_conteudo_curtei_foreign` (`id_conteudo_curtei`);

--
-- Índices de tabela `tb_curtida`
--
ALTER TABLE `tb_curtida`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_curtida_id_user_foreign` (`id_user`),
  ADD KEY `tb_curtida_id_post_foreign` (`id_post`),
  ADD KEY `tb_curtida_id_storyes_foreign` (`id_storyes`),
  ADD KEY `tb_curtida_id_curtei_foreign` (`id_curtei`);

--
-- Índices de tabela `tb_denuncia`
--
ALTER TABLE `tb_denuncia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_denuncia_id_user_denunciador_foreign` (`id_user_denunciador`),
  ADD KEY `tb_denuncia_id_user_denunciado_foreign` (`id_user_denunciado`),
  ADD KEY `tb_denuncia_id_post_denunciado_foreign` (`id_post_denunciado`),
  ADD KEY `tb_denuncia_id_storyes_denunciado_foreign` (`id_storyes_denunciado`),
  ADD KEY `tb_denuncia_id_curtei_denunciado_foreign` (`id_curtei_denunciado`);

--
-- Índices de tabela `tb_destaques`
--
ALTER TABLE `tb_destaques`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_destaques_id_user_foreign` (`id_user`);

--
-- Índices de tabela `tb_instituicao`
--
ALTER TABLE `tb_instituicao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_instituicao_id_user_foreign` (`id_user`);

--
-- Índices de tabela `tb_mencao_storyes`
--
ALTER TABLE `tb_mencao_storyes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_mencao_storyes_id_user_mencionado_foreign` (`id_user_mencionado`),
  ADD KEY `tb_mencao_storyes_id_storyes_foreign` (`id_storyes`);

--
-- Índices de tabela `tb_mensagem`
--
ALTER TABLE `tb_mensagem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_mensagem_id_user_enviador_foreign` (`id_user_enviador`);

--
-- Índices de tabela `tb_planejamento`
--
ALTER TABLE `tb_planejamento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_planejamento_id_post_foreign` (`id_post`);

--
-- Índices de tabela `tb_post`
--
ALTER TABLE `tb_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_post_id_user_foreign` (`id_user`);

--
-- Índices de tabela `tb_preferencia`
--
ALTER TABLE `tb_preferencia`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tb_resposta_comentario`
--
ALTER TABLE `tb_resposta_comentario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_resposta_comentario_id_user_foreign` (`id_user`),
  ADD KEY `tb_resposta_comentario_id_comentario_foreign` (`id_comentario`);

--
-- Índices de tabela `tb_seguidores`
--
ALTER TABLE `tb_seguidores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_seguidores_id_user_seguido_foreign` (`id_user_seguido`),
  ADD KEY `tb_seguidores_id_user_seguidor_foreign` (`id_user_seguidor`);

--
-- Índices de tabela `tb_storyes`
--
ALTER TABLE `tb_storyes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_storyes_id_user_foreign` (`id_user`);

--
-- Índices de tabela `tb_tag_curtei`
--
ALTER TABLE `tb_tag_curtei`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_tag_curtei_id_curtei_foreign` (`id_curtei`);

--
-- Índices de tabela `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tb_user_email_user_unique` (`email_user`),
  ADD UNIQUE KEY `tb_user_token_user_unique` (`token_user`);

--
-- Índices de tabela `tb_user_preferencia`
--
ALTER TABLE `tb_user_preferencia`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tb_user_preferencia_id_preferencia_unique` (`id_preferencia`),
  ADD KEY `tb_user_preferencia_id_user_foreign` (`id_user`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tb_chat`
--
ALTER TABLE `tb_chat`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_comentario`
--
ALTER TABLE `tb_comentario`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_conteudo_curtei`
--
ALTER TABLE `tb_conteudo_curtei`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `tb_curtei`
--
ALTER TABLE `tb_curtei`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `tb_curtida`
--
ALTER TABLE `tb_curtida`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tb_denuncia`
--
ALTER TABLE `tb_denuncia`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_destaques`
--
ALTER TABLE `tb_destaques`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_instituicao`
--
ALTER TABLE `tb_instituicao`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tb_mencao_storyes`
--
ALTER TABLE `tb_mencao_storyes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_mensagem`
--
ALTER TABLE `tb_mensagem`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_planejamento`
--
ALTER TABLE `tb_planejamento`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_post`
--
ALTER TABLE `tb_post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT de tabela `tb_preferencia`
--
ALTER TABLE `tb_preferencia`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_resposta_comentario`
--
ALTER TABLE `tb_resposta_comentario`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_seguidores`
--
ALTER TABLE `tb_seguidores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tb_storyes`
--
ALTER TABLE `tb_storyes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_tag_curtei`
--
ALTER TABLE `tb_tag_curtei`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de tabela `tb_user_preferencia`
--
ALTER TABLE `tb_user_preferencia`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `tb_chat`
--
ALTER TABLE `tb_chat`
  ADD CONSTRAINT `tb_chat_id_mensagem_foreign` FOREIGN KEY (`id_mensagem`) REFERENCES `tb_mensagem` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tb_chat_id_user_recebidor_foreign` FOREIGN KEY (`id_user_recebidor`) REFERENCES `tb_user` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `tb_comentario`
--
ALTER TABLE `tb_comentario`
  ADD CONSTRAINT `tb_comentario_id_curtei_foreign` FOREIGN KEY (`id_curtei`) REFERENCES `tb_curtei` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tb_comentario_id_post_foreign` FOREIGN KEY (`id_post`) REFERENCES `tb_post` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tb_comentario_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `tb_curtei`
--
ALTER TABLE `tb_curtei`
  ADD CONSTRAINT `tb_curtei_id_conteudo_curtei_foreign` FOREIGN KEY (`id_conteudo_curtei`) REFERENCES `tb_conteudo_curtei` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tb_curtei_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `tb_curtida`
--
ALTER TABLE `tb_curtida`
  ADD CONSTRAINT `tb_curtida_id_curtei_foreign` FOREIGN KEY (`id_curtei`) REFERENCES `tb_curtei` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tb_curtida_id_post_foreign` FOREIGN KEY (`id_post`) REFERENCES `tb_post` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tb_curtida_id_storyes_foreign` FOREIGN KEY (`id_storyes`) REFERENCES `tb_storyes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tb_curtida_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `tb_denuncia`
--
ALTER TABLE `tb_denuncia`
  ADD CONSTRAINT `tb_denuncia_id_curtei_denunciado_foreign` FOREIGN KEY (`id_curtei_denunciado`) REFERENCES `tb_curtei` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tb_denuncia_id_post_denunciado_foreign` FOREIGN KEY (`id_post_denunciado`) REFERENCES `tb_post` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tb_denuncia_id_storyes_denunciado_foreign` FOREIGN KEY (`id_storyes_denunciado`) REFERENCES `tb_storyes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tb_denuncia_id_user_denunciado_foreign` FOREIGN KEY (`id_user_denunciado`) REFERENCES `tb_user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tb_denuncia_id_user_denunciador_foreign` FOREIGN KEY (`id_user_denunciador`) REFERENCES `tb_user` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `tb_destaques`
--
ALTER TABLE `tb_destaques`
  ADD CONSTRAINT `tb_destaques_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `tb_instituicao`
--
ALTER TABLE `tb_instituicao`
  ADD CONSTRAINT `tb_instituicao_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id`);

--
-- Restrições para tabelas `tb_mencao_storyes`
--
ALTER TABLE `tb_mencao_storyes`
  ADD CONSTRAINT `tb_mencao_storyes_id_storyes_foreign` FOREIGN KEY (`id_storyes`) REFERENCES `tb_storyes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tb_mencao_storyes_id_user_mencionado_foreign` FOREIGN KEY (`id_user_mencionado`) REFERENCES `tb_user` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `tb_mensagem`
--
ALTER TABLE `tb_mensagem`
  ADD CONSTRAINT `tb_mensagem_id_user_enviador_foreign` FOREIGN KEY (`id_user_enviador`) REFERENCES `tb_user` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `tb_planejamento`
--
ALTER TABLE `tb_planejamento`
  ADD CONSTRAINT `tb_planejamento_id_post_foreign` FOREIGN KEY (`id_post`) REFERENCES `tb_post` (`id`);

--
-- Restrições para tabelas `tb_post`
--
ALTER TABLE `tb_post`
  ADD CONSTRAINT `tb_post_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `tb_resposta_comentario`
--
ALTER TABLE `tb_resposta_comentario`
  ADD CONSTRAINT `tb_resposta_comentario_id_comentario_foreign` FOREIGN KEY (`id_comentario`) REFERENCES `tb_comentario` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tb_resposta_comentario_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `tb_seguidores`
--
ALTER TABLE `tb_seguidores`
  ADD CONSTRAINT `tb_seguidores_id_user_seguido_foreign` FOREIGN KEY (`id_user_seguido`) REFERENCES `tb_user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tb_seguidores_id_user_seguidor_foreign` FOREIGN KEY (`id_user_seguidor`) REFERENCES `tb_user` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `tb_storyes`
--
ALTER TABLE `tb_storyes`
  ADD CONSTRAINT `tb_storyes_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `tb_tag_curtei`
--
ALTER TABLE `tb_tag_curtei`
  ADD CONSTRAINT `tb_tag_curtei_id_curtei_foreign` FOREIGN KEY (`id_curtei`) REFERENCES `tb_curtei` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `tb_user_preferencia`
--
ALTER TABLE `tb_user_preferencia`
  ADD CONSTRAINT `tb_user_preferencia_id_preferencia_foreign` FOREIGN KEY (`id_preferencia`) REFERENCES `tb_preferencia` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tb_user_preferencia_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
