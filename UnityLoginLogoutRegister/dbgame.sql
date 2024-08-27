-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2024 at 05:34 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbgame`
--

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `level_id` int(11) NOT NULL,
  `level_name` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`level_id`, `level_name`, `created_at`, `updated_at`) VALUES
(1, 'Level1', '2024-07-28 22:58:03', '2024-07-28 22:58:03'),
(2, 'Level2', '2024-07-28 22:58:03', '2024-07-28 22:58:03'),
(3, 'Level3', '2024-08-03 20:55:49', '2024-08-03 20:55:49'),
(4, 'Level4', '2024-08-03 20:55:49', '2024-08-03 20:55:49'),
(5, 'Level5', '2024-08-03 20:55:49', '2024-08-03 20:55:49'),
(6, 'Level6', '2024-08-03 20:55:49', '2024-08-03 20:55:49'),
(7, 'Level7', '2024-08-03 20:55:49', '2024-08-03 20:55:49'),
(8, 'Level8', '2024-08-07 04:34:16', '2024-08-07 04:34:16'),
(9, 'Level9', '2024-08-07 04:34:16', '2024-08-07 04:34:16'),
(10, 'Level1', '2024-08-07 04:34:16', '2024-08-07 04:34:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `sex` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`, `created_at`, `updated_at`, `sex`) VALUES
(22, 'sara', 'sara@sara.com', '$2y$10$15Xz/uQR.VKB7CL3Uc77B.f60VoljbnJaQwtAC4NJvGuHgO1XL2Qm', '2024-07-21 22:41:48', '2024-07-21 22:41:48', NULL),
(24, 'juanca', 'juanca@gmail.com', '$2y$10$gu3LC4TS6R2ik3vJqy/K5ejmd/7QPH203sMm0AuDF6uXranru/vLy', '2024-07-21 22:46:47', '2024-07-27 19:21:14', 'Masculino'),
(25, 'fran', 'fran@fram.com', '$2y$10$14IVOjM8KR5wH.9dQlCdkOvEyEYKtLTQq5wUtKg8xB06u365Ev13K', '2024-07-21 22:57:00', '2024-07-21 22:57:00', 'Masculino'),
(26, 'dan', 'dan@dan.com', '$2y$10$9Qg/kmjU7kcHrhdX4.94n.SjtqLdXnVL1fn3lsjd.aGlOUom0OoZ2', '2024-07-21 22:57:50', '2024-07-21 22:57:50', 'Seleccione'),
(27, 'camila', 'cami@gmail.com', '$2y$10$bnIcdwS3LO1OgdwupdAgm.j/IEy4ir1kaB32jhBSc9mwOJ.tx0u/C', '2024-07-21 23:01:08', '2024-07-21 23:01:08', 'Femenino'),
(30, 'pop', 'pop@g.co', '$2y$10$JciZln4qJzvQZeHeXxRJROZuXuBwMcHedW9AlASYP3K05/mzomCfe', '2024-07-22 05:00:32', '2024-07-22 05:00:32', 'Masculino'),
(31, 'asdf', 'asdf@asdf.com', '$2y$10$VOhHaxqRilDcUoH/Sva9weWJBKs5B7KDurNKIwdRDHUyX7voRBy7m', '2024-07-22 05:01:49', '2024-07-22 05:01:49', 'Femenino'),
(32, 'pedrita', 'pedra3@hotmail.com', '$2y$10$7DHDVr7pKX26F53QykK7L.wGsZmoltkvgfrtj1BVgAP9NWZf2i8z2', '2024-07-22 05:07:41', '2024-07-22 05:11:53', 'Femenino'),
(33, 'pepe', 'pepe@gmail.com', '$2y$10$jILbcyfBGsacxKOPV1lE4ukVz7AbQdWuX596McQJRCbXWzNA9KQMO', '2024-07-22 11:26:54', '2024-07-22 11:29:33', 'Masculino'),
(34, 'carla', 'carla@gmail.com', '$2y$10$i4P70YxzcQhMzlTalIXrf.HoieJfuo1M/u2AIL4xsLogApq3s6FlK', '2024-07-27 19:04:08', '2024-07-27 22:48:15', 'Femenino'),
(35, 'pepa', 'pepa@gmail.com', '$2y$10$m8x1r/v1uW4ubEStzz6xk.yu9xotvr78V0Vlzz47zdJXsYFQyQ4yy', '2024-07-28 17:43:47', '2024-07-28 17:43:47', 'Femenino'),
(36, 'jose', 'jose@gmail.com', '$2y$10$/A2psgsvm6TBGbgkAArZBu6vp5rqNl7B7bE0jcWnjB/aMKG5Cmkeq', '2024-07-28 17:47:02', '2024-08-05 22:28:31', 'Masculino'),
(37, 'juan97', 'juan@gmail.com', '$2y$10$2PMeXGX4sSRtdAv9cxmm5OiXeEkCOb4DGaVRHd7LR5IfjaQJy5LU6', '2024-08-04 21:03:26', '2024-08-04 21:05:58', 'Masculino'),
(38, 'peter', 'piter@d.com', '$2y$10$3zJEYcZvhBaot9MQPrRnLuB1m3nejsVrQdwnyGN.7npqOLHY9Vp92', '2024-08-05 15:31:19', '2024-08-05 21:41:50', 'Masculino'),
(39, 'josh', 'josh@mail.com', '$2y$10$540diXcFftqzCG8x/.BeIeR3A/SmHkmBCXzVBT9Z1so7CCSVhyx46', '2024-08-05 15:33:28', '2024-08-05 15:33:28', 'Masculino'),
(40, 'mark', 'jerk@mail.com', '$2y$10$D5yJ9TBeR8miizMr7qDCDe.TNI9BZQwVL.nwG.u0pwx0onL.wbc9S', '2024-08-05 15:34:37', '2024-08-05 15:35:20', 'Masculino'),
(41, 'dev', 'dev@d.com', '$2y$10$3zJEYcZvhBaot9MQPrRnLuB1m3nejsVrQdwnyGN.7npqOLHY9Vp92', '2024-08-05 15:37:01', '2024-08-05 15:37:01', 'Masculino'),
(42, 'mike', 'mike@k.com', '$2y$10$/A2psgsvm6TBGbgkAArZBu6vp5rqNl7B7bE0jcWnjB/aMKG5Cmkeq', '2024-08-05 21:43:33', '2024-08-05 21:43:33', 'Masculino'),
(43, 'mario', 'mar@em.com', '$2y$10$iOw29UtSzQjn4fMBtQjwYud./LhGAlbtVuHX1F2evUbajIJEkLKJa', '2024-08-06 15:59:21', '2024-08-06 15:59:21', 'Masculino'),
(44, 'bandan', 'bandan@mail.com', '$2y$10$9qnFutX6wRgAfl5vA8jvIuNHG2/5fb2LngKPvSCcm4vJyXHMmfULy', '2024-08-06 16:03:14', '2024-08-06 16:03:14', 'Masculino'),
(45, 'sasuke', 'saske@mail.com', '$2y$10$ajN8XniIltnCoVfPkroR.e2uwq9g4tcCRHlljlcLPEK0tQkD6j7i2', '2024-08-06 16:10:33', '2024-08-06 16:10:33', 'Masculino'),
(46, 'madara', 'madara@gmail.com', '$2y$10$VKHyWIlSmzLU9xco2X/qq.XvZRrhv3bjt03tEvdQDIRn.bHuH13sG', '2024-08-06 16:11:44', '2024-08-06 16:11:44', 'Masculino'),
(47, 'buzz', 'buzz@mail.com', '$2y$10$H1l2UUu2UChMPv5VmeyNoulYCXM8gl3IdHHLKq5wzPFBvZ0PSOy/m', '2024-08-06 16:16:06', '2024-08-06 16:16:06', 'Masculino'),
(48, 'ashita', 'ashita@mail.com', '$2y$10$6pB4aad7kA4dJN8yviusLus4jKXb0rwXfX5.1aWUVbAoEdnSXolEG', '2024-08-06 17:08:46', '2024-08-06 17:08:46', 'Masculino'),
(49, 'berserk', 'bers@gmai.com', '$2y$10$Qdxzd93GFl15hjsp9J2wWuTP2HJtWKkUJSP/24ACbCr7szOJqNjTi', '2024-08-06 17:16:48', '2024-08-06 17:16:48', 'Masculino'),
(50, 'kyoga', 'kio@mail.com', '$2y$10$qCrSSvuFhjTTlDM8jqFdYO1sszQDHViBvrCT2c4wVepgIp6zD/E8u', '2024-08-06 17:46:13', '2024-08-06 17:46:13', 'Masculino'),
(51, 'tom', 'tom@asd.com', '$2y$10$5dyr5DHkdPD/nfgc4pI2rOTLbfeqEnoy/VwRs3CN6C6nuzO0BiF/i', '2024-08-06 17:58:11', '2024-08-06 17:58:11', 'Masculino'),
(52, 'billy', 'bill@mail.com', '$2y$10$NAAaAlFjFjOdk9ZtcgZPfuXjTmbKynFfHmUX6rlChE32G/rDwmd1.', '2024-08-06 18:00:17', '2024-08-06 18:00:17', 'Masculino'),
(53, 'donatello', 'don@mail.com', '$2y$10$.QQsjOBo2jbtP.6BSlAo6.GtnCEUuyb37BtKIc3JoOT/ZIVP2ngVG', '2024-08-07 01:03:07', '2024-08-07 01:03:07', 'Masculino'),
(54, 'kirby', 'kirby@mail.com', '$2y$10$XaedEsHuPM8xRskoxT18Oe0G7Po50WEIsj5HaRbgUSTumyNMpkQoW', '2024-08-07 01:08:06', '2024-08-07 01:08:06', 'Masculino'),
(55, 'naruto', 'nar@mail.com', '$2y$10$APu/3JMhofulI1cdALY1TuVmFlNstCM1kokLl3e8bLt4g1Vxxh6tu', '2024-08-07 04:23:29', '2024-08-07 04:23:29', 'Masculino'),
(56, 'sak', 'sak@gmail.com', '$2y$10$DeVNCJVNrI1QSqXmS6K.mOqwpnFPHgIIikGjfIqmb4ZmksYLiZruC', '2024-08-07 19:50:10', '2024-08-07 19:50:10', 'Masculino'),
(57, 'sak', 'sak@gmail.com', '$2y$10$Rbrf4BkNgWEyLAVX6iKZbuv2.hKaoc/ydjYBjFsnpBS/pwjz3Fp1u', '2024-08-07 19:50:10', '2024-08-07 19:50:10', 'Masculino'),
(58, 'martin', 'martin@mail.com', '$2y$10$gtI7.mgX9PaAyZPGtKq7QuBq3S.36dFQM40ppd9lhXQy5tA0XjVS2', '2024-08-07 19:51:09', '2024-08-07 19:51:09', 'Masculino'),
(59, 'jack', 'jack@mail.com', '$2y$10$a3GKFc8jvHGeE9pumbEoquskTfl8qsR9VLrVc/qSpqPfCVp6ztpKO', '2024-08-07 19:52:22', '2024-08-07 19:52:22', 'Masculino'),
(60, 'juan', 'juan@gmail.com', '$2y$10$n0N/Xxi7r89wmxxmW.4uTOx/O28iNBdmlGZcdUVZywsLxQugJtkEO', '2024-08-07 20:52:11', '2024-08-07 20:52:11', 'Masculino'),
(61, 'bend', 'asd@asd.com', '$2y$10$CTs0DUMjQGb2pqo55533IeAMEIdWdJARWmfgYzdpTb/cuWUcePkOC', '2024-08-12 05:07:47', '2024-08-12 05:07:47', 'Masculino'),
(62, 'francis', 'qwe@mail.com', '$2y$10$Pcwl1IYlTyIqNl60GRGEAOjHHLYaRRLDhrZG3psKHBzF9r/THdnca', '2024-08-12 21:29:15', '2024-08-12 21:29:15', 'Masculino'),
(63, 'lady', 'lady@mail.com', '$2y$10$agSskPkGbC.0MQzEfjlTr.1gw/3vh6g46qxU6OpnE1JHwQllV0AUC', '2024-08-20 15:08:19', '2024-08-20 15:08:19', 'Femenino'),
(64, 'dante', 'dante@mail.com', '$2y$10$hBeEIb1/dbEowze.TI2uy.OTmbkV9M9F8V6R/McUGGiePHynPw.dO', '2024-08-26 22:17:52', '2024-08-26 22:17:52', 'Masculino'),
(65, 'lugi', 'lugi@mail.com', '$2y$10$1udYlLLan20/s0cdkBP2IO1K8PLB1dfTKYgVcCPkJ1/YI0/EOrwca', '2024-08-27 04:58:57', '2024-08-27 04:58:57', 'Masculino'),
(66, 'vegeta', 'vegeta@mail.com', '$2y$10$gNuHQG9922v.ZjGV0UXyruDpPQzZ0VUUFpfHuweGWy9WBwSfnZDsG', '2024-08-27 05:32:41', '2024-08-27 05:32:41', 'Masculino');

