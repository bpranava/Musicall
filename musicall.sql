-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 21, 2020 at 06:08 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spotify`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `artworkPath` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `artist`, `genre`, `artworkPath`) VALUES
(1, '5', 2, 4, 'assets/images/artwork/5.jpg'),
(2, 'Narrated For You', 5, 10, 'assets/images/artwork/narrated_for_you.jpg'),
(3, 'Scorpion', 3, 1, 'assets/images/artwork/scorpion.jpg'),
(4, 'Divide', 2, 9, 'assets/images/artwork/divide.jpg'),
(5, 'Stars Dance', 1, 3, 'assets/images/artwork/stars_dance.png'),
(6, 'Take Care', 3, 6, 'assets/images/artwork/take_care.jpg'),
(7, 'Overthinking', 4, 7, 'assets/images/artwork/overthinking.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`) VALUES
(1, 'Selena Gomez'),
(2, 'Ed Sheeran'),
(3, 'Drake'),
(4, 'Shy Martin'),
(5, 'Alec Benjamin');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Rock'),
(2, 'Pop'),
(3, 'Hip-hop'),
(4, 'Rap'),
(5, 'R&B'),
(6, 'Classical'),
(7, 'Techno'),
(8, 'Jazz'),
(9, 'Folk'),
(10, 'Country');

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `playlists`
--

