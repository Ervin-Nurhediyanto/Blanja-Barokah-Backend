-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Sep 2020 pada 13.43
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blanja-barokah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `address`
--

INSERT INTO `address` (`id`, `idUser`, `address`) VALUES
(1, 1, 'Jalan Raya Masa Depan'),
(2, 1, 'Jalan Raya Masa Lalu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `nameCategory` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `category`
--

INSERT INTO `category` (`id`, `nameCategory`) VALUES
(1, 'T-Shirt'),
(2, 'Shorts'),
(3, 'Jacket'),
(4, 'Pants');

-- --------------------------------------------------------

--
-- Struktur dari tabel `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `chat` varchar(256) NOT NULL,
  `idProduct` int(11) NOT NULL,
  `idUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `chat`
--

INSERT INTO `chat` (`id`, `chat`, `idProduct`, `idUser`) VALUES
(1, 'haihai', 1, 9),
(2, 'haiiiihaiiihello', 4, 5),
(4, 'hello world baru', 1, 1),
(5, 'haiiiihaiiihello', 1, 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `idProduct` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `countItem` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `history`
--

INSERT INTO `history` (`id`, `idProduct`, `idUser`, `countItem`, `date`) VALUES
(1, 1, 1, 10, '2020-09-13 09:24:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `image` varchar(256) NOT NULL,
  `price` int(11) NOT NULL,
  `color` varchar(64) NOT NULL,
  `category` varchar(64) NOT NULL,
  `size` int(11) NOT NULL,
  `brand` varchar(256) NOT NULL,
  `author` varchar(64) NOT NULL,
  `rate` int(11) NOT NULL,
  `condition` varchar(64) NOT NULL,
  `stock` int(11) NOT NULL,
  `description` text NOT NULL,
  `idCategory` int(11) NOT NULL,
  `idSeller` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `price`, `color`, `category`, `size`, `brand`, `author`, `rate`, `condition`, `stock`, `description`, `idCategory`, `idSeller`, `date`) VALUES
(1, 'T-Shirt Baru ', 'http://localhost:4000/uploads/1599989736227-download.jpg,http://localhost:4000/uploads/1599989736230-jas1.jpg', 100000, 'gray, purple, blue dark', 'man', 30, 'Pull & Bear', 'Barokah Shope', 10, 'New', 10, 'Lorem ipsum', 1, 2, '2020-09-13 09:35:36'),
(2, 'T-Shirt Long & Short 2', 'http://localhost:4000/uploads/1599826317265-img1.png, http://localhost:4000/uploads/1599826317296-img2.png, http://localhost:4000/uploads/1599826317501-img3.png, http://localhost:4000/uploads/1599826317558-img4.png, http://localhost:4000/uploads/1599826317', 70000, 'black, blue, red, pink', 'woman', 26, 'Pull & Bear', 'Barokah Shope', 10, 'New', 12, 'Lorem ipsum', 1, 1, '2020-09-13 08:19:51'),
(3, 'T-Shirt Long & Short 3', 'http://localhost:4000/uploads/1599826323990-img1.png, http://localhost:4000/uploads/1599826324158-img2.png, http://localhost:4000/uploads/1599826324175-img3.png, http://localhost:4000/uploads/1599826324182-img4.png, http://localhost:4000/uploads/1599826324', 70000, 'black, blue, red, pink', 'woman', 26, 'Pull & Bear', 'Barokah Shope', 10, 'New', 12, 'Lorem ipsum', 1, 1, '2020-09-13 08:19:51'),
(4, 'Produk Baru', 'https://dj7u9rvtp3yka.cloudfront.net/products/PIM-1571109987094-102c9f48-9849-4d48-aeb1-29d2cf52f001_v1-small.jpg', 1222222, 'black', 'man', 27, 'Zalora', 'Barokah-Shop', 9, 'New', 23, 'Lorem Ipsum', 2, 1, '2020-09-13 08:19:51'),
(5, 'T-Shirt Long & Short', 'http://localhost:4000/uploads/1599989623185-download.jpg,http://localhost:4000/uploads/1599989623238-jas1.jpg', 70000, 'black, blue, red, pink', 'woman', 26, 'Pull & Bear', 'Barokah Shope', 10, 'New', 12, 'Lorem ipsum', 1, 1, '2020-09-13 09:33:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `roleId` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `image` varchar(256) NOT NULL,
  `gender` int(11) NOT NULL,
  `dateOfBirth` date NOT NULL,
  `phoneNumber` int(11) NOT NULL,
  `storeName` varchar(64) NOT NULL,
  `storeDescription` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `roleId`, `name`, `email`, `image`, `gender`, `dateOfBirth`, `phoneNumber`, `storeName`, `storeDescription`, `password`) VALUES
(1, 2, 'putri', 'rputria18@gmail.com', '', 0, '0000-00-00', 0, '', '', '$2a$10$W3PEfY4UqCJin2SzYfzxpu1JxItfCcMLvB2znxWS4/eW7L/gc6kHy'),
(2, 1, 'barokah', 'barokah@gmail.com', '', 0, '0000-00-00', 2147483647, 'Blanja-Barokah', '', '$2a$10$lsIwt5TSsrxbCDFgqcwn8.ETwzo7Af7VzY3rLVrRAKPcCoKdV4l1S');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
