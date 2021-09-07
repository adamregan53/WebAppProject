-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2021 at 09:26 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_site`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_posts`
--

CREATE TABLE `user_posts` (
  `id` int(11) NOT NULL,
  `post_content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_posted` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_posts`
--

INSERT INTO `user_posts` (`id`, `post_content`, `time_posted`) VALUES
(4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vehicula tincidunt ante. Nam leo augue, feugiat eu nisl in, consectetur suscipit ipsum. Vestibulum rutrum aliquam quam, et commodo nisi interdum sit amet. Sed viverra est ligula, vel loborti', '2021-01-03 14:17:40'),
(14, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vehicula tincidunt ante. Nam leo augue, feugiat eu nisl in, consectetur suscipit ipsum. Vestibulum rutrum aliquam quam, et commodo nisi interdum sit amet. Sed viverra est ligula, vel loborti', '2021-01-03 17:09:05'),
(17, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vehicula tincidunt ante. Nam leo augue, feugiat eu nisl in, consectetur suscipit ipsum. Vestibulum rutrum aliquam quam, et commodo nisi interdum sit amet. Sed viverra est ligula, vel loborti', '2021-01-03 17:17:33'),
(24, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vehicula tincidunt ante. Nam leo augue, feugiat eu nisl in, consectetur suscipit ipsum. Vestibulum rutrum aliquam quam, et commodo nisi interdum sit amet. Sed viverra est ligula, vel loborti', '2021-01-03 18:45:28'),
(25, '	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vehicula tincidunt ante. Nam leo augue, feugiat eu nisl in, consectetur suscipit ipsum. Vestibulum rutrum aliquam quam, et commodo nisi interdum sit amet. Sed viverra est ligula, vel lobort', '2021-01-03 19:21:59'),
(26, '	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vehicula tincidunt ante. Nam leo augue, feugiat eu nisl in, consectetur suscipit ipsum. Vestibulum rutrum aliquam quam, et commodo nisi interdum sit amet. Sed viverra est ligula, vel lobort', '2021-01-03 19:49:13'),
(27, '	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vehicula tincidunt ante. Nam leo augue, feugiat eu nisl in, consectetur suscipit ipsum. Vestibulum rutrum aliquam quam, et commodo nisi interdum sit amet. Sed viverra est ligula, vel lobort', '2021-01-03 19:49:15'),
(28, '	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vehicula tincidunt ante. Nam leo augue, feugiat eu nisl in, consectetur suscipit ipsum. Vestibulum rutrum aliquam quam, et commodo nisi interdum sit amet. Sed viverra est ligula, vel lobort', '2021-01-03 19:49:17'),
(29, '	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vehicula tincidunt ante. Nam leo augue, feugiat eu nisl in, consectetur suscipit ipsum. Vestibulum rutrum aliquam quam, et commodo nisi interdum sit amet. Sed viverra est ligula, vel lobort', '2021-01-03 19:49:18'),
(30, '	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vehicula tincidunt ante. Nam leo augue, feugiat eu nisl in, consectetur suscipit ipsum. Vestibulum rutrum aliquam quam, et commodo nisi interdum sit amet. Sed viverra est ligula, vel lobort', '2021-01-03 19:49:19'),
(31, '	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus vehicula tincidunt ante. Nam leo augue, feugiat eu nisl in, consectetur suscipit ipsum. Vestibulum rutrum aliquam quam, et commodo nisi interdum sit amet. Sed viverra est ligula, vel lobort', '2021-01-03 19:49:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_posts`
--
ALTER TABLE `user_posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_posts`
--
ALTER TABLE `user_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