-- --------------------------------------------------------

--
-- Table structure for table `user_levels`
--

CREATE TABLE `user_levels` (
  `user_level_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `completion_status` tinyint(1) DEFAULT NULL,
  `score` int(11) NOT NULL,
  `completed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_levels`
--

INSERT INTO `user_levels` (`user_level_id`, `user_id`, `level_id`, `completion_status`, `score`, `completed_at`) VALUES
(500, 36, 1, 0, 0, '2024-08-23 04:05:34'),
(501, 36, 2, 1, 3, '2024-08-23 04:05:34'),
(502, 36, 3, 1, 3, '2024-08-23 04:05:54'),
(503, 36, 4, 1, 3, '2024-08-23 04:06:11'),
(504, 36, 5, 1, 3, '2024-08-23 04:12:14'),
(505, 36, 6, 1, 1, '2024-08-23 04:12:24'),
(506, 36, 7, 1, 3, '2024-08-23 04:13:15'),
(507, 36, 8, 1, 3, '2024-08-23 04:13:50'),
(508, 36, 9, 1, 0, '2024-08-23 04:17:53'),
(535, 65, 1, 1, 3, '2024-08-27 04:59:45'),
(536, 65, 2, 1, 0, '2024-08-27 04:59:45'),
(537, 40, 1, 0, 0, '2024-08-27 05:10:51'),
(538, 40, 2, 1, 3, '2024-08-27 05:10:51'),
(539, 40, 3, 1, 0, '2024-08-27 05:11:11'),
(540, 66, 1, 0, 0, '2024-08-27 05:33:44'),
(541, 66, 2, 1, 0, '2024-08-27 05:33:44'),
(542, 53, 1, 0, 0, '2024-08-27 05:38:39'),
(543, 53, 2, 1, 0, '2024-08-27 05:38:39');

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `id_persona` int(11) NOT NULL,
  `correo` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `contrasena` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `id_rol` int(20) NOT NULL,
  `nombres` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `apellidos` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `codigo_recuperacion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `imagen_usuario` varchar(244) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `direccion` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `descripcion_persona` varchar(100) DEFAULT NULL,
  `pais` varchar(100) DEFAULT NULL,
  `celular` varchar(100) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_romanian_ci;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`id_persona`, `correo`, `contrasena`, `id_rol`, `nombres`, `apellidos`, `codigo_recuperacion`, `imagen_usuario`, `direccion`, `descripcion_persona`, `pais`, `celular`, `telefono`) VALUES
