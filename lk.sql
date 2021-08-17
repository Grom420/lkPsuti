-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 13 2020 г., 11:13
-- Версия сервера: 5.7.26
-- Версия PHP: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";




--
-- База данных: `lk`
--

-- --------------------------------------------------------

--
-- Структура таблицы `list_of_topics`
--

DROP TABLE IF EXISTS `list_of_topics`;
CREATE TABLE IF NOT EXISTS `list_of_topics` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Theme` text NOT NULL,
  `Department` text NOT NULL,
  `ID_student` int(11) DEFAULT NULL,
  `ID_teacher` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `student_to_list` (`ID_student`),
  KEY `teacher_to_list` (`ID_teacher`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=cp1251;

--
-- Дамп данных таблицы `list_of_topics`
--

INSERT INTO `list_of_topics` (`ID`, `Theme`, `Department`, `ID_student`, `ID_teacher`) VALUES
(1, 'Разработка программного обеспечения МКС', 'ИВТ', NULL, 1),
(2, 'Прикладная информатика бизнеса', 'ЭБ', NULL, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `ID_student` int(11) NOT NULL AUTO_INCREMENT,
  `Name` text NOT NULL,
  `Surname` text NOT NULL,
  `Lastname` text NOT NULL,
  PRIMARY KEY (`ID_student`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=cp1251;

--
-- Дамп данных таблицы `student`
--

INSERT INTO `student` (`ID_student`, `Name`, `Surname`, `Lastname`) VALUES
(1, 'fdgdfg', 'ewtegw', 'dgsg'),
(2, 'ewrew', 'rwegewg', 'ewgewg');

-- --------------------------------------------------------

--
-- Структура таблицы `teacher`
--

DROP TABLE IF EXISTS `teacher`;
CREATE TABLE IF NOT EXISTS `teacher` (
  `ID_teacher` int(11) NOT NULL AUTO_INCREMENT,
  `Name` text NOT NULL,
  `Surname` text NOT NULL,
  `Lastname` text NOT NULL,
  `Department` text NOT NULL,
  PRIMARY KEY (`ID_teacher`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=cp1251;

--
-- Дамп данных таблицы `teacher`
--

INSERT INTO `teacher` (`ID_teacher`, `Name`, `Surname`, `Lastname`, `Department`) VALUES
(1, 'ityijt', 'dfgdhe', 'ergsg', 'ИВТ'),
(2, 'sdxcnt', 'regsvds', 'errehdf', 'ПОУТС');

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `list_of_topics`
--
ALTER TABLE `list_of_topics`
  ADD CONSTRAINT `student_to_list` FOREIGN KEY (`ID_student`) REFERENCES `student` (`ID_student`),
  ADD CONSTRAINT `teacher_to_list` FOREIGN KEY (`ID_teacher`) REFERENCES `teacher` (`ID_teacher`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
