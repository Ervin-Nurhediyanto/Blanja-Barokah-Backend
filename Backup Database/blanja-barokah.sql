-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Okt 2020 pada 18.12
-- Versi server: 10.4.10-MariaDB
-- Versi PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
  `idProduct` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `chat`
--

INSERT INTO `chat` (`id`, `chat`, `idProduct`) VALUES
(1, 'haihai', 1),
(2, 'haiiiihaiiihello', 4),
(4, 'hello world baru', 1),
(5, 'haiiiihaiiihello', 1);

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
(1, 2, 1, 150000, '2020-09-11 12:26:03'),
(3, 3, 1, 200000, '2020-09-11 12:26:49');

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
  `chat` varchar(256) NOT NULL,
  `condition` varchar(64) NOT NULL,
  `stock` int(11) NOT NULL,
  `description` text NOT NULL,
  `idCategory` int(11) NOT NULL,
  `idSeller` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `price`, `color`, `category`, `size`, `brand`, `author`, `rate`, `chat`, `condition`, `stock`, `description`, `idCategory`, `idSeller`) VALUES
(1, 'T-Shirt Red', 'http://localhost:4000/uploads/1600027179128-t-shirt-red.jpg,http://localhost:4000/uploads/1600027179130-t-shirt-yellow.jpg', 95000, 'Red', 'Boys', 24, '', 'Zalora Cloth', 10, '', 'new', 10, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat.', 1, 3),
(2, 'T-Shirt Black', 'http://localhost:4000/uploads/1599966833380-t-shirt black.jpg', 75000, 'black', 'woman', 26, '', 'Zalora Cloth', 9, '', 'new', 7, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat.', 1, 7),
(3, 'T-Shirt Grey', 'http://localhost:4000/uploads/1599967527569-t-shirt grey.jpg', 65000, 'Grey', 'Girl', 22, '', 'Zalora Cloth', 7, '', 'new', 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat.', 1, 3),
(4, 'T-Shirt Yellow', 'http://localhost:4000/uploads/1600027257534-t-shirt-yellow.jpg', 80000, 'Yellow', 'Boys', 24, '', 'Zalora Cloth', 7, '', 'new', 6, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat.', 1, 7),
(5, 'T-Shirt Blue', 'http://localhost:4000/uploads/1600027406855-t-shirt-blue.jpg', 70000, 'Blue', 'Boys', 26, '', 'Zalora Cloth', 9, '', 'new', 7, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat.', 1, 3),
(6, 'T-Shirt Grey', 'http://localhost:4000/uploads/1599967572468-t-shirt grey.jpg', 65000, 'Grey', 'Girl', 22, '', 'Zalora Cloth', 7, '', 'new', 9, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat.', 1, 7),
(7, 'T-Shirt Purple', 'http://localhost:4000/uploads/1599967607089-t-shirt purple.jpg', 95000, 'Purple', 'Boys', 24, '', 'Zalora Cloth', 10, '', 'new', 12, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat.', 1, 3),
(9, 'T-Shirt Blue', 'http://localhost:4000/uploads/1600027431108-t-shirt-blue.jpg', 70000, 'Blue', 'Boys', 26, '', 'Zalora Cloth', 9, '', 'new', 45, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat.', 1, 7),
(10, 'T-Shirt All', 'http://localhost:4000/uploads/1600027713951-t-shirt-blue.jpg,http://localhost:4000/uploads/1600027713954-t-shirt-grey.jpg,http://localhost:4000/uploads/1600027713956-t-shirt-purple.jpg,http://localhost:4000/uploads/1600027713958-t-shirt-red.jpg', 75000, 'Blue, Red, Purple, Grey', 'Boys', 26, '', 'Zalora Cloth', 10, '', 'new', 17, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat.', 1, 3);

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
  `phoneNumber` varchar(64) NOT NULL,
  `storeName` varchar(64) NOT NULL,
  `storeDescription` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `address` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `roleId`, `name`, `email`, `image`, `gender`, `dateOfBirth`, `phoneNumber`, `storeName`, `storeDescription`, `password`, `address`) VALUES
(1, 2, 'putri', 'putri@gmail.com', '', 0, '0000-00-00', '0', '', '', '$2a$10$W3PEfY4UqCJin2SzYfzxpu1JxItfCcMLvB2znxWS4/eW7L/gc6kHy', ''),
(2, 1, 'barokah', 'barokah@gmail.com', '', 0, '0000-00-00', '2147483647', 'Blanja-Barokah', '', '$2a$10$lsIwt5TSsrxbCDFgqcwn8.ETwzo7Af7VzY3rLVrRAKPcCoKdV4l1S', ''),
(3, 1, 'Cafein', 'cafeinai311@gmail.com', 'http://localhost:4000/uploads/1601723768668-Cafeinai.jpg', 0, '0000-00-00', '082322059666', 'Store siapa', 'ssevsersg', '$2a$10$afEprfkJJWCwEKbjlj0alODfQB9kZWGDHLxEfu4doyzMPNHzCGt5W', ''),
(4, 2, 'Im Nayeon', 'cafeinai689@gmail.com', 'http://localhost:4000/uploads/1601722404000-im-nayeon.jpg', 2, '1995-09-10', '082xxxxxx678', '', '', '$2a$10$NEhUEIsjD3E4c.35bi2uheQcHAYMra.xwL2K7.C6XuYPmJKF6C5Aq', ''),
(6, 2, 'custumeer', 'cafeinai690@gmail.com', '', 0, '0000-00-00', '', '', '', '$2a$10$b0jui0DjUl3xfHVHuZH/uuIo0hxmzHhzmj1yYPfvF0xO7pSO4gEVq', ''),
(7, 1, 'seller', 'cafeinai312@gmail.com', '', 0, '0000-00-00', '098747474', 'firaun', '', '$2a$10$P7PNgeoaM7guiq621LbvJOwJFQ7ulpbJN.NCcEWAbjWziNJ0eXviC', '');

--
-- Indexes for dumped tables
--

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
