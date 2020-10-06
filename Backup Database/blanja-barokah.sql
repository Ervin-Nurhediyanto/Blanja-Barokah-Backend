-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Okt 2020 pada 01.02
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
(3, 6, 'JL. Bersama Mantan', 2, 'Mr', 'Cafein', 'Semarang', '089XXXXXX999', '52668'),
(5, 4, 'Jl. Kemana', 2, 'Home address', 'Jihyo', 'Jogja', '0812342151', '532356');

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
  `idProduct` int(11) NOT NULL,
  `idUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `chat`
--

INSERT INTO `chat` (`id`, `chat`, `idProduct`, `idUser`) VALUES
(1, 'haihai', 1, 1),
<<<<<<< HEAD
(2, 'helloworld', 2, 1);
=======
(2, 'haiiiihaiiihello', 4, 2);
>>>>>>> 9158adc418d1f893ffa2534ba1b1877798ae1ac5

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
  `addressUser` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `payment` varchar(64) NOT NULL,
  `status` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `history`
--

INSERT INTO `history` (`id`, `idProduct`, `idUser`, `idSeller`, `nameProduct`, `countItem`, `imageProduct`, `imageTransfer`, `addressUser`, `date`, `payment`, `status`) VALUES
(1, 10, 4, 3, '', 3, '', '', '', '2020-09-11 12:26:03', 'Gopay', 'not yet paid'),
(3, 11, 4, 3, '', 1, '', '', '', '2020-09-11 12:26:49', 'Post Indonesia', 'packed'),
(4, 12, 4, 7, '', 2, '', '', '', '2020-09-11 12:26:49', 'Mastercard', 'send'),
(5, 12, 4, 7, '', 2, '', '', '', '2020-09-11 12:26:49', 'Mastercard', 'completed'),
(6, 11, 4, 3, '', 1, '', '', '', '2020-09-11 12:26:49', 'Post Indonesia', 'order cancel'),
(11, 12, 4, 7, '', 1, 'http://localhost:4000/uploads/1601772446195-Glasses.jpg', '', '1', '2020-10-05 12:20:31', 'Gopay', 'not yet paid'),
(12, 11, 4, 3, '', 2, 'http://localhost:4000/uploads/1601771363270-Backbag-Black.jpg', '', '1', '2020-10-05 12:20:31', 'Gopay', 'not yet paid'),
(13, 6, 4, 7, 'T-Shirt Grey', 2, 'http://localhost:4000/uploads/1599967572468-t-shirt grey.jpg', '', '5', '2020-10-05 15:34:07', 'Mastercard', 'not yet paid');

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
(1, 'T-Shirt Red', 'http://localhost:4000/uploads/1600027179128-t-shirt-red.jpg,http://localhost:4000/uploads/1600027179130-t-shirt-yellow.jpg', 95000, 'Red', 'Boys', 'XS', '', 'Zalora Cloth', 10, '', 'new', 10, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat.', 1, 3),
(2, 'T-Shirt Black', 'http://localhost:4000/uploads/1599966833380-t-shirt black.jpg', 75000, 'black', 'woman', 'X', '', 'Zalora Cloth', 9, '', 'new', 7, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat.', 1, 7),
(3, 'T-Shirt Grey', 'http://localhost:4000/uploads/1599967527569-t-shirt grey.jpg', 65000, 'Grey', 'Girl', 'M', '', 'Zalora Cloth', 7, '', 'old', 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat.', 1, 3),
(4, 'T-Shirt Yellow', 'http://localhost:4000/uploads/1600027257534-t-shirt-yellow.jpg', 80000, 'Yellow', 'Boys', 'L', '', 'Zalora Cloth', 7, '', 'old', 6, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat.', 1, 7),
(5, 'T-Shirt Blue', 'http://localhost:4000/uploads/1600027406855-t-shirt-blue.jpg', 70000, 'Blue', 'Boys', 'XL', '', 'Zalora Cloth', 9, '', 'old', 7, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat.', 1, 3),
(6, 'T-Shirt Grey', 'http://localhost:4000/uploads/1599967572468-t-shirt grey.jpg', 65000, 'Grey', 'Girl', 'XL', '', 'Zalora Cloth', 7, '', 'old', 9, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat.', 1, 7),
(7, 'T-Shirt Purple', 'http://localhost:4000/uploads/1599967607089-t-shirt purple.jpg', 95000, 'Purple', 'Boys', 'M, L, XL', '', 'Zalora Cloth', 10, '', 'new', 12, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat.', 1, 3),
(8, 'Black Backbag', 'http://localhost:4000/uploads/1599967607089-t-shirt purple.jpg', 350000, '', '', '', '', '', 0, '', 'new', 3, '<p>Backbag hitang kualitas bagus</p>', 1, 3),
(9, 'T-Shirt Blue', 'http://localhost:4000/uploads/1600027431108-t-shirt-blue.jpg', 70000, 'Blue', 'Boys', 'XL', '', 'Zalora Cloth', 9, '', 'new', 45, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat.', 1, 7),
(10, 'T-Shirt All', 'http://localhost:4000/uploads/1600027713951-t-shirt-blue.jpg,http://localhost:4000/uploads/1600027713954-t-shirt-grey.jpg,http://localhost:4000/uploads/1600027713956-t-shirt-purple.jpg,http://localhost:4000/uploads/1600027713958-t-shirt-red.jpg', 75000, 'Blue, Grey, Purple, Red', 'Boys', 'XS, X, M, L, XL', '', 'Zalora Cloth', 10, '', 'new', 17, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non magna rutrum, pellentesque augue eu, sagittis velit. Phasellus quis laoreet dolor. Fusce nec pharetra quam. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent sed enim vel turpis blandit imperdiet ac ac felis. Etiam tincidunt tristique placerat.', 1, 3),
(11, 'Backbag Black', 'http://localhost:4000/uploads/1601771363270-Backbag-Black.jpg', 350000, '', '', '', '', '', 0, '', 'new', 3, '<p>Backbag hitang kualitas bagus</p>', 8, 3),
(12, 'Glasses', 'http://localhost:4000/uploads/1601772446195-Glasses.jpg', 120000, '', '', '', '', '', 0, '', 'new', 5, '<p>New Glasses</p>', 10, 7),
(13, 'Topi', 'http://localhost:4000/uploads/1601773007223-Cap.jpg', 35000, '', '', '', '', '', 0, '', 'new', 7, '<p>Topi baru</p>', 11, 3);

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
(3, 1, 'Cafein', 'cafeinai311@gmail.com', 'http://localhost:4000/uploads/1601742801708-Cafeinai.jpg', 0, '0000-00-00', '082XXXXXX666', 'Barokah Store', 'Toko Online barokah serba berkah', '$2a$10$afEprfkJJWCwEKbjlj0alODfQB9kZWGDHLxEfu4doyzMPNHzCGt5W'),
(4, 2, 'Im Nayeon', 'cafeinai689@gmail.com', 'http://localhost:4000/uploads/1601722404000-im-nayeon.jpg', 2, '1995-09-10', '082xxxxxx678', '', '', '$2a$10$NEhUEIsjD3E4c.35bi2uheQcHAYMra.xwL2K7.C6XuYPmJKF6C5Aq'),
(6, 2, 'custumeer', 'cafeinai690@gmail.com', '', 0, '0000-00-00', '', '', '', '$2a$10$b0jui0DjUl3xfHVHuZH/uuIo0hxmzHhzmj1yYPfvF0xO7pSO4gEVq'),
(7, 1, 'seller', 'cafeinai312@gmail.com', '', 0, '0000-00-00', '098747474', 'firaun', '', '$2a$10$P7PNgeoaM7guiq621LbvJOwJFQ7ulpbJN.NCcEWAbjWziNJ0eXviC'),
(8, 2, 'Regina Put', 'reginaputri@gmail.com', 'http://localhost:4000/uploads/1602016113620-download.jpg', 2, '2003-01-18', '089538473', '', '', '$2a$10$CvQJBiXsq6TOLfaQoYJq2OqZ24UTTygYrxHgsF4ScogmPnFTpsgja'),
(9, 1, 'Blanja Barokah', 'blanjabarokah@gmail.com', '', 0, '0000-00-00', '0210384', 'Blanja Barokah', 'Blanja Barokah Jaya', '$2a$10$oZULq4jX9YUJJ9d0ynWLOeeECBwsMylLa03xxfVQzIbnuIwN51uQy');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUser` (`idUser`);

--
-- Indeks untuk tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idProduct` (`idProduct`),
  ADD KEY `idUser` (`idUser`);

--
-- Indeks untuk tabel `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addressUser` (`addressUser`),
  ADD KEY `idProduct` (`idProduct`),
  ADD KEY `idSeller` (`idSeller`),
  ADD KEY `idUser` (`idUser`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idCategory` (`idCategory`),
  ADD KEY `idSeller` (`idSeller`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `chat`
--
ALTER TABLE `chat`
  ADD CONSTRAINT `chat_ibfk_1` FOREIGN KEY (`idProduct`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `chat_ibfk_2` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `history_ibfk_1` FOREIGN KEY (`addressUser`) REFERENCES `address` (`id`),
  ADD CONSTRAINT `history_ibfk_2` FOREIGN KEY (`idProduct`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `history_ibfk_3` FOREIGN KEY (`idSeller`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `history_ibfk_4` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`idCategory`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`idSeller`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
