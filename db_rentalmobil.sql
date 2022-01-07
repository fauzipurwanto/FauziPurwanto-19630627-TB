-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Jan 2022 pada 13.26
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_rentalmobil`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mobil`
--

CREATE TABLE `mobil` (
  `no` int(11) NOT NULL,
  `nopol` varchar(50) NOT NULL,
  `merek` varchar(50) NOT NULL,
  `harga` int(20) NOT NULL,
  `tahunkeluar` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mobil`
--

INSERT INTO `mobil` (`no`, `nopol`, `merek`, `harga`, `tahunkeluar`) VALUES
(1, 'DA7878MR', 'HONDA', 50000, 2005),
(2, 'MA889SI', 'AVANZA', 75000, 2015),
(3, 'MA889SI', 'AVANZA', 75000, 2000),
(4, 'KA009JI', 'KIJANG', 25000, 2003),
(5, 'MA889SI', 'AVANZA', 75000, 2010);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyewa`
--

CREATE TABLE `penyewa` (
  `no` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `kontak` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penyewa`
--

INSERT INTO `penyewa` (`no`, `nama`, `alamat`, `kontak`) VALUES
(1, 'Fauzi', 'Pulau Alalak', '081345277996'),
(2, 'Mira', 'Marabahan', '08971236381'),
(3, 'Estri Ningsih', 'Jelapat', '0897163836');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `no` varchar(30) NOT NULL,
  `lamasewa` varchar(30) NOT NULL,
  `tanggal_minjam` date NOT NULL,
  `tanggal_pengembalian` date NOT NULL,
  `nama_peminjam` varchar(40) NOT NULL,
  `harga` varchar(30) NOT NULL,
  `merek` varchar(25) NOT NULL,
  `total` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`no`, `lamasewa`, `tanggal_minjam`, `tanggal_pengembalian`, `nama_peminjam`, `harga`, `merek`, `total`) VALUES
('1', '1', '2022-01-02', '2022-01-03', 'Fauzi', '75000', 'AVANZA', '50000'),
('2', '2', '2022-01-02', '2022-01-04', 'Mira', '50000', 'HONDA', '100000'),
('3', '1', '2022-01-02', '2022-01-03', 'Estri Ningsih', '25000', 'KIJANG', '25000');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `penyewa`
--
ALTER TABLE `penyewa`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
