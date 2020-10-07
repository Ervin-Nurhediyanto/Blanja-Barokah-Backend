-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Okt 2020 pada 07.27
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
-- Struktur dari tabel `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `address` varchar(256) NOT NULL,
  `setAddress` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `name` varchar(256) NOT NULL,
  `city` varchar(64) NOT NULL,
  `telephoneNumber` varchar(256) NOT NULL,
  `postalCode` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `address`
--

INSERT INTO `address` (`id`, `idUser`, `address`, `setAddress`, `title`, `name`, `city`, `telephoneNumber`, `postalCode`) VALUES
(1, 4, 'JL. Bersama', 1, 'Office address', 'Nayeon', 'Semarang', '089XXXXXX999', '52668'),
(3, 6, 'Jl. Kemerdekaan', 1, 'Office address', 'Nayeon', 'Bandung', '089XXXXXX999', '52668'),
(5, 4, 'Jl. Kemana', 2, 'Home address', 'Jihyo', 'Jogja', '0812342151', '532356'),
(7, 6, 'Jl.Bersama', 2, 'Home address', 'Momo', 'Bandung', '089XXX222XXX', '51234');

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
(4, 'Pants'),
(5, 'Wris Watch'),
(6, 'High Heels'),
(7, 'Handbag'),
(8, 'Backbag'),
(9, 'Socks'),
(10, 'Glasses'),
(11, 'Cap'),
(12, 'Tie'),
(13, 'Dress'),
(14, 'Formal Suit'),
(15, 'Accesories');

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
  `idSeller` int(11) NOT NULL,
  `nameProduct` varchar(256) NOT NULL,
  `countItem` int(11) NOT NULL,
  `imageProduct` varchar(256) NOT NULL,
  `imageTransfer` varchar(256) NOT NULL,
  `addressUser` varchar(256) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `payment` varchar(64) NOT NULL,
  `status` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `history`
--

INSERT INTO `history` (`id`, `idProduct`, `idUser`, `idSeller`, `nameProduct`, `countItem`, `imageProduct`, `imageTransfer`, `addressUser`, `date`, `payment`, `status`) VALUES
(16, 13, 4, 3, 'Topi', 2, 'http://localhost:4000/uploads/1602042344322-Cap.jpg', 'http://localhost:4000/uploads/1601998132264-Transfer_Success.jpg', '1', '2020-10-06 15:28:12', 'Gopay', 'packed'),
(17, 3, 4, 3, 'T-Shirt Grey', 1, 'http://localhost:4000/uploads/1602041855940-t-shirt-grey.jpg', 'http://localhost:4000/uploads/1601998167730-Transfer_Success.jpg', '1', '2020-10-06 15:28:12', 'Gopay', 'completed'),
(18, 6, 4, 7, 'T-Shirt Grey', 5, 'http://localhost:4000/uploads/1602041855940-t-shirt-grey.jpg', '', '1', '2020-10-06 15:28:12', 'Gopay', 'not yet paid'),
(19, 5, 4, 3, 'T-Shirt Blue', 4, 'http://localhost:4000/uploads/1602041872626-t-shirt-blue.jpg', '', '1', '2020-10-06 15:28:13', 'Gopay', 'not yet paid'),
(20, 4, 4, 7, 'T-Shirt Yellow', 1, 'http://localhost:4000/uploads/1600027257534-t-shirt-yellow.jpg', '', '1', '2020-10-06 15:28:13', 'Gopay', 'not yet paid'),
(21, 2, 4, 7, 'T-Shirt Black', 1, 'http://localhost:4000/uploads/1599966833380-t-shir...', 'http://localhost:4000/uploads/1601998518383-Transfer_Success.jpg', '1', '2020-10-06 15:28:13', 'Gopay', 'already paid'),
(22, 1, 4, 3, 'T-Shirt Red', 4, 'http://localhost:4000/uploads/1602041836852-t-shirt-red.jpg', '', '1', '2020-10-06 15:28:13', 'Gopay', 'order cancel'),
(23, 11, 4, 3, 'Backbag Black', 1, 'http://localhost:4000/uploads/1602042030161-Backbag-Black.jpg', '', '1', '2020-10-06 15:28:13', 'Gopay', 'order cancel'),
(24, 8, 4, 3, 'Baju Kuning', 3, 'http://localhost:4000/uploads/1602042014706-t-shirt-yellow.jpg', 'http://localhost:4000/uploads/1601998494102-Transfer_Success.jpg', '1', '2020-10-06 15:28:13', 'Gopay', 'packed'),
(25, 9, 4, 7, 'T-Shirt Blue', 3, 'http://localhost:4000/uploads/1602041872626-t-shirt-blue.jpg', 'http://localhost:4000/uploads/1601998481507-Transfer_Success.jpg', '1', '2020-10-06 15:28:13', 'Gopay', 'already paid'),
(26, 10, 4, 3, 'T-Shirt All', 2, 'http://localhost:4000/uploads/1602041836852-t-shirt-red.jpg', 'http://localhost:4000/uploads/1601998411890-Transfer_Success.jpg', '1', '2020-10-06 15:28:13', 'Gopay', 'completed'),
(27, 12, 4, 7, 'Glasses', 2, 'http://localhost:4000/uploads/1601772446195-Glasses.jpg', 'http://localhost:4000/uploads/1601998360967-Transfer_Success.jpg', '1', '2020-10-06 15:28:13', 'Gopay', 'already paid'),
(28, 7, 4, 3, 'T-Shirt Purple', 1, 'http://localhost:4000/uploads/1602042005783-t-shirt-purple.jpg', '', '1', '2020-10-06 15:28:13', 'Gopay', 'not yet paid'),
(29, 36, 6, 7, 'Baju Twice', 1, 'http://localhost:4000/uploads/1602033892454-Baju twice.jpg', '', '3', '2020-10-07 01:55:59', 'Gopay', 'order cancel'),
(30, 35, 6, 7, 'Twice ring', 1, 'http://localhost:4000/uploads/1602033752382-Twice ring.jpg', '', '3', '2020-10-07 04:41:43', 'Mastercard', 'not yet paid'),
(31, 36, 4, 7, 'Baju Twice', 1, 'http://localhost:4000/uploads/1602033892454-Baju twice.jpg', 'http://localhost:4000/uploads/1602047487079-Transfer_Success.jpg', '1', '2020-10-07 05:11:06', 'Mastercard', 'completed');

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
  `size` varchar(16) NOT NULL,
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
(1, 'T-Shirt Red', 'http://localhost:4000/uploads/1602041836852-t-shirt-red.jpg', 95000, 'Red', 'Boys', 'XS', 'Saab', 'Zalora Cloth', 10, '', 'new', 10, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat.', 1, 3),
(2, 'T-Shirt Black', 'http://localhost:4000/uploads/1602046195424-t-shirt-black.jpg', 75000, 'Black', 'woman', 'X', '', 'Zalora Cloth', 9, '', 'new', 7, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat.', 1, 7),
(3, 'T-Shirt Grey', 'http://localhost:4000/uploads/1602041855940-t-shirt-grey.jpg', 65000, 'Grey', 'Girl', 'M', '', 'Zalora Cloth', 7, '', 'old', 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat.', 1, 3),
(4, 'T-Shirt Yellow', 'http://localhost:4000/uploads/1602046205123-t-shirt-yellow.jpg', 80000, 'Yellow', 'Boys', 'L', '', 'Zalora Cloth', 7, '', 'old', 6, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat.', 1, 7),
(5, 'T-Shirt Blue', 'http://localhost:4000/uploads/1602041872626-t-shirt-blue.jpg', 70000, 'Blue', 'Boys', 'XL', '', 'Zalora Cloth', 9, '', 'old', 7, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat.', 1, 3),
(6, 'T-Shirt Grey', 'http://localhost:4000/uploads/1602046215263-t-shirt-grey.jpg', 65000, 'Grey', 'Girl', 'XL', '', 'Zalora Cloth', 7, '', 'old', 9, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat.', 1, 7),
(7, 'T-Shirt Purple', 'http://localhost:4000/uploads/1602042005783-t-shirt-purple.jpg', 95000, 'Purple', 'Boys', 'M, L, XL', '', 'Zalora Cloth', 10, '', 'new', 12, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat.', 1, 3),
(8, 'Baju Kuning', 'http://localhost:4000/uploads/1602042014706-t-shirt-yellow.jpg', 100000, 'Yellow', 'all', 'X, XL', 'New Brand', '', 0, '', 'new', 9, 'Baju bagus buat main', 1, 3),
(9, 'T-Shirt Blue', 'http://localhost:4000/uploads/1602046225192-t-shirt-blue.jpg', 70000, 'Blue', 'Boys', 'XL', '', 'Zalora Cloth', 9, '', 'new', 45, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat.', 1, 7),
(10, 'T-Shirt All', 'http://localhost:4000/uploads/1602042005783-t-shirt-purple.jpg, http://localhost:4000/uploads/1602042014706-t-shirt-yellow.jpg, http://localhost:4000/uploads/1602041855940-t-shirt-grey.jpg, http://localhost:4000/uploads/1602041836852-t-shirt-red.jpg', 75000, 'Blue, Grey, Purple, Red', 'Boys', 'XS, X, M, L, XL', '', 'Zalora Cloth', 10, '', 'new', 17, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat.', 1, 3),
(11, 'Backbag Black', 'http://localhost:4000/uploads/1602042030161-Backbag-Black.jpg', 350000, '', '', '', 'Volvo', '', 0, '', 'new', 3, '<p>Backbag hitang kualitas bagus</p>', 8, 3),
(12, 'Glasses', 'http://localhost:4000/uploads/1602046234314-Glasses.jpg', 120000, '', '', '', '', '', 0, '', 'new', 5, '<p>New Glasses</p>', 10, 7),
(13, 'Topi', 'http://localhost:4000/uploads/1602042344322-Cap.jpg', 35000, '', '', '', '', '', 0, '', 'new', 7, '<p>Topi baru</p>', 11, 3),
(30, 'Ganci', 'http://localhost:4000/uploads/1602033141608-Twice-accessories.jpg', 50000, '', '', '', '', '', 0, '', 'new', 50, '<p>Ganci Twice</p>', 1, 7),
(31, 'Masker Twice', 'http://localhost:4000/uploads/1602033236088-Masker twice.jpg', 100000, '', '', '', '', '', 0, '', 'new', 2, '<p>description of product</p>', 1, 7),
(32, 'Ring momo twice', 'http://localhost:4000/uploads/1602033394055-Ring momo twice.jpg', 150000, '', '', '', '', '', 0, '', 'new', 5, 'description of product', 1, 7),
(33, 'Twice cap', 'http://localhost:4000/uploads/1602033484255-twice cap.jpg', 80000, '', '', '', '', '', 0, '', 'new', 2, 'description of product', 1, 7),
(34, 'Twice accessories', 'http://localhost:4000/uploads/1602033634445-twice accessories 2.jpg', 150000, '', '', '', '', '', 0, '', 'new', 5, 'description of product', 1, 7),
(35, 'Twice ring', 'http://localhost:4000/uploads/1602033752382-Twice ring.jpg', 200000, '', '', '', '', '', 0, '', 'new', 1, 'description of product', 1, 7),
(36, 'Baju Twice', 'http://localhost:4000/uploads/1602033892454-Baju twice.jpg', 242342, '', '', '', '', '', 0, '', 'new', 12, 'description of product', 1, 7),
(37, 'Album Twice', 'http://localhost:4000/uploads/1602033988016-Twice album.jpg', 300000, '', '', '', '', '', 0, '', 'new', 5, 'description of product', 1, 7);

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
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `roleId`, `name`, `email`, `image`, `gender`, `dateOfBirth`, `phoneNumber`, `storeName`, `storeDescription`, `password`) VALUES
(1, 2, 'putri', 'putri@gmail.com', '', 0, '0000-00-00', '0', '', '', '$2a$10$W3PEfY4UqCJin2SzYfzxpu1JxItfCcMLvB2znxWS4/eW7L/gc6kHy'),
(2, 1, 'barokah', 'barokah@gmail.com', '', 0, '0000-00-00', '2147483647', 'Blanja-Barokah', '', '$2a$10$lsIwt5TSsrxbCDFgqcwn8.ETwzo7Af7VzY3rLVrRAKPcCoKdV4l1S'),
(3, 1, 'Cafein', 'cafeinai311@gmail.com', 'http://localhost:4000/uploads/1602041795499-Cafeinai.jpg', 0, '0000-00-00', '082XXXXXX666', 'Barokah Store', 'Toko Online barokah serba berkah', '$2a$10$afEprfkJJWCwEKbjlj0alODfQB9kZWGDHLxEfu4doyzMPNHzCGt5W'),
(4, 2, 'Im Nayeon', 'cafeinai689@gmail.com', 'http://localhost:4000/uploads/1602047273271-im-nayeon.jpg', 2, '1995-09-10', '082xxxxxx678', '', '', '$2a$10$afEprfkJJWCwEKbjlj0alODfQB9kZWGDHLxEfu4doyzMPNHzCGt5W'),
(6, 2, 'Bae Suzy', 'suzy@gmail.com', 'http://localhost:4000/uploads/1602044891231-bae-suzy.jpg', 2, '1993-06-17', '089XXXXXX777', '', '', '$2a$10$afEprfkJJWCwEKbjlj0alODfQB9kZWGDHLxEfu4doyzMPNHzCGt5W'),
(7, 1, 'Tzuyu', 'tzuyu@gmail.com', 'http://localhost:4000/uploads/1602033003081-tzuyu.jpg', 0, '0000-00-00', '098XXXXXX28383', 'Twice Store', '', '$2a$10$afEprfkJJWCwEKbjlj0alODfQB9kZWGDHLxEfu4doyzMPNHzCGt5W');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