INSERT INTO `playlists` (`id`, `name`, `owner`, `dateCreated`) VALUES
(2, 'Playlist-1', 'pranava018', '2020-04-04 00:00:00'),
(3, 'Running Songs', 'pranava018', '2020-04-05 00:00:00'),
(4, 'Classics', 'pranava018', '2020-04-05 00:00:00'),
(5, 'Party', 'pranava018', '2020-04-05 00:00:00'),
(7, 'most favourite songs', 'bart19', '2020-04-17 00:00:00'),
(9, 'most favourite songs', 'bart20', '2020-04-17 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `playlistSongs`
--

CREATE TABLE `playlistSongs` (
  `id` int(11) NOT NULL,
  `songId` int(11) NOT NULL,
  `playlistId` int(11) NOT NULL,
  `playlistOrder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `playlistSongs`
--

INSERT INTO `playlistSongs` (`id`, `songId`, `playlistId`, `playlistOrder`) VALUES
(4, 7, 2, 2),
(5, 10, 4, 1),
(6, 23, 2, 3),
(7, 25, 3, 1),
(8, 26, 4, 2),
(9, 7, 5, 1),
(10, 1, 7, 1),
(12, 10, 7, 2),
(16, 21, 9, 2),
(18, 22, 9, 3);

-- --------------------------------------------------------

--
-- Table structure for table `Songs`
--

CREATE TABLE `Songs` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `duration` varchar(8) NOT NULL,
  `path` varchar(500) NOT NULL,
  `albumOrder` int(11) NOT NULL,
  `plays` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Songs`
--

INSERT INTO `Songs` (`id`, `title`, `artist`, `album`, `genre`, `duration`, `path`, `albumOrder`, `plays`) VALUES
(1, 'Acoustic Breeze', 1, 5, 8, '2:37', 'assets/music/bensound-acousticbreeze.mp3', 1, 10),
(2, 'A new beginning', 1, 5, 1, '2:35', 'assets/music/bensound-anewbeginning.mp3', 2, 2),
(3, 'Better Days', 1, 5, 2, '2:33', 'assets/music/bensound-betterdays.mp3', 3, 2),
(4, 'Buddy', 1, 5, 3, '2:02', 'assets/music/bensound-buddy.mp3', 4, 4),
(5, 'Clear Day', 1, 5, 4, '1:29', 'assets/music/bensound-clearday.mp3', 5, 2),
(6, 'Going Higher', 2, 1, 1, '4:04', 'assets/music/bensound-goinghigher.mp3', 1, 9),
(7, 'Funny Song', 2, 4, 2, '3:07', 'assets/music/bensound-funnysong.mp3', 2, 6),
(8, 'Funky Element', 2, 1, 3, '3:08', 'assets/music/bensound-funkyelement.mp3', 2, 5),
(9, 'Extreme Action', 2, 1, 4, '8:03', 'assets/music/bensound-extremeaction.mp3', 3, 9),
(10, 'Epic', 2, 4, 5, '2:58', 'assets/music/bensound-epic.mp3', 3, 4),
(11, 'Energy', 2, 1, 6, '2:59', 'assets/music/bensound-energy.mp3', 4, 6),
(12, 'Dubstep', 2, 1, 7, '2:03', 'assets/music/bensound-dubstep.mp3', 5, 10),
(13, 'Happiness', 3, 6, 8, '4:21', 'assets/music/bensound-happiness.mp3', 5, 1),
(14, 'Happy Rock', 3, 6, 9, '1:45', 'assets/music/bensound-happyrock.mp3', 4, 1),
(15, 'Jazzy Frenchy', 3, 6, 10, '1:44', 'assets/music/bensound-jazzyfrenchy.mp3', 3, 4),
(16, 'Little Idea', 3, 6, 1, '2:49', 'assets/music/bensound-littleidea.mp3', 2, 8),
(17, 'Memories', 3, 6, 2, '3:50', 'assets/music/bensound-memories.mp3', 1, 12),
(18, 'Moose', 4, 7, 1, '2:43', 'assets/music/bensound-moose.mp3', 5, 2),
(19, 'November', 4, 7, 2, '3:32', 'assets/music/bensound-november.mp3', 4, 2),
(20, 'Of Elias Dream', 4, 7, 3, '4:58', 'assets/music/bensound-ofeliasdream.mp3', 3, 9),
(21, 'Pop Dance', 4, 7, 2, '2:42', 'assets/music/bensound-popdance.mp3', 2, 9),
(22, 'Retro Soul', 4, 7, 5, '3:36', 'assets/music/bensound-retrosoul.mp3', 1, 5),
(23, 'Sad Day', 5, 2, 1, '2:28', 'assets/music/bensound-sadday.mp3', 1, 1),
(24, 'Sci-fi', 5, 2, 2, '4:44', 'assets/music/bensound-scifi.mp3', 2, 1),
(25, 'Slow Motion', 5, 2, 3, '3:26', 'assets/music/bensound-slowmotion.mp3', 3, 1),
(26, 'Sunny', 5, 2, 4, '2:20', 'assets/music/bensound-sunny.mp3', 4, 3),
(27, 'Sweet', 5, 2, 5, '5:07', 'assets/music/bensound-sweet.mp3', 5, 4),
(28, 'Tenderness ', 3, 3, 7, '2:03', 'assets/music/bensound-tenderness.mp3', 4, 1),
(29, 'The Lounge', 3, 3, 8, '4:16', 'assets/music/bensound-thelounge.mp3 ', 3, 1),
(30, 'Ukulele', 3, 3, 9, '2:26', 'assets/music/bensound-ukulele.mp3 ', 2, 1),
(31, 'Tomorrow', 3, 3, 1, '4:54', 'assets/music/bensound-tomorrow.mp3 ', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(32) NOT NULL,
  `signUpDate` datetime NOT NULL,
  `profilePic` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `email`, `password`, `signUpDate`, `profilePic`) VALUES
(1, 'pranava018', 'Pranava', 'Bart', 'pranava018@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2020-03-10 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(2, 'donkey-dog', 'Mcdonald', 'Bart', 'dk018@gmail.com', '2f3e9eccc22ee583cf7bad86c751d865', '2020-03-10 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(5, 'bart20', 'Bart', 'Simpson', 'Bart@gmail.com', '6cb75f652a9b52798eb6cf2201057c73', '2020-04-17 00:00:00', 'assets/images/profile-pics/head_emerald.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlistSongs`
--
ALTER TABLE `playlistSongs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Songs`
--
ALTER TABLE `Songs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `playlistSongs`
--
ALTER TABLE `playlistSongs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `Songs`
--
ALTER TABLE `Songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
