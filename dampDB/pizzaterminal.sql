-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 14 2022 г., 02:15
-- Версия сервера: 8.0.29
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `pizzaterminal`
--
CREATE DATABASE IF NOT EXISTS `pizzaterminal` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `pizzaterminal`;

-- --------------------------------------------------------

--
-- Структура таблицы `pizza-sauce`
--

DROP TABLE IF EXISTS `pizza-sauce`;
CREATE TABLE `pizza-sauce` (
  `id` int NOT NULL,
  `sauce` varchar(20) NOT NULL,
  `cost` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `pizza-sauce`
--

INSERT INTO `pizza-sauce` (`id`, `sauce`, `cost`) VALUES
(1, 'сырный', 1),
(2, 'кисло-сладкий', 2),
(3, 'чесночный', 2),
(4, 'барбекю', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `pizza-size`
--

DROP TABLE IF EXISTS `pizza-size`;
CREATE TABLE `pizza-size` (
  `id` int NOT NULL,
  `size` int NOT NULL,
  `cost` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `pizza-size`
--

INSERT INTO `pizza-size` (`id`, `size`, `cost`) VALUES
(1, 21, 1),
(2, 26, 1.2),
(3, 31, 1.4),
(4, 35, 1.6);

-- --------------------------------------------------------

--
-- Структура таблицы `pizza-type`
--

DROP TABLE IF EXISTS `pizza-type`;
CREATE TABLE `pizza-type` (
  `id` int NOT NULL,
  `type` varchar(20) NOT NULL,
  `cost` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `pizza-type`
--

INSERT INTO `pizza-type` (`id`, `type`, `cost`) VALUES
(1, 'Пепперони', 5),
(2, 'Деревенская', 8),
(3, 'Гавайская', 10),
(4, 'Грибная', 6);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `pizza-sauce`
--
ALTER TABLE `pizza-sauce`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pizza-size`
--
ALTER TABLE `pizza-size`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pizza-type`
--
ALTER TABLE `pizza-type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `pizza-sauce`
--
ALTER TABLE `pizza-sauce`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `pizza-size`
--
ALTER TABLE `pizza-size`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `pizza-type`
--
ALTER TABLE `pizza-type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
