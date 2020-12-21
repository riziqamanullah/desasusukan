-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Jun 2020 pada 14.17
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `desa_susukan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `id` int(11) NOT NULL,
  `judul` varchar(128) NOT NULL,
  `isi_artikel` text NOT NULL,
  `img` varchar(128) NOT NULL,
  `date_created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`id`, `judul`, `isi_artikel`, `img`, `date_created`) VALUES
(13, 'Pembuatan Tembok Penyengker Stile Bali Kantor Desa Negari', 'Pengadaan Barang Jasa Peningkatan Pembangunan di Gedung Kantor Desa, yaitu\r\n                            Pembangunan Pondasi tembok dan Tembok Stile Bali Bata press serta Candi Bentar.Kegiatan ini\r\n                            Didahulukan dengan Pengumuman Rencana Pengadaan Barang/Jasa Sejumlah Rp. 186.112.208,00\r\n                            beserta jadwal pengadaan barang/jasa dengan berbagai tahapan yaitu :1. Tgl. 27 Maret 2020\r\n                            TPBJ memberikan surat permintaan penawaran ke rekanan.2. Tgl. 1 April ', 'struktur-ika.png', '2020-06-24'),
(15, 'Laporan Pertanggungjawaban Dana Desa Triwulan I', 'Berikut Disampaikan Laporan Pertanggungjawaban Dana Desa Triwulan I,\r\n                        APBDesa TA 2020. semoga dapat menjadi pedoman transparansi anggaran.', 'struktur-ika1.png', '2020-06-18'),
(16, 'Sosialisasi APBDesa 2020 dan Sosialisasi Padat Karya Tunai (PKT)2020', 'Jumat, (13/03) Sosialisasi APBDesa 2020 danSosialisasi Padat Karya\r\n                            Tunai\r\n                            (PKT)2020 bertempat di Ruang Rapat Tri Satya Mandala Kantor Desa Negari....sampun\r\n                            berjalan\r\n                            searah dan bersinergi, terima kasih kepada masyarakat RTM, Pengangguran, Setengah\r\n                            Pengangguran yg sudah ikut hadir untuk membangun Desa.', 'moh5m_english(11feb)4b3f8158069940128a03b79df31405d11.jpg', '2020-06-10'),
(17, 'Dia Kawin Lari!!', 'Masa sih booong kaliii', 'IMG_20200529_145135.jpg', '2020-06-13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `fullname`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(1, 'Izieq', 'izieq@gmail.com', '600px-Windows_logo_-_2012_svg.png', '$2y$10$61XqWVHSbE1mys5Xf/XD1e8iZV6oVgCm6p61DmC8voC39mdpWmdZC', 1, 1, 1589094210),
(2, 'admin', 'admin@gmail.com', 'default-avatar.png', '$2y$10$tDbP/Cm9.TB811kjJhOo6eLAse8KV68UyOtRd.v5BDCIAc.2z74NK', 2, 1, 1589094770),
(6, 'Rizieq Amanullah', 'riziqamanullah@gmail.com', 'default-avatar.png', '$2y$10$i8LLUGCTqmTKKKwPh1I0PugCrA3YToovVKn7.K4e4tkvwm77l96B.', 1, 1, 1591944615);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(4, 1, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Devp'),
(2, 'Admin'),
(3, 'Menu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Devp'),
(2, 'Admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'devp', 'tim-icons icon-chart-pie-36', 1),
(2, 2, 'User Profile', 'admin', 'tim-icons icon-single-02', 1),
(3, 3, 'Menu Management', 'menu', 'tim-icons icon-puzzle-10', 1),
(4, 3, 'Sub Menu Management', 'menu/submenu', 'tim-icons icon-bullet-list-67', 1),
(7, 2, 'Ganti Password', 'admin/gantipassword', 'tim-icons icon-lock-circle', 1),
(9, 2, 'Artikel', 'admin/artikel', 'tim-icons icon-paper', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
