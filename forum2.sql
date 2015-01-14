-- phpMyAdmin SQL Dump
-- version 4.2.13.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2015 at 11:33 AM
-- Server version: 5.5.36
-- PHP Version: 5.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `forum2`
--
CREATE DATABASE IF NOT EXISTS `forum2` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `forum2`;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
`lang_id` tinyint(3) unsigned NOT NULL,
  `lang` varchar(60) NOT NULL,
  `lang_eng` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`lang_id`, `lang`, `lang_eng`) VALUES
(1, 'English', 'English'),
(2, 'Македонски', 'Macedonian');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
`post_id` int(10) unsigned NOT NULL,
  `thread_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `message` text NOT NULL,
  `posted_on` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `thread_id`, `user_id`, `message`, `posted_on`) VALUES
(14, 12, 1, 'македонски', '2014-12-22 11:48:51'),
(15, 13, 1, 'english ', '2014-12-22 11:49:07'),
(16, 13, 1, 'reply on the english post', '2014-12-22 11:54:16'),
(17, 12, 1, 'одговор на македонски', '2014-12-22 11:54:34'),
(18, 14, 1, 'TEST ', '2014-12-23 13:41:46'),
(19, 14, 1, 'UGHBHJBH', '2014-12-23 13:41:58'),
(20, 15, 1, 'УХ', '2014-12-23 13:42:46'),
(21, 15, 1, 'ХБЈХЈ', '2014-12-23 13:42:54');

-- --------------------------------------------------------

--
-- Table structure for table `threads`
--

CREATE TABLE IF NOT EXISTS `threads` (
`thread_id` int(10) unsigned NOT NULL,
  `lang_id` tinyint(3) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `subject` varchar(150) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `threads`
--

INSERT INTO `threads` (`thread_id`, `lang_id`, `user_id`, `subject`) VALUES
(12, 2, 1, 'македонски'),
(13, 1, 1, 'english'),
(14, 1, 1, 'TEST '),
(15, 2, 1, 'ГУЅ');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`user_id` int(10) unsigned NOT NULL,
  `lang_id` tinyint(3) unsigned NOT NULL,
  `time_zone` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `pass` char(40) NOT NULL,
  `email` varchar(60) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `lang_id`, `time_zone`, `username`, `pass`, `email`) VALUES
(1, 1, 'America/New_York', 'mileeng', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'mileeng@example.com'),
(2, 2, 'Europe/Berlin', 'milemak', 'a5a7569327c9925049693dbfda8cd1d0106f4550', 'milemak@example.com');

-- --------------------------------------------------------

--
-- Table structure for table `words`
--

CREATE TABLE IF NOT EXISTS `words` (
`word_id` tinyint(3) unsigned NOT NULL,
  `lang_id` tinyint(3) unsigned NOT NULL,
  `title` varchar(80) NOT NULL,
  `intro` tinytext NOT NULL,
  `home` varchar(30) NOT NULL,
  `forum_home` varchar(40) NOT NULL,
  `language` varchar(40) NOT NULL,
  `register` varchar(30) NOT NULL,
  `login` varchar(30) NOT NULL,
  `logout` varchar(30) NOT NULL,
  `new_thread` varchar(40) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `body` varchar(30) NOT NULL,
  `submit` varchar(30) NOT NULL,
  `posted_on` varchar(30) NOT NULL,
  `posted_by` varchar(30) NOT NULL,
  `replies` varchar(30) NOT NULL,
  `latest_reply` varchar(40) NOT NULL,
  `post_a_reply` varchar(40) NOT NULL,
  `Sucess` varchar(250) NOT NULL,
  `NoSucess` varchar(250) NOT NULL,
  `NoBody` varchar(250) NOT NULL,
  `NoSubject` varchar(250) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `words`
--

INSERT INTO `words` (`word_id`, `lang_id`, `title`, `intro`, `home`, `forum_home`, `language`, `register`, `login`, `logout`, `new_thread`, `subject`, `body`, `submit`, `posted_on`, `posted_by`, `replies`, `latest_reply`, `post_a_reply`, `Sucess`, `NoSucess`, `NoBody`, `NoSubject`) VALUES
(1, 1, 'FORUM', '<p>Welcome to our site....\r\n please use the links above...\r\n blah, blah, blah.</p>\r\n\r\n <p>Welcome to our site....please\r\n use the links above...blah,\r\n blah, blah.</p>', 'Home', 'Forum Home', 'Language', 'Register', 'Login', 'Logout', 'New Thread', 'Subject', 'Body', 'Submit', 'Posted on', 'Posted\r\n by', 'Replies', 'Latest Reply', 'Post a Reply', 'your post has been successfully posted', 'Your post could not be handled due to a system error', 'Please enter a body for this post.', 'Please enter a subject for this post'),
(2, 2, 'ФОРУМ', '<p> Добредојдовте </p>', 'Дома', 'Форум дома', 'Јазик', 'Регистрирај се', 'Влез', 'Излез', 'Нов внес', 'Наслов', 'Текст', 'Прати', 'Постирано на', 'Постирано од', 'Одговори', 'Последен (најдоцнежен) одговор', 'Внеси одговор', 'вашиот пост се постираше', '\r\n\r\nВашиот пост не можеше да се процесира порари системска грешка', 'внесете текст за постот', 'ве молиме внесете наслов за постот');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
 ADD PRIMARY KEY (`lang_id`), ADD UNIQUE KEY `lang` (`lang`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
 ADD PRIMARY KEY (`post_id`), ADD KEY `thread_id` (`thread_id`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `threads`
--
ALTER TABLE `threads`
 ADD PRIMARY KEY (`thread_id`), ADD KEY `lang_id` (`lang_id`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`user_id`), ADD UNIQUE KEY `username` (`username`), ADD UNIQUE KEY `email` (`email`), ADD KEY `login` (`username`,`pass`), ADD KEY `lang_id` (`lang_id`);

--
-- Indexes for table `words`
--
ALTER TABLE `words`
 ADD PRIMARY KEY (`word_id`), ADD UNIQUE KEY `lang_id` (`lang_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
MODIFY `lang_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
MODIFY `post_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `threads`
--
ALTER TABLE `threads`
MODIFY `thread_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `words`
--
ALTER TABLE `words`
MODIFY `word_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
ADD CONSTRAINT `thread` FOREIGN KEY (`thread_id`) REFERENCES `threads` (`thread_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `threads`
--
ALTER TABLE `threads`
ADD CONSTRAINT `language` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`lang_id`),
ADD CONSTRAINT `userr` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
ADD CONSTRAINT `lan` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`lang_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
