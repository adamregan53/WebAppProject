-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2021 at 05:26 PM
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
(4, 'I inadvertently went to See\'s Candy last week (I was in the mall looking for phone repair), and as it turns out, See\'s Candy now charges a dollar -- a full dollar -- for even the simplest of their wee confection offerings.', '2021-01-03 14:17:40'),
(17, 'What was beyond the bend in the stream was unknown. Both were curious, but only one was brave enough to want to explore. That was the problem. There was always one that let fear rule her life.', '2021-01-03 17:17:33'),
(24, 'Out of another, I get a lovely view of the bay and a little private wharf belonging to the estate. There is a beautiful shaded lane that runs down there from the house. ', '2021-01-03 18:45:28'),
(26, 'The shoes had been there for as long as anyone could remember. In fact, it was difficult for anyone to come up with a date they had first appeared. It had seemed they\'d always been there and yet they seemed so out of place.', '2021-01-03 19:49:13'),
(27, 'Was it enough? That was the question he kept asking himself. Was being satisfied enough? He looked around him at everyone yearning to just be satisfied in their daily life and he had reached that goal.', '2021-01-03 19:49:15'),
(28, 'He took a sip of the drink. He wasn\'t sure whether he liked it or not, but at this moment it didn\'t matter. She had made it especially for him so he would have forced it down even if he had absolutely hated it. ', '2021-01-03 19:49:17'),
(42, 'Debbie put her hand into the hole, sliding her hand down as far as her arm could reach. She wiggled her fingers hoping to touch something, but all she felt was air.', '2021-01-04 15:31:52'),
(46, 'Sometimes it\'s simply better to ignore the haters. That\'s the lesson that Tom\'s dad had been trying to teach him, but Tom still couldn\'t let it go.', '2021-01-04 16:03:04'),
(47, 'It was a scrape that he hardly noticed. Sure, there was a bit of blood but it was minor compared to most of the other cuts and bruises he acquired on his adventures.', '2021-01-04 16:03:18'),
(48, 'The leather jacked showed the scars of being his favorite for years. It wore those scars with pride, feeling that they enhanced his presence rather than diminishing it.', '2021-01-04 16:03:25'),
(49, 'Greg understood that this situation would make Michael terribly uncomfortable. Michael simply had no idea what was about to come and even though Greg could prevent it from happening, he opted to let it happen.', '2021-01-04 16:03:41'),
(50, 'Here\'s the thing. She doesn\'t have anything to prove, but she is going to anyway. That\'s just her character. She knows she doesn\'t have to, but she still will just to show you that she can.', '2021-01-04 16:03:50');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
