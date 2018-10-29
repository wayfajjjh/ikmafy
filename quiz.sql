-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 26 Okt 2018 pada 16.12
-- Versi Server: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'sonudoo', '1234567890'),
(2, 'ikmafy', '1234567890'),
(3, 'aku', 'akuadmin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `angket`
--

CREATE TABLE `angket` (
  `id` int(11) NOT NULL,
  `soal` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `angket`
--

INSERT INTO `angket` (`id`, `soal`) VALUES
(1, 'apakah anda tau Al-Jawami ?'),
(2, 'abc');

-- --------------------------------------------------------

--
-- Struktur dari tabel `answer`
--

CREATE TABLE `answer` (
  `id` int(100) NOT NULL,
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `answer`
--

INSERT INTO `answer` (`id`, `qid`, `ansid`) VALUES
(1, '58027e82e62e3', '58027e82f2412'),
(2, '58027e833dd54', '58027e8347514'),
(3, '58027e8371483', '58027e838f19a'),
(7, '5ba5128192d74', '5ba51281a38a7'),
(8, '5ba51283821a7', '5ba512839e4b3'),
(9, '5ba5128439673', '5ba51285c900b'),
(10, '5ba512867be9d', '5ba512869670a'),
(11, '5ba5128865230', '5ba51288763bb'),
(12, '5ba51288b4335', '5ba51288bc627');

-- --------------------------------------------------------

--
-- Struktur dari tabel `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `history`
--

CREATE TABLE `history` (
  `id` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `timestamp` bigint(50) NOT NULL,
  `status` varchar(40) NOT NULL,
  `score_updated` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `history`
--

INSERT INTO `history` (`id`, `username`, `eid`, `score`, `level`, `correct`, `wrong`, `date`, `timestamp`, `status`, `score_updated`) VALUES
(1, 'sonudoo', '5802790f793b1', 12, 3, 3, 0, '2016-10-15 19:11:55', 1476558671, 'finished', 'false'),
(3, 'sonudoo', '5ba511db41e7c', 6, 3, 2, 0, '2018-09-21 15:50:58', 1537544985, 'finished', 'true'),
(4, 'indahssarah', '5ba511db41e7c', 3, 3, 1, 0, '2018-10-12 15:09:13', 1539356214, 'finished', 'true');

-- --------------------------------------------------------

--
-- Struktur dari tabel `options`
--

CREATE TABLE `options` (
  `id` int(100) NOT NULL,
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `options`
--

INSERT INTO `options` (`id`, `qid`, `option`, `optionid`) VALUES
(1, '58027e82e62e3', 'Yes', '58027e82f2412'),
(2, '58027e82e62e3', 'No', '58027e82f2427'),
(3, '58027e82e62e3', 'Don''t want to', '58027e82f2433'),
(4, '58027e82e62e3', 'Why should I', '58027e82f243d'),
(5, '58027e833dd54', 'sonudoo', '58027e8347505'),
(6, '58027e833dd54', 'sunnygkp10', '58027e8347514'),
(7, '58027e833dd54', 'markzuckerberg', '58027e834751b'),
(8, '58027e833dd54', 'me', '58027e8347521'),
(9, '58027e8371483', 'sonudoo', '58027e838f19a'),
(10, '58027e8371483', 'sunnygkp10', '58027e838f1b0'),
(11, '58027e8371483', 'me', '58027e838f1ba'),
(12, '58027e8371483', 'markzuckerberg', '58027e838f1c4'),
(25, '5ba5128192d74', 'merah hijau', '5ba51281a388e'),
(26, '5ba5128192d74', 'putih biru', '5ba51281a38a1'),
(27, '5ba5128192d74', 'merah putih', '5ba51281a38a7'),
(28, '5ba5128192d74', 'ungu pink', '5ba51281a38ac'),
(29, '5ba51283821a7', 'Jakarta', '5ba512839e4b3'),
(30, '5ba51283821a7', 'Surakarta', '5ba512839e4c4'),
(31, '5ba51283821a7', 'Bandung', '5ba512839e4c9'),
(32, '5ba51283821a7', 'Palembang', '5ba512839e4ce'),
(33, '5ba5128439673', 'Ir. Juanda', '5ba51285c8ff9'),
(34, '5ba5128439673', 'Ir. Soekarno', '5ba51285c900b'),
(35, '5ba5128439673', 'Megawati', '5ba51285c9010'),
(36, '5ba5128439673', 'Jokkowi', '5ba51285c9015'),
(37, '5ba512867be9d', 'merah hijau', '5ba51286966f1'),
(38, '5ba512867be9d', 'putih biru', '5ba5128696704'),
(39, '5ba512867be9d', 'merah putih', '5ba512869670a'),
(40, '5ba512867be9d', 'ungu pink', '5ba512869670f'),
(41, '5ba5128865230', 'Jakarta', '5ba51288763bb'),
(42, '5ba5128865230', 'Surakarta', '5ba51288763d4'),
(43, '5ba5128865230', 'Bandung', '5ba51288763da'),
(44, '5ba5128865230', 'Palembang', '5ba51288763e0'),
(45, '5ba51288b4335', 'Ir. Juanda', '5ba51288bc614'),
(46, '5ba51288b4335', 'Ir. Soekarno', '5ba51288bc627'),
(47, '5ba51288b4335', 'Megawati', '5ba51288bc62d'),
(48, '5ba51288b4335', 'Jokkowi', '5ba51288bc632');

-- --------------------------------------------------------

--
-- Struktur dari tabel `questions`
--

CREATE TABLE `questions` (
  `id` int(100) NOT NULL,
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `questions`
--

INSERT INTO `questions` (`id`, `eid`, `qid`, `qns`, `choice`, `sn`) VALUES
(1, '5802790f793b1', '58027e82e62e3', 'Have you read the README file?', 4, 1),
(2, '5802790f793b1', '58027e833dd54', 'Who is the Original creator of this quizzing site?', 4, 2),
(3, '5802790f793b1', '58027e8371483', 'Who improved the original version of this quizzing site?', 4, 3),
(7, '5ba511db41e7c', '5ba5128192d74', 'Apa Warna Bendera Indonesia', 4, 1),
(8, '5ba511db41e7c', '5ba51283821a7', 'Nama Ibu Kota Indonesia', 4, 2),
(9, '5ba511db41e7c', '5ba5128439673', 'Nama Presiden Pertama Indonesia', 4, 3),
(10, '5ba511db41e7c', '5ba512867be9d', 'Apa Warna Bendera Indonesia', 4, 1),
(11, '5ba511db41e7c', '5ba5128865230', 'Nama Ibu Kota Indonesia', 4, 2),
(12, '5ba511db41e7c', '5ba51288b4335', 'Nama Presiden Pertama Indonesia', 4, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `quiz`
--

CREATE TABLE `quiz` (
  `id` int(100) NOT NULL,
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `quiz`
--

INSERT INTO `quiz` (`id`, `eid`, `title`, `correct`, `wrong`, `total`, `time`, `date`, `status`) VALUES
(1, '5802790f793b1', 'Sample Quiz', 4, 1, 3, 3, '2018-09-21 15:48:16', 'disabled'),
(3, '5ba511db41e7c', 'Ips', 3, 0, 3, 20, '2018-10-12 15:09:13', 'disabled'),
(4, '5bc0be5ee0d7f', 'Math', 1, 0, 10, 10, '0000-00-00 00:00:00', 'disabled');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rank`
--

CREATE TABLE `rank` (
  `id` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `rank`
--

INSERT INTO `rank` (`id`, `username`, `score`, `time`) VALUES
(1, 'sonudoo', 18, '2018-09-21 15:50:58'),
(2, 'indahssarah', 3, '2018-10-12 15:09:13'),
(3, 'hasnafairus', -2, '2018-10-20 18:58:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `rollno` varchar(20) DEFAULT NULL,
  `branch` varchar(20) DEFAULT NULL,
  `gender` varchar(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `phno` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `angket` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `rollno`, `branch`, `gender`, `username`, `phno`, `password`, `angket`) VALUES
(17, 'a', NULL, NULL, 'perem', 'a', 89809, '202cb962ac59075b964b07152d234b70', 't'),
(18, 'b', NULL, NULL, 'p', 'b', 6868768, '202cb962ac59075b964b07152d234b70', 't'),
(16, 'hadai', NULL, NULL, 'perem', 'hadai', 89812345623, '202cb962ac59075b964b07152d234b70', ''),
(14, 'hasna', NULL, NULL, 'perem', 'hasna', 88898989, 'e807f1fcf82d132f9bb018ca6738a19f', ''),
(15, 'hasnafl', NULL, NULL, 'perem', 'hasnafairus', 8999953272, '801dc3c9e3bcd2a3cf428f3b79b312b6', ''),
(11, 'ikmafitri', NULL, NULL, 'p', 'ikffyy', 8321456876, '202cb962ac59075b964b07152d234b70', ''),
(7, 'ikma', 'tes', 'tes', 'P', 'ikma1234', 856909090, '795136bc3a6e1e88b204ad5eb3735362', ''),
(8, 'ikma', 'tes', 'tes', 'P', 'ikma12345678', 856909090, 'b40b3ca5fc4fc93f3abfef0fa608a71a', ''),
(13, 'Indah Siti Sarah', NULL, NULL, 'perem', 'indahssarah', 85624782221, '202cb962ac59075b964b07152d234b70', ''),
(9, 'indah', 'tes', 'tes', 'P', 'indahsthr', 877757572, '25f9e794323b453885f5181f1b624d0b', ''),
(1, 'Sushant Kumar Gupta', 'BE/10001/15', 'CSE', 'M', 'sonudoo', 1234567890, 'e807f1fcf82d132f9bb018ca6738a19f', ''),
(2, 'tes', '12345', '12345', 'p', 'tes1234', 8695144981, 'tes1234', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_answer`
--

CREATE TABLE `user_answer` (
  `id` int(100) NOT NULL,
  `qid` varchar(50) NOT NULL,
  `ans` varchar(50) NOT NULL,
  `correctans` varchar(50) NOT NULL,
  `eid` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_answer`
--

INSERT INTO `user_answer` (`id`, `qid`, `ans`, `correctans`, `eid`, `username`) VALUES
(1, '58027e82e62e3', '58027e82f2412', '58027e82f2412', '5802790f793b1', 'sonudoo'),
(2, '58027e833dd54', '58027e8347514', '58027e8347514', '5802790f793b1', 'sonudoo'),
(3, '58027e8371483', '58027e838f19a', '58027e838f19a', '5802790f793b1', 'sonudoo'),
(4, '5ba512867be9d', '5ba512869670a', '5ba512869670a', '5ba511db41e7c', 'sonudoo'),
(5, '5ba51288b4335', '5ba51288bc627', '5ba51288bc627', '5ba511db41e7c', 'sonudoo'),
(6, '5ba51288b4335', '5ba51288bc627', '5ba51288bc627', '5ba511db41e7c', 'indahssarah'),
(7, '5b54f0c262ede', '5b54f0c26d0db', '5b54f0c26d0d6', '5b54f0515705f', 'hasnafairus'),
(8, '5b54f0c184fdd', '5b54f0c198f98', '5b54f0c198f7e', '5b54f0515705f', 'hasnafairus');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `angket`
--
ALTER TABLE `angket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `user_answer`
--
ALTER TABLE `user_answer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `angket`
--
ALTER TABLE `angket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `rank`
--
ALTER TABLE `rank`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `user_answer`
--
ALTER TABLE `user_answer`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
