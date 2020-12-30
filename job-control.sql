-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Des 2020 pada 09.18
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job-control`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_list`
--

CREATE TABLE `job_list` (
  `id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `deadline` date NOT NULL,
  `submit` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `job_list`
--

INSERT INTO `job_list` (`id`, `user_id`, `title`, `description`, `deadline`, `submit`, `status`) VALUES
(1, 2, 'Test telat', 'telat', '2020-12-18', '2020-12-20', 0),
(2, 2, 'Test Hari ini', 'Hari ini', '2020-12-20', '2020-12-20', 0),
(3, 2, 'Tes no telat', 'Tidak Telat', '2020-12-22', '2020-12-20', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `email`, `name`, `password`) VALUES
(1, 'asdf@asd.asd', 'asdas', 'a3dcb4d229de6fde0db5686dee47145d'),
(2, 'fhmalba@gmail.com', 'Muhammad Fahmi Albaihaqi', '194864e36697f24c6cf33042554eb11a'),
(3, 'muhammadfahmialbaihaqi@yahoo.co.id', 'Muhammad Fahmi Albaihaqi', 'e69dc2c09e8da6259422d987ccbe95b5'),
(4, 'a.duaalfa@gmail.com', 'Fahmi Alba', 'd41d8cd98f00b204e9800998ecf8427e'),
(5, 'nadya@gmail.com', 'Nadya Margarreth', '93cfdf252c423210fa4bbe6db79d8a21');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `job_list`
--
ALTER TABLE `job_list`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `job_list`
--
ALTER TABLE `job_list`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
