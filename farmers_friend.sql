-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2021 at 05:57 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `farmers_friend`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogdata`
--

CREATE TABLE `blogdata` (
  `blogId` int(10) NOT NULL,
  `blogUser` varchar(256) NOT NULL,
  `blogTitle` varchar(256) NOT NULL,
  `blogContent` longtext NOT NULL,
  `blogTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogdata`
--

INSERT INTO `blogdata` (`blogId`, `blogUser`, `blogTitle`, `blogContent`, `blogTime`, `likes`) VALUES
(23, 'Nibha', 'About Agriculture', '', '2021-01-10 08:11:16', 1),
(29, 'Ganesh', 'paddy cultivation', '', '2021-01-11 06:53:05', 1),
(30, 'Nibha', 'Agriculture is the backbone of the indian economy', '', '2021-01-18 06:13:25', 1);

-- --------------------------------------------------------

--
-- Table structure for table `blogfeedback`
--

CREATE TABLE `blogfeedback` (
  `blogId` int(10) NOT NULL,
  `comment` varchar(256) NOT NULL,
  `commentUser` varchar(256) NOT NULL,
  `commentPic` varchar(256) NOT NULL DEFAULT 'profile0.png',
  `commentTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogfeedback`
--

INSERT INTO `blogfeedback` (`blogId`, `comment`, `commentUser`, `commentPic`, `commentTime`) VALUES
(20, 'crt', 'Nibha', 'profile0.png', '2021-01-10 07:33:20'),
(22, 'crt', 'Nibha', 'profile0.png', '2021-01-10 07:45:03'),
(23, 'crt', 'Nibha', 'profile0.png', '2021-01-10 08:11:26'),
(26, 'crt', 'Ganesh', 'profile0.png', '2021-01-10 12:48:08'),
(29, 'Very good', 'Ganesh', 'profile0.png', '2021-01-11 06:53:23'),
(30, 'True', 'Nibha', 'profile0.png', '2021-01-18 06:13:33');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `did` int(10) NOT NULL,
  `pid` int(255) NOT NULL,
  `product` varchar(255) NOT NULL,
  `SciName` varchar(100) DEFAULT NULL,
  `cliTemp` varchar(50) DEFAULT NULL,
  `soil` varchar(50) DEFAULT NULL,
  `varieties` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`did`, `pid`, `product`, `SciName`, `cliTemp`, `soil`, `varieties`) VALUES
(1, 27, 'Mango', 'Mangifera indica', '<p>around 27C and Dry weather</p>', '</p>pH 5.5 to 8.0</p>', '<p>Badami,Alphonso,Totapuri</p>'),
(2, 30, 'Grapes', 'Vitis vinifera ', '<p>around 10c to 40c and Hot and Dry weather</p>', '</p>6.5 to 8.5</p>', '<p>Rao sahebi,Flames seedless,Arkavathi</p>'),
(3, 31, 'Guava', 'Psidium guajava', '<p>around 20C to 25C and Humid,Dry Climate</p>', '<p>6.5 to 8.5</p>', '<p>safeda,Harija,Khaja,sardar</p>'),
(4, 28, 'Beans', 'Phaseolus vulgaris', '<p>around 17.5C to 27C and cold </p>', '</p>6 to 7.5<p>', '<p>French beans,Kidney Beans,Red Beans</p>'),
(5, 32, 'Tomatoes', 'Solanum lycopersicum', '<p>around 21C to 23C and warm season</p>', '<p>6 to 7 ans warm season</p>', '<p>Abhiman,Arth-3,Hrishi</p>'),
(6, 33, 'Brinjal', 'Solanum melongena', '<p>around 24C to 30C Warm season</p>', '<p>5.5 to 6.5</p>', '<p>Manjrigota,Pusa barsati,Pusa Kranthi</p>'),
(7, 29, 'Ragi', 'Eleusine coracana', '<p>around 26C to 29C and  warm season </p>', '<p>4.5 to 8.0</p>', '<p>AKP 1,Saradha,K1</p>'),
(8, 34, 'Paddy', 'Oryza sativa', '<p>around 25C to 30C and Hot,Humid Climate</p>', '<p>5.5 to 7</p>', '<p>Basmathi,Jasmine,Brown rice</p>'),
(9, 35, 'Maize', 'Zeamays', '<p>around 21C to 27C</p>', '<p>5.8 to 7</p>', '<p>Pop Corn,Mekke,Khakiu</p>');

-- --------------------------------------------------------

--
-- Table structure for table `farmer`
--

CREATE TABLE `farmer` (
  `fid` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `fusername` varchar(255) NOT NULL,
  `fpassword` varchar(255) NOT NULL,
  `fhash` varchar(255) NOT NULL,
  `femail` varchar(255) NOT NULL,
  `fmobile` varchar(255) NOT NULL,
  `faddress` text NOT NULL,
  `factive` int(255) NOT NULL DEFAULT 0,
  `frating` int(11) NOT NULL DEFAULT 0,
  `picExt` varchar(255) NOT NULL DEFAULT 'png',
  `picStatus` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `farmer`
--

INSERT INTO `farmer` (`fid`, `fname`, `fusername`, `fpassword`, `fhash`, `femail`, `fmobile`, `faddress`, `factive`, `frating`, `picExt`, `picStatus`) VALUES
(6, 'Chaithra V', 'Chaithra', '$2y$10$l4Wjervmzw5OoYiFoDhVWOMBz6WmdMmPwluCv7SS0PPXaMmteHu2y', '66368270ffd51418ec58bd793f2d9b1b', 'vchaithra2000@gmail.com', '7975911202', 'kolur', 0, 0, 'png', 0),
(8, 'Ganesh', 'Ganesh', '$2y$10$ogKmwNgUEvtCiAN2DSi3guREgF2ZnnjKqi7p4KHHGnktk7ElK7acO', '3d2d8ccb37df977cb6d9da15b76c3f3a', 'ganesh@gmail.com', '7975911202', 'Shivakote', 0, 0, 'png', 0),
(9, 'Nibha V Rai', 'Nibha', '$2y$10$GyW.r5RNwMVZ1P22WZK1KeWXBt2kV8ey4XCjYlkSoeiZYAi6fnAAi', '4558dbb6f6f8bb2e16d03b85bde76e2c', 'nibhavrai@gmail.com', '7975911202', 'Shivakote', 0, 0, 'png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `fproduct`
--

CREATE TABLE `fproduct` (
  `fid` int(255) NOT NULL,
  `pid` int(255) NOT NULL,
  `product` varchar(255) NOT NULL,
  `pcat` varchar(255) NOT NULL,
  `pinfo` varchar(255) NOT NULL,
  `pimage` varchar(255) NOT NULL DEFAULT 'blank.png',
  `picStatus` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fproduct`