(1, 'juandavidgo1997@gmail.com', '$2y$10$4a0c169015dc17569872buXTHlASsw3ol7WG5k9XT.6k2Y.pqBlPK', 2, 'Juan', 'Grijalba', NULL, 'JUAN-juandavidgo1997@gmail.com.jpg', 'Cra 7 t bis # 76-12', 'Aficionado por la informatica', 'Estados Unidos', '3147483647', NULL),
(5, 'jose.jdgo97@gmail.com', '$2y$10$4a0c169015dc17569872buXTHlASsw3ol7WG5k9XT.6k2Y.pqBlPK', 2, 'Jose', 'Grijalba', '6957dd9f0602abfae41241248c603205', 'team-0-jose.jdgo97@gmail.com.jpg', 'Cra 7 t bis # 76-12', 'Aficionado por la informatica', 'Colombia', NULL, NULL),
(7, 'cristhian@hotmail.com', '$2y$10$4a0c169015dc17569872buXTHlASsw3ol7WG5k9XT.6k2Y.pqBlPK', 2, 'Cristhian', 'Hernandez', NULL, 'cristhianhernadez-cristhian@hotmail.com.jpg', 'Cra 52A #5 Oeste-2 a 5 Oeste-78, Cali, Valle del Cauca', 'Estudiante de la universidad uniminuto de tecnologia en indformatica', 'Colombia', '3147483647', NULL),
(15, 'psicologo@hotmail.com', '$2y$10$4a0c169015dc17569872buXTHlASsw3ol7WG5k9XT.6k2Y.pqBlPK', 1, 'Psicologo', 'Anonimo', NULL, 'team-0-psicologo@hotmail.com.jpg', NULL, NULL, 'Espana', NULL, NULL),
(19, 'juan@gmail.com', '$2y$10$4a0c169015dc17569872buXTHlASsw3ol7WG5k9XT.6k2Y.pqBlPK', 2, 'Pablo', 'hernandez', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'toreto@hotmail.com', '$2y$10$4a0c169015dc17569872buXTHlASsw3ol7WG5k9XT.6k2Y.pqBlPK', 2, 'ivan', 'toreto', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'delia@hotmail.com', '$2y$10$4a0c169015dc17569872buXTHlASsw3ol7WG5k9XT.6k2Y.pqBlPK', 2, 'Delia', 'Hernandez', NULL, NULL, NULL, 'vterinarioa', NULL, NULL, NULL),
(23, 'furiosoandres@hotmail.com', '$2y$10$4a0c169015dc17569872buXTHlASsw3ol7WG5k9XT.6k2Y.pqBlPK', 2, 'andres', 'furioso', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'victor@hotmail.com', '$2y$10$4a0c169015dc17569872buXTHlASsw3ol7WG5k9XT.6k2Y.pqBlPK', 2, 'victor ', 'andres', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'user3@hotmail.com', '$2y$10$4a0c169015dc17569872buXTHlASsw3ol7WG5k9XT.6k2Y.pqBlPK', 2, 'mario ', 'bros', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'alejo@hotmail.com', '$2y$10$4a0c169015dc17569872buXTHlASsw3ol7WG5k9XT.6k2Y.pqBlPK', 2, 'alejandro', 'grijalba', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'alejo1@hotmail.com', '$2y$10$4a0c169015dc17569872buXTHlASsw3ol7WG5k9XT.6k2Y.pqBlPK', 2, '123', '123', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'kl@hotmail.com', '$2y$10$4a0c169015dc17569872buXTHlASsw3ol7WG5k9XT.6k2Y.pqBlPK', 2, 'Kleiz', 'Stone', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'cluston@hotmail.com', '$2y$10$4a0c169015dc17569872buXTHlASsw3ol7WG5k9XT.6k2Y.pqBlPK', 2, 'Cluston', 'Carton', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'kento@hotmail.com', '$2y$10$4a0c169015dc17569872buXTHlASsw3ol7WG5k9XT.6k2Y.pqBlPK', 2, 'kento', 'hamaka', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'g@hotmail.com', '$2y$10$4a0c169015dc17569872buXTHlASsw3ol7WG5k9XT.6k2Y.pqBlPK', 2, 'gonde', 'amos', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'psicologo2@hotmail.com', '$2y$10$c271ef14556eb9b8f9eaae3bXrAp0U5v/zk0PsezSgl1cLe.MhHtK', 2, 'Jose', 'Grijalba', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`level_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_levels`
--
ALTER TABLE `user_levels`
  ADD PRIMARY KEY (`user_level_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `level_id` (`level_id`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_persona`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `level_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `user_levels`
--
ALTER TABLE `user_levels`
  MODIFY `user_level_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=544;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_persona` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_levels`
--
ALTER TABLE `user_levels`
  ADD CONSTRAINT `user_levels_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `user_levels_ibfk_2` FOREIGN KEY (`level_id`) REFERENCES `levels` (`level_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
