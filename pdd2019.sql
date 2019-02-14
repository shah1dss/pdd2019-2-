-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 12 2019 г., 16:40
-- Версия сервера: 5.7.13-log
-- Версия PHP: 5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `pdd2019`
--

-- --------------------------------------------------------

--
-- Структура таблицы `avto`
--

CREATE TABLE IF NOT EXISTS `avto` (
  `kod_avto` int(10) NOT NULL,
  `model` text NOT NULL,
  `gos_nomer` text NOT NULL,
  `strahovka` text
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `avto`
--

INSERT INTO `avto` (`kod_avto`, `model`, `gos_nomer`, `strahovka`) VALUES
(1, 'Волга ', 'р142ув178', '87AB999999'),
(2, 'Skoda Rapid', 'а275оу98', 'B23A789987'),
(3, 'Ваз 2115', 'о001оо111', 'A000B000000'),
(4, 'Toyota LC 200', 'а777мр777', '123EG123123'),
(5, 'Toyota Camry', 'у172вк01', '23FE1235129'),
(6, 'BMW X5', 'о022сс05', '442AE123512'),
(7, 'Porshe Cayenne', 'е001кх77', '98FP2929993'),
(8, 'Boeing 737', 'л555кх000', '76F827F7223'),
(9, 'Mercedes Benz S-class', 'а001аа178', '98FP2929991');

-- --------------------------------------------------------

--
-- Структура таблицы `drivers`
--

CREATE TABLE IF NOT EXISTS `drivers` (
  `kod_avto` int(11) NOT NULL,
  `surname` text NOT NULL,
  `name` text NOT NULL,
  `fathername` text NOT NULL,
  `pasport` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `drivers`
--

INSERT INTO `drivers` (`kod_avto`, `surname`, `name`, `fathername`, `pasport`) VALUES
(1, 'Савин', 'Денис', 'Алексеевич', '4012 954784'),
(2, 'Куралесов', 'Федор', 'Владимирович', '4013 955275'),
(3, 'Панян', 'Николай', 'Бластерович', '4023 847272'),
(4, 'Гребенюк', 'Владислав', 'Токсичников', '1488 228228'),
(5, 'Путилова', 'Ангелина', 'Львовна', '9823 284232'),
(6, 'Галаганов', 'Дмитрий', 'Игоревич', '4023 321391'),
(7, 'Шымкентов', 'Заур', 'Ахмедович', '1843 382252'),
(8, 'Иванов', 'Петр', 'Григорьевич', '4022 952234'),
(9, 'Васницова', 'Галина', 'Сергеевна', '4212 293382');

-- --------------------------------------------------------

--
-- Структура таблицы `narusheniya`
--

CREATE TABLE IF NOT EXISTS `narusheniya` (
  `kod_avto` int(11) NOT NULL,
  `id_narush` int(11) NOT NULL,
  `data` date NOT NULL,
  `time` time NOT NULL,
  `place` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `narusheniya`
--

INSERT INTO `narusheniya` (`kod_avto`, `id_narush`, `data`, `time`, `place`) VALUES
(1, 1, '2019-02-03', '09:23:05', 'Приморский район'),
(2, 2, '2019-02-04', '16:08:30', 'Калининский район'),
(3, 3, '2019-02-14', '12:44:13', 'Выборский район'),
(4, 4, '2019-02-28', '23:40:10', 'Центральный район'),
(5, 5, '2019-02-26', '03:14:39', 'Приморский район'),
(6, 6, '2019-02-20', '15:14:47', 'Выборский район'),
(7, 7, '2019-03-01', '15:24:48', 'Каменный район'),
(8, 8, '2019-02-20', '23:06:29', 'Котлетный район'),
(9, 9, '2019-02-14', '12:33:50', 'Сосисочный район');

-- --------------------------------------------------------

--
-- Структура таблицы `vid_narush`
--

CREATE TABLE IF NOT EXISTS `vid_narush` (
  `id_narush` int(11) NOT NULL,
  `state_narush` text NOT NULL,
  `name_narush` text NOT NULL,
  `price_narush` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `vid_narush`
--

INSERT INTO `vid_narush` (`id_narush`, `state_narush`, `name_narush`, `price_narush`) VALUES
(1, 'Статья КоАП РФ  12.2 часть 2', '\nУправление транспортным средством без государственных регистрационных знаков', '5 000 рублей'),
(2, 'Статья КоАП РФ 12.2 часть 3', '\nУстановка на транспортном средстве заведомо подложных государственных регистрационных знаков', '2 500 рублей'),
(3, 'Статья КоАП РФ	\n12.1 часть 1', 'Управление незарегистрированным автомобилем', '4 000 рублей'),
(4, 'Статья КоАП РФ 12.3 ч. 1', 'Управление ТС без документов', '500 рублей'),
(5, 'Статья КоАП РФ 12.7 ч. 1', 'Управление ТС без прав', '30 000 рублей'),
(6, 'Статья КоАП РФ	12.20', 'Нарушение правил пользования фарами', '500 рублей'),
(7, 'Статья КоАП РФ	12.27 ч.1', 'Невыполнение обязанностей в связи с ДТП', '1 000 рублей'),
(8, 'Статья КоАП РФ	12.14 ч.2', 'Нарушение правил маневрирования', '500 рублей'),
(9, 'Статья КоАП РФ	12.11	ч.3', '	\nРазворот или движение задним ходом на автомагистрали', '2 500 рублей');

-- --------------------------------------------------------

--
-- Структура таблицы `winrar`
--

CREATE TABLE IF NOT EXISTS `winrar` (
  `id` int(11) NOT NULL,
  `adm_log` text NOT NULL,
  `adm_pas` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `winrar`
--

INSERT INTO `winrar` (`id`, `adm_log`, `adm_pas`) VALUES
(1, 'admin', '123');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `avto`
--
ALTER TABLE `avto`
  ADD PRIMARY KEY (`kod_avto`);

--
-- Индексы таблицы `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`kod_avto`);

--
-- Индексы таблицы `narusheniya`
--
ALTER TABLE `narusheniya`
  ADD PRIMARY KEY (`kod_avto`);

--
-- Индексы таблицы `vid_narush`
--
ALTER TABLE `vid_narush`
  ADD PRIMARY KEY (`id_narush`);

--
-- Индексы таблицы `winrar`
--
ALTER TABLE `winrar`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `avto`
--
ALTER TABLE `avto`
  MODIFY `kod_avto` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `drivers`
--
ALTER TABLE `drivers`
  MODIFY `kod_avto` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT для таблицы `vid_narush`
--
ALTER TABLE `vid_narush`
  MODIFY `id_narush` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `winrar`
--
ALTER TABLE `winrar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
