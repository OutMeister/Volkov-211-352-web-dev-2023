-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: std-mysql
-- Время создания: Окт 08 2023 г., 15:04
-- Версия сервера: 5.7.26-0ubuntu0.16.04.1
-- Версия PHP: 8.1.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `std_2306_exam`
--

-- --------------------------------------------------------

--
-- Структура таблицы `alembic_version`
--

CREATE TABLE `alembic_version` (
  `version_num` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `alembic_version`
--

INSERT INTO `alembic_version` (`version_num`) VALUES
('32a02bdb92ae');

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text,
  `year` year(4) NOT NULL,
  `publisher` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `rating_sum` int(11) NOT NULL,
  `rating_num` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `cover_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `books`
--

INSERT INTO `books` (`id`, `title`, `description`, `year`, `publisher`, `author`, `rating_sum`, `rating_num`, `amount`, `cover_id`) VALUES
(2, 'Бронепароходы', 'В 1918 году речными флотилиями обзавелись и «учредиловцы» в Самаре, и Троцкий в Нижнем Новгороде, и повстанцы Ижевска, и чекисты в Перми. А в мире бушевала инженерная революция, когда паровые машины соперничали с дизельными двигателями, и в российское противостояние красных и белых властно вторгалась борьба лидеров нефтедобычи – британского концерна «Шелл» и русской компании братьев Нобель.', '2023', 'ООО \"Эвербук\"', 'Алексей Иванов', 12, 3, 664, 1),
(3, 'Безмолвный пациент', 'Жизнь Алисии Беренсон кажется идеальной. Известная художница вышла замуж за востребованного модного фотографа. Она живет в одном из самых привлекательных и дорогих районов Лондона в роскошном доме с большими окнами, выходящими в парк. Однажды поздним вечером, когда ее муж Габриэль возвращается домой с очередной съемки, Алисия пять раз стреляет ему в лицо. И с тех пор не произносит ни слова.\n\nОтказ Алисии говорить или давать какие-либо объяснения будоражит общественное воображение. Тайна делает художницу знаменитой. И в то время как сама она находится на принудительном лечении, цена ее последней работы – автопортрета с единственной надписью по-гречески «АЛКЕСТА» – стремительно растет.', '2023', 'Эксмо', 'Алекс Михаэлидес', 0, 0, 253, 2),
(4, 'Принцип противостояния', 'Восемь главных героев. Восемь характеров. Восемь судеб. Парни из «Дельты» и «Феникса» стараниями двух авторов сошлись в одной точке, чтобы порадовать читателей двух остросюжетных историй! Денису Морозову нужно в кратчайшие сроки подготовить отряд по требованию господина Федотова. Дмитрию Князеву было бы неплохо избежать летнего простоя его учебно-тактического центра «Диверсант». На ограниченной высоким забором территории сойдутся амбиции восьми полюбившихся вам мужчин. Чем это обернётся? Непримиримой враждой, выгодным сотрудничеством или началом московско-краснодарской мужской дружбы?', '2022', 'MyBook', 'Эмма Райц', 0, 0, 114, 3),
(5, 'Стив джобс', 'Биография Стива Джобса', '2012', 'Knijki', 'Уолтер Айзексон', 0, 0, 412, 4),
(6, '«Успех или успеть»', 'Данная книга раскрывает Вам, уважаемый читатель, пошаговые действия достижения успеха. Поможет понять и осознать, что именно для Вас является успехом. Поможет обрести здоровье, любовь, финансовую независимость и прочее факторы успешных людей. Советую Вам прочесть ее несколько раз,или сделать так , чтобы она всегда была у вас под рукой, как шпаргалка, которая дает ответы на самый главный вопрос. Как стать успешным во всех сферах жизнедеятельности человека?', '2017', 'MyBook', 'Алексей Гончаров', 0, 0, 100, 5),
(8, 'Самый богатый человек в Вавилоне', 'Автор этой книги уверен: чтобы исполнить все свои замыслы и желания, Вы прежде всего должны добиться успеха в денежных вопросах, используя принципы управления личными финансами, изложенные на её страницах.\n', '2017', 'Попурри', 'Джордж Сэмюэль Клейсон', 0, 0, 114, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `books_has_genres`
--

CREATE TABLE `books_has_genres` (
  `id` int(11) NOT NULL,
  `books_id` int(11) NOT NULL,
  `genres_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `books_has_genres`
--

INSERT INTO `books_has_genres` (`id`, `books_id`, `genres_id`) VALUES
(2, 3, 3),
(3, 4, 6),
(4, 5, 5),
(5, 6, 2),
(6, 2, 7),
(8, 8, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `covers`
--

CREATE TABLE `covers` (
  `id` int(11) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `mime_type` varchar(100) NOT NULL,
  `md5_hash` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `covers`
--

INSERT INTO `covers` (`id`, `file_name`, `mime_type`, `md5_hash`) VALUES
(1, '1jpeg', 'image/jpeg', '46c3981ab98644ab60a6f6f992edc633'),
(2, '2jpeg', 'image/jpeg', 'af891a58e6016a408fc193ef953d5891'),
(3, '3jpeg', 'image/jpeg', 'e770bf93ccfc9ad55f76c1618f8afc2e'),
(4, '4jpeg', 'image/jpeg', '5fbc959e36318e98007cfb8ed865d19d'),
(5, '5jpeg', 'image/jpeg', '1e5eec34f2af74f50e9204f34b959d41'),
(6, '6jpeg', 'image/jpeg', 'fbbd381c21fd999fcf5ff7deee6a9719');

-- --------------------------------------------------------

--
-- Структура таблицы `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `genre_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `genres`
--

INSERT INTO `genres` (`id`, `genre_name`) VALUES
(1, ''),
(5, 'Биография'),
(6, 'Боевик'),
(3, 'Детектив'),
(7, 'Историческая литература'),
(2, 'Психология'),
(4, 'Фантастика');

-- --------------------------------------------------------

--
-- Структура таблицы `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `text` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `reviews`
--

INSERT INTO `reviews` (`id`, `book_id`, `user_id`, `rating`, `text`, `created_at`) VALUES
(1, 2, 4, 5, 'Классная книга, супер!', '2023-10-08 17:35:20'),
(2, 2, 5, 4, 'Хорошая книга!', '2023-10-08 17:38:10'),
(3, 2, 3, 3, 'Пойдет', '2023-10-08 17:45:40');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role_name` varchar(50) NOT NULL,
  `description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `role_name`, `description`) VALUES
(1, 'Administrator', NULL),
(2, 'Moderator', NULL),
(3, 'User', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(50) NOT NULL,
  `password_hash` varchar(200) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password_hash`, `last_name`, `first_name`, `middle_name`, `role_id`) VALUES
(3, 'artyom', 'pbkdf2:sha256:260000$JCPMtqVIuDUeHsbk$174bd00ddc051795211a5d4bce2e56b8894e3749af6dd6dbe0fc10300c6690c6', 'Volkov', 'Artyom', 'Aleksandrovich', 1),
(4, 'ivan', 'pbkdf2:sha256:260000$ewdwMuJyOe0JbT7E$76ce65a47416aee0e76993d383cf529b29bea038707a8aebab68ffc7ae99ed90', 'Ivanov', 'Ivan', 'Ivanovich', 3),
(5, 'moder', 'pbkdf2:sha256:260000$At0C1nxvFdoD1ehV$2407f75a2dc821b4772603e696dd35bf16edd97fc13c78e2958ad0c4b1d78bda', 'Moderatov', 'Moder', 'Moderovich', 2);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `alembic_version`
--
ALTER TABLE `alembic_version`
  ADD PRIMARY KEY (`version_num`);

--
-- Индексы таблицы `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_books_title` (`title`),
  ADD KEY `fk_books_cover_id_covers` (`cover_id`);

--
-- Индексы таблицы `books_has_genres`
--
ALTER TABLE `books_has_genres`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_books_has_genres_books_id_books` (`books_id`),
  ADD KEY `fk_books_has_genres_genres_id_genres` (`genres_id`);

--
-- Индексы таблицы `covers`
--
ALTER TABLE `covers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_covers_md5_hash` (`md5_hash`);

--
-- Индексы таблицы `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_genres_genre_name` (`genre_name`);

--
-- Индексы таблицы `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_reviews_book_id_books` (`book_id`),
  ADD KEY `fk_reviews_user_id_users` (`user_id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_roles_role_name` (`role_name`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_users_login` (`login`),
  ADD KEY `fk_users_role_id_roles` (`role_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `books_has_genres`
--
ALTER TABLE `books_has_genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `covers`
--
ALTER TABLE `covers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `fk_books_cover_id_covers` FOREIGN KEY (`cover_id`) REFERENCES `covers` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `books_has_genres`
--
ALTER TABLE `books_has_genres`
  ADD CONSTRAINT `fk_books_has_genres_books_id_books` FOREIGN KEY (`books_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_books_has_genres_genres_id_genres` FOREIGN KEY (`genres_id`) REFERENCES `genres` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `fk_reviews_book_id_books` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_reviews_user_id_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_role_id_roles` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
