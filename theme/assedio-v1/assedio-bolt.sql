-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 09-Abr-2015 às 16:21
-- Versão do servidor: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `assedio-bolt`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `bolt_authtoken`
--

CREATE TABLE IF NOT EXISTS `bolt_authtoken` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `token` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `lastseen` datetime DEFAULT NULL,
  `ip` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `useragent` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `validity` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_740AC52FF85E0677` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `bolt_authtoken`
--

INSERT INTO `bolt_authtoken` (`id`, `username`, `token`, `salt`, `lastseen`, `ip`, `useragent`, `validity`) VALUES
(1, 'romulo1984', '180ecdcfb651f5af08479f465833e551', 'mAqUZcS1gHAD', '2015-03-19 13:11:10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.89 Safari/537.36', '2015-04-02 13:11:10'),
(2, 'romulo1984', '88525345f0756e12a5852563e6e431ab', 'lEFxWerJHLe1', '2015-04-06 17:04:26', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.101 Safari/537.36', '2015-04-20 17:04:26'),
(3, 'romulo1984', 'b1ae9547b44f82f61529d70b6a6f6894', 'yaydRNqGLiUv', '2015-04-09 09:29:36', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.36', '2015-04-23 09:29:36');

-- --------------------------------------------------------

--
-- Estrutura da tabela `bolt_config_assedio`
--

CREATE TABLE IF NOT EXISTS `bolt_config_assedio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `datecreated` datetime NOT NULL,
  `datechanged` datetime NOT NULL,
  `datepublish` datetime DEFAULT NULL,
  `datedepublish` datetime DEFAULT NULL,
  `username` varchar(32) COLLATE utf8_unicode_ci DEFAULT '',
  `ownerid` int(11) DEFAULT NULL,
  `status` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `titulo` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `descricao` longtext COLLATE utf8_unicode_ci NOT NULL,
  `facebook` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `youtube` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `instagram` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `twitter` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `logo_site` longtext COLLATE utf8_unicode_ci NOT NULL,
  `logo_menu` longtext COLLATE utf8_unicode_ci NOT NULL,
  `logo_rodape` longtext COLLATE utf8_unicode_ci NOT NULL,
  `desc_rodape` longtext COLLATE utf8_unicode_ci NOT NULL,
  `logo_assedio_rodape` longtext COLLATE utf8_unicode_ci NOT NULL,
  `hashtags` longtext COLLATE utf8_unicode_ci NOT NULL,
  `mapa` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `telefone` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `corpo` longtext COLLATE utf8_unicode_ci NOT NULL,
  `logo_site_horizontal` longtext COLLATE utf8_unicode_ci NOT NULL,
  `imagem_colabore` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_EEE5D076989D9B62` (`slug`),
  KEY `IDX_EEE5D076AFBA6FD8` (`datecreated`),
  KEY `IDX_EEE5D076BE74E59A` (`datechanged`),
  KEY `IDX_EEE5D076A5131421` (`datepublish`),
  KEY `IDX_EEE5D076B7805520` (`datedepublish`),
  KEY `IDX_EEE5D0767B00651C` (`status`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `bolt_config_assedio`
--

INSERT INTO `bolt_config_assedio` (`id`, `slug`, `datecreated`, `datechanged`, `datepublish`, `datedepublish`, `username`, `ownerid`, `status`, `titulo`, `descricao`, `facebook`, `youtube`, `instagram`, `twitter`, `logo_site`, `logo_menu`, `logo_rodape`, `desc_rodape`, `logo_assedio_rodape`, `hashtags`, `mapa`, `email`, `telefone`, `corpo`, `logo_site_horizontal`, `imagem_colabore`) VALUES
(1, 'geral', '2015-03-24 20:38:00', '2015-04-09 09:50:09', '2015-03-24 20:26:33', NULL, '', 1, 'published', 'Geral', 'O Assédio Coletivo é um grupo formado por cerca de 20 produtores e articuladores culturais, cuja sede está localizada em Itararé, Vitória/ES. O coletivo iniciou suas atividades em janeiro de 2012 e, hoje, desenvolve ações que objetivam fortalecer o cenário cultural do Espírito Santo, principalmente valorizando a arte autoral, o fazer colaborativo e a ação de outros coletivos e agentes culturais.', 'https://www.facebook.com/assediocoletivo', 'https://www.youtube.com/user/assediocoletivo', 'https://instagram.com/assediocoletivo/', 'https://twitter.com/assediocoletivo', '{"file":"2015-03\\/logo.png"}', '{"file":"2015-03\\/logos-sidebar.png"}', '{"file":"2015-03\\/regua-rodape-2.png"}', 'O Assédio Coletivo é uma rede articulada por agentes culturais com o objetivo de fortalecer o cenário cultural da Grande Vitória e do ES.', '{"file":"2015-04\\/icone-logo-preto.png"}', '<h3>#COLABORATIVO<br />\r\n#REDES<br />\r\n#CULTURA</h3>', '{"address":"Avenida Robert Kennedy, 59 - Itarar\\u00e9, Vit\\u00f3ria-ES","latitude":"-20.2954","longitude":"-40.307586","formatted_address":"Rua Daniel Abreu Machado, 131 - Itarar\\u00e9, Vit\\u00f3ria - ES, 29047-540, Brasil"}', 'assediocoletivo@gmail.com.br', '27 3026 1556', 'Avenida Robert Kennedy, nº 59<br>\r\nItararé - Vitória - ES - CEP: 29047-700<br>\r\nPonto de referência: em frente à Padaria Sandra', '{"file":"2015-03\\/logo-horizontal.png"}', '{"file":"2015-04\\/colabore.jpg"}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `bolt_contatos`
--

CREATE TABLE IF NOT EXISTS `bolt_contatos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `datecreated` datetime NOT NULL,
  `datechanged` datetime NOT NULL,
  `datepublish` datetime DEFAULT NULL,
  `datedepublish` datetime DEFAULT NULL,
  `username` varchar(32) COLLATE utf8_unicode_ci DEFAULT '',
  `ownerid` int(11) DEFAULT NULL,
  `status` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `nome` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mensagem` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D5A7C121989D9B62` (`slug`),
  KEY `IDX_D5A7C121AFBA6FD8` (`datecreated`),
  KEY `IDX_D5A7C121BE74E59A` (`datechanged`),
  KEY `IDX_D5A7C121A5131421` (`datepublish`),
  KEY `IDX_D5A7C121B7805520` (`datedepublish`),
  KEY `IDX_D5A7C1217B00651C` (`status`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Extraindo dados da tabela `bolt_contatos`
--

INSERT INTO `bolt_contatos` (`id`, `slug`, `datecreated`, `datechanged`, `datepublish`, `datedepublish`, `username`, `ownerid`, `status`, `nome`, `email`, `mensagem`) VALUES
(4, 'slug-a77poc', '2015-04-06 18:06:58', '2015-04-06 18:06:58', '2015-04-06 18:06:58', NULL, '', NULL, 'publish', 'Marcos Testador da Silva', 'mtestador@silva.com', 'E');

-- --------------------------------------------------------

--
-- Estrutura da tabela `bolt_cron`
--

CREATE TABLE IF NOT EXISTS `bolt_cron` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interim` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `lastrun` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_CD38E123615F8869` (`interim`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bolt_fotos`
--

CREATE TABLE IF NOT EXISTS `bolt_fotos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `datecreated` datetime NOT NULL,
  `datechanged` datetime NOT NULL,
  `datepublish` datetime DEFAULT NULL,
  `datedepublish` datetime DEFAULT NULL,
  `username` varchar(32) COLLATE utf8_unicode_ci DEFAULT '',
  `ownerid` int(11) DEFAULT NULL,
  `status` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `titulo` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `resumo` longtext COLLATE utf8_unicode_ci NOT NULL,
  `corpo` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_DA5FFB7A989D9B62` (`slug`),
  KEY `IDX_DA5FFB7AAFBA6FD8` (`datecreated`),
  KEY `IDX_DA5FFB7ABE74E59A` (`datechanged`),
  KEY `IDX_DA5FFB7AA5131421` (`datepublish`),
  KEY `IDX_DA5FFB7AB7805520` (`datedepublish`),
  KEY `IDX_DA5FFB7A7B00651C` (`status`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `bolt_fotos`
--

INSERT INTO `bolt_fotos` (`id`, `slug`, `datecreated`, `datechanged`, `datepublish`, `datedepublish`, `username`, `ownerid`, `status`, `titulo`, `resumo`, `corpo`) VALUES
(1, 'este-e-um-item-da-biblioteca-do-tipo-fotos', '2015-04-01 10:17:04', '2015-04-01 10:17:04', '2015-04-01 10:15:46', NULL, '', 1, 'published', 'Este é um item da Biblioteca do tipo Fotos', 'Aqui entra um resumo qualquer', '<p>Aqui pode vir uma descrição qualquer. Como é um item de fotos, então deverá ser escolhida uma Galeria no campo abaixo.</p>'),
(2, 'outro-item-de-fotos', '2015-04-01 10:17:48', '2015-04-01 10:17:48', '2015-04-01 10:17:06', NULL, '', 1, 'published', 'Outro item de Fotos', 'Casamentiss faiz malandris se pirulitá, Nam liber tempor cum soluta nobis eleifend option congue nihil.', '<p>Casamentiss faiz malandris se pirulitá, Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet, consectetuer Ispecialista im mé intende tudis nuam golada, vinho, uiski, carirí, rum da jamaikis, só num pode ser mijis. Adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</p>'),
(3, 'galeria-vinda-do-flickr', '2015-04-09 10:16:34', '2015-04-09 10:19:53', '2015-04-09 10:11:52', NULL, '', 1, 'published', 'Galeria vinda do flickr', 'Uma galeria simples com fotos do Flickr', '<p><iframe allowfullscreen="" frameborder="0" height="534" mozallowfullscreen="" msallowfullscreen="" oallowfullscreen="" src="https://www.flickr.com/photos/sharkpix/17079730571/in/explore-2015-04-08/player/" webkitallowfullscreen="" width="100%"></iframe></p>');

-- --------------------------------------------------------

--
-- Estrutura da tabela `bolt_galerias`
--

CREATE TABLE IF NOT EXISTS `bolt_galerias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `datecreated` datetime NOT NULL,
  `datechanged` datetime NOT NULL,
  `datepublish` datetime DEFAULT NULL,
  `datedepublish` datetime DEFAULT NULL,
  `username` varchar(32) COLLATE utf8_unicode_ci DEFAULT '',
  `ownerid` int(11) DEFAULT NULL,
  `status` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `titulo` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `imagens` longtext COLLATE utf8_unicode_ci NOT NULL,
  `colunas` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D94B4E63989D9B62` (`slug`),
  KEY `IDX_D94B4E63AFBA6FD8` (`datecreated`),
  KEY `IDX_D94B4E63BE74E59A` (`datechanged`),
  KEY `IDX_D94B4E63A5131421` (`datepublish`),
  KEY `IDX_D94B4E63B7805520` (`datedepublish`),
  KEY `IDX_D94B4E637B00651C` (`status`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `bolt_galerias`
--

INSERT INTO `bolt_galerias` (`id`, `slug`, `datecreated`, `datechanged`, `datepublish`, `datedepublish`, `username`, `ownerid`, `status`, `titulo`, `imagens`, `colunas`) VALUES
(1, 'galeria-de-testes', '2015-03-18 14:48:21', '2015-03-31 17:05:27', '2015-03-18 14:45:19', NULL, '', 1, 'published', 'Galeria de testes', '[{"filename":"agriculture-cereals-field-621.jpg","title":"agriculture-cereals-field-621.jpg","id":0,"order":1,"file":null},{"filename":"blur-flowers-home-1093.jpg","title":"blur-flowers-home-1093.jpg","id":1,"order":1,"file":null},{"filename":"configure-disc-jockey-disco-1504.jpg","title":"configure-disc-jockey-disco-1504.jpg","id":2,"order":1,"file":null},{"filename":"garden-gardening-grass-589.jpg","title":"garden-gardening-grass-589.jpg","id":3,"order":1,"file":null},{"filename":"bell-bills-cash-register-2738.jpg","title":"bell-bills-cash-register-2738.jpg","id":4,"order":1,"file":null},{"filename":"analog-camera-photography-vintage-1844.jpg","title":"analog-camera-photography-vintage-1844.jpg","id":5,"order":1,"file":null},{"filename":"blur-breakfast-coffee-271.jpg","title":"blur-breakfast-coffee-271.jpg","id":6,"order":1,"file":null}]', '3'),
(2, 'edicoes-festival-tarde-no-bairro', '2015-03-24 21:41:49', '2015-03-31 17:28:31', '2015-03-24 21:40:10', NULL, '', 1, 'published', 'Edições - Festival Tarde no Bairro', '[{"filename":"2015-03\\/300x420.gif","title":"2015-03\\/300x420.gif","id":0,"order":1,"file":null}]', '6');

-- --------------------------------------------------------

--
-- Estrutura da tabela `bolt_itens_biblioteca`
--

CREATE TABLE IF NOT EXISTS `bolt_itens_biblioteca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `datecreated` datetime NOT NULL,
  `datechanged` datetime NOT NULL,
  `datepublish` datetime DEFAULT NULL,
  `datedepublish` datetime DEFAULT NULL,
  `username` varchar(32) COLLATE utf8_unicode_ci DEFAULT '',
  `ownerid` int(11) DEFAULT NULL,
  `status` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `titulo` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `resumo` longtext COLLATE utf8_unicode_ci NOT NULL,
  `icone` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_biblioteca` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `IDX_6D36D031989D9B62` (`slug`),
  KEY `IDX_6D36D031AFBA6FD8` (`datecreated`),
  KEY `IDX_6D36D031BE74E59A` (`datechanged`),
  KEY `IDX_6D36D031A5131421` (`datepublish`),
  KEY `IDX_6D36D031B7805520` (`datedepublish`),
  KEY `IDX_6D36D0317B00651C` (`status`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `bolt_itens_biblioteca`
--

INSERT INTO `bolt_itens_biblioteca` (`id`, `slug`, `datecreated`, `datechanged`, `datepublish`, `datedepublish`, `username`, `ownerid`, `status`, `titulo`, `resumo`, `icone`, `link_biblioteca`) VALUES
(1, 'projetos-aprovados-em-editais', '2015-03-24 22:02:43', '2015-04-01 09:48:28', '2015-03-24 22:01:00', NULL, '', 1, 'published', 'Projetos Aprovados em Editais', 'Textos e descrições de nossos projetos inscritos e aprovados em prêmios, editais públicos ou privados - apresentação, justificativa, metodologias, contrapartidas, planilhas de custo, plano de mídia e cronograma. Dá para baixar todos os arquivos e agregar novas ideias a seus projetos também.', 'fa-file-text-o', 'projetos-aprovados'),
(2, 'outros-conteudos', '2015-03-24 22:04:12', '2015-04-01 09:48:59', '2015-03-24 22:03:04', NULL, '', 1, 'published', 'Outros Conteúdos', 'Cartilhas formativas, coletâneas musicais, anuários, zines, informativos e muito mais. Tudo para download gratuito e produzido com o maior carinho.', 'fa-download', 'outros-conteudos'),
(3, 'linkeria', '2015-03-24 22:05:03', '2015-04-01 09:49:21', '2015-03-24 22:04:13', NULL, '', 1, 'published', 'Linkeria', 'Banco colaborativo com links externos para documentários, vídeos, programas, textos críticos e acadêmicos, sites e outras plataformas que agregam temas relevantes para nossa atuação enquanto agentes culturais - projetos sociais, culturais, artísticos e', 'fa-link', 'linkerias'),
(4, 'fotos', '2015-03-24 22:05:46', '2015-04-01 09:49:30', '2015-03-24 22:05:05', NULL, '', 1, 'published', 'Fotos', 'Coberturas fotográficas de projetos e ações culturais do Assédio Coletivo e parceiros.', 'fa-camera', 'fotos'),
(5, 'videos', '2015-03-24 22:06:38', '2015-04-01 09:48:43', '2015-03-24 22:05:48', NULL, '', 1, 'published', 'Vídeos', 'Produções audiovisuais do Assédio Coletivo: documentários, teasers, coberturas de ações culturais e outros conteúdos registrados em vídeo.', 'fa-video-camera', 'videos');

-- --------------------------------------------------------

--
-- Estrutura da tabela `bolt_linkerias`
--

CREATE TABLE IF NOT EXISTS `bolt_linkerias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `datecreated` datetime NOT NULL,
  `datechanged` datetime NOT NULL,
  `datepublish` datetime DEFAULT NULL,
  `datedepublish` datetime DEFAULT NULL,
  `username` varchar(32) COLLATE utf8_unicode_ci DEFAULT '',
  `ownerid` int(11) DEFAULT NULL,
  `status` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `titulo` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `corpo` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_1076FBF1989D9B62` (`slug`),
  KEY `IDX_1076FBF1AFBA6FD8` (`datecreated`),
  KEY `IDX_1076FBF1BE74E59A` (`datechanged`),
  KEY `IDX_1076FBF1A5131421` (`datepublish`),
  KEY `IDX_1076FBF1B7805520` (`datedepublish`),
  KEY `IDX_1076FBF17B00651C` (`status`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `bolt_linkerias`
--

INSERT INTO `bolt_linkerias` (`id`, `slug`, `datecreated`, `datechanged`, `datepublish`, `datedepublish`, `username`, `ownerid`, `status`, `titulo`, `corpo`) VALUES
(1, 'este-e-um-item-da-linkeria', '2015-04-01 10:13:51', '2015-04-01 10:13:51', '2015-04-01 10:11:16', NULL, '', 1, 'published', 'Este é um item da Linkeria', '<p>Aqui é listado de forma livre todos os links</p>\r\n\r\n<p><a href="oparque.art.br" target="_blank">Este é um link</a></p>\r\n\r\n<p><a href="http://oparque.art.br">Este é outro link</a></p>\r\n\r\n<p><a href="http://oparque.art.br">Mais um link</a></p>\r\n\r\n<p><a href="http://oparque.art.br">Quantos links quiser</a></p>'),
(2, 'mais-outro-item-do-tipo-de-biblioteca-linkeria', '2015-04-01 10:15:28', '2015-04-01 10:15:28', '2015-04-01 10:13:53', NULL, '', 1, 'published', 'Mais outro item do tipo de biblioteca Linkeria', '<p>Aqui, novamente, são listados os links de forma livre.</p>\r\n\r\n<p><a href="http://oparque.art.br">Primeiro Link</a></p>\r\n\r\n<p><a href="http://oparque.art.br">Segundo Link</a></p>\r\n\r\n<p><a href="http://oparque.art.br">Terceiro Link</a></p>\r\n\r\n<p><a href="http://oparque.art.br">Quarto Link</a></p>\r\n\r\n<p><a href="http://oparque.art.br">Quinto Link</a></p>\r\n\r\n<p><a href="http://oparque.art.br">Sexto Link</a></p>\r\n\r\n<p><a href="http://oparque.art.br">Sétimo Link</a></p>');

-- --------------------------------------------------------

--
-- Estrutura da tabela `bolt_log_change`
--

CREATE TABLE IF NOT EXISTS `bolt_log_change` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `ownerid` int(11) DEFAULT NULL,
  `title` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `contenttype` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `contentid` int(11) NOT NULL,
  `mutation_type` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `diff` longtext COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(150) COLLATE utf8_unicode_ci DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `IDX_946F972AA9E377A` (`date`),
  KEY `IDX_946F97275DAD987` (`ownerid`),
  KEY `IDX_946F972745E1826` (`contenttype`),
  KEY `IDX_946F972E625AE99` (`contentid`),
  KEY `IDX_946F972B0AEEF39` (`mutation_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bolt_log_system`
--

CREATE TABLE IF NOT EXISTS `bolt_log_system` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `message` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  `ownerid` int(11) DEFAULT NULL,
  `requesturi` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `route` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ip` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `context` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `source` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_805C16D99AEACC13` (`level`),
  KEY `IDX_805C16D9AA9E377A` (`date`),
  KEY `IDX_805C16D975DAD987` (`ownerid`),
  KEY `IDX_805C16D9E25D857E` (`context`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=489 ;

--
-- Extraindo dados da tabela `bolt_log_system`
--

INSERT INTO `bolt_log_system` (`id`, `level`, `date`, `message`, `ownerid`, `requesturi`, `route`, `ip`, `context`, `source`) VALUES
(1, 200, '2015-03-17 18:35:26', 'Added user account ''Rômulo Guimarães''.', 0, '/assedio-bolt/bolt/userfirst', 'userfirst', '127.0.0.1', 'security', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":1344}'),
(2, 200, '2015-03-17 18:35:34', 'Logged in: romulo1984', 1, '/assedio-bolt/bolt/login', 'postLogin', '127.0.0.1', 'authentication', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Login.php","Line":52}'),
(3, 200, '2015-03-17 18:35:36', 'Fetching from remote server: http://news.bolt.cm/', 1, '/assedio-bolt/async/dashboardnews', 'dashboardnews', '127.0.0.1', 'news', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Async.php","Line":114}'),
(4, 400, '2015-03-17 18:39:07', 'Requested specific query ''page/1'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(5, 400, '2015-03-17 18:39:07', 'Requested specific query ''entry/1'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(6, 400, '2015-03-17 18:39:07', 'Requested specific query ''entry/2'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(7, 400, '2015-03-17 18:39:07', 'Requested specific query ''entry/3'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(8, 400, '2015-03-17 18:39:07', 'Requested specific query ''entry/4'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(9, 400, '2015-03-17 18:39:07', 'Requested specific query ''page/3'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(10, 400, '2015-03-17 18:39:08', 'Requested specific query ''page/about'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(11, 400, '2015-03-17 18:39:08', 'Requested specific query ''entry/1'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(12, 400, '2015-03-17 18:39:08', 'Requested specific query ''entry/2'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(13, 400, '2015-03-17 18:39:08', 'Requested specific query ''entry/3'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(14, 400, '2015-03-17 18:39:08', 'Requested specific query ''entry/4'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(15, 400, '2015-03-17 18:39:08', 'Requested specific query ''page/3'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(16, 200, '2015-03-17 18:39:21', 'Using cached data', 1, '/assedio-bolt/async/dashboardnews', 'dashboardnews', '127.0.0.1', 'news', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Async.php","Line":169}'),
(17, 200, '2015-03-17 18:39:34', 'Using cached data', 1, '/assedio-bolt/async/dashboardnews', 'dashboardnews', '127.0.0.1', 'news', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Async.php","Line":169}'),
(18, 400, '2015-03-18 12:13:41', 'Requested specific query ''page/1'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(19, 400, '2015-03-18 12:13:42', 'Requested specific query ''entry/1'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(20, 400, '2015-03-18 12:13:42', 'Requested specific query ''entry/2'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(21, 400, '2015-03-18 12:13:42', 'Requested specific query ''entry/3'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(22, 400, '2015-03-18 12:13:42', 'Requested specific query ''entry/4'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(23, 400, '2015-03-18 12:13:42', 'Requested specific query ''page/3'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(24, 400, '2015-03-18 12:13:42', 'Requested specific query ''page/about'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(25, 400, '2015-03-18 12:13:42', 'Requested specific query ''entry/1'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(26, 400, '2015-03-18 12:13:42', 'Requested specific query ''entry/2'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(27, 400, '2015-03-18 12:13:42', 'Requested specific query ''entry/3'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(28, 400, '2015-03-18 12:13:43', 'Requested specific query ''entry/4'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(29, 400, '2015-03-18 12:13:43', 'Requested specific query ''page/3'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(30, 200, '2015-03-18 12:17:00', 'Fetching from remote server: http://news.bolt.cm/', 1, '/assedio-bolt/async/dashboardnews', 'dashboardnews', '127.0.0.1', 'news', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Async.php","Line":114}'),
(31, 200, '2015-03-18 14:41:49', 'Fetching from remote server: http://news.bolt.cm/', 1, '/assedio-bolt/async/dashboardnews', 'dashboardnews', '127.0.0.1', 'news', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Async.php","Line":114}'),
(32, 200, '2015-03-18 14:42:13', 'Using cached data', 1, '/assedio-bolt/async/dashboardnews', 'dashboardnews', '127.0.0.1', 'news', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Async.php","Line":169}'),
(33, 200, '2015-03-18 14:42:53', 'Using cached data', 1, '/assedio-bolt/async/dashboardnews', 'dashboardnews', '127.0.0.1', 'news', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Async.php","Line":169}'),
(34, 200, '2015-03-18 14:43:51', 'Using cached data', 1, '/assedio-bolt/async/dashboardnews', 'dashboardnews', '127.0.0.1', 'news', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Async.php","Line":169}'),
(35, 200, '2015-03-18 14:44:54', 'Using cached data', 1, '/assedio-bolt/async/dashboardnews', 'dashboardnews', '127.0.0.1', 'news', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Async.php","Line":169}'),
(36, 200, '2015-03-18 14:48:22', 'Created: Galeria de testes', 1, '/assedio-bolt/admin/editcontent/galerias?returnto=new', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(37, 200, '2015-03-18 14:51:01', 'Installed bolt/colourpicker 1.0', 1, '/assedio-bolt/admin/extend/install?package=bolt%2Fcolourpicker&version=1.0', 'install', '127.0.0.1', 'extensions', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Extend.php","Line":228}'),
(38, 200, '2015-03-18 15:14:42', 'Fetching from remote server: http://news.bolt.cm/', 1, '/assedio-bolt/async/dashboardnews', 'dashboardnews', '127.0.0.1', 'news', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Async.php","Line":114}'),
(39, 200, '2015-03-18 15:20:53', 'Using cached data', 1, '/assedio-bolt/async/dashboardnews', 'dashboardnews', '127.0.0.1', 'news', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Async.php","Line":169}'),
(40, 400, '2015-03-19 13:11:10', 'Invalid menu path (entry/1) set in menu.yml. Does not match any configured contenttypes or routes.', 1, '/assedio-bolt/index.php', 'homepage', '127.0.0.1', 'config', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\TwigExtension.php","Line":1281}'),
(41, 400, '2015-03-19 13:11:10', 'Invalid menu path (entry/2) set in menu.yml. Does not match any configured contenttypes or routes.', 1, '/assedio-bolt/index.php', 'homepage', '127.0.0.1', 'config', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\TwigExtension.php","Line":1281}'),
(42, 400, '2015-03-19 13:11:11', 'Invalid menu path (entry/3) set in menu.yml. Does not match any configured contenttypes or routes.', 1, '/assedio-bolt/index.php', 'homepage', '127.0.0.1', 'config', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\TwigExtension.php","Line":1281}'),
(43, 400, '2015-03-19 13:11:11', 'Invalid menu path (entry/4) set in menu.yml. Does not match any configured contenttypes or routes.', 1, '/assedio-bolt/index.php', 'homepage', '127.0.0.1', 'config', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\TwigExtension.php","Line":1281}'),
(44, 400, '2015-03-19 13:11:11', 'Invalid menu path (page/3) set in menu.yml. Does not match any configured contenttypes or routes.', 1, '/assedio-bolt/index.php', 'homepage', '127.0.0.1', 'config', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\TwigExtension.php","Line":1281}'),
(45, 400, '2015-03-19 13:11:12', 'Invalid menu path (entry/1) set in menu.yml. Does not match any configured contenttypes or routes.', 1, '/assedio-bolt/index.php', 'homepage', '127.0.0.1', 'config', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\TwigExtension.php","Line":1281}'),
(46, 400, '2015-03-19 13:11:12', 'Invalid menu path (entry/2) set in menu.yml. Does not match any configured contenttypes or routes.', 1, '/assedio-bolt/index.php', 'homepage', '127.0.0.1', 'config', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\TwigExtension.php","Line":1281}'),
(47, 400, '2015-03-19 13:11:12', 'Invalid menu path (entry/3) set in menu.yml. Does not match any configured contenttypes or routes.', 1, '/assedio-bolt/index.php', 'homepage', '127.0.0.1', 'config', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\TwigExtension.php","Line":1281}'),
(48, 400, '2015-03-19 13:11:12', 'Invalid menu path (entry/4) set in menu.yml. Does not match any configured contenttypes or routes.', 1, '/assedio-bolt/index.php', 'homepage', '127.0.0.1', 'config', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\TwigExtension.php","Line":1281}'),
(49, 400, '2015-03-19 13:11:13', 'Invalid menu path (page/3) set in menu.yml. Does not match any configured contenttypes or routes.', 1, '/assedio-bolt/index.php', 'homepage', '127.0.0.1', 'config', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\TwigExtension.php","Line":1281}'),
(50, 400, '2015-03-19 13:13:04', 'Invalid menu path (entry/1) set in menu.yml. Does not match any configured contenttypes or routes.', 1, '/assedio-bolt/paginas', 'contentlisting', '127.0.0.1', 'config', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\TwigExtension.php","Line":1281}'),
(51, 400, '2015-03-19 13:13:04', 'Invalid menu path (entry/2) set in menu.yml. Does not match any configured contenttypes or routes.', 1, '/assedio-bolt/paginas', 'contentlisting', '127.0.0.1', 'config', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\TwigExtension.php","Line":1281}'),
(52, 400, '2015-03-19 13:13:04', 'Invalid menu path (entry/3) set in menu.yml. Does not match any configured contenttypes or routes.', 1, '/assedio-bolt/paginas', 'contentlisting', '127.0.0.1', 'config', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\TwigExtension.php","Line":1281}'),
(53, 400, '2015-03-19 13:13:04', 'Invalid menu path (entry/4) set in menu.yml. Does not match any configured contenttypes or routes.', 1, '/assedio-bolt/paginas', 'contentlisting', '127.0.0.1', 'config', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\TwigExtension.php","Line":1281}'),
(54, 400, '2015-03-19 13:13:04', 'Invalid menu path (page/3) set in menu.yml. Does not match any configured contenttypes or routes.', 1, '/assedio-bolt/paginas', 'contentlisting', '127.0.0.1', 'config', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\TwigExtension.php","Line":1281}'),
(55, 400, '2015-03-19 13:13:05', 'Invalid menu path (entry/1) set in menu.yml. Does not match any configured contenttypes or routes.', 1, '/assedio-bolt/paginas', 'contentlisting', '127.0.0.1', 'config', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\TwigExtension.php","Line":1281}'),
(56, 400, '2015-03-19 13:13:05', 'Invalid menu path (entry/2) set in menu.yml. Does not match any configured contenttypes or routes.', 1, '/assedio-bolt/paginas', 'contentlisting', '127.0.0.1', 'config', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\TwigExtension.php","Line":1281}'),
(57, 400, '2015-03-19 13:13:05', 'Invalid menu path (entry/3) set in menu.yml. Does not match any configured contenttypes or routes.', 1, '/assedio-bolt/paginas', 'contentlisting', '127.0.0.1', 'config', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\TwigExtension.php","Line":1281}'),
(58, 400, '2015-03-19 13:13:05', 'Invalid menu path (entry/4) set in menu.yml. Does not match any configured contenttypes or routes.', 1, '/assedio-bolt/paginas', 'contentlisting', '127.0.0.1', 'config', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\TwigExtension.php","Line":1281}'),
(59, 400, '2015-03-19 13:13:05', 'Invalid menu path (page/3) set in menu.yml. Does not match any configured contenttypes or routes.', 1, '/assedio-bolt/paginas', 'contentlisting', '127.0.0.1', 'config', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\TwigExtension.php","Line":1281}'),
(60, 400, '2015-03-19 13:13:15', 'Invalid menu path (entry/1) set in menu.yml. Does not match any configured contenttypes or routes.', 1, '/assedio-bolt/config-assedio', 'contentlisting', '127.0.0.1', 'config', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\TwigExtension.php","Line":1281}'),
(61, 400, '2015-03-19 13:13:15', 'Invalid menu path (entry/2) set in menu.yml. Does not match any configured contenttypes or routes.', 1, '/assedio-bolt/config-assedio', 'contentlisting', '127.0.0.1', 'config', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\TwigExtension.php","Line":1281}'),
(62, 400, '2015-03-19 13:13:15', 'Invalid menu path (entry/3) set in menu.yml. Does not match any configured contenttypes or routes.', 1, '/assedio-bolt/config-assedio', 'contentlisting', '127.0.0.1', 'config', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\TwigExtension.php","Line":1281}'),
(63, 400, '2015-03-19 13:13:15', 'Invalid menu path (entry/4) set in menu.yml. Does not match any configured contenttypes or routes.', 1, '/assedio-bolt/config-assedio', 'contentlisting', '127.0.0.1', 'config', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\TwigExtension.php","Line":1281}'),
(64, 400, '2015-03-19 13:13:15', 'Invalid menu path (page/3) set in menu.yml. Does not match any configured contenttypes or routes.', 1, '/assedio-bolt/config-assedio', 'contentlisting', '127.0.0.1', 'config', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\TwigExtension.php","Line":1281}'),
(65, 400, '2015-03-19 13:13:15', 'Invalid menu path (entry/1) set in menu.yml. Does not match any configured contenttypes or routes.', 1, '/assedio-bolt/config-assedio', 'contentlisting', '127.0.0.1', 'config', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\TwigExtension.php","Line":1281}'),
(66, 400, '2015-03-19 13:13:15', 'Invalid menu path (entry/2) set in menu.yml. Does not match any configured contenttypes or routes.', 1, '/assedio-bolt/config-assedio', 'contentlisting', '127.0.0.1', 'config', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\TwigExtension.php","Line":1281}'),
(67, 400, '2015-03-19 13:13:15', 'Invalid menu path (entry/3) set in menu.yml. Does not match any configured contenttypes or routes.', 1, '/assedio-bolt/config-assedio', 'contentlisting', '127.0.0.1', 'config', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\TwigExtension.php","Line":1281}'),
(68, 400, '2015-03-19 13:13:16', 'Invalid menu path (entry/4) set in menu.yml. Does not match any configured contenttypes or routes.', 1, '/assedio-bolt/config-assedio', 'contentlisting', '127.0.0.1', 'config', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\TwigExtension.php","Line":1281}'),
(69, 400, '2015-03-19 13:13:16', 'Invalid menu path (page/3) set in menu.yml. Does not match any configured contenttypes or routes.', 1, '/assedio-bolt/config-assedio', 'contentlisting', '127.0.0.1', 'config', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\TwigExtension.php","Line":1281}'),
(70, 200, '2015-03-19 13:13:27', 'Fetching from remote server: http://news.bolt.cm/', 1, '/assedio-bolt/async/dashboardnews', 'dashboardnews', '127.0.0.1', 'news', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Async.php","Line":114}'),
(71, 400, '2015-03-19 13:17:49', 'Invalid menu path (entry/1) set in menu.yml. Does not match any configured contenttypes or routes.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'config', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\TwigExtension.php","Line":1281}'),
(72, 400, '2015-03-19 13:17:49', 'Invalid menu path (entry/2) set in menu.yml. Does not match any configured contenttypes or routes.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'config', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\TwigExtension.php","Line":1281}'),
(73, 400, '2015-03-19 13:17:49', 'Invalid menu path (entry/3) set in menu.yml. Does not match any configured contenttypes or routes.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'config', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\TwigExtension.php","Line":1281}'),
(74, 400, '2015-03-19 13:17:49', 'Invalid menu path (entry/4) set in menu.yml. Does not match any configured contenttypes or routes.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'config', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\TwigExtension.php","Line":1281}'),
(75, 400, '2015-03-19 13:17:50', 'Invalid menu path (page/3) set in menu.yml. Does not match any configured contenttypes or routes.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'config', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\TwigExtension.php","Line":1281}'),
(76, 400, '2015-03-19 13:17:50', 'Invalid menu path (entry/1) set in menu.yml. Does not match any configured contenttypes or routes.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'config', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\TwigExtension.php","Line":1281}'),
(77, 400, '2015-03-19 13:17:50', 'Invalid menu path (entry/2) set in menu.yml. Does not match any configured contenttypes or routes.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'config', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\TwigExtension.php","Line":1281}'),
(78, 400, '2015-03-19 13:17:50', 'Invalid menu path (entry/3) set in menu.yml. Does not match any configured contenttypes or routes.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'config', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\TwigExtension.php","Line":1281}'),
(79, 400, '2015-03-19 13:17:50', 'Invalid menu path (entry/4) set in menu.yml. Does not match any configured contenttypes or routes.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'config', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\TwigExtension.php","Line":1281}'),
(80, 400, '2015-03-19 13:17:50', 'Invalid menu path (page/3) set in menu.yml. Does not match any configured contenttypes or routes.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'config', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\TwigExtension.php","Line":1281}'),
(81, 400, '2015-03-19 13:22:46', 'Requested specific query ''pagina/nos'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(82, 400, '2015-03-19 13:22:46', 'Requested specific query ''pagina/contato'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(83, 400, '2015-03-19 13:22:46', 'Requested specific query ''pagina/colabore'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(84, 400, '2015-03-19 13:22:47', 'Requested specific query ''pagina/nos'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(85, 400, '2015-03-19 13:22:47', 'Requested specific query ''pagina/contato'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(86, 400, '2015-03-19 13:22:47', 'Requested specific query ''pagina/colabore'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(87, 400, '2015-03-19 13:23:08', 'Requested specific query ''pagina/nos'', not found.', 1, '/assedio-bolt/projetos', 'contentlisting', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(88, 400, '2015-03-19 13:23:08', 'Requested specific query ''pagina/contato'', not found.', 1, '/assedio-bolt/projetos', 'contentlisting', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(89, 400, '2015-03-19 13:23:08', 'Requested specific query ''pagina/colabore'', not found.', 1, '/assedio-bolt/projetos', 'contentlisting', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(90, 400, '2015-03-19 13:23:09', 'Requested specific query ''pagina/nos'', not found.', 1, '/assedio-bolt/projetos', 'contentlisting', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(91, 400, '2015-03-19 13:23:09', 'Requested specific query ''pagina/contato'', not found.', 1, '/assedio-bolt/projetos', 'contentlisting', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(92, 400, '2015-03-19 13:23:09', 'Requested specific query ''pagina/colabore'', not found.', 1, '/assedio-bolt/projetos', 'contentlisting', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(93, 400, '2015-03-19 13:23:16', 'Requested specific query ''pagina/nos'', not found.', 1, '/assedio-bolt/itens-biblioteca', 'contentlisting', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(94, 400, '2015-03-19 13:23:16', 'Requested specific query ''pagina/contato'', not found.', 1, '/assedio-bolt/itens-biblioteca', 'contentlisting', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(95, 400, '2015-03-19 13:23:16', 'Requested specific query ''pagina/colabore'', not found.', 1, '/assedio-bolt/itens-biblioteca', 'contentlisting', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(96, 400, '2015-03-19 13:23:16', 'Requested specific query ''pagina/nos'', not found.', 1, '/assedio-bolt/itens-biblioteca', 'contentlisting', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(97, 400, '2015-03-19 13:23:17', 'Requested specific query ''pagina/contato'', not found.', 1, '/assedio-bolt/itens-biblioteca', 'contentlisting', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(98, 400, '2015-03-19 13:23:17', 'Requested specific query ''pagina/colabore'', not found.', 1, '/assedio-bolt/itens-biblioteca', 'contentlisting', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(99, 400, '2015-03-19 13:23:28', 'Requested specific query ''paginas/nos'', not found.', 1, '/assedio-bolt/itens-biblioteca', 'contentlisting', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(100, 400, '2015-03-19 13:23:28', 'Requested specific query ''pagina/contato'', not found.', 1, '/assedio-bolt/itens-biblioteca', 'contentlisting', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(101, 400, '2015-03-19 13:23:28', 'Requested specific query ''pagina/colabore'', not found.', 1, '/assedio-bolt/itens-biblioteca', 'contentlisting', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(102, 400, '2015-03-19 13:23:28', 'Requested specific query ''paginas/nos'', not found.', 1, '/assedio-bolt/itens-biblioteca', 'contentlisting', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(103, 400, '2015-03-19 13:23:28', 'Requested specific query ''pagina/contato'', not found.', 1, '/assedio-bolt/itens-biblioteca', 'contentlisting', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(104, 400, '2015-03-19 13:23:29', 'Requested specific query ''pagina/colabore'', not found.', 1, '/assedio-bolt/itens-biblioteca', 'contentlisting', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(105, 400, '2015-03-19 13:23:38', 'Requested specific query ''paginas/1'', not found.', 1, '/assedio-bolt/itens-biblioteca', 'contentlisting', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(106, 400, '2015-03-19 13:23:38', 'Requested specific query ''pagina/contato'', not found.', 1, '/assedio-bolt/itens-biblioteca', 'contentlisting', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(107, 400, '2015-03-19 13:23:38', 'Requested specific query ''pagina/colabore'', not found.', 1, '/assedio-bolt/itens-biblioteca', 'contentlisting', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(108, 400, '2015-03-19 13:23:39', 'Requested specific query ''paginas/1'', not found.', 1, '/assedio-bolt/itens-biblioteca', 'contentlisting', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(109, 400, '2015-03-19 13:23:39', 'Requested specific query ''pagina/contato'', not found.', 1, '/assedio-bolt/itens-biblioteca', 'contentlisting', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(110, 400, '2015-03-19 13:23:39', 'Requested specific query ''pagina/colabore'', not found.', 1, '/assedio-bolt/itens-biblioteca', 'contentlisting', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(111, 400, '2015-03-19 13:23:52', 'Requested specific query ''pagina/nos'', not found.', 1, '/assedio-bolt/itens-biblioteca', 'contentlisting', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(112, 400, '2015-03-19 13:23:52', 'Requested specific query ''pagina/contato'', not found.', 1, '/assedio-bolt/itens-biblioteca', 'contentlisting', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(113, 400, '2015-03-19 13:23:52', 'Requested specific query ''pagina/colabore'', not found.', 1, '/assedio-bolt/itens-biblioteca', 'contentlisting', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(114, 400, '2015-03-19 13:23:53', 'Requested specific query ''pagina/nos'', not found.', 1, '/assedio-bolt/itens-biblioteca', 'contentlisting', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(115, 400, '2015-03-19 13:23:53', 'Requested specific query ''pagina/contato'', not found.', 1, '/assedio-bolt/itens-biblioteca', 'contentlisting', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(116, 400, '2015-03-19 13:23:53', 'Requested specific query ''pagina/colabore'', not found.', 1, '/assedio-bolt/itens-biblioteca', 'contentlisting', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(117, 200, '2015-03-19 13:27:42', 'Created: Nós', 1, '/assedio-bolt/admin/editcontent/paginas?returnto=new', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(118, 400, '2015-03-19 13:27:48', 'Requested specific query ''pagina/nos'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(119, 400, '2015-03-19 13:27:48', 'Requested specific query ''pagina/contato'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(120, 400, '2015-03-19 13:27:48', 'Requested specific query ''pagina/colabore'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(121, 400, '2015-03-19 13:27:48', 'Requested specific query ''pagina/nos'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(122, 400, '2015-03-19 13:27:48', 'Requested specific query ''pagina/contato'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(123, 400, '2015-03-19 13:27:48', 'Requested specific query ''pagina/colabore'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(124, 400, '2015-03-19 13:28:06', 'Requested specific query ''pagina/nos'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(125, 400, '2015-03-19 13:28:06', 'Requested specific query ''pagina/contato'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(126, 400, '2015-03-19 13:28:06', 'Requested specific query ''pagina/colabore'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(127, 400, '2015-03-19 13:28:07', 'Requested specific query ''pagina/nos'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(128, 400, '2015-03-19 13:28:07', 'Requested specific query ''pagina/contato'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(129, 400, '2015-03-19 13:28:07', 'Requested specific query ''pagina/colabore'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(130, 400, '2015-03-19 13:28:15', 'Requested specific query ''pagina/nos'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(131, 400, '2015-03-19 13:28:15', 'Requested specific query ''pagina/contato'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(132, 400, '2015-03-19 13:28:15', 'Requested specific query ''pagina/colabore'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(133, 400, '2015-03-19 13:28:16', 'Requested specific query ''pagina/nos'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(134, 400, '2015-03-19 13:28:16', 'Requested specific query ''pagina/contato'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(135, 400, '2015-03-19 13:28:16', 'Requested specific query ''pagina/colabore'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(136, 400, '2015-03-19 13:29:36', 'Requested specific query ''pagina/1'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(137, 400, '2015-03-19 13:29:36', 'Requested specific query ''pagina/contato'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(138, 400, '2015-03-19 13:29:36', 'Requested specific query ''pagina/colabore'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(139, 400, '2015-03-19 13:29:37', 'Requested specific query ''pagina/1'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(140, 400, '2015-03-19 13:29:37', 'Requested specific query ''pagina/contato'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(141, 400, '2015-03-19 13:29:37', 'Requested specific query ''pagina/colabore'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(142, 400, '2015-03-19 13:29:54', 'Requested specific query ''pagina/1'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(143, 400, '2015-03-19 13:29:54', 'Requested specific query ''pagina/contato'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(144, 400, '2015-03-19 13:29:54', 'Requested specific query ''pagina/colabore'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(145, 400, '2015-03-19 13:29:55', 'Requested specific query ''pagina/1'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(146, 400, '2015-03-19 13:29:55', 'Requested specific query ''pagina/contato'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(147, 400, '2015-03-19 13:29:55', 'Requested specific query ''pagina/colabore'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(148, 400, '2015-03-19 13:30:07', 'Requested specific query ''pagina/nos'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(149, 400, '2015-03-19 13:30:07', 'Requested specific query ''pagina/contato'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(150, 400, '2015-03-19 13:30:07', 'Requested specific query ''pagina/colabore'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(151, 400, '2015-03-19 13:30:08', 'Requested specific query ''pagina/nos'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(152, 400, '2015-03-19 13:30:08', 'Requested specific query ''pagina/contato'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(153, 400, '2015-03-19 13:30:08', 'Requested specific query ''pagina/colabore'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(154, 400, '2015-03-19 13:30:35', 'Requested specific query ''pagina/nos'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(155, 400, '2015-03-19 13:30:35', 'Requested specific query ''pagina/contato'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(156, 400, '2015-03-19 13:30:35', 'Requested specific query ''pagina/colabore'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(157, 400, '2015-03-19 13:30:35', 'Requested specific query ''pagina/nos'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(158, 400, '2015-03-19 13:30:36', 'Requested specific query ''pagina/contato'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(159, 400, '2015-03-19 13:30:36', 'Requested specific query ''pagina/colabore'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(160, 400, '2015-03-19 13:30:47', 'Requested specific query ''pagina/nos'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(161, 400, '2015-03-19 13:30:47', 'Requested specific query ''pagina/contato'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(162, 400, '2015-03-19 13:30:47', 'Requested specific query ''pagina/colabore'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(163, 400, '2015-03-19 13:30:47', 'Requested specific query ''pagina/nos'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(164, 400, '2015-03-19 13:30:47', 'Requested specific query ''pagina/contato'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(165, 400, '2015-03-19 13:30:48', 'Requested specific query ''pagina/colabore'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(166, 400, '2015-03-19 13:41:25', 'Requested specific query ''pagina/contato'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(167, 400, '2015-03-19 13:41:25', 'Requested specific query ''pagina/colabore'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(168, 400, '2015-03-19 13:41:26', 'Requested specific query ''pagina/contato'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(169, 400, '2015-03-19 13:41:26', 'Requested specific query ''pagina/colabore'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(170, 400, '2015-03-19 13:41:47', 'Requested specific query ''pagina/nos'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(171, 400, '2015-03-19 13:41:47', 'Requested specific query ''pagina/contato'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(172, 400, '2015-03-19 13:41:47', 'Requested specific query ''pagina/colabore'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(173, 400, '2015-03-19 13:41:48', 'Requested specific query ''pagina/nos'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(174, 400, '2015-03-19 13:41:48', 'Requested specific query ''pagina/contato'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(175, 400, '2015-03-19 13:41:48', 'Requested specific query ''pagina/colabore'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(176, 400, '2015-03-19 13:42:05', 'Requested specific query ''pagina/nos'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(177, 400, '2015-03-19 13:42:05', 'Requested specific query ''pagina/contato'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(178, 400, '2015-03-19 13:42:05', 'Requested specific query ''pagina/colabore'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(179, 400, '2015-03-19 13:42:05', 'Requested specific query ''pagina/nos'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(180, 400, '2015-03-19 13:42:05', 'Requested specific query ''pagina/contato'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(181, 400, '2015-03-19 13:42:05', 'Requested specific query ''pagina/colabore'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(182, 400, '2015-03-19 13:42:17', 'Requested specific query ''pagina/nos'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(183, 400, '2015-03-19 13:42:17', 'Requested specific query ''pagina/contato'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(184, 400, '2015-03-19 13:42:17', 'Requested specific query ''pagina/colabore'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(185, 400, '2015-03-19 13:42:18', 'Requested specific query ''pagina/nos'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(186, 400, '2015-03-19 13:42:18', 'Requested specific query ''pagina/contato'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(187, 400, '2015-03-19 13:42:18', 'Requested specific query ''pagina/colabore'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(188, 200, '2015-03-19 13:42:21', 'Using cached data', 1, '/assedio-bolt/async/dashboardnews', 'dashboardnews', '127.0.0.1', 'news', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Async.php","Line":169}'),
(189, 200, '2015-03-19 13:42:24', 'Using cached data', 1, '/assedio-bolt/async/dashboardnews', 'dashboardnews', '127.0.0.1', 'news', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Async.php","Line":169}'),
(190, 400, '2015-03-19 13:42:27', 'Requested specific query ''pagina/nos'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(191, 400, '2015-03-19 13:42:27', 'Requested specific query ''pagina/contato'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(192, 400, '2015-03-19 13:42:27', 'Requested specific query ''pagina/colabore'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(193, 400, '2015-03-19 13:42:28', 'Requested specific query ''pagina/nos'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(194, 400, '2015-03-19 13:42:28', 'Requested specific query ''pagina/contato'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(195, 400, '2015-03-19 13:42:28', 'Requested specific query ''pagina/colabore'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(196, 200, '2015-03-19 13:42:55', 'Saved: Nós', 1, '/assedio-bolt/admin/editcontent/paginas/1?returnto=ajax', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":786}'),
(197, 400, '2015-03-19 13:42:59', 'Requested specific query ''pagina/contato'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(198, 400, '2015-03-19 13:42:59', 'Requested specific query ''pagina/colabore'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(199, 400, '2015-03-19 13:43:00', 'Requested specific query ''pagina/contato'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(200, 400, '2015-03-19 13:43:00', 'Requested specific query ''pagina/colabore'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(201, 400, '2015-03-19 13:43:14', 'Requested specific query ''pagina/contato'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(202, 400, '2015-03-19 13:43:14', 'Requested specific query ''pagina/colabore'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(203, 400, '2015-03-19 13:43:14', 'Requested specific query ''pagina/contato'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}');
INSERT INTO `bolt_log_system` (`id`, `level`, `date`, `message`, `ownerid`, `requesturi`, `route`, `ip`, `context`, `source`) VALUES
(204, 400, '2015-03-19 13:43:14', 'Requested specific query ''pagina/colabore'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(205, 400, '2015-03-19 13:43:18', 'Requested specific query ''pagina/contato'', not found.', 1, '/assedio-bolt/pagina/nos', 'contentlink', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(206, 400, '2015-03-19 13:43:18', 'Requested specific query ''pagina/colabore'', not found.', 1, '/assedio-bolt/pagina/nos', 'contentlink', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(207, 400, '2015-03-19 13:43:19', 'Requested specific query ''pagina'', not found.', 1, '/assedio-bolt/pagina/nos', 'contentlink', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(208, 400, '2015-03-19 13:43:19', 'Requested specific query ''pagina'', not found.', 1, '/assedio-bolt/pagina/nos', 'contentlink', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(209, 400, '2015-03-19 13:43:19', 'Requested specific query ''pagina/contato'', not found.', 1, '/assedio-bolt/pagina/nos', 'contentlink', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(210, 400, '2015-03-19 13:43:19', 'Requested specific query ''pagina/colabore'', not found.', 1, '/assedio-bolt/pagina/nos', 'contentlink', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(211, 200, '2015-03-19 14:18:13', 'Using cached data', 1, '/assedio-bolt/async/dashboardnews', 'dashboardnews', '127.0.0.1', 'news', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Async.php","Line":169}'),
(212, 200, '2015-03-19 14:21:11', 'Using cached data', 1, '/assedio-bolt/async/dashboardnews', 'dashboardnews', '127.0.0.1', 'news', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Async.php","Line":169}'),
(213, 200, '2015-03-19 14:21:34', 'Using cached data', 1, '/assedio-bolt/async/dashboardnews', 'dashboardnews', '127.0.0.1', 'news', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Async.php","Line":169}'),
(214, 400, '2015-03-19 14:27:41', 'Requested specific query ''pagina/contato'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(215, 400, '2015-03-19 14:27:41', 'Requested specific query ''pagina/colabore'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(216, 400, '2015-03-19 14:27:42', 'Requested specific query ''pagina/contato'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(217, 400, '2015-03-19 14:27:42', 'Requested specific query ''pagina/colabore'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(218, 250, '2015-03-19 14:34:17', 'Detected Bolt version change to 2.1.3 pl1. Please clear the cache and check the database, if you haven''t done so already.', 1, '/assedio-bolt/admin/', 'dashboard', '127.0.0.1', 'config', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":1915}'),
(219, 200, '2015-03-19 14:34:18', 'Using cached data', 1, '/assedio-bolt/async/dashboardnews', 'dashboardnews', '127.0.0.1', 'news', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Async.php","Line":169}'),
(220, 200, '2015-03-19 14:35:41', 'Fetching from remote server: http://news.bolt.cm/', 1, '/assedio-bolt/async/dashboardnews', 'dashboardnews', '127.0.0.1', 'news', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Async.php","Line":114}'),
(221, 400, '2015-03-19 14:35:52', 'Requested specific query ''pagina/contato'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(222, 400, '2015-03-19 14:35:52', 'Requested specific query ''pagina/colabore'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(223, 400, '2015-03-19 14:35:52', 'Requested specific query ''pagina/contato'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(224, 400, '2015-03-19 14:35:53', 'Requested specific query ''pagina/colabore'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(225, 400, '2015-03-19 14:48:38', 'Requested specific query ''pagina/contato'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(226, 400, '2015-03-19 14:48:38', 'Requested specific query ''pagina/colabore'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(227, 400, '2015-03-19 14:48:39', 'Requested specific query ''pagina/contato'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(228, 400, '2015-03-19 14:48:39', 'Requested specific query ''pagina/colabore'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(229, 200, '2015-03-19 15:05:55', 'Created: Notícias', 1, '/assedio-bolt/admin/editcontent/paginas?returnto=new', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(230, 200, '2015-03-19 15:07:25', 'Using cached data', 1, '/assedio-bolt/async/dashboardnews', 'dashboardnews', '127.0.0.1', 'news', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Async.php","Line":169}'),
(231, 200, '2015-03-19 15:08:44', 'Created: Projetos', 1, '/assedio-bolt/admin/editcontent/paginas?returnto=new', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(232, 200, '2015-03-19 15:09:57', 'Created: Biblioteca', 1, '/assedio-bolt/admin/editcontent/paginas?returnto=new', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(233, 400, '2015-03-19 15:13:29', 'Requested specific query ''pagina/contato'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(234, 400, '2015-03-19 15:13:29', 'Requested specific query ''pagina/colabore'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(235, 400, '2015-03-19 15:13:30', 'Requested specific query ''pagina/contato'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(236, 400, '2015-03-19 15:13:30', 'Requested specific query ''pagina/colabore'', not found.', 1, '/assedio-bolt/', 'homepage', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(237, 200, '2015-03-19 15:13:38', 'Using cached data', 1, '/assedio-bolt/async/dashboardnews', 'dashboardnews', '127.0.0.1', 'news', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Async.php","Line":169}'),
(238, 200, '2015-03-24 19:57:13', 'Logged in: romulo1984', 1, '/assedio-bolt/admin/login', 'postLogin', '127.0.0.1', 'authentication', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Login.php","Line":52}'),
(239, 200, '2015-03-24 19:57:16', 'Fetching from remote server: http://news.bolt.cm/', 1, '/assedio-bolt/async/dashboardnews', 'dashboardnews', '127.0.0.1', 'news', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Async.php","Line":114}'),
(240, 200, '2015-03-24 20:26:19', 'Using cached data', 1, '/assedio-bolt/async/dashboardnews', 'dashboardnews', '127.0.0.1', 'news', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Async.php","Line":169}'),
(241, 200, '2015-03-24 20:38:01', 'Created: Geral', 1, '/assedio-bolt/admin/editcontent/config-assedio', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(242, 200, '2015-03-24 20:41:37', 'Saved: Geral', 1, '/assedio-bolt/admin/editcontent/config-assedio/1?returnto=ajax', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":786}'),
(243, 200, '2015-03-24 20:42:28', 'Using cached data', 1, '/assedio-bolt/async/dashboardnews', 'dashboardnews', '127.0.0.1', 'news', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Async.php","Line":169}'),
(244, 200, '2015-03-24 20:44:33', 'Created: Contato', 1, '/assedio-bolt/admin/editcontent/paginas?returnto=new', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(245, 200, '2015-03-24 20:47:39', 'Created: Colabore', 1, '/assedio-bolt/admin/editcontent/paginas?returnto=new', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(246, 200, '2015-03-24 20:54:18', 'Created: Título de uma notícia qualquer', 1, '/assedio-bolt/admin/editcontent/noticias?returnto=new', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(247, 400, '2015-03-24 20:54:49', 'Requested specific query ''noticia'', not found.', 1, '/assedio-bolt/noticia/titulo-de-uma-noticia-qualquer', 'contentlink', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(248, 400, '2015-03-24 20:54:49', 'Requested specific query ''noticia'', not found.', 1, '/assedio-bolt/noticia/titulo-de-uma-noticia-qualquer', 'contentlink', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(249, 200, '2015-03-24 20:58:27', 'Created: Outro Artigo, agora da categoria Notícias Especiais', 1, '/assedio-bolt/admin/editcontent/noticias?returnto=new', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(250, 200, '2015-03-24 20:58:36', 'Saved: Outro Artigo, agora da categoria Notícias Especiais', 1, '/assedio-bolt/admin/editcontent/noticias/2?returnto=ajax', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":786}'),
(251, 200, '2015-03-24 21:03:15', 'Created: Este é um item de agenda', 1, '/assedio-bolt/admin/editcontent/noticias?returnto=new', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(252, 200, '2015-03-24 21:03:28', 'Saved: Este é um item de agenda', 1, '/assedio-bolt/admin/editcontent/noticias/3?returnto=saveandnew', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":786}'),
(253, 200, '2015-03-24 21:04:13', 'Created: Outro item de agenda', 1, '/assedio-bolt/admin/editcontent/noticias/0?returnto=new', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(254, 200, '2015-03-24 21:12:18', 'Using cached data', 1, '/assedio-bolt/async/dashboardnews', 'dashboardnews', '127.0.0.1', 'news', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Async.php","Line":169}'),
(255, 200, '2015-03-24 21:14:53', 'Created: Amanda Brommonschenkel', 1, '/assedio-bolt/admin/editcontent/membros?returnto=new', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(256, 200, '2015-03-24 21:15:31', 'Created: Cora Made', 1, '/assedio-bolt/admin/editcontent/membros?returnto=new', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(257, 200, '2015-03-24 21:16:31', 'Created: Daniel Morelo', 1, '/assedio-bolt/admin/editcontent/membros?returnto=new', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(258, 200, '2015-03-24 21:17:21', 'Created: Ernane Batista', 1, '/assedio-bolt/admin/editcontent/membros?returnto=new', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(259, 200, '2015-03-24 21:27:11', 'Saved: Notícias', 1, '/assedio-bolt/admin/editcontent/paginas/2?returnto=ajax', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":786}'),
(260, 200, '2015-03-24 21:27:42', 'Saved: Contato', 1, '/assedio-bolt/admin/editcontent/paginas/5?returnto=ajax', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":786}'),
(261, 200, '2015-03-24 21:34:27', 'Created: Festival Tarde no Bairro', 1, '/assedio-bolt/admin/editcontent/projetos?returnto=new', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(262, 200, '2015-03-24 21:37:19', 'Saved: Festival Tarde no Bairro', 1, '/assedio-bolt/admin/editcontent/projetos/1?returnto=ajax', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":786}'),
(263, 200, '2015-03-24 21:41:49', 'Created: Edições - Festival Tarde no Bairro', 1, '/assedio-bolt/admin/editcontent/galerias?returnto=new', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(264, 200, '2015-03-24 21:42:21', 'Saved: Festival Tarde no Bairro', 1, '/assedio-bolt/admin/editcontent/projetos/1?returnto=ajax', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":786}'),
(265, 200, '2015-03-24 21:42:27', 'Saved: Festival Tarde no Bairro', 1, '/assedio-bolt/admin/editcontent/projetos/1?returnto=ajax', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":786}'),
(266, 200, '2015-03-24 21:45:20', 'Created: Casa Coletiva', 1, '/assedio-bolt/admin/editcontent/projetos?returnto=saveandnew', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(267, 200, '2015-03-24 21:52:30', 'Created: Bonde', 1, '/assedio-bolt/admin/editcontent/projetos/0?returnto=new', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(268, 200, '2015-03-24 21:54:33', 'Created: Temporada de Oficinas', 1, '/assedio-bolt/admin/editcontent/projetos?returnto=saveandnew', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(269, 200, '2015-03-24 21:57:26', 'Created: Reviravolta Coletiva', 1, '/assedio-bolt/admin/editcontent/projetos/0?returnto=new', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(270, 200, '2015-03-24 22:00:35', 'Created: Site Assédio Coletivo', 1, '/assedio-bolt/admin/editcontent/projetos?returnto=new', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(271, 200, '2015-03-24 22:02:43', 'Created: Projetos Aprovados em Editais', 1, '/assedio-bolt/admin/editcontent/itens-biblioteca?returnto=new', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(272, 200, '2015-03-24 22:04:12', 'Created: Outros Conteúdos', 1, '/assedio-bolt/admin/editcontent/itens-biblioteca?returnto=saveandnew', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(273, 200, '2015-03-24 22:05:04', 'Created: Linkeria', 1, '/assedio-bolt/admin/editcontent/itens-biblioteca/0?returnto=saveandnew', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(274, 200, '2015-03-24 22:05:46', 'Created: Fotos', 1, '/assedio-bolt/admin/editcontent/itens-biblioteca/0?returnto=saveandnew', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(275, 200, '2015-03-24 22:06:39', 'Created: Vídeos', 1, '/assedio-bolt/admin/editcontent/itens-biblioteca/0?returnto=new', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(276, 200, '2015-03-24 22:07:48', 'Fetching from remote server: http://news.bolt.cm/', 1, '/assedio-bolt/async/dashboardnews', 'dashboardnews', '127.0.0.1', 'news', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Async.php","Line":114}'),
(277, 200, '2015-03-25 12:51:31', 'Fetching from remote server: http://news.bolt.cm/', 1, '/assedio-bolt/async/dashboardnews', 'dashboardnews', '127.0.0.1', 'news', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Async.php","Line":114}'),
(278, 200, '2015-03-25 15:04:14', 'Fetching from remote server: http://news.bolt.cm/', 1, '/assedio-bolt/async/dashboardnews', 'dashboardnews', '127.0.0.1', 'news', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Async.php","Line":114}'),
(279, 200, '2015-03-25 15:04:59', 'Saved: Geral', 1, '/assedio-bolt/admin/editcontent/config-assedio/1?returnto=ajax', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":786}'),
(280, 200, '2015-03-25 15:08:51', 'Using cached data', 1, '/assedio-bolt/async/dashboardnews', 'dashboardnews', '127.0.0.1', 'news', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Async.php","Line":169}'),
(281, 200, '2015-03-26 12:22:14', 'Fetching from remote server: http://news.bolt.cm/', 1, '/assedio-bolt/async/dashboardnews', 'dashboardnews', '127.0.0.1', 'news', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Async.php","Line":114}'),
(282, 200, '2015-03-26 12:58:07', 'Using cached data', 1, '/assedio-bolt/async/dashboardnews', 'dashboardnews', '127.0.0.1', 'news', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Async.php","Line":169}'),
(283, 200, '2015-03-26 12:59:49', 'Created: Este é um título de um slide', 1, '/assedio-bolt/admin/editcontent/slides?returnto=saveandnew', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(284, 200, '2015-03-26 13:00:21', 'Created: Este é outro slide da home', 1, '/assedio-bolt/admin/editcontent/slides/0?returnto=new', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(285, 200, '2015-03-26 13:12:34', 'Created: Slide sem link de redirecionamento', 1, '/assedio-bolt/admin/editcontent/slides?returnto=new', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(286, 200, '2015-03-26 13:29:34', 'Saved: Este é outro slide da home', 1, '/assedio-bolt/admin/editcontent/slides/2?returnto=ajax', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":786}'),
(287, 400, '2015-03-26 15:26:53', 'Requested specific query ''noticia'', not found.', 1, '/assedio-bolt/noticia/titulo-de-uma-noticia-qualquer', 'contentlink', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(288, 400, '2015-03-26 15:26:54', 'Requested specific query ''noticia'', not found.', 1, '/assedio-bolt/noticia/titulo-de-uma-noticia-qualquer', 'contentlink', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(289, 400, '2015-03-26 15:27:03', 'Requested specific query ''noticia'', not found.', 1, '/assedio-bolt/noticia/titulo-de-uma-noticia-qualquer', 'contentlink', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(290, 400, '2015-03-26 15:27:04', 'Requested specific query ''noticia'', not found.', 1, '/assedio-bolt/noticia/titulo-de-uma-noticia-qualquer', 'contentlink', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(291, 400, '2015-03-26 15:27:13', 'Requested specific query ''noticia'', not found.', 1, '/assedio-bolt/noticia/titulo-de-uma-noticia-qualquer', 'contentlink', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(292, 200, '2015-03-30 17:17:24', 'Fetching from remote server: http://news.bolt.cm/', 1, '/assedio-bolt/async/dashboardnews', 'dashboardnews', '127.0.0.1', 'news', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Async.php","Line":114}'),
(293, 200, '2015-03-30 17:19:59', 'Saved: Artigo da categoria Notícias Especiais', 1, '/assedio-bolt/admin/editcontent/noticias/2?returnto=new', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":786}'),
(294, 200, '2015-03-30 17:23:28', 'Created: Uma notícia, da categoria notícia', 1, '/assedio-bolt/admin/editcontent/noticias?returnto=new', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(295, 200, '2015-03-30 15:17:41', 'Saved: Este é um item de agenda', 1, '/assedio-bolt/admin/editcontent/noticias/3?returnto=ajax', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":786}'),
(296, 200, '2015-03-30 15:18:02', 'Saved: Outro item de agenda', 1, '/assedio-bolt/admin/editcontent/noticias/4?returnto=ajax', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":786}'),
(297, 200, '2015-03-30 15:19:39', 'Created: Esta agenda tem o dia de hoje', 1, '/assedio-bolt/admin/editcontent/noticias?returnto=new', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(298, 400, '2015-03-30 16:26:52', 'Requested specific query ''pagina'', not found.', 1, '/assedio-bolt/pagina/nos', 'contentlink', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(299, 200, '2015-03-30 16:31:48', 'Saved: Nós', 1, '/assedio-bolt/admin/editcontent/paginas/1?returnto=ajax', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":786}'),
(300, 200, '2015-03-30 16:35:52', 'Created: Guilherme Rebêlo', 1, '/assedio-bolt/admin/editcontent/membros?returnto=saveandnew', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(301, 200, '2015-03-30 16:36:18', 'Created: Iago Amaral Torezani', 1, '/assedio-bolt/admin/editcontent/membros/0?returnto=saveandnew', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(302, 200, '2015-03-30 16:36:45', 'Created: Isabel Bimbatto', 1, '/assedio-bolt/admin/editcontent/membros/0?returnto=saveandnew', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(303, 200, '2015-03-30 16:37:01', 'Created: João Chagas', 1, '/assedio-bolt/admin/editcontent/membros/0?returnto=saveandnew', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(304, 200, '2015-03-30 16:37:19', 'Created: Juane Vaillant', 1, '/assedio-bolt/admin/editcontent/membros/0?returnto=saveandnew', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(305, 200, '2015-03-30 16:37:46', 'Created: Julian Guariza', 1, '/assedio-bolt/admin/editcontent/membros/0?returnto=saveandnew', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(306, 200, '2015-03-30 16:38:10', 'Created: Lara Toledo', 1, '/assedio-bolt/admin/editcontent/membros/0?returnto=saveandnew', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(307, 200, '2015-03-30 16:38:32', 'Created: Muriel Falcão', 1, '/assedio-bolt/admin/editcontent/membros/0?returnto=saveandnew', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(308, 200, '2015-03-30 16:39:05', 'Created: Sidney Spacini', 1, '/assedio-bolt/admin/editcontent/membros/0?returnto=saveandnew', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(309, 200, '2015-03-30 16:39:27', 'Created: Stefânia Masotti', 1, '/assedio-bolt/admin/editcontent/membros/0?returnto=saveandnew', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(310, 200, '2015-03-30 16:39:48', 'Created: Tati Hauer', 1, '/assedio-bolt/admin/editcontent/membros/0?returnto=saveandnew', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(311, 200, '2015-03-30 16:40:13', 'Created: Thais Carletti', 1, '/assedio-bolt/admin/editcontent/membros/0?returnto=saveandnew', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(312, 200, '2015-03-30 16:40:34', 'Created: Thais Gobbo', 1, '/assedio-bolt/admin/editcontent/membros/0?returnto=new', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(313, 200, '2015-03-30 16:47:20', 'Fetching from remote server: http://news.bolt.cm/', 1, '/assedio-bolt/async/dashboardnews', 'dashboardnews', '127.0.0.1', 'news', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Async.php","Line":114}'),
(314, 400, '2015-03-30 16:47:22', 'Invalid JSON feed returned', 1, '/assedio-bolt/async/dashboardnews', 'dashboardnews', '127.0.0.1', 'news', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Async.php","Line":163}'),
(315, 200, '2015-03-30 16:48:08', 'Fetching from remote server: http://news.bolt.cm/', 1, '/assedio-bolt/async/dashboardnews', 'dashboardnews', '127.0.0.1', 'news', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Async.php","Line":114}'),
(316, 200, '2015-03-30 16:54:08', 'Saved: Nós', 1, '/assedio-bolt/admin/editcontent/paginas/1?returnto=ajax', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":786}'),
(317, 200, '2015-03-30 16:54:17', 'Saved: Nós', 1, '/assedio-bolt/admin/editcontent/paginas/1?returnto=ajax', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":786}'),
(318, 400, '2015-03-30 16:54:29', 'Requested specific query ''pagina'', not found.', 1, '/assedio-bolt/pagina/colabore', 'contentlink', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(319, 200, '2015-03-30 16:56:35', 'Saved: Colabore', 1, '/assedio-bolt/admin/editcontent/paginas/6?returnto=ajax', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":786}'),
(320, 200, '2015-03-30 16:59:37', 'Created: Esta é uma notícia da categoria Colaboradores', 1, '/assedio-bolt/admin/editcontent/noticias?returnto=saveandnew', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(321, 200, '2015-03-30 17:01:48', 'Created: Outra notícia de colaboradores', 1, '/assedio-bolt/admin/editcontent/noticias/0?returnto=new', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(322, 200, '2015-03-30 17:10:22', 'Saved: Contato', 1, '/assedio-bolt/admin/editcontent/paginas/5?returnto=ajax', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":786}'),
(323, 200, '2015-03-30 17:35:29', 'Saved: Notícias', 1, '/assedio-bolt/admin/editcontent/paginas/2?returnto=ajax', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":786}'),
(324, 400, '2015-03-31 14:30:11', 'Rendering Notícias failed: Template "_paginacao.twig" is not defined () in "noticias_page.twig" at line 88.', 1, '/assedio-bolt/pagina/noticias', 'contentlink', '127.0.0.1', 'twig', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Frontend.php","Line":411}'),
(325, 400, '2015-03-31 15:17:06', 'Rendering categorias failed: Template "listing.twig" is not defined ().', 1, '/assedio-bolt/categorias/noticias', 'taxonomylink', '127.0.0.1', 'twig', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Frontend.php","Line":411}'),
(326, 200, '2015-03-31 15:42:27', 'Fetching from remote server: http://news.bolt.cm/', 1, '/assedio-bolt/async/dashboardnews', 'dashboardnews', '127.0.0.1', 'news', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Async.php","Line":114}'),
(327, 200, '2015-03-31 15:47:34', 'Saved: Uma notícia, da categoria notícia', 1, '/assedio-bolt/admin/editcontent/noticias/6?returnto=ajax', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":786}'),
(328, 400, '2015-03-31 15:57:55', 'Rendering Projetos failed: Template "record.twig" is not defined ().', 1, '/assedio-bolt/pagina/projetos', 'contentlink', '127.0.0.1', 'twig', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Frontend.php","Line":411}'),
(329, 200, '2015-03-31 16:52:30', 'Saved: Galeria de testes', 1, '/assedio-bolt/admin/editcontent/galerias/1?returnto=ajax', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":786}'),
(330, 200, '2015-03-31 16:52:58', 'Saved: Galeria de testes', 1, '/assedio-bolt/admin/editcontent/galerias/1?returnto=ajax', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":786}'),
(331, 200, '2015-03-31 16:53:53', 'Saved: Galeria de testes', 1, '/assedio-bolt/admin/editcontent/galerias/1?returnto=ajax', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":786}'),
(332, 200, '2015-03-31 16:54:20', 'Saved: Galeria de testes', 1, '/assedio-bolt/admin/editcontent/galerias/1?returnto=ajax', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":786}'),
(333, 200, '2015-03-31 16:55:32', 'Saved: Título de uma notícia qualquer', 1, '/assedio-bolt/admin/editcontent/noticias/1?returnto=ajax', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":786}'),
(334, 200, '2015-03-31 16:55:51', 'Saved: Título de uma notícia qualquer', 1, '/assedio-bolt/admin/editcontent/noticias/1?returnto=ajax', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":786}'),
(335, 200, '2015-03-31 17:03:11', 'Saved: Edições - Festival Tarde no Bairro', 1, '/assedio-bolt/admin/editcontent/galerias/2?returnto=ajax', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":786}'),
(336, 200, '2015-03-31 17:03:33', 'Saved: Edições - Festival Tarde no Bairro', 1, '/assedio-bolt/admin/editcontent/galerias/2?returnto=ajax', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":786}'),
(337, 200, '2015-03-31 17:05:28', 'Saved: Galeria de testes', 1, '/assedio-bolt/admin/editcontent/galerias/1?returnto=ajax', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":786}'),
(338, 400, '2015-03-31 17:08:08', 'Rendering Projetos failed: Template "record.twig" is not defined ().', 1, '/assedio-bolt/pagina/projetos', 'contentlink', '127.0.0.1', 'twig', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Frontend.php","Line":411}'),
(339, 400, '2015-03-31 17:09:11', 'Rendering Projetos failed: Template "record.twig" is not defined ().', 1, '/assedio-bolt/pagina/projetos', 'contentlink', '127.0.0.1', 'twig', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Frontend.php","Line":411}'),
(340, 400, '2015-03-31 17:09:49', 'Rendering Projetos failed: Template "record.twig" is not defined ().', 1, '/assedio-bolt/pagina/projetos', 'contentlink', '127.0.0.1', 'twig', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Frontend.php","Line":411}'),
(341, 200, '2015-03-31 17:11:14', 'Saved: Projetos', 1, '/assedio-bolt/admin/editcontent/paginas/3?returnto=ajax', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":786}'),
(342, 400, '2015-03-31 17:15:47', 'Requested specific query ''paginas'', not found.', 1, '/assedio-bolt/pagina/p-tarde-no-bairo.php', 'contentlink', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(343, 200, '2015-03-31 17:23:40', 'Saved: Nossos Projetos', 1, '/assedio-bolt/admin/editcontent/paginas/3?returnto=ajax', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":786}'),
(344, 200, '2015-03-31 17:28:31', 'Saved: Edições - Festival Tarde no Bairro', 1, '/assedio-bolt/admin/editcontent/galerias/2?returnto=ajax', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":786}'),
(345, 200, '2015-04-01 09:20:10', 'Fetching from remote server: http://news.bolt.cm/', 1, '/assedio-bolt/async/dashboardnews', 'dashboardnews', '127.0.0.1', 'news', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Async.php","Line":114}'),
(346, 400, '2015-04-01 09:20:12', 'Invalid JSON feed returned', 1, '/assedio-bolt/async/dashboardnews', 'dashboardnews', '127.0.0.1', 'news', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Async.php","Line":163}'),
(347, 400, '2015-04-01 09:38:53', 'Rendering Biblioteca failed: Template "record.twig" is not defined ().', 1, '/assedio-bolt/pagina/biblioteca', 'contentlink', '127.0.0.1', 'twig', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Frontend.php","Line":411}'),
(348, 400, '2015-04-01 09:41:10', 'Rendering Biblioteca failed: Template "record.twig" is not defined ().', 1, '/assedio-bolt/pagina/biblioteca', 'contentlink', '127.0.0.1', 'twig', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Frontend.php","Line":411}'),
(349, 200, '2015-04-01 09:41:43', 'Saved: Biblioteca', 1, '/assedio-bolt/admin/editcontent/paginas/4?returnto=ajax', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":786}'),
(350, 400, '2015-04-01 09:44:04', 'Requested specific query ''paginas'', not found.', 1, '/assedio-bolt/pagina/projetos-aprovados.php', 'contentlink', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(351, 400, '2015-04-01 09:44:10', 'Requested specific query ''paginas'', not found.', 1, '/assedio-bolt/pagina/projetos-aprovados.php', 'contentlink', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(352, 200, '2015-04-01 09:46:37', 'Fetching from remote server: http://news.bolt.cm/', 1, '/assedio-bolt/async/dashboardnews', 'dashboardnews', '127.0.0.1', 'news', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Async.php","Line":114}'),
(353, 200, '2015-04-01 09:48:05', 'Saved: Projetos Aprovados em Editais', 1, '/assedio-bolt/admin/editcontent/itens-biblioteca/1?returnto=ajax', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":786}'),
(354, 200, '2015-04-01 09:48:29', 'Saved: Projetos Aprovados em Editais', 1, '/assedio-bolt/admin/editcontent/itens-biblioteca/1?returnto=ajax', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":786}'),
(355, 200, '2015-04-01 09:48:44', 'Saved: Vídeos', 1, '/assedio-bolt/admin/editcontent/itens-biblioteca/5?returnto=ajax', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":786}'),
(356, 200, '2015-04-01 09:48:59', 'Saved: Outros Conteúdos', 1, '/assedio-bolt/admin/editcontent/itens-biblioteca/2?returnto=ajax', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":786}'),
(357, 200, '2015-04-01 09:49:22', 'Saved: Linkeria', 1, '/assedio-bolt/admin/editcontent/itens-biblioteca/3?returnto=ajax', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":786}'),
(358, 200, '2015-04-01 09:49:30', 'Saved: Fotos', 1, '/assedio-bolt/admin/editcontent/itens-biblioteca/4?returnto=ajax', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":786}'),
(359, 400, '2015-04-01 10:02:02', 'Requested specific query ''paginas'', not found.', 1, '/assedio-bolt/videos', 'pagina', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(360, 400, '2015-04-01 10:04:39', 'Requested specific query ''paginas'', not found.', 1, '/assedio-bolt/projetos-aprovados', 'pagina', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(361, 200, '2015-04-01 10:07:29', 'Created: Aqui é o título do projeto aprovado', 1, '/assedio-bolt/admin/editcontent/projetos-aprovados?returnto=saveandnew', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(362, 200, '2015-04-01 10:08:37', 'Created: Outro item de Projetos Aprovados', 1, '/assedio-bolt/admin/editcontent/projetos-aprovados/0?returnto=new', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(363, 200, '2015-04-01 10:10:35', 'Created: Exemplo de Outros Conteúdos da Biblioteca', 1, '/assedio-bolt/admin/editcontent/outros-conteudos?returnto=saveandnew', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(364, 200, '2015-04-01 10:11:07', 'Created: Outro item do tipo Outros Conteúdos', 1, '/assedio-bolt/admin/editcontent/outros-conteudos/0?returnto=new', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(365, 200, '2015-04-01 10:13:52', 'Created: Este é um item da Linkeria', 1, '/assedio-bolt/admin/editcontent/linkerias?returnto=saveandnew', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(366, 200, '2015-04-01 10:15:29', 'Created: Mais outro item do tipo de biblioteca Linkeria', 1, '/assedio-bolt/admin/editcontent/linkerias/0?returnto=new', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(367, 200, '2015-04-01 10:17:05', 'Created: Este é um item da Biblioteca do tipo Fotos', 1, '/assedio-bolt/admin/editcontent/fotos?returnto=saveandnew', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(368, 200, '2015-04-01 10:17:49', 'Created: Outro item de Fotos', 1, '/assedio-bolt/admin/editcontent/fotos/0?returnto=new', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(369, 200, '2015-04-01 10:19:12', 'Created: Item da Biblioteca do tipo Vídeo', 1, '/assedio-bolt/admin/editcontent/videos?returnto=saveandnew', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(370, 200, '2015-04-01 10:19:48', 'Created: Outro item do tipo Vídeo', 1, '/assedio-bolt/admin/editcontent/videos/0?returnto=new', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(371, 400, '2015-04-01 10:21:50', 'Requested specific query ''paginas'', not found.', 1, '/assedio-bolt/projetos-aprovados', 'pagina', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(372, 400, '2015-04-01 10:22:08', 'Requested specific query ''projetos-aprovados'', not found.', 1, '/assedio-bolt/projetos-aprovados/projetos-aprovados', 'contentlink', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(373, 400, '2015-04-01 10:22:59', 'Rendering Outro item do tipo Vídeo failed: Template "record.twig" is not defined ().', 1, '/assedio-bolt/video/outro-item-do-tipo-video', 'contentlink', '127.0.0.1', 'twig', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Frontend.php","Line":411}'),
(374, 400, '2015-04-01 10:23:11', 'Rendering Outro item de Projetos Aprovados failed: Template "record.twig" is not defined ().', 1, '/assedio-bolt/projeto-aprovado/outro-item-de-projetos-aprovados', 'contentlink', '127.0.0.1', 'twig', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Frontend.php","Line":411}'),
(375, 400, '2015-04-01 10:23:46', 'Rendering Outro item de Projetos Aprovados failed: Template "record.twig" is not defined ().', 1, '/assedio-bolt/projeto-aprovado/outro-item-de-projetos-aprovados', 'contentlink', '127.0.0.1', 'twig', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Frontend.php","Line":411}'),
(376, 400, '2015-04-01 10:24:15', 'Rendering Outro item de Projetos Aprovados failed: Template "record.twig" is not defined ().', 1, '/assedio-bolt/projeto-aprovado/outro-item-de-projetos-aprovados', 'contentlink', '127.0.0.1', 'twig', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Frontend.php","Line":411}'),
(377, 400, '2015-04-01 10:25:29', 'Requested specific query ''paginas'', not found.', 1, '/assedio-bolt/projeto-aprovado', 'pagina', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(378, 400, '2015-04-01 10:25:39', 'Requested specific query ''paginas'', not found.', 1, '/assedio-bolt/projetos-aprovado', 'pagina', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(379, 400, '2015-04-01 10:26:36', 'Requested specific query ''paginas'', not found.', 1, '/assedio-bolt/projetos-aprovados', 'pagina', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(380, 400, '2015-04-01 10:27:35', 'Requested specific query ''paginas'', not found.', 1, '/assedio-bolt/projetos-aprovados', 'pagina', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(381, 400, '2015-04-01 10:27:38', 'Requested specific query ''paginas'', not found.', 1, '/assedio-bolt/projetos-aprovados', 'pagina', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(382, 400, '2015-04-01 10:27:40', 'Requested specific query ''paginas'', not found.', 1, '/assedio-bolt/projetos-aprovados', 'pagina', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(383, 400, '2015-04-01 10:28:02', 'Requested specific query ''paginas'', not found.', 1, '/assedio-bolt/projeto-aprovado', 'pagina', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(384, 400, '2015-04-01 10:28:38', 'Requested specific query ''paginas'', not found.', 1, '/assedio-bolt/projetos-aprovados', 'pagina', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(385, 400, '2015-04-01 10:28:49', 'Requested specific query ''paginas'', not found.', 1, '/assedio-bolt/projetos-aprovados', 'pagina', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(386, 400, '2015-04-01 10:29:47', 'Requested specific query ''paginas'', not found.', 1, '/assedio-bolt/projeto-aprovado', 'pagina', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(387, 400, '2015-04-01 10:38:16', 'Requested specific query ''paginas'', not found.', 1, '/assedio-bolt/projetos-aprovados', 'pagina', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(388, 400, '2015-04-01 10:38:20', 'Requested specific query ''paginas'', not found.', 1, '/assedio-bolt/projetos-aprovados', 'pagina', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(389, 400, '2015-04-01 10:38:33', 'Requested specific query ''paginas'', not found.', 1, '/assedio-bolt/projetos-aprovados', 'pagina', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(390, 400, '2015-04-01 10:46:16', 'Requested specific query ''itens_biblioteca/projetos_aprovados'', not found.', 1, '/assedio-bolt/projetos-aprovados', 'contentlisting', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(391, 400, '2015-04-01 10:46:57', 'Requested specific query ''itens_biblioteca/projetos-aprovados'', not found.', 1, '/assedio-bolt/projetos-aprovados', 'contentlisting', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(392, 400, '2015-04-01 10:47:29', 'Requested specific query ''itens_biblioteca/projetos-aprovados'', not found.', 1, '/assedio-bolt/projetos-aprovados', 'contentlisting', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(393, 400, '2015-04-01 10:47:43', 'Requested specific query ''itens_biblioteca/projetos_aprovados'', not found.', 1, '/assedio-bolt/projetos-aprovados', 'contentlisting', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(394, 400, '2015-04-01 10:49:26', 'Requested specific query ''itens_biblioteca/projetos-aprovados'', not found.', 1, '/assedio-bolt/projetos-aprovados', 'contentlisting', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}'),
(395, 200, '2015-04-01 11:10:52', 'Saved: Biblioteca', 1, '/assedio-bolt/admin/editcontent/paginas/4?returnto=ajax', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":786}'),
(396, 400, '2015-04-01 11:16:21', 'Requested specific query ''itens_biblioteca/linkerias'', not found.', 1, '/assedio-bolt/linkerias', 'contentlisting', '127.0.0.1', 'storage', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":1806}');
INSERT INTO `bolt_log_system` (`id`, `level`, `date`, `message`, `ownerid`, `requesturi`, `route`, `ip`, `context`, `source`) VALUES
(397, 200, '2015-04-01 11:40:55', 'Installed bolt/simpleforms 0.12', 1, '/assedio-bolt/admin/extend/install?package=bolt%2Fsimpleforms&version=0.12', 'install', '127.0.0.1', 'extensions', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Extend.php","Line":228}'),
(398, 200, '2015-04-01 11:49:30', 'Set Recipient for contato to romuloguimaraes@oparque.art.br', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'extension', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":38}'),
(399, 300, '2015-04-01 11:49:30', '[DEPRECATED]: Previous message logged using deprecated log service: C:\\wamp\\www\\assedio-bolt\\extensions\\vendor\\bolt\\simpleforms\\Extension.php::617', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'deprecated', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":39}'),
(400, 200, '2015-04-01 11:49:30', 'Set Sender for contato to romuloguimaraes@oparque.art.br', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'extension', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":38}'),
(401, 300, '2015-04-01 11:49:30', '[DEPRECATED]: Previous message logged using deprecated log service: C:\\wamp\\www\\assedio-bolt\\extensions\\vendor\\bolt\\simpleforms\\Extension.php::623', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'deprecated', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":39}'),
(402, 200, '2015-04-01 11:49:30', 'Sending message contato from romuloguimaraes@oparque.art.br to romuloguimaraes@oparque.art.br', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'extension', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":38}'),
(403, 300, '2015-04-01 11:49:30', '[DEPRECATED]: Previous message logged using deprecated log service: C:\\wamp\\www\\assedio-bolt\\extensions\\vendor\\bolt\\simpleforms\\Extension.php::733', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'deprecated', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":39}'),
(404, 200, '2015-04-01 11:49:30', 'Sent email from contato to romuloguimaraes@oparque.art.br (in testmode) - Assédio Coletivo', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'extension', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":38}'),
(405, 300, '2015-04-01 11:49:30', '[DEPRECATED]: Previous message logged using deprecated log service: C:\\wamp\\www\\assedio-bolt\\extensions\\vendor\\bolt\\simpleforms\\Extension.php::740', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'deprecated', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":39}'),
(406, 200, '2015-04-01 11:53:11', 'Set Recipient for contato to romuloguimaraes@oparque.art.br', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'extension', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":38}'),
(407, 300, '2015-04-01 11:53:11', '[DEPRECATED]: Previous message logged using deprecated log service: C:\\wamp\\www\\assedio-bolt\\extensions\\vendor\\bolt\\simpleforms\\Extension.php::617', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'deprecated', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":39}'),
(408, 200, '2015-04-01 11:53:11', 'Set Sender for contato to romuloguimaraes@oparque.art.br', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'extension', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":38}'),
(409, 300, '2015-04-01 11:53:11', '[DEPRECATED]: Previous message logged using deprecated log service: C:\\wamp\\www\\assedio-bolt\\extensions\\vendor\\bolt\\simpleforms\\Extension.php::623', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'deprecated', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":39}'),
(410, 200, '2015-04-01 11:53:11', 'Sending message contato from romuloguimaraes@oparque.art.br to romuloguimaraes@oparque.art.br', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'extension', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":38}'),
(411, 300, '2015-04-01 11:53:11', '[DEPRECATED]: Previous message logged using deprecated log service: C:\\wamp\\www\\assedio-bolt\\extensions\\vendor\\bolt\\simpleforms\\Extension.php::733', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'deprecated', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":39}'),
(412, 200, '2015-04-01 11:53:12', 'Sent email from contato to romuloguimaraes@oparque.art.br (in testmode) - Assédio Coletivo', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'extension', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":38}'),
(413, 300, '2015-04-01 11:53:12', '[DEPRECATED]: Previous message logged using deprecated log service: C:\\wamp\\www\\assedio-bolt\\extensions\\vendor\\bolt\\simpleforms\\Extension.php::740', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'deprecated', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":39}'),
(414, 200, '2015-04-01 11:55:00', 'Set Recipient for contato to romuloguimaraes@oparque.art.br', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'extension', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":38}'),
(415, 300, '2015-04-01 11:55:00', '[DEPRECATED]: Previous message logged using deprecated log service: C:\\wamp\\www\\assedio-bolt\\extensions\\vendor\\bolt\\simpleforms\\Extension.php::617', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'deprecated', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":39}'),
(416, 200, '2015-04-01 11:55:00', 'Set Sender for contato to romuloguimaraes@oparque.art.br', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'extension', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":38}'),
(417, 300, '2015-04-01 11:55:00', '[DEPRECATED]: Previous message logged using deprecated log service: C:\\wamp\\www\\assedio-bolt\\extensions\\vendor\\bolt\\simpleforms\\Extension.php::623', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'deprecated', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":39}'),
(418, 200, '2015-04-01 11:55:00', 'Sending message contato from romuloguimaraes@oparque.art.br to romuloguimaraes@oparque.art.br', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'extension', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":38}'),
(419, 300, '2015-04-01 11:55:00', '[DEPRECATED]: Previous message logged using deprecated log service: C:\\wamp\\www\\assedio-bolt\\extensions\\vendor\\bolt\\simpleforms\\Extension.php::733', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'deprecated', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":39}'),
(420, 200, '2015-04-01 11:55:00', 'Sent email from contato to romuloguimaraes@oparque.art.br (in testmode) - Assédio Coletivo', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'extension', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":38}'),
(421, 300, '2015-04-01 11:55:00', '[DEPRECATED]: Previous message logged using deprecated log service: C:\\wamp\\www\\assedio-bolt\\extensions\\vendor\\bolt\\simpleforms\\Extension.php::740', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'deprecated', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":39}'),
(422, 200, '2015-04-01 11:57:19', 'Set Recipient for contato to romuloguimaraes@oparque.art.br', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'extension', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":38}'),
(423, 300, '2015-04-01 11:57:19', '[DEPRECATED]: Previous message logged using deprecated log service: C:\\wamp\\www\\assedio-bolt\\extensions\\vendor\\bolt\\simpleforms\\Extension.php::617', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'deprecated', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":39}'),
(424, 200, '2015-04-01 11:57:19', 'Set Sender for contato to romuloguimaraes@oparque.art.br', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'extension', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":38}'),
(425, 300, '2015-04-01 11:57:19', '[DEPRECATED]: Previous message logged using deprecated log service: C:\\wamp\\www\\assedio-bolt\\extensions\\vendor\\bolt\\simpleforms\\Extension.php::623', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'deprecated', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":39}'),
(426, 200, '2015-04-01 11:57:19', 'Sending message contato from romuloguimaraes@oparque.art.br to romuloguimaraes@oparque.art.br', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'extension', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":38}'),
(427, 300, '2015-04-01 11:57:19', '[DEPRECATED]: Previous message logged using deprecated log service: C:\\wamp\\www\\assedio-bolt\\extensions\\vendor\\bolt\\simpleforms\\Extension.php::733', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'deprecated', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":39}'),
(428, 200, '2015-04-01 11:57:20', 'Sent email from contato to romuloguimaraes@oparque.art.br (in testmode) - Assédio Coletivo', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'extension', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":38}'),
(429, 300, '2015-04-01 11:57:20', '[DEPRECATED]: Previous message logged using deprecated log service: C:\\wamp\\www\\assedio-bolt\\extensions\\vendor\\bolt\\simpleforms\\Extension.php::740', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'deprecated', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":39}'),
(430, 200, '2015-04-01 11:58:20', 'Set Recipient for contato to romuloguimaraes@oparque.art.br', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'extension', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":38}'),
(431, 300, '2015-04-01 11:58:20', '[DEPRECATED]: Previous message logged using deprecated log service: C:\\wamp\\www\\assedio-bolt\\extensions\\vendor\\bolt\\simpleforms\\Extension.php::617', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'deprecated', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":39}'),
(432, 200, '2015-04-01 11:58:20', 'Set Sender for contato to romuloguimaraes@oparque.art.br', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'extension', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":38}'),
(433, 300, '2015-04-01 11:58:20', '[DEPRECATED]: Previous message logged using deprecated log service: C:\\wamp\\www\\assedio-bolt\\extensions\\vendor\\bolt\\simpleforms\\Extension.php::623', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'deprecated', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":39}'),
(434, 200, '2015-04-01 11:58:20', 'Sending message contato from romuloguimaraes@oparque.art.br to romuloguimaraes@oparque.art.br', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'extension', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":38}'),
(435, 300, '2015-04-01 11:58:20', '[DEPRECATED]: Previous message logged using deprecated log service: C:\\wamp\\www\\assedio-bolt\\extensions\\vendor\\bolt\\simpleforms\\Extension.php::733', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'deprecated', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":39}'),
(436, 200, '2015-04-01 11:58:20', 'Sent email from contato to romuloguimaraes@oparque.art.br (in testmode) - Assédio Coletivo', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'extension', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":38}'),
(437, 300, '2015-04-01 11:58:20', '[DEPRECATED]: Previous message logged using deprecated log service: C:\\wamp\\www\\assedio-bolt\\extensions\\vendor\\bolt\\simpleforms\\Extension.php::740', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'deprecated', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":39}'),
(438, 200, '2015-04-01 12:00:21', 'Set Recipient for contato to romuloguimaraes@oparque.art.br', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'extension', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":38}'),
(439, 300, '2015-04-01 12:00:21', '[DEPRECATED]: Previous message logged using deprecated log service: C:\\wamp\\www\\assedio-bolt\\extensions\\vendor\\bolt\\simpleforms\\Extension.php::617', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'deprecated', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":39}'),
(440, 200, '2015-04-01 12:00:21', 'Set Sender for contato to romuloguimaraes@oparque.art.br', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'extension', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":38}'),
(441, 300, '2015-04-01 12:00:21', '[DEPRECATED]: Previous message logged using deprecated log service: C:\\wamp\\www\\assedio-bolt\\extensions\\vendor\\bolt\\simpleforms\\Extension.php::623', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'deprecated', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":39}'),
(442, 200, '2015-04-01 12:00:21', 'Sending message contato from romuloguimaraes@oparque.art.br to romuloguimaraes@oparque.art.br', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'extension', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":38}'),
(443, 300, '2015-04-01 12:00:21', '[DEPRECATED]: Previous message logged using deprecated log service: C:\\wamp\\www\\assedio-bolt\\extensions\\vendor\\bolt\\simpleforms\\Extension.php::733', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'deprecated', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":39}'),
(444, 200, '2015-04-01 12:00:21', 'Sent email from contato to romuloguimaraes@oparque.art.br (in testmode) - Assédio Coletivo', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'extension', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":38}'),
(445, 300, '2015-04-01 12:00:21', '[DEPRECATED]: Previous message logged using deprecated log service: C:\\wamp\\www\\assedio-bolt\\extensions\\vendor\\bolt\\simpleforms\\Extension.php::740', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'deprecated', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":39}'),
(446, 200, '2015-04-01 12:01:07', 'Set Recipient for contato to romuloguimaraes@oparque.art.br', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'extension', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":38}'),
(447, 300, '2015-04-01 12:01:07', '[DEPRECATED]: Previous message logged using deprecated log service: C:\\wamp\\www\\assedio-bolt\\extensions\\vendor\\bolt\\simpleforms\\Extension.php::617', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'deprecated', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":39}'),
(448, 200, '2015-04-01 12:01:07', 'Set Sender for contato to romuloguimaraes@oparque.art.br', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'extension', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":38}'),
(449, 300, '2015-04-01 12:01:07', '[DEPRECATED]: Previous message logged using deprecated log service: C:\\wamp\\www\\assedio-bolt\\extensions\\vendor\\bolt\\simpleforms\\Extension.php::623', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'deprecated', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":39}'),
(450, 200, '2015-04-01 12:01:07', 'Sending message contato from romuloguimaraes@oparque.art.br to romuloguimaraes@oparque.art.br', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'extension', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":38}'),
(451, 300, '2015-04-01 12:01:07', '[DEPRECATED]: Previous message logged using deprecated log service: C:\\wamp\\www\\assedio-bolt\\extensions\\vendor\\bolt\\simpleforms\\Extension.php::733', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'deprecated', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":39}'),
(452, 200, '2015-04-01 12:05:52', 'Set Recipient for contato to romuloguimaraes@oparque.art.br', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'extension', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":38}'),
(453, 300, '2015-04-01 12:05:52', '[DEPRECATED]: Previous message logged using deprecated log service: C:\\wamp\\www\\assedio-bolt\\extensions\\vendor\\bolt\\simpleforms\\Extension.php::617', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'deprecated', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":39}'),
(454, 200, '2015-04-01 12:05:52', 'Set Sender for contato to romuloguimaraes@oparque.art.br', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'extension', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":38}'),
(455, 300, '2015-04-01 12:05:52', '[DEPRECATED]: Previous message logged using deprecated log service: C:\\wamp\\www\\assedio-bolt\\extensions\\vendor\\bolt\\simpleforms\\Extension.php::623', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'deprecated', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":39}'),
(456, 200, '2015-04-01 12:05:52', 'Sending message contato from romuloguimaraes@oparque.art.br to romuloguimaraes@oparque.art.br', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'extension', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":38}'),
(457, 300, '2015-04-01 12:05:52', '[DEPRECATED]: Previous message logged using deprecated log service: C:\\wamp\\www\\assedio-bolt\\extensions\\vendor\\bolt\\simpleforms\\Extension.php::733', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'deprecated', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":39}'),
(458, 200, '2015-04-01 12:05:52', 'Sent email from contato to romuloguimaraes@oparque.art.br (in testmode) - Assédio Coletivo', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'extension', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":38}'),
(459, 300, '2015-04-01 12:05:52', '[DEPRECATED]: Previous message logged using deprecated log service: C:\\wamp\\www\\assedio-bolt\\extensions\\vendor\\bolt\\simpleforms\\Extension.php::740', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'deprecated', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Logger\\\\DeprecatedLog.php","Line":39}'),
(460, 200, '2015-04-02 11:55:48', 'Fetching from remote server: http://news.bolt.cm/', 1, '/assedio-bolt/async/dashboardnews', 'dashboardnews', '127.0.0.1', 'news', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Async.php","Line":114}'),
(461, 200, '2015-04-02 11:58:12', 'Saved: Reviravolta Coletiva', 1, '/assedio-bolt/admin/editcontent/projetos/5?returnto=ajax', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":786}'),
(462, 200, '2015-04-06 17:21:12', 'Fetching from remote server: http://news.bolt.cm/', 1, '/assedio-bolt/async/dashboardnews', 'dashboardnews', '127.0.0.1', 'news', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Async.php","Line":114}'),
(463, 200, '2015-04-06 17:21:57', 'Installed bolt/boltforms v2.1.2', 1, '/assedio-bolt/admin/extend/install?package=bolt%2Fboltforms&version=v2.1.2', 'install', '127.0.0.1', 'extensions', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Extend.php","Line":228}'),
(464, 200, '2015-04-06 17:34:42', 'Sent Bolt Forms notification to Assédio Coletivo <romuloguimaraes@oparque.art.br>', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'extensions', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\extensions\\\\vendor\\\\bolt\\\\boltforms\\\\src\\\\Email.php","Line":198}'),
(465, 200, '2015-04-06 17:35:31', 'Using cached data', 1, '/assedio-bolt/async/dashboardnews', 'dashboardnews', '127.0.0.1', 'news', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Async.php","Line":169}'),
(466, 200, '2015-04-06 17:39:25', 'Using cached data', 1, '/assedio-bolt/async/dashboardnews', 'dashboardnews', '127.0.0.1', 'news', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Async.php","Line":169}'),
(467, 400, '2015-04-06 17:39:54', 'Contenttype is required for saveContent', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'exception', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Storage.php","Line":347}'),
(468, 200, '2015-04-06 17:40:41', 'Using cached data', 1, '/assedio-bolt/async/dashboardnews', 'dashboardnews', '127.0.0.1', 'news', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Async.php","Line":169}'),
(469, 200, '2015-04-06 17:41:11', 'Sent Bolt Forms notification to Assédio Coletivo <romuloguimaraes@oparque.art.br>', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'extensions', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\extensions\\\\vendor\\\\bolt\\\\boltforms\\\\src\\\\Email.php","Line":198}'),
(470, 200, '2015-04-06 17:46:22', 'Failed Bolt Forms notification to Assédio Coletivo <romuloguimaraes@oparque.art.br>', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'extensions', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\extensions\\\\vendor\\\\bolt\\\\boltforms\\\\src\\\\Email.php","Line":200}'),
(471, 200, '2015-04-06 18:06:59', 'Failed Bolt Forms notification to Assédio Coletivo <no-reply@assedicoletivo.com.br>', 1, '/assedio-bolt/pagina/contato', 'contentlink', '127.0.0.1', 'extensions', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\extensions\\\\vendor\\\\bolt\\\\boltforms\\\\src\\\\Email.php","Line":200}'),
(472, 200, '2015-04-06 17:20:49', 'Saved: Geral', 1, '/assedio-bolt/admin/editcontent/config-assedio/1?returnto=ajax', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":786}'),
(473, 200, '2015-04-09 09:17:53', 'Failed login attempt for ''Rômulo Guimarães''.', 0, '/assedio-bolt/admin/login', 'postLogin', '127.0.0.1', 'authentication', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Users.php","Line":476}'),
(474, 500, '2015-04-09 09:27:17', 'Page configuracao/geral not found.', 0, '/assedio-bolt/configuracao/geral', 'contentlink', '127.0.0.1', 'exception', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Application.php","Line":533}'),
(475, 200, '2015-04-09 09:29:36', 'Logged in: romulo1984', 1, '/assedio-bolt/admin/login', 'postLogin', '127.0.0.1', 'authentication', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Login.php","Line":52}'),
(476, 200, '2015-04-09 09:29:40', 'Fetching from remote server: http://news.bolt.cm/', 1, '/assedio-bolt/async/dashboardnews', 'dashboardnews', '127.0.0.1', 'news', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Async.php","Line":114}'),
(477, 200, '2015-04-09 09:32:50', 'Created: 404 - Nada foi encontrado', 1, '/assedio-bolt/admin/editcontent/paginas?returnto=new', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(478, 200, '2015-04-09 09:34:38', 'Using cached data', 1, '/assedio-bolt/async/dashboardnews', 'dashboardnews', '127.0.0.1', 'news', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Async.php","Line":169}'),
(479, 200, '2015-04-09 09:50:09', 'Saved: Geral', 1, '/assedio-bolt/admin/editcontent/config-assedio/1?returnto=ajax', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":786}'),
(480, 200, '2015-04-09 09:57:51', 'Created: Libre', 1, '/assedio-bolt/admin/editcontent/parceiros?returnto=new', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(481, 200, '2015-04-09 10:00:47', 'Saved: Libre', 1, '/assedio-bolt/admin/editcontent/parceiros/1?returnto=ajax', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":786}'),
(482, 200, '2015-04-09 10:03:18', 'Created: Outro parceiro, apenas para testes', 1, '/assedio-bolt/admin/editcontent/parceiros?returnto=new', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(483, 200, '2015-04-09 10:16:34', 'Created: Galeria vinda do flickr', 1, '/assedio-bolt/admin/editcontent/fotos?returnto=new', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":783}'),
(484, 200, '2015-04-09 10:16:48', 'Saved: Galeria vinda do flickr', 1, '/assedio-bolt/admin/editcontent/fotos/3?returnto=ajax', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":786}'),
(485, 200, '2015-04-09 10:17:19', 'Saved: Galeria vinda do flickr', 1, '/assedio-bolt/admin/editcontent/fotos/3?returnto=ajax', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":786}'),
(486, 200, '2015-04-09 10:18:33', 'Saved: Galeria vinda do flickr', 1, '/assedio-bolt/admin/editcontent/fotos/3?returnto=ajax', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":786}'),
(487, 200, '2015-04-09 10:19:53', 'Saved: Galeria vinda do flickr', 1, '/assedio-bolt/admin/editcontent/fotos/3?returnto=ajax', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":786}'),
(488, 200, '2015-04-09 10:30:44', 'Saved: Título de uma notícia qualquer', 1, '/assedio-bolt/admin/editcontent/noticias/1?returnto=ajax', 'editcontent', '127.0.0.1', 'content', '{"File":"C:\\\\wamp\\\\www\\\\assedio-bolt\\\\src\\\\Controllers\\\\Backend.php","Line":786}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `bolt_membros`
--

CREATE TABLE IF NOT EXISTS `bolt_membros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `datecreated` datetime NOT NULL,
  `datechanged` datetime NOT NULL,
  `datepublish` datetime DEFAULT NULL,
  `datedepublish` datetime DEFAULT NULL,
  `username` varchar(32) COLLATE utf8_unicode_ci DEFAULT '',
  `ownerid` int(11) DEFAULT NULL,
  `status` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `titulo` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `imagem` longtext COLLATE utf8_unicode_ci NOT NULL,
  `hashtags` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `IDX_A8CB1523989D9B62` (`slug`),
  KEY `IDX_A8CB1523AFBA6FD8` (`datecreated`),
  KEY `IDX_A8CB1523BE74E59A` (`datechanged`),
  KEY `IDX_A8CB1523A5131421` (`datepublish`),
  KEY `IDX_A8CB1523B7805520` (`datedepublish`),
  KEY `IDX_A8CB15237B00651C` (`status`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

--
-- Extraindo dados da tabela `bolt_membros`
--

INSERT INTO `bolt_membros` (`id`, `slug`, `datecreated`, `datechanged`, `datepublish`, `datedepublish`, `username`, `ownerid`, `status`, `titulo`, `imagem`, `hashtags`) VALUES
(1, 'amanda-brommonschenkel', '2015-03-24 21:14:53', '2015-03-24 21:14:53', '2015-03-24 21:13:01', NULL, '', 1, 'published', 'Amanda Brommonschenkel', '{"file":"2015-03\\/01.png"}', '#comunicação #redes #articulação'),
(2, 'cora-made', '2015-03-24 21:15:31', '2015-03-24 21:15:31', '2015-03-24 21:15:05', NULL, '', 1, 'published', 'Cora Made', '{"file":"2015-03\\/02.png"}', '#roteiro #arte #feminismo'),
(3, 'daniel-morelo', '2015-03-24 21:16:30', '2015-03-24 21:16:30', '2015-03-24 21:15:53', NULL, '', 1, 'published', 'Daniel Morelo', '{"file":"2015-03\\/03.png"}', '#política #cultura #diversão'),
(4, 'ernane-batista', '2015-03-24 21:17:20', '2015-03-24 21:17:20', '2015-03-24 21:16:43', NULL, '', 1, 'published', 'Ernane Batista', '{"file":"2015-03\\/04.png"}', '#arte #cerâmica #picolédearaçaúna'),
(5, 'guilherme-rebelo', '2015-03-30 16:35:51', '2015-03-30 16:35:51', '2015-03-30 16:35:06', NULL, '', 1, 'published', 'Guilherme Rebêlo', '{"file":"2015-03\\/05.png"}', '#comunicaçãoindependente #cultura #juventude'),
(6, 'iago-amaral-torezani', '2015-03-30 16:36:17', '2015-03-30 16:36:17', '2015-03-30 16:35:53', NULL, '', 1, 'published', 'Iago Amaral Torezani', '{"file":"2015-03\\/06.png"}', '#caminhantedomundo #juventudelúdica #iririu'),
(7, 'isabel-bimbatto', '2015-03-30 16:36:44', '2015-03-30 16:36:44', '2015-03-30 16:36:19', NULL, '', 1, 'published', 'Isabel Bimbatto', '{"file":"2015-03\\/07.png"}', '#artes visuais #fotografia #iririu'),
(8, 'joao-chagas', '2015-03-30 16:37:01', '2015-03-30 16:37:01', '2015-03-30 16:36:46', NULL, '', 1, 'published', 'João Chagas', '{"file":"2015-03\\/08.png"}', '#Verde #Literatura #HashtagsSãoDifíceis'),
(9, 'juane-vaillant', '2015-03-30 16:37:19', '2015-03-30 16:37:19', '2015-03-30 16:37:03', NULL, '', 1, 'published', 'Juane Vaillant', '{"file":"2015-03\\/09.png"}', '#produtoraaudiovisual #escritoracompulsiva #atrizemconstrução'),
(10, 'julian-guariza', '2015-03-30 16:37:45', '2015-03-30 16:37:45', '2015-03-30 16:37:21', NULL, '', 1, 'published', 'Julian Guariza', '{"file":"2015-03\\/10.png"}', '#curitibanacapixaba #produtoraaudiovisual #carnedeonça'),
(11, 'lara-toledo', '2015-03-30 16:38:09', '2015-03-30 16:38:09', '2015-03-30 16:37:47', NULL, '', 1, 'published', 'Lara Toledo', '{"file":"2015-03\\/11.png"}', '#juventudeemmovimento #comunicação_política #novatagastona'),
(12, 'muriel-falcao', '2015-03-30 16:38:32', '2015-03-30 16:38:32', '2015-03-30 16:38:11', NULL, '', 1, 'published', 'Muriel Falcão', '{"file":"2015-03\\/12.png"}', '#políticasculturais #arte_gambiarra #funkatéocaroço'),
(13, 'sidney-spacini', '2015-03-30 16:39:05', '2015-03-30 16:39:05', '2015-03-30 16:38:34', NULL, '', 1, 'published', 'Sidney Spacini', '{"file":"2015-03\\/13.png"}', '#realizaçãoaudiovisual #comunicaçãoindependente #políticasparajuventude #comunicação&cultura'),
(14, 'stefania-masotti', '2015-03-30 16:39:26', '2015-03-30 16:39:26', '2015-03-30 16:39:07', NULL, '', 1, 'published', 'Stefânia Masotti', '{"file":"2015-03\\/14.png"}', '#comunicação #arte #visãoesentimento'),
(15, 'tati-hauer', '2015-03-30 16:39:48', '2015-03-30 16:39:48', '2015-03-30 16:39:28', NULL, '', 1, 'published', 'Tati Hauer', '{"file":"2015-03\\/15.png"}', '#fotógrafa #videomaker #ciclista'),
(16, 'thais-carletti', '2015-03-30 16:40:13', '2015-03-30 16:40:13', '2015-03-30 16:39:50', NULL, '', 1, 'published', 'Thais Carletti', '{"file":"2015-03\\/16.png"}', '#fotografia #useflores #feminista'),
(17, 'thais-gobbo', '2015-03-30 16:40:33', '2015-03-30 16:40:33', '2015-03-30 16:40:14', NULL, '', 1, 'published', 'Thais Gobbo', '{"file":"2015-03\\/17.png"}', '#fotografia #territóriodobem #espetinhodecamarão');

-- --------------------------------------------------------

--
-- Estrutura da tabela `bolt_noticias`
--

CREATE TABLE IF NOT EXISTS `bolt_noticias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `datecreated` datetime NOT NULL,
  `datechanged` datetime NOT NULL,
  `datepublish` datetime DEFAULT NULL,
  `datedepublish` datetime DEFAULT NULL,
  `username` varchar(32) COLLATE utf8_unicode_ci DEFAULT '',
  `ownerid` int(11) DEFAULT NULL,
  `status` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `titulo` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `titulo_destaque` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `imagem_destaque` longtext COLLATE utf8_unicode_ci NOT NULL,
  `resumo` longtext COLLATE utf8_unicode_ci NOT NULL,
  `corpo` longtext COLLATE utf8_unicode_ci NOT NULL,
  `data` date DEFAULT NULL,
  `email_gravatar` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `nome_autor` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `IDX_54EB7318989D9B62` (`slug`),
  KEY `IDX_54EB7318AFBA6FD8` (`datecreated`),
  KEY `IDX_54EB7318BE74E59A` (`datechanged`),
  KEY `IDX_54EB7318A5131421` (`datepublish`),
  KEY `IDX_54EB7318B7805520` (`datedepublish`),
  KEY `IDX_54EB73187B00651C` (`status`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Extraindo dados da tabela `bolt_noticias`
--

INSERT INTO `bolt_noticias` (`id`, `slug`, `datecreated`, `datechanged`, `datepublish`, `datedepublish`, `username`, `ownerid`, `status`, `titulo`, `titulo_destaque`, `imagem_destaque`, `resumo`, `corpo`, `data`, `email_gravatar`, `nome_autor`) VALUES
(1, 'titulo-de-uma-noticia-qualquer', '2015-03-24 20:54:17', '2015-04-09 10:30:44', '2015-03-24 20:48:24', NULL, '', 1, 'published', 'Título de uma notícia qualquer', 'Título de uma notícia qualquer, mas aqui só vai pro destaque', '{"file":"2015-03\\/post-1.jpg"}', 'A respeito de favela somos tentados a caminhar pelas esquinas do obvio. Favela tem “pobre”, tem “funkeiro” e drogado. Favela tem tristeza, tem beco e bala perdida. Mas, às vezes, esquecemos que lá tem gente! - “Vamos construir prédios de luxo no lugar dos casebres! Não faz falta, três ou quatro sobrados na entrada da comunidade”- Isso também é política, meu caro.', '<p>A respeito de favela somos tentados a caminhar pelas esquinas do obvio. Favela tem “pobre”, tem “funkeiro” e drogado. Favela tem tristeza, tem beco e bala perdida. Mas, às vezes, esquecemos que lá tem gente! - “Vamos construir prédios de luxo no lugar dos casebres! Não faz falta, três ou quatro sobrados na entrada da comunidade”- Isso também é política, meu caro.</p>\r\n\r\n<p>Favela tem “pobre”, tem “funkeiro” e drogado. Favela tem tristeza, tem beco e bala perdida. Mas, às vezes, esquecemos que lá tem gente! - “Vamos construir prédios de luxo no lugar dos casebres! Não faz falta, três ou quatro sobrados na entrada da comunidade”- Isso também é política, meu caro.</p>\r\n\r\n<p>A respeito de favela somos tentados a caminhar pelas esquinas do obvio. Favela tem “pobre”, tem “funkeiro” e drogado. Favela tem tristeza, tem beco e bala perdida. Mas, às vezes, esquecemos que lá tem gente!</p>\r\n\r\n<p>Favela tem tristeza, tem beco e bala perdida. Mas, às vezes, esquecemos que lá tem gente! - “Vamos construir prédios de luxo no lugar dos casebres! Não faz falta, três ou quatro sobrados na entrada da comunidade”- Isso também é política, meu caro.</p>\r\n\r\n<p>Ela tem “pobre”, tem “funkeiro” e drogado. Favela tem tristeza, tem beco e bala perdida. Mas, às vezes, esquecemos que lá tem gente! - “Vamos construir prédios de luxo no lugar dos casebres! Não faz falta, três ou quatro sobrados na entrada da comunidade”- Isso também é política, meu caro.</p>', NULL, 'romulo1984@gmail.com', 'Rômulo Guimarães'),
(2, 'outro-artigo-agora-da-categoria-noticias-especiais', '2015-03-24 20:58:26', '2015-03-24 20:58:36', '2015-03-24 20:55:54', NULL, '', 1, 'published', 'Outro Artigo, agora da categoria Notícias Especiais', 'Outro Artigo, agora da categoria Notícias Especiais, mas com título destaque', '{"file":"2015-03\\/post-3.jpg"}', 'Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, nisi eros vermeio, in elementis mé pra quem é amistosis quis leo. Manduma pindureta quium dia nois paga. Sapien in monti palavris qui num significa nadis i pareci latim. Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.', '<p>Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, nisi eros vermeio, in elementis mé pra quem é amistosis quis leo. Manduma pindureta quium dia nois paga. Sapien in monti palavris qui num significa nadis i pareci latim. Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.</p>\r\n\r\n<p>Suco de cevadiss, é um leite divinis, qui tem lupuliz, matis, aguis e fermentis. Interagi no mé, cursus quis, vehicula ac nisi. Aenean vel dui dui. Nullam leo erat, aliquet quis tempus a, posuere ut mi. Ut scelerisque neque et turpis posuere pulvinar pellentesque nibh ullamcorper. Pharetra in mattis molestie, volutpat elementum justo. Aenean ut ante turpis. Pellentesque laoreet mé vel lectus scelerisque interdum cursus velit auctor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ac mauris lectus, non scelerisque augue. Aenean justo massa.</p>\r\n\r\n<p>Casamentiss faiz malandris se pirulitá, Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet, consectetuer Ispecialista im mé intende tudis nuam golada, vinho, uiski, carirí, rum da jamaikis, só num pode ser mijis. Adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</p>', NULL, '', ''),
(3, 'este-e-um-item-de-agenda', '2015-03-24 21:03:14', '2015-03-30 15:17:40', '2015-03-24 20:58:55', NULL, '', 1, 'published', 'Este é um item de agenda', 'Este título é que é listado', '', 'Este é um item de agenda. Casamentiss faiz malandris se pirulitá, Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet.', '<p>Este é um item de agenda.</p>\r\n\r\n<p>Casamentiss faiz malandris se pirulitá, Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet, consectetuer Ispecialista im mé intende tudis nuam golada, vinho, uiski, carirí, rum da jamaikis, só num pode ser mijis. Adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat</p>\r\n\r\n<p>Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, nisi eros vermeio, in elementis mé pra quem é amistosis quis leo. Manduma pindureta quium dia nois paga. Sapien in monti palavris qui num significa nadis i pareci latim. Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.</p>\r\n\r\n<p>Suco de cevadiss, é um leite divinis, qui tem lupuliz, matis, aguis e fermentis. Interagi no mé, cursus quis, vehicula ac nisi. Aenean vel dui dui. Nullam leo erat, aliquet quis tempus a, posuere ut mi. Ut scelerisque neque et turpis posuere pulvinar pellentesque nibh ullamcorper. Pharetra in mattis molestie, volutpat elementum justo. Aenean ut ante turpis. Pellentesque laoreet mé vel lectus scelerisque interdum cursus velit auctor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ac mauris lectus, non scelerisque augue. Aenean justo massa.</p>', '2015-03-10', '', ''),
(4, 'outro-item-de-agenda', '2015-03-24 21:04:12', '2015-03-30 15:18:01', '2015-03-24 21:03:30', NULL, '', 1, 'published', 'Outro item de agenda', 'Outro item de agenda', '', 'Outro item de agenda', '<p>Outro item de agenda</p>', '2015-04-02', '', ''),
(5, 'artigo-da-categoria-noticias-especiais', '2015-03-30 17:19:58', '2015-03-30 17:19:58', '2015-03-30 17:18:36', NULL, '', 1, 'published', 'Artigo da categoria Notícias Especiais', 'Artigo da categoria Notícias Especiais, mas com título destaque', '{"file":"2015-03\\/post-4.jpg"}', 'Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, nisi eros vermeio, in elementis mé pra quem é amistosis quis leo. Manduma pindureta quium dia nois paga. Sapien in monti palavris qui num significa nadis i pareci latim. Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.', '<p>Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, nisi eros vermeio, in elementis mé pra quem é amistosis quis leo. Manduma pindureta quium dia nois paga. Sapien in monti palavris qui num significa nadis i pareci latim. Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.</p>\r\n\r\n<p>Suco de cevadiss, é um leite divinis, qui tem lupuliz, matis, aguis e fermentis. Interagi no mé, cursus quis, vehicula ac nisi. Aenean vel dui dui. Nullam leo erat, aliquet quis tempus a, posuere ut mi. Ut scelerisque neque et turpis posuere pulvinar pellentesque nibh ullamcorper. Pharetra in mattis molestie, volutpat elementum justo. Aenean ut ante turpis. Pellentesque laoreet mé vel lectus scelerisque interdum cursus velit auctor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ac mauris lectus, non scelerisque augue. Aenean justo massa.</p>\r\n\r\n<p>Casamentiss faiz malandris se pirulitá, Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet, consectetuer Ispecialista im mé intende tudis nuam golada, vinho, uiski, carirí, rum da jamaikis, só num pode ser mijis. Adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</p>', NULL, '', ''),
(6, 'uma-noticia-da-categoria-noticia', '2015-03-30 17:23:27', '2015-03-31 15:47:34', '2015-03-30 17:20:46', NULL, '', 1, 'published', 'Uma notícia, da categoria notícia', 'Uma notícia, da categoria notícia, título destaque', '{"file":"alarm-clock-gold-hands-of-a-clock-1778.jpg"}', 'Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, nisi eros vermeio, in elementis mé pra quem é amistosis quis leo.', '<p>Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, nisi eros vermeio, in elementis mé pra quem é amistosis quis leo. Manduma pindureta quium dia nois paga. Sapien in monti palavris qui num significa nadis i pareci latim. Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.</p>\r\n\r\n<p>Suco de cevadiss, é um leite divinis, qui tem lupuliz, matis, aguis e fermentis. Interagi no mé, cursus quis, vehicula ac nisi. Aenean vel dui dui. Nullam leo erat, aliquet quis tempus a, posuere ut mi. Ut scelerisque neque et turpis posuere pulvinar pellentesque nibh ullamcorper. Pharetra in mattis molestie, volutpat elementum justo. Aenean ut ante turpis. Pellentesque laoreet mé vel lectus scelerisque interdum cursus velit auctor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ac mauris lectus, non scelerisque augue. Aenean justo massa.</p>\r\n\r\n<p>Casamentiss faiz malandris se pirulitá, Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet, consectetuer Ispecialista im mé intende tudis nuam golada, vinho, uiski, carirí, rum da jamaikis, só num pode ser mijis. Adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</p>', NULL, '', ''),
(7, 'esta-agenda-tem-o-dia-de-hoje', '2015-03-30 15:19:38', '2015-03-30 15:19:38', '2015-03-30 15:18:16', NULL, '', 1, 'published', 'Esta agenda tem o dia de hoje', 'Esta agenda tem o dia de hoje, e este é um título destaque', '', 'Apenas um teste para um item da agenda', '<p>Apenas um teste para um item da agenda, que tem a data de hoje (referente ao dia que foi cadastrada e realizada o teste)</p>', '2015-03-30', '', ''),
(8, 'esta-e-uma-noticia-da-categoria-colaboradores', '2015-03-30 16:59:36', '2015-03-30 16:59:36', '2015-03-30 16:58:04', NULL, '', 1, 'published', 'Esta é uma notícia da categoria Colaboradores', 'Esta é uma notícia da categoria Colaboradores, com título destaque', '{"file":"building-frame-garage-1599.jpg"}', 'Casamentiss faiz malandris se pirulitá, Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', '<p>Suco de cevadiss, é um leite divinis, qui tem lupuliz, matis, aguis e fermentis. Interagi no mé, cursus quis, vehicula ac nisi. Aenean vel dui dui. Nullam leo erat, aliquet quis tempus a, posuere ut mi. Ut scelerisque neque et turpis posuere pulvinar pellentesque nibh ullamcorper. Pharetra in mattis molestie, volutpat elementum justo. Aenean ut ante turpis. Pellentesque laoreet mé vel lectus scelerisque interdum cursus velit auctor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ac mauris lectus, non scelerisque augue. Aenean justo massa.</p>\r\n\r\n<p>Casamentiss faiz malandris se pirulitá, Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet, consectetuer Ispecialista im mé intende tudis nuam golada, vinho, uiski, carirí, rum da jamaikis, só num pode ser mijis. Adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</p>', NULL, '', ''),
(9, 'outra-noticia-de-colaboradores', '2015-03-30 17:01:47', '2015-03-30 17:01:47', '2015-03-30 16:59:41', NULL, '', 1, 'published', 'Outra notícia de colaboradores', 'Outra notícia de colaboradores, com título destaque', '{"file":"architecture-books-building-2757.jpg"}', 'Suco de cevadiss, é um leite divinis, qui tem lupuliz, matis, aguis e fermentis.', '<p>Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, nisi eros vermeio, in elementis mé pra quem é amistosis quis leo. Manduma pindureta quium dia nois paga. Sapien in monti palavris qui num significa nadis i pareci latim. Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.</p>\r\n\r\n<p>Suco de cevadiss, é um leite divinis, qui tem lupuliz, matis, aguis e fermentis. Interagi no mé, cursus quis, vehicula ac nisi. Aenean vel dui dui. Nullam leo erat, aliquet quis tempus a, posuere ut mi. Ut scelerisque neque et turpis posuere pulvinar pellentesque nibh ullamcorper. Pharetra in mattis molestie, volutpat elementum justo. Aenean ut ante turpis. Pellentesque laoreet mé vel lectus scelerisque interdum cursus velit auctor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ac mauris lectus, non scelerisque augue. Aenean justo massa.</p>\r\n\r\n<p>Casamentiss faiz malandris se pirulitá, Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet, consectetuer Ispecialista im mé intende tudis nuam golada, vinho, uiski, carirí, rum da jamaikis, só num pode ser mijis. Adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</p>', NULL, '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `bolt_outros_conteudos`
--

CREATE TABLE IF NOT EXISTS `bolt_outros_conteudos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `datecreated` datetime NOT NULL,
  `datechanged` datetime NOT NULL,
  `datepublish` datetime DEFAULT NULL,
  `datedepublish` datetime DEFAULT NULL,
  `username` varchar(32) COLLATE utf8_unicode_ci DEFAULT '',
  `ownerid` int(11) DEFAULT NULL,
  `status` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `titulo` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `resumo` longtext COLLATE utf8_unicode_ci NOT NULL,
  `corpo` longtext COLLATE utf8_unicode_ci NOT NULL,
  `arquivo` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `IDX_C0FBA077989D9B62` (`slug`),
  KEY `IDX_C0FBA077AFBA6FD8` (`datecreated`),
  KEY `IDX_C0FBA077BE74E59A` (`datechanged`),
  KEY `IDX_C0FBA077A5131421` (`datepublish`),
  KEY `IDX_C0FBA077B7805520` (`datedepublish`),
  KEY `IDX_C0FBA0777B00651C` (`status`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `bolt_outros_conteudos`
--

INSERT INTO `bolt_outros_conteudos` (`id`, `slug`, `datecreated`, `datechanged`, `datepublish`, `datedepublish`, `username`, `ownerid`, `status`, `titulo`, `resumo`, `corpo`, `arquivo`) VALUES
(1, 'exemplo-de-outros-conteudos-da-biblioteca', '2015-04-01 10:10:35', '2015-04-01 10:10:35', '2015-04-01 10:08:46', NULL, '', 1, 'published', 'Exemplo de Outros Conteúdos da Biblioteca', 'Aqui é o resumo', '<p>Aqui é o corpo de exemplo de um item de Outros Conteúdos da Biblioteca</p>', '2015-04/exemplo-de-arquivo-para-ser-baixado.txt'),
(2, 'outro-item-do-tipo-outros-conteudos', '2015-04-01 10:11:07', '2015-04-01 10:11:07', '2015-04-01 10:10:37', NULL, '', 1, 'published', 'Outro item do tipo Outros Conteúdos', 'Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis.', '<p>Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, nisi eros vermeio, in elementis mé pra quem é amistosis quis leo. Manduma pindureta quium dia nois paga. Sapien in monti palavris qui num significa nadis i pareci latim. Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.</p>', '2015-04/exemplo-de-arquivo-para-ser-baixado.txt');

-- --------------------------------------------------------

--
-- Estrutura da tabela `bolt_paginas`
--

CREATE TABLE IF NOT EXISTS `bolt_paginas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `datecreated` datetime NOT NULL,
  `datechanged` datetime NOT NULL,
  `datepublish` datetime DEFAULT NULL,
  `datedepublish` datetime DEFAULT NULL,
  `username` varchar(32) COLLATE utf8_unicode_ci DEFAULT '',
  `ownerid` int(11) DEFAULT NULL,
  `status` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `titulo` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `imagem_destaque` longtext COLLATE utf8_unicode_ci NOT NULL,
  `resumo` longtext COLLATE utf8_unicode_ci NOT NULL,
  `corpo` longtext COLLATE utf8_unicode_ci NOT NULL,
  `template` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `IDX_235D4201989D9B62` (`slug`),
  KEY `IDX_235D4201AFBA6FD8` (`datecreated`),
  KEY `IDX_235D4201BE74E59A` (`datechanged`),
  KEY `IDX_235D4201A5131421` (`datepublish`),
  KEY `IDX_235D4201B7805520` (`datedepublish`),
  KEY `IDX_235D42017B00651C` (`status`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Extraindo dados da tabela `bolt_paginas`
--

INSERT INTO `bolt_paginas` (`id`, `slug`, `datecreated`, `datechanged`, `datepublish`, `datedepublish`, `username`, `ownerid`, `status`, `titulo`, `imagem_destaque`, `resumo`, `corpo`, `template`) VALUES
(1, 'nos', '2015-03-19 13:27:42', '2015-03-30 16:54:16', '2015-03-19 13:24:02', NULL, '', 1, 'published', 'Nós', '{"file":"2015-03\\/slide-1.jpg"}', 'O Assédio Coletivo é um grupo formado por cerca de 20 produtores e articuladores culturais, cuja sede está localizada em Itararé, Vitória/ES.', '<h2>O ASSÉDIO COLETIVO</h2>\r\n\r\n<p>O Assédio Coletivo é um grupo formado por cerca de 20 produtores e articuladores culturais, cuja sede está localizada em Itararé, Vitória/ES. O coletivo iniciou suas atividades em janeiro de 2012 e, hoje, desenvolve ações que objetivam fortalecer o cenário cultural do Espírito Santo, principalmente valorizando a arte autoral, o fazer colaborativo e a ação de outros coletivos e agentes culturais.</p>\r\n\r\n<p>Hoje, seus principais projetos são o Festival Tarde no Bairro (FTNB), a Reviravolta Coletiva, a Libre - Casa Coletiva, o Bonde e a Temporada de Oficinas. Além de seus membros trabalharem com mobilização e articulação cultural, o grupo atua diretamente com serviços de comunicação (coberturas audiovisuais e produção de conteúdo para difusão cultural), produção cultural e musical (seminários, shows e eventos de linguagens artísticas diversas) e formação (elaboração de metodologias para ações, oficinas de projetos, capacitações e sensibilização).</p>\r\n\r\n<p>Para o Assédio, ser coletivo articulador e produtor significa evidenciar, por meio de suas ações e projetos, as possibilidades de transformação das realidades sociais. Acredita-se que as mudanças podem ocorrer por meio da coletividade, das vivências, do compartilhamento, da tolerância, da colaboração e do respeito ao outro. Enquanto grupo, o Assédio Coletivo busca atuar também politicamente e contribuir para o desenvolvimento de agentes culturais e para o fortalecimento de novas organizações por meio do diálogo e compartilhamento de tecnologias e de informações.</p>\r\n\r\n<p></p>\r\n\r\n<h2>MANIFESTO NECESSIDADE E VONTADE</h2>\r\n\r\n<p>Ao longo da história humana podemos observar o antagonismo entre aqueles que julgam que somos naturalmente adversários e concorrentes e aqueles que julgam que somos naturalmente parceiros e irmãos. Para os primeiros, não importa se é pela mitocôndria evolucionária ou pelo salário nosso de cada dia, é cada um por si e... cada um por si mesmo. Para os outros, tudo tende para o bem porque há uma ordem natural – ou até sobrenatural – que levará a isso. Pois bem, se esse problema fosse solúvel já teria sido resolvido!</p>\r\n\r\n<p>Existem outras pessoas – como nós aqui – que consideram que aquelas posições foram, são e serão escolhidas. Que podemos nos unir e construir quando queremos, e que podemos também dizimar e humilhar sem muito esforço. Que a mão que segura a caneta e o detonador são potencialmente a mesma. E o que queremos nós, então? O de sempre: diversão e arte, como cantou o poeta. Queremos poder mostrar o que produzimos com tanto afinco, suor, amor e dedicação. Queremos – e somente isso – poder reunir aqueles que concordam conosco e também querem exibir o que possuem de melhor. Necessidade e vontade.</p>\r\n\r\n<p>Certo é, entretanto, que se pretendemos abrir espaços de exibição, tais espaços não existem, ou pelo menos, têm seu acesso restringido. Sim, um lugar tão bom para se viver como Vitória, como o Espírito Santo, tem dificuldades em articular sua produção artística. E nosso propósito não é culpar os políticos, a sociedade, as igrejas, os outros estados, o presidente. Nós culpamos a nós mesmos, ou, pelo menos, reconhecemos nossa parcela de culpa. E é para que possamos fazer nosso “dever de casa” para então partirmos para cobrar dos outros suas respectivas tarefas é que nos lançamos, assim de supetão, com esse sotaque meio punk (Faça você mesmo!), meio filosófico (liberdade e consenso), nesta tarefa de convocarmos todos vocês: é hora de nos engajarmos e abrirmos as portas. Façamos nós mesmos! Se vocês, enquanto produtores artísticos também já sentiram que lhes faltam chances de pôr a julgamento público suas obras, é para vocês mesmo que escrevemos!</p>\r\n\r\n<p>É notório, sobretudo nos últimos dez anos, que o desenvolvimento das condições tecnológicas de comunicação e difusão de informação e produtos artísticos tem forçado as velhas estruturas a se repensarem. Insistimos no forçado, pois, como é típico de instituições em queda, a maior parte da indústria da cultura resiste a assumir o próprio ocaso e estende forçosamente o período de crise. De qualquer forma, esta crise desencadeou a busca por novas formas de articular os circuitos de exibição e difusão pelo país – os Coletivos – e esta proposta tem se expandido por inúmeros estados brasileiros e mudando a cara do cenário, com espaços verdadeiramente alternativos. Sentindo que o momento é propício buscamos com esta proposta agregar aqueles que produzem, fruem e querem participar ativamente da vida artística do nosso estado.</p>\r\n\r\n<p>Em tempos onde a política reacionária tem buscado novas formas de censura e protecionismo para tentar resistir às mudanças, podemos procurar e produzir nós mesmos tais mudanças, a partir de nossos próprios anseios e possibilidades, de maneira responsável. Isso só pode se dar através do diálogo, da troca de experiências e sugestões, e em um ambiente onde a pretensão seja buscar a coletividade e não a má individualidade. A singularidade de cada um é o ponto de partida para um coletivo estruturado sobre o respeito e a consideração pela diferença. Sejamos as pedras rolantes que se livram do velho limo parasitário da imobilidade – e sejamos humildes: quem não tem nada, não tem nada a perder.</p>', 'nos_page.twig'),
(2, 'noticias', '2015-03-19 15:05:54', '2015-03-30 17:35:29', '2015-03-19 15:03:54', NULL, '', 1, 'published', 'Notícias', '', 'Página de Notícias do Assédio Coletivo.', '<h1>COLABORE</h1>\r\n\r\n<p>O Site do Assédio Coletivo é uma plataforma aberta a colaborações de agentes culturais e grupos que estejam interessados em escrever sobre temas de seu cotidiano e compartilhar suas vivências sociais, culturais e colaborativas. Você pode entrar em contato conosco e fazer sua proposta de colaboração para nosso site - assim que possível nossa equipe irá retornar e orientar os próximos passos</p>', 'noticias_page.twig'),
(3, 'projetos', '2015-03-19 15:08:44', '2015-03-31 17:23:39', '2015-03-19 15:07:29', NULL, '', 1, 'published', 'Nossos Projetos', '', 'As propostas de ações, projetos e intervenções do Assédio Coletivo são articuladas a partir de diálogos com outros agentes culturais e a partir do reconhecimento de situações e realidades.', '<h2>NOSSOS PROJETOS</h2>\r\n\r\n<p>As propostas de ações, projetos e intervenções do Assédio Coletivo são articuladas a partir de diálogos com outros agentes culturais e a partir do reconhecimento de situações e realidades. Entendemos que o envolvimento social e cultural é construído a partir de vivências. Nesse sentido, para estabelecer contatos, acionar e fazer parte de redes e gerir nossos projetos, a comunicação é nossa ferramenta fundamental.</p>', 'projetos_page.twig'),
(4, 'biblioteca', '2015-03-19 15:09:57', '2015-04-01 11:10:52', '2015-03-19 15:09:00', NULL, '', 1, 'published', 'Biblioteca', '', 'Aqui você vai encontrar conteúdos produzidos pelo nosso coletivo. Projetos inscritos e aprovados em editais, fotos e vídeos, links externos de referências, cartilhas formativas, coletâneas musicais, anuários, zines e muito mais para download.', '<p>Aqui você vai encontrar conteúdos produzidos pelo nosso coletivo. Projetos inscritos e aprovados em editais, fotos e vídeos, links externos de referências, cartilhas formativas, coletâneas musicais, anuários, zines e muito mais para download.</p>', 'biblioteca_page.twig'),
(5, 'contato', '2015-03-24 20:44:33', '2015-03-30 17:10:22', '2015-03-24 20:43:11', NULL, '', 1, 'published', 'Contato', '{"file":"2015-03\\/logo-pb-libre.png"}', 'A Libre - Casa Coletiva é um espaço cultural autônomo aberto a atividades colaborativas. A casa está localizada em Vitória - Espírito Santo, no bairro Itararé. A Libre recebe vivências coletivas, oficinas, eventos, exposições, exibições cineclubistas e formações - é um espaço aberto para grupos e instituições parceiras desenvolverem suas atividades.', '<h3>A LIBRE CASA COLETIVA</h3>\r\n\r\n<p>A Libre - Casa Coletiva é um espaço cultural autônomo aberto a atividades colaborativas. A casa está localizada em Vitória - Espírito Santo, no bairro Itararé. A Libre recebe vivências coletivas, oficinas, eventos, exposições, exibições cineclubistas e formações - é um espaço aberto para grupos e instituições parceiras desenvolverem suas atividades.</p>\r\n\r\n<p>Atualmente quem faz a gestão da Libre é o Assédio Coletivo - embora a casa já exista como projeto desde 2013 em parceria com outras iniciativas coletivas como Coletivo Femenina, Voadora Records e Organização dos Cineclubes Capixabas (OCCa). Em paralelo a ações de ocupação de espaço público, valorização da arte autoral e luta por políticas públicas, o Assédio Coletivo vê na Libre um espaço propício para realizar novas conexões e vivências.</p>', 'contato_page.twig'),
(6, 'colabore', '2015-03-24 20:47:38', '2015-03-30 16:56:35', '2015-03-24 20:45:29', NULL, '', 1, 'published', 'Colabore', '{"file":"2015-03\\/slide-2.jpg"}', 'O Site do Assédio Coletivo é uma plataforma construída de forma colaborativa. Caso tenha interesse em colaborar com nossa produção de matérias e textos críticos a respeito de temáticas culturais, sociais ou artísticas, entre em contato com nossa equipe e faça sua proposta! Nossa equipe retornará o mais breve possível para dialogar a respeito de sua contribuição.', '<p>O Site do Assédio Coletivo é uma plataforma construída de forma colaborativa. Caso tenha interesse em colaborar com nossa produção de matérias e textos críticos a respeito de temáticas culturais, sociais ou artísticas, entre em contato com nossa equipe e faça sua proposta! Nossa equipe retornará o mais breve possível para dialogar a respeito de sua contribuição.</p>\r\n\r\n<p></p>\r\n\r\n<h2>ENTRE EM CONTATO!</h2>\r\n\r\n<p>assediocoletivo@gmail.com.br</p>', 'colabore_page.twig'),
(7, 'erro-404', '2015-04-09 09:32:50', '2015-04-09 09:32:50', '2015-04-09 09:30:40', NULL, '', 1, 'published', '404 - Nada foi encontrado', '', 'Esta página não existe, foi movida ou está temporariamente indisponível.', '<h3>Esta página não existe, foi movida ou está temporariamente indisponível.</h3>\r\n\r\n<h3>Navegue pelo nosso menu ou faça uma busca para encontrar o que procura.</h3>', '404.twig');

-- --------------------------------------------------------

--
-- Estrutura da tabela `bolt_parceiros`
--

CREATE TABLE IF NOT EXISTS `bolt_parceiros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `datecreated` datetime NOT NULL,
  `datechanged` datetime NOT NULL,
  `datepublish` datetime DEFAULT NULL,
  `datedepublish` datetime DEFAULT NULL,
  `username` varchar(32) COLLATE utf8_unicode_ci DEFAULT '',
  `ownerid` int(11) DEFAULT NULL,
  `status` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `titulo` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `corpo` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_CCA29477989D9B62` (`slug`),
  KEY `IDX_CCA29477AFBA6FD8` (`datecreated`),
  KEY `IDX_CCA29477BE74E59A` (`datechanged`),
  KEY `IDX_CCA29477A5131421` (`datepublish`),
  KEY `IDX_CCA29477B7805520` (`datedepublish`),
  KEY `IDX_CCA294777B00651C` (`status`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `bolt_parceiros`
--

INSERT INTO `bolt_parceiros` (`id`, `slug`, `datecreated`, `datechanged`, `datepublish`, `datedepublish`, `username`, `ownerid`, `status`, `titulo`, `corpo`) VALUES
(1, 'libre', '2015-04-09 09:57:50', '2015-04-09 10:00:47', '2015-04-09 09:56:28', NULL, '', 1, 'published', 'Libre', '<p><a href="http://www.assediocoletivo.com.br"><img alt="" class="center-block" src="/assedio-bolt/files/2015-04/logo-libre.png" style="width: 160px; height: 160px; text-align: center;" /></a></p>'),
(2, 'outro-parceiro-apenas-para-testes', '2015-04-09 10:03:17', '2015-04-09 10:03:17', '2015-04-09 10:01:53', NULL, '', 1, 'published', 'Outro parceiro, apenas para testes', '<div class="embeddedContent oembed-provider- oembed-provider-youtube" data-align="center" data-maxheight="480" data-maxwidth="364" data-oembed="https://www.youtube.com/watch?v=eCUIol0vCdg" data-oembed_provider="youtube" data-resizetype="responsive" style="text-align: center;"><iframe allowfullscreen="true" allowscriptaccess="always" frameborder="0" height="298.9082352941176" scrolling="no" src="//www.youtube.com/embed/eCUIol0vCdg?wmode=transparent&amp;jqoemcache=o97me" width="364"></iframe></div>\r\n\r\n<p></p>');

-- --------------------------------------------------------

--
-- Estrutura da tabela `bolt_projetos`
--

CREATE TABLE IF NOT EXISTS `bolt_projetos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `datecreated` datetime NOT NULL,
  `datechanged` datetime NOT NULL,
  `datepublish` datetime DEFAULT NULL,
  `datedepublish` datetime DEFAULT NULL,
  `username` varchar(32) COLLATE utf8_unicode_ci DEFAULT '',
  `ownerid` int(11) DEFAULT NULL,
  `status` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `titulo` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `titulo_destaque` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `imagem_destaque` longtext COLLATE utf8_unicode_ci NOT NULL,
  `logo` longtext COLLATE utf8_unicode_ci NOT NULL,
  `cor_titulo` longtext COLLATE utf8_unicode_ci NOT NULL,
  `resumo` longtext COLLATE utf8_unicode_ci NOT NULL,
  `corpo` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_BA7467F6989D9B62` (`slug`),
  KEY `IDX_BA7467F6AFBA6FD8` (`datecreated`),
  KEY `IDX_BA7467F6BE74E59A` (`datechanged`),
  KEY `IDX_BA7467F6A5131421` (`datepublish`),
  KEY `IDX_BA7467F6B7805520` (`datedepublish`),
  KEY `IDX_BA7467F67B00651C` (`status`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Extraindo dados da tabela `bolt_projetos`
--

INSERT INTO `bolt_projetos` (`id`, `slug`, `datecreated`, `datechanged`, `datepublish`, `datedepublish`, `username`, `ownerid`, `status`, `titulo`, `titulo_destaque`, `imagem_destaque`, `logo`, `cor_titulo`, `resumo`, `corpo`) VALUES
(1, 'festival-tarde-no-bairro', '2015-03-24 21:34:26', '2015-03-24 21:42:27', '2015-03-24 21:28:03', NULL, '', 1, 'published', 'Festival Tarde no Bairro', '', '{"file":"2015-03\\/bg-tarde.jpg"}', '{"file":"2015-03\\/logo-tarde.png"}', '#ffffff', 'O Festival Tarde no Bairro é um festival de artes integradas realizado no período vespertino que abre espaço para difusão de linguagens artístisticas e culturais.', '<p>O Festival Tarde no Bairro é um festival de artes integradas realizado no período vespertino que abre espaço para difusão de linguagens artístisticas e culturais. Com foco na ocupação de espaços públicos das cidades e no relacionamento com o público consumidor de arte e cultura no Espírito Santo, o FTNB é um festival de valorização da arte e da música autoral. Sua programação é composta por apresentações musicais de bandas autorais locais, intervenções artísticas e uma feira de produtos culturais e artesanais locais. O Assédio Coletivo trabalha a seleção dos artistas que se apresentam a partir de convocatórias públicas divulgadas online e procura proporcionar vivências diferenciadas aos moradores dos bairros em que o festival acontece.</p>\r\n\r\n<p>No ano de 2012, foram realizadas 14 edições do FTNB, sendo oito produzidas pelo Assédio Coletivo e seis por coletivos parceiros - Coletivo Canellada em Vila Velha (duas edições), Coletivo Moxuara e Circo Miúdo em Cariacica (uma edição) e Coletivo Gargalo em Santa Teresa (três edições). Ao todo, 39 bandas autorais se apresentaram no FTNB em 2012. No início de 2013, o Assédio lançou uma coletânea online para download gratuito - a Coletânea Festival Tarde no Bairro 2012, composta por 22 músicas de 22 bandas autorais que participaram de alguma edição do FTNB 2012.</p>\r\n\r\n<p>Já em 2013, foram produzidas pelo Assédio Coletivo seis edições do Festival, cinco em Vitória e uma em Santa Teresa. Os coletivos Expurgação e Gargalo foram facilitadores diretos dessas ações. Foram 24 bandas que se apresentaram nas edições FTNB 2013, cerca de 30 ações de artes integradas, aproximadamente 30 banquinhas de produtos artesanais e mais de 300 artistas capixabas envolvidos nessas produções.</p>\r\n\r\n<p>Em 2014 foram realizadas mais quatro edições do festival, 10 bandas autorais se apresentaram e mais de 100 agentes culturais se envolveram nestas produções. Neste ano foi prensada a Coletânea FTNB 2012/2013 que conta com 45 músicas de bandas autorais do Espírito Santo.</p>'),
(2, 'casa-coletiva', '2015-03-24 21:45:20', '2015-03-24 21:45:20', '2015-03-24 21:42:58', NULL, '', 1, 'published', 'Casa Coletiva', 'Casa Coletiva', '{"file":"2015-03\\/bg-libre.jpg"}', '{"file":"2015-03\\/logo-libre.png"}', '#f04e3e', 'O Festival Tarde no Bairro é um festival de artes integradas realizado no período vespertino que abre espaço para difusão de linguagens artístisticas e culturais.', '<p>O Festival Tarde no Bairro é um festival de artes integradas realizado no período vespertino que abre espaço para difusão de linguagens artístisticas e culturais. Com foco na ocupação de espaços públicos das cidades e no relacionamento com o público consumidor de arte e cultura no Espírito Santo, o FTNB é um festival de valorização da arte e da música autoral. Sua programação é composta por apresentações musicais de bandas autorais locais, intervenções artísticas e uma feira de produtos culturais e artesanais locais. O Assédio Coletivo trabalha a seleção dos artistas que se apresentam a partir de convocatórias públicas divulgadas online e procura proporcionar vivências diferenciadas aos moradores dos bairros em que o festival acontece.</p>\r\n\r\n<p>Com localização em Itararé - Vitória/ES, o Assédio Coletivo e OCCa realizam conjuntamente a gestão da Libre - Casa Coletiva, espaço de produção colaborativa e desenvolvimento de projetos sociais e culturais. Sem financiamento privado ou público, a casa se mantém por projetos paralelos destas organizações e por eventos produzidos colaborativamente pelos dois coletivos - o lucro da venda de bebidas e alimentação é revertido para a manutenção do espaço.</p>\r\n\r\n<p>A proposta é de que a casa se estabeleça como espaço de referência das duas organizações ocupantes e que ela seja aberta também para outras iniciativas de proposta colaborativa. Há também a perspectiva de ampliar o relacionamento com organizações da comunidade de Itararé e entornos, como Bairro da Penha e São Benedito, para desenvolvimento de projetos conjuntos e fortalecimento de vínculo com os moradores dessas comunidades.</p>\r\n\r\n<p>Atualmente, a gama de atividades da casa compreende oficinas de linguagens artísticas e de temas relacionados à cultura e à produção cultural, exposições de artes visuais, exibições cineclubistas, lançamentos de produtos culturais. A casa é também espaço para debates, mesas de discussão e reuniões. A longo prazo, a tendência da Libre - Casa Coletiva é se tornar um espaço cultural autogestionado aberto ao público por meio do aumento da frequência de atividades e financiamento de projetos dos coletivos ocupantes e parceiros, que utilizem a Libre para seu desenvolvimento.</p>\r\n\r\n<h1>HISTÓRICO</h1>\r\n\r\n<p>A Libre - Casa Coletiva surgiu de uma vontade mútua do Assédio Coletivo e do Coletivo Femenina em ter uma sede ou local de encontro para dialogar a respeito do cenário local e produzir neste ambiente. Inicialmente localizada na Rua Nestor Gomes, no Centro Histórico de Vitória/ES, a Libre teve seu funcionamento de Junho a Novembro de 2013. A ocupação foi feita em uma galeria de dois andares, com cerca de 25m², composta de espaço livre no primeiro andar e um mezanino e banheiro no segundo andar.</p>\r\n\r\n<p>Durante o período de ocupação da casa, Assédio Coletivo e Coletivo Femenina utilizaram o espaço para reuniões semanais, como galeria de exposição, para realização de eventos culturais e oficinas, bem como mantiveram o espaço aberto para reuniões e encontros de outros grupos artísticos da cidade de Vitória.</p>\r\n\r\n<p>No ano de 2014 a Libre - Casa Coletiva muda de endereço e amplia sua proposta de espaço colaborativo. Os coletivos e empreendimentos ocupantes passam a ser Assédio Coletivo e Organização dos Cineclubes Capixabas (OCCa). Localizada no bairro Itararé, a casa agora conta com cerca de 200m² - duas salas, três quartos (escritórios independentes), Ateliê Libre, duas varandas, dois banheiros e cozinha.</p>'),
(3, 'bonde', '2015-03-24 21:52:29', '2015-03-24 21:52:29', '2015-03-24 21:45:22', NULL, '', 1, 'published', 'Bonde', 'Bonde', '{"file":"2015-03\\/bg-bonde.jpg"}', '{"file":"2015-03\\/logo-bonde.png"}', '#ffffff', 'O Bonde é um núcleo móvel de comunicação formado por entusiastas, estudantes e profissionais de comunicação e artes das mais diversas áreas: jornalismo, publicidade, rádio & TV, fotografia, artes plásticas e visuais.', '<p>O Bonde é um núcleo móvel de comunicação formado por entusiastas, estudantes e profissionais de comunicação e artes das mais diversas áreas: jornalismo, publicidade, rádio &amp; TV, fotografia, artes plásticas e visuais. O núcleo, braço do Assédio Coletivo, surge a partir da necessidade de dar maior visibilidade a iniciativas coletivas da juventude da Grande Vitória que trabalham com projetos culturais. Tendo em vista o número crescente de grupos jovens que surgem e desenvolvem ações colaborativas, o Bonde propõe um núcleo móvel de comunicação, ou seja, um núcleo que tem como premissa estar no local onde acontecem ações artísticas e culturais, ampliando a visibilidade destas a partir de ações de comunicação.</p>\r\n\r\n<p>O coletivo tem suas atividades, ações executivas e formativas voltadas para a linguagem comunicacional. Este núcleo realiza também<br />\r\nprodução de conteúdo para mídias sociais, coberturas fotográficas e audiovisuais.</p>'),
(4, 'temporada-de-oficinas', '2015-03-24 21:54:32', '2015-03-24 21:54:32', '2015-03-24 21:52:56', NULL, '', 1, 'published', 'Temporada de Oficinas', 'Temporada de Oficinas', '{"file":"2015-03\\/bg-oficinas.jpg"}', '{"file":"2015-03\\/logo-oficinas.png"}', '#ffffff', 'A Temporada de Oficinas é um projeto de formação que trata de temas relacionados a organização de ideias, elaboração de projetos culturais, redes, colaboratividade e compartilhamento, financiamento e captação de recursos para projetos.', '<p>A Temporada de Oficinas é um projeto de formação que trata de temas relacionados a organização de ideias, elaboração de projetos culturais, redes, colaboratividade e compartilhamento, financiamento e captação de recursos para projetos. Podendo tratar também de linguagens artísticas específicas, trata-se de uma série de encontros de sensibilização, nivelamento de conhecimentos entre os participantes e atividades específicas para cada tema trabalhado. Com foco em colaborar com agentes culturais jovens, os conteúdos de cada Temporada são elaborados de acordo com o público a ser mobilizado para participação.</p>'),
(5, 'reviravolta-coletiva', '2015-03-24 21:57:26', '2015-04-02 11:58:12', '2015-03-24 21:54:34', NULL, '', 1, 'published', 'Reviravolta Coletiva', 'Reviravolta Coletiva', '{"file":"2015-03\\/bg-reviravolta.jpg"}', '{"file":"2015-03\\/logo-reviravolta.png"}', '#EC7E8B', 'A Reviravolta Coletiva é uma agenda integrada de ações culturais articulada pelo Assédio Coletivo que possui edições anuais e objetiva dialogar com coletivos e agentes culturais que trabalham com arte e cultura no Espírito Santo.', '<p>A Reviravolta Coletiva é uma agenda integrada de ações culturais articulada pelo Assédio Coletivo que possui edições anuais e objetiva dialogar com coletivos e agentes culturais que trabalham com arte e cultura no Espírito Santo. A partir de reuniões, a programação é montada coletivamente e incluiu atividades de formação, produção e difusão cultural. O evento é articulado uma vez por ano e mobiliza agentes culturais em torno de uma possibilidade comum para compartilhar suas experiências, discutir sobre suas produções, trocar tecnologias de produção e debater a respeito da construção social, econômica, cultural e política da sociedade na qual estamos inseridos. A construção colaborativa é fundamental para a Reviravolta Coletiva. Para definir a agenda integrada são feitas pelo menos três reuniões presenciais e acompanhamento online.</p>\r\n\r\n<p>Em agosto de 2012, aconteceu a #1 Reviravolta Coletiva, com o mote “Mapeamento e Reconhecimento”. A programação incluiu atividades de formação, produção e difusão cultural. O processo de construção da Reviravolta Coletiva em 2012 aconteceu de forma colaborativa com outros grupos da cidade de Vitória no mesmo mês de sua produção. Houve listagem de materiais, organização de locais e divulgação. De acordo com o mapeamento feito ao longo do processo, foram 37 ações integradas e 60 coletivos/grupos envolvidos com a #1 Reviravolta Coletiva.</p>\r\n\r\n<p>Na segunda edição, o tema escolhido foi “Integração e Locomoção”. Diversos grupos atuantes nas cidades de Vitória, Vila Velha e Cariacica fizeram suas propostas fazendo com que a #2 Reviravolta Coletiva percorresse três cidades da Grande Vitória. A agenda foi de 13 a 27 de outubro de 2013, e contou com uma divisão na programação - uma primeira semana de formação com oficinas e mesas de debates e uma segunda semana de intervenções nas cidades. Ao todo, a agenda contou com 34 atividades integradas e 23 coletivos envolvidos diretamente na produção da #2 Reviravolta Coletiva.</p>\r\n\r\n<p>A #3 Reviravolta Coletiva, por sua vez, teve como tema "O Ser Coletivo". A agenda foi de 09 a 23 de novembro de 2014, contando com 38 atividades em seis cidades da Grande Vitória - Vitória, Vila Velha, Cariacica, Serra, Viana e Guarapari. As ações envolveram linguagens diversas (artes plásticas e visuais, música, literatura, teatro, dança etc) e tiveram foco em propostas de formação, produção e difusão cultural direcionadas para a discussão a respeito do indivíduo contemporâneo e de sua atuação no campo cultural, social e político. A primeira semana concentrou oficinas e rodas de conversa com um diferencial: a estrutura de desconferências. Esta estrutura de diálogo possibilitou maior horizontalidade nas contribuições sobre os temas juventude, cultura, mulher e corpo, comunicação independente, movimento negro e direito à cidade.</p>\r\n\r\n<p>Estar junto é o objetivo principal da Reviravolta Coletiva. A partir das vivências e atividades, pretende-se discutir sobre a relação dos artistas e produtores culturais entre si e com a cidade, suas contribuições com os coletivos dos quais fazem parte e, de que forma seus trabalhos com arte e cultura contribuem para a transformação social. Tudo isso parte da compreensão de que fazemos parte de uma realidade socialmente compartilhada e de que as ações individuais influenciam e</p>\r\n\r\n<h2>\r\n  O QUE É A REVIRAVOLTA COLETIVA?\r\n</h2>\r\n</h2>\r\n<p><iframe allowfullscreen="" frameborder="0" height="400" src="https://www.youtube.com/embed/CrV_JeRwFMM" width="100%"></iframe></p>\r\n<h2>\r\n  REVIRADOC\r\n</h2>\r\n<p><iframe width="100%" height="400" src="https://www.youtube.com/embed/CrV_JeRwFMM" frameborder="0" allowfullscreen></iframe></p>'),
(6, 'site-assedio-coletivo', '2015-03-24 22:00:34', '2015-03-24 22:00:34', '2015-03-24 21:57:38', NULL, '', 1, 'published', 'Site Assédio Coletivo', 'Site Assédio Coletivo', '{"file":"2015-03\\/bg-site.jpg"}', '', '#ffffff', 'Nosso site é uma plataforma online que busca expandir a área de atuação do Assédio Coletivo e das redes de agentes culturais das quais fazemos parte.', '<p>Nosso site é uma plataforma online que busca expandir a área de atuação do Assédio Coletivo e das redes de agentes culturais das quais fazemos parte. Esta plataforma ampara nossas práticas cotidianas enquanto coletivo e contribui para a difusão de conteúdos pertinentes à produção e articulação cultural, social e artística.</p>\r\n\r\n<p>A gestão dos conteúdos do nosso site se pauta por meio das atividades do Assédio Coletivo, de articulações e propostas de agentes culturais e coletivos parceiros. Integrando outros produtores e articuladores culturais, o objetivo do site é contribuir com projetos e iniciativas colaborativas por meio de produção de conteúdo audiovisual, recepção de textos escritos por artistas, produtores, agentes culturais e demais interessados.</p>\r\n\r\n<p>Além de auxiliar a articulação de redes de produções, o site também disponibiliza para consulta e download todos os projetos desenvolvidos pelo Assédio Coletivo - propostas encaminhadas a editais e prêmios, coletâneas musicais, apostilas formativas, metodologias de ações, bem como seus formatos e suas estruturas básicas. Acredita-se que a exposição destes conteúdos fomenta atitudes de outras iniciativas - o compartilhamento, a apropriação, o diálogo e a ressignificação desses formatos é parte da missão assumida por esse site e pelo Assédio Coletivo. Incentivamos a troca de informações livres em todas as fases dos processos de criação e desenvolvimento de projetos e ações culturais e sociais.</p>');

-- --------------------------------------------------------

--
-- Estrutura da tabela `bolt_projetos_aprovados`
--

CREATE TABLE IF NOT EXISTS `bolt_projetos_aprovados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `datecreated` datetime NOT NULL,
  `datechanged` datetime NOT NULL,
  `datepublish` datetime DEFAULT NULL,
  `datedepublish` datetime DEFAULT NULL,
  `username` varchar(32) COLLATE utf8_unicode_ci DEFAULT '',
  `ownerid` int(11) DEFAULT NULL,
  `status` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `titulo` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `resumo` longtext COLLATE utf8_unicode_ci NOT NULL,
  `corpo` longtext COLLATE utf8_unicode_ci NOT NULL,
  `arquivo` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `IDX_D678E365989D9B62` (`slug`),
  KEY `IDX_D678E365AFBA6FD8` (`datecreated`),
  KEY `IDX_D678E365BE74E59A` (`datechanged`),
  KEY `IDX_D678E365A5131421` (`datepublish`),
  KEY `IDX_D678E365B7805520` (`datedepublish`),
  KEY `IDX_D678E3657B00651C` (`status`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `bolt_projetos_aprovados`
--

INSERT INTO `bolt_projetos_aprovados` (`id`, `slug`, `datecreated`, `datechanged`, `datepublish`, `datedepublish`, `username`, `ownerid`, `status`, `titulo`, `resumo`, `corpo`, `arquivo`) VALUES
(1, 'aqui-e-o-titulo-do-projeto-aprovado', '2015-04-01 10:07:29', '2015-04-01 10:07:29', '2015-04-01 10:05:04', NULL, '', 1, 'published', 'Aqui é o título do projeto aprovado', 'Aqui vem o resumo do projeto aprovado', '<p>Aqui entra o texto resumido do projeto. É recomendável que não seja muito extenso, visto que será exibido uma quantidade limitada de caracteres.</p>', '2015-04/exemplo-de-arquivo-para-ser-baixado.txt'),
(2, 'outro-item-de-projetos-aprovados', '2015-04-01 10:08:36', '2015-04-01 10:08:36', '2015-04-01 10:07:30', NULL, '', 1, 'published', 'Outro item de Projetos Aprovados', 'Mais um resumo, que será usado apenas para SEO', '<p>Aqui é o corpo do conteúdo, como todos os outros.</p>', '2015-04/slide-1.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `bolt_relations`
--

CREATE TABLE IF NOT EXISTS `bolt_relations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_contenttype` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `from_id` int(11) NOT NULL,
  `to_contenttype` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `to_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_4C524BC3EA112943` (`from_contenttype`),
  KEY `IDX_4C524BC378CED90B` (`from_id`),
  KEY `IDX_4C524BC35ACD2645` (`to_contenttype`),
  KEY `IDX_4C524BC330354A65` (`to_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Extraindo dados da tabela `bolt_relations`
--

INSERT INTO `bolt_relations` (`id`, `from_contenttype`, `from_id`, `to_contenttype`, `to_id`) VALUES
(2, 'projetos', 1, 'galerias', 2),
(4, 'noticias', 1, 'galerias', 1),
(5, 'fotos', 1, 'galerias', 2),
(6, 'fotos', 2, 'galerias', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `bolt_slides`
--

CREATE TABLE IF NOT EXISTS `bolt_slides` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `datecreated` datetime NOT NULL,
  `datechanged` datetime NOT NULL,
  `datepublish` datetime DEFAULT NULL,
  `datedepublish` datetime DEFAULT NULL,
  `username` varchar(32) COLLATE utf8_unicode_ci DEFAULT '',
  `ownerid` int(11) DEFAULT NULL,
  `status` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `titulo` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `imagem` longtext COLLATE utf8_unicode_ci NOT NULL,
  `redirecionamento` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `destino` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D01345E989D9B62` (`slug`),
  KEY `IDX_D01345EAFBA6FD8` (`datecreated`),
  KEY `IDX_D01345EBE74E59A` (`datechanged`),
  KEY `IDX_D01345EA5131421` (`datepublish`),
  KEY `IDX_D01345EB7805520` (`datedepublish`),
  KEY `IDX_D01345E7B00651C` (`status`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `bolt_slides`
--

INSERT INTO `bolt_slides` (`id`, `slug`, `datecreated`, `datechanged`, `datepublish`, `datedepublish`, `username`, `ownerid`, `status`, `titulo`, `imagem`, `redirecionamento`, `destino`) VALUES
(1, 'este-e-um-titulo-de-um-slide', '2015-03-26 12:59:49', '2015-03-26 12:59:49', '2015-03-26 12:58:47', NULL, '', 1, 'published', 'Este é um título de um slide', '{"file":"2015-03\\/1427374756_slide-1.jpg"}', 'http://oparque.art.br', '_blank'),
(2, 'este-e-outro-slide-da-home', '2015-03-26 13:00:21', '2015-03-26 13:29:33', '2015-03-26 12:59:50', NULL, '', 1, 'published', 'Este é outro slide da home', '{"file":"2015-03\\/1427374807_slide-2.jpg"}', 'http://oparque.art.br', '_self'),
(3, 'slide-sem-link-de-redirecionamento', '2015-03-26 13:12:33', '2015-03-26 13:12:33', '2015-03-26 13:11:13', NULL, '', 1, 'published', 'Slide sem link de redirecionamento', '{"file":"2015-03\\/slide-3.png"}', '', '_blank');

-- --------------------------------------------------------

--
-- Estrutura da tabela `bolt_taxonomy`
--

CREATE TABLE IF NOT EXISTS `bolt_taxonomy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content_id` int(11) NOT NULL,
  `contenttype` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `taxonomytype` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sortorder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `IDX_ABAA120084A0A3ED` (`content_id`),
  KEY `IDX_ABAA1200745E1826` (`contenttype`),
  KEY `IDX_ABAA1200FE2A268F` (`taxonomytype`),
  KEY `IDX_ABAA1200FEA3B3F9` (`sortorder`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=45 ;

--
-- Extraindo dados da tabela `bolt_taxonomy`
--

INSERT INTO `bolt_taxonomy` (`id`, `content_id`, `contenttype`, `taxonomytype`, `slug`, `name`, `sortorder`) VALUES
(1, 1, 'noticias', 'categorias', 'noticias', 'notícias', 0),
(2, 1, 'noticias', 'tags', 'qualquer', 'qualquer', 0),
(3, 1, 'noticias', 'tags', 'coisa', 'coisa', 0),
(4, 1, 'noticias', 'tags', 'que', 'que', 0),
(5, 1, 'noticias', 'tags', 'eu', 'eu', 0),
(6, 1, 'noticias', 'tags', 'queira', 'queira', 0),
(7, 1, 'noticias', 'tags', 'digitar', 'digitar', 0),
(8, 1, 'noticias', 'tags', 'aqui', 'aqui', 0),
(10, 1, 'noticias', 'tags', 'aparecer', 'aparecer', 0),
(11, 1, 'noticias', 'tags', 'como', 'como', 0),
(12, 1, 'noticias', 'tags', 'tag', 'tag', 0),
(13, 2, 'noticias', 'categorias', 'noticias-especiais', 'notícias especiais', 0),
(14, 2, 'noticias', 'tags', 'essa', 'essa', 0),
(16, 2, 'noticias', 'tags', 'uma', 'uma', 0),
(18, 2, 'noticias', 'tags', 'especial', 'especial', 0),
(19, 3, 'noticias', 'categorias', 'agenda', 'agenda', 0),
(20, 3, 'noticias', 'tags', 'este', 'este', 0),
(22, 3, 'noticias', 'tags', 'um', 'um', 0),
(23, 3, 'noticias', 'tags', 'item', 'item', 0),
(24, 3, 'noticias', 'tags', 'de', 'de', 0),
(25, 3, 'noticias', 'tags', 'agenda', 'agenda', 0),
(26, 4, 'noticias', 'categorias', 'agenda', 'agenda', 0),
(27, 4, 'noticias', 'tags', 'outro', 'outro', 0),
(28, 4, 'noticias', 'tags', 'item', 'item', 0),
(29, 4, 'noticias', 'tags', 'de', 'de', 0),
(30, 4, 'noticias', 'tags', 'agenda', 'agenda', 0),
(31, 5, 'noticias', 'categorias', 'noticias-especiais', 'notícias especiais', 0),
(32, 5, 'noticias', 'tags', 'essa', 'essa', 0),
(33, 5, 'noticias', 'tags', 'uma', 'uma', 0),
(34, 5, 'noticias', 'tags', 'especial', 'especial', 0),
(35, 6, 'noticias', 'categorias', 'noticias', 'notícias', 0),
(36, 6, 'noticias', 'tags', 'algo', 'algo', 0),
(37, 6, 'noticias', 'tags', 'que', 'que', 0),
(38, 6, 'noticias', 'tags', 'sirva', 'sirva', 0),
(39, 6, 'noticias', 'tags', 'de', 'de', 0),
(40, 6, 'noticias', 'tags', 'destaque', 'destaque', 0),
(41, 7, 'noticias', 'categorias', 'agenda', 'agenda', 0),
(42, 8, 'noticias', 'categorias', 'colaboradores', 'colaboradores', 0),
(43, 9, 'noticias', 'categorias', 'colaboradores', 'colaboradores', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `bolt_users`
--

CREATE TABLE IF NOT EXISTS `bolt_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `lastseen` datetime DEFAULT NULL,
  `lastip` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `displayname` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `stack` varchar(1024) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `enabled` tinyint(1) NOT NULL,
  `shadowpassword` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `shadowtoken` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `shadowvalidity` datetime DEFAULT NULL,
  `failedlogins` int(11) NOT NULL DEFAULT '0',
  `throttleduntil` datetime DEFAULT NULL,
  `roles` varchar(1024) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `IDX_5585B54F85E0677` (`username`),
  KEY `IDX_5585B5450F9BB84` (`enabled`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `bolt_users`
--

INSERT INTO `bolt_users` (`id`, `username`, `password`, `email`, `lastseen`, `lastip`, `displayname`, `stack`, `enabled`, `shadowpassword`, `shadowtoken`, `shadowvalidity`, `failedlogins`, `throttleduntil`, `roles`) VALUES
(1, 'romulo1984', '$P$DzvcZ8fTQBrpvcRwlScEfsl44EcLqH1', 'romulo1984@gmail.com', '2015-04-09 09:29:36', '127.0.0.1', 'Rômulo Guimarães', '["2015-04\\/logo-libre.png","2015-04\\/colabore.jpg","2015-04\\/icone-logo-preto.png","2015-04\\/slide-1.jpg","2015-04\\/exemplo-de-arquivo-para-ser-baixado.txt","2015-03\\/17.png","2015-03\\/16.png","2015-03\\/15.png","2015-03\\/14.png","2015-03\\/13.png"]', 1, '', '', NULL, 0, NULL, '["root","everyone"]');

-- --------------------------------------------------------

--
-- Estrutura da tabela `bolt_videos`
--

CREATE TABLE IF NOT EXISTS `bolt_videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `datecreated` datetime NOT NULL,
  `datechanged` datetime NOT NULL,
  `datepublish` datetime DEFAULT NULL,
  `datedepublish` datetime DEFAULT NULL,
  `username` varchar(32) COLLATE utf8_unicode_ci DEFAULT '',
  `ownerid` int(11) DEFAULT NULL,
  `status` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `titulo` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `resumo` longtext COLLATE utf8_unicode_ci NOT NULL,
  `corpo` longtext COLLATE utf8_unicode_ci NOT NULL,
  `video` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_9C6B70FD989D9B62` (`slug`),
  KEY `IDX_9C6B70FDAFBA6FD8` (`datecreated`),
  KEY `IDX_9C6B70FDBE74E59A` (`datechanged`),
  KEY `IDX_9C6B70FDA5131421` (`datepublish`),
  KEY `IDX_9C6B70FDB7805520` (`datedepublish`),
  KEY `IDX_9C6B70FD7B00651C` (`status`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `bolt_videos`
--

INSERT INTO `bolt_videos` (`id`, `slug`, `datecreated`, `datechanged`, `datepublish`, `datedepublish`, `username`, `ownerid`, `status`, `titulo`, `resumo`, `corpo`, `video`) VALUES
(1, 'item-da-biblioteca-do-tipo-video', '2015-04-01 10:19:12', '2015-04-01 10:19:12', '2015-04-01 10:18:19', NULL, '', 1, 'published', 'Item da Biblioteca do tipo Vídeo', 'Suco de cevadiss, é um leite divinis, qui tem lupuliz, matis, aguis e fermentis.', '<p>Suco de cevadiss, é um leite divinis, qui tem lupuliz, matis, aguis e fermentis. Interagi no mé, cursus quis, vehicula ac nisi. Aenean vel dui dui. Nullam leo erat, aliquet quis tempus a, posuere ut mi.</p>', '{"url":"https:\\/\\/www.youtube.com\\/watch?v=j_qk8Pw-svg","width":"854","height":"480","ratio":"1.7791666666666666","title":"Entrevista #010 - Amanda Brommonschenkel (Ass\\u00e9dio Coletivo, Maru\\u00ed e Instituto Tamojunto)","authorname":"Levanta e Faz","authorurl":"http:\\/\\/www.youtube.com\\/user\\/levantaefaz","html":"<iframe class=\\"embedly-embed\\" src=\\"\\/\\/cdn.embedly.com\\/widgets\\/media.html?src=http%3A%2F%2Fwww.youtube.com%2Fembed%2Fj_qk8Pw-svg%3Ffeature%3Doembed&url=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3Dj_qk8Pw-svg&image=http%3A%2F%2Fi.ytimg.com%2Fvi%2Fj_qk8Pw-svg%2Fhqdefault.jpg&key=3fedecb044d94eccb9eef404bee82126&type=text%2Fhtml&schema=youtube\\" width=\\"854\\" height=\\"480\\" scrolling=\\"no\\" frameborder=\\"0\\" allowfullscreen><\\/iframe>","thumbnail":"http:\\/\\/i.ytimg.com\\/vi\\/j_qk8Pw-svg\\/hqdefault.jpg","responsive":"<div class=\\"responsive-video widescreen\\"><iframe class=\\"embedly-embed\\" src=\\"\\/\\/cdn.embedly.com\\/widgets\\/media.html?src=http%3A%2F%2Fwww.youtube.com%2Fembed%2Fj_qk8Pw-svg%3Ffeature%3Doembed&url=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3Dj_qk8Pw-svg&image=http%3A%2F%2Fi.ytimg.com%2Fvi%2Fj_qk8Pw-svg%2Fhqdefault.jpg&key=3fedecb044d94eccb9eef404bee82126&type=text%2Fhtml&schema=youtube\\" width=\\"854\\" height=\\"480\\" scrolling=\\"no\\" frameborder=\\"0\\" allowfullscreen><\\/iframe><\\/div>"}'),
(2, 'outro-item-do-tipo-video', '2015-04-01 10:19:47', '2015-04-01 10:19:47', '2015-04-01 10:19:14', NULL, '', 1, 'published', 'Outro item do tipo Vídeo', 'Casamentiss faiz malandris se pirulitá, Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.', '<p>Casamentiss faiz malandris se pirulitá, Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.</p>', '{"url":"https:\\/\\/www.youtube.com\\/watch?v=o89zlDxNsj8","width":"854","height":"480","ratio":"1.7791666666666666","title":"Teaser Entrevista #010 - Amanda Brommonschenkel (Ass\\u00e9dio Coletivo, Maru\\u00ed e Instituto Tamojunto)","authorname":"Levanta e Faz","authorurl":"http:\\/\\/www.youtube.com\\/user\\/levantaefaz","html":"<iframe class=\\"embedly-embed\\" src=\\"\\/\\/cdn.embedly.com\\/widgets\\/media.html?src=http%3A%2F%2Fwww.youtube.com%2Fembed%2Fo89zlDxNsj8%3Ffeature%3Doembed&url=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3Do89zlDxNsj8&image=http%3A%2F%2Fi.ytimg.com%2Fvi%2Fo89zlDxNsj8%2Fhqdefault.jpg&key=3fedecb044d94eccb9eef404bee82126&type=text%2Fhtml&schema=youtube\\" width=\\"854\\" height=\\"480\\" scrolling=\\"no\\" frameborder=\\"0\\" allowfullscreen><\\/iframe>","thumbnail":"http:\\/\\/i.ytimg.com\\/vi\\/o89zlDxNsj8\\/hqdefault.jpg","responsive":"<div class=\\"responsive-video widescreen\\"><iframe class=\\"embedly-embed\\" src=\\"\\/\\/cdn.embedly.com\\/widgets\\/media.html?src=http%3A%2F%2Fwww.youtube.com%2Fembed%2Fo89zlDxNsj8%3Ffeature%3Doembed&url=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3Do89zlDxNsj8&image=http%3A%2F%2Fi.ytimg.com%2Fvi%2Fo89zlDxNsj8%2Fhqdefault.jpg&key=3fedecb044d94eccb9eef404bee82126&type=text%2Fhtml&schema=youtube\\" width=\\"854\\" height=\\"480\\" scrolling=\\"no\\" frameborder=\\"0\\" allowfullscreen><\\/iframe><\\/div>"}');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