--

INSERT INTO `fproduct` (`fid`, `pid`, `product`, `pcat`, `pinfo`, `pimage`, `picStatus`) VALUES
(3, 27, 'Mango', 'Fruit', '<p>Mango raseela</p>\r\n', 'mango1.jpg', 1),
(3, 28, 'Beans', 'Vegetable', '<p>Long Beans</p>', 'beans.jpg', 1),
(3, 29, 'Ragi', 'Grains', '<p>fibrous ragi</p>', 'ragi1.jpg', 1),
(3, 30, 'Grapes', 'Fruit', '<p>Chatpata Grapes</p>', 'grapes1.jpg', 1),
(3, 31, 'Guava', 'Fruit', '<p>Sweet Guavas', 'guava1.jpg', 1),
(3, 32, 'Tomatoes', 'Vegetable', '<p>Juicy Tomatoes</p>', 'tomatoes.jpg', 1),
(3, 33, 'Brinjal', 'Vegetable', '<p>Healthy Brinjal</p>', 'brinjal.jpg', 1),
(3, 34, 'Paddy', 'Grains', '<p>Quality Rice</p>', 'paddy.jpg', 1),
(3, 35, 'Maize', 'Grains', '<p>Golden Corn</p>', 'corn1.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `likedata`
--

CREATE TABLE `likedata` (
  `blogId` int(10) NOT NULL,
  `blogUserId` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likedata`
--

INSERT INTO `likedata` (`blogId`, `blogUserId`) VALUES
(23, 4),
(29, 8),
(30, 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogdata`
--
ALTER TABLE `blogdata`
  ADD PRIMARY KEY (`blogId`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `farmer`
--
ALTER TABLE `farmer`
  ADD PRIMARY KEY (`fid`),
  ADD UNIQUE KEY `fid` (`fid`);

--
-- Indexes for table `fproduct`
--
ALTER TABLE `fproduct`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `likedata`
--
ALTER TABLE `likedata`
  ADD KEY `blogId` (`blogId`),
  ADD KEY `blogUserId` (`blogUserId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogdata`
--
ALTER TABLE `blogdata`
  MODIFY `blogId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `farmer`
--
ALTER TABLE `farmer`
  MODIFY `fid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `fproduct`
--
ALTER TABLE `fproduct`
  MODIFY `pid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `likedata`
--
ALTER TABLE `likedata`
  ADD CONSTRAINT `likedata_ibfk_1` FOREIGN KEY (`blogId`) REFERENCES `blogdata` (`blogId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
