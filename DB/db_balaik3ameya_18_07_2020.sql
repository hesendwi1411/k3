-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 18 Jul 2020 pada 01.26
-- Versi Server: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_balaik3ameya`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `struktur`
--

CREATE TABLE `struktur` (
  `struktur_id` int(11) NOT NULL,
  `struktur_parent` int(11) NOT NULL,
  `struktur_nama` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `struktur_level` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `struktur_alias` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `struktur_urut` int(11) NOT NULL,
  `struktur_status` varchar(255) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `struktur`
--

INSERT INTO `struktur` (`struktur_id`, `struktur_parent`, `struktur_nama`, `struktur_level`, `struktur_alias`, `struktur_urut`, `struktur_status`) VALUES
(1, 0, 'Commercial', 'Head', '', 1, ''),
(2, 0, 'Manufacturing', 'Head', '', 2, ''),
(3, 0, 'Accounting &  Finance', 'Head', 'Human Resource Development ', 3, ''),
(4, 0, 'HRD & GA', 'Head', '', 4, ''),
(5, 1, 'Marketing', '', '', 1, ''),
(6, 1, 'Merchandising', '', '', 2, ''),
(7, 1, 'Purchase', '', '', 3, ''),
(8, 1, 'Product Development', '', '', 4, ''),
(10, 1, 'Export Import', '', '', 6, ''),
(43, 5, 'Marketing 2', '', '', 0, ''),
(39, 100, 'General Ledger', '', '', 0, ''),
(102, 99, 'Custom', '', '', 0, ''),
(18, 17, 'test112', '', '', 0, ''),
(42, 5, 'Marketing 1', '', '', 0, ''),
(32, 31, 'TEST4', '', '', 0, ''),
(104, 100, 'Payable', '', '', 0, ''),
(44, 8, 'Casual', '', '', 0, ''),
(45, 9, 'Senior QA', '', '', 0, ''),
(46, 9, 'Senior QA SOT', '', '', 0, ''),
(47, 7, 'Fabric', '', '', 0, ''),
(48, 10, 'Import Incharge', '', '', 0, ''),
(49, 10, 'Export Incharge', '', '', 0, ''),
(50, 6, 'Merchandising Manager I', '', '', 0, ''),
(51, 6, 'Merchandising Manager II', '', '', 0, ''),
(52, 5, 'Marketing 3', '', '', 0, ''),
(124, 7, 'Accessories', '', '', 0, ''),
(126, 8, 'Contemporary', '', '', 0, ''),
(125, 7, 'Local', '', '', 0, ''),
(101, 99, 'Tax', '', '', 0, ''),
(56, 40, 'Sami', 'Staff', '', 0, ''),
(57, 56, 'salom', 'Staff', '', 0, ''),
(58, 57, 'aada', 'Staff', '', 0, ''),
(59, 40, 'Sama', 'Staff', '', 0, ''),
(60, 56, 'Salim', 'Staff', '', 0, ''),
(103, 100, 'Receivable', '', '', 0, ''),
(62, 0, 'Information Technology', 'Head', '', 0, ''),
(63, 6, 'Merchandising Manager III', '', '', 0, ''),
(64, 50, 'MD Senior', '', '', 0, ''),
(65, 50, 'MD Senior', '', '', 0, ''),
(66, 50, 'MD Senior', '', '', 0, ''),
(67, 51, 'MD Senior', '', '', 0, ''),
(68, 51, 'MD Senior', '', '', 0, ''),
(69, 63, 'Vacant', '', '', 0, ''),
(70, 63, 'Vacant', '', '', 0, ''),
(71, 45, 'Assistant QA', '', '', 0, ''),
(72, 45, 'Assistant QA', '', '', 0, ''),
(73, 45, 'Supervisor Line', '', '', 0, ''),
(74, 45, 'Admin', '', '', 0, ''),
(75, 49, 'Export Staff', '', '', 0, ''),
(76, 48, 'Import Staff', '', '', 0, ''),
(77, 48, 'Local', '', '', 0, ''),
(79, 47, 'TRIMS', '', '', 0, ''),
(80, 47, 'General', '', '', 0, ''),
(81, 44, 'Senior Designer', '', '', 0, ''),
(82, 44, 'Pattern Designer', '', '', 0, ''),
(83, 2, 'QA & QC', '', '', 0, ''),
(84, 2, 'PPIC, IE & Sample Room', '', '', 0, ''),
(85, 2, 'Warehouse', '', '', 0, ''),
(86, 2, 'Production', '', '', 0, ''),
(87, 2, 'Subcon', '', '', 0, ''),
(88, 2, 'Mechanic', '', '', 0, ''),
(89, 2, 'Washing', '', '', 0, ''),
(90, 83, 'Laboratorium', '', '', 0, ''),
(91, 83, 'QA', '', '', 0, ''),
(92, 83, 'QC', '', '', 0, ''),
(93, 84, 'PPIC', '', '', 0, ''),
(94, 84, 'IE', '', '', 0, ''),
(95, 84, 'Sample Room', '', '', 0, ''),
(96, 86, 'Cutting', '', '', 0, ''),
(97, 86, 'Sewing', '', '', 0, ''),
(98, 86, 'Finishing', '', '', 0, ''),
(99, 3, 'Tax', '', '', 0, ''),
(100, 3, 'Accounting', '', '', 0, ''),
(105, 100, 'Cashier', '', '', 0, ''),
(106, 100, 'Capex', '', '', 0, ''),
(107, 100, 'MIS', '', '', 0, ''),
(108, 4, 'HRD', '', '', 0, ''),
(109, 4, 'Utility', '', '', 0, ''),
(110, 4, 'GA', '', '', 0, ''),
(111, 108, 'Payroll', '', '', 0, ''),
(112, 108, 'Compliance', '', '', 0, ''),
(113, 108, 'Training', '', '', 0, ''),
(114, 108, 'Recruitment', '', '', 0, ''),
(115, 109, 'Maintenance', '', '', 0, ''),
(116, 109, 'Boiler', '', '', 0, ''),
(117, 109, 'Electric', '', '', 0, ''),
(118, 110, 'Security', '', '', 0, ''),
(119, 110, 'General Affair', '', '', 0, ''),
(120, 110, 'House Keeping', '', '', 0, ''),
(121, 62, 'Application & Development', '', '', 0, ''),
(122, 62, 'IT System', '', '', 0, ''),
(123, 62, 'IT Officer & Network Infrastructure', '', '', 0, ''),
(127, 62, 'IT Profile', '', '', 0, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_agenda`
--

CREATE TABLE `tbl_agenda` (
  `agenda_id` int(11) NOT NULL,
  `agenda_nama` varchar(200) DEFAULT NULL,
  `agenda_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `agenda_deskripsi` text,
  `agenda_mulai` date DEFAULT NULL,
  `agenda_selesai` date DEFAULT NULL,
  `agenda_tempat` varchar(90) DEFAULT NULL,
  `agenda_waktu` varchar(30) DEFAULT NULL,
  `agenda_keterangan` varchar(200) DEFAULT NULL,
  `agenda_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_agenda`
--

INSERT INTO `tbl_agenda` (`agenda_id`, `agenda_nama`, `agenda_tanggal`, `agenda_deskripsi`, `agenda_mulai`, `agenda_selesai`, `agenda_tempat`, `agenda_waktu`, `agenda_keterangan`, `agenda_author`) VALUES
(15, 'K3 Meeting on November 30, 2018', '2018-11-27 01:40:24', 'K3 Meeting for 1st group', '2018-11-30', '2018-11-30', 'Showroom', '03.00 pm to 04.00 pm', 'Please come on time.', 'Hesen Dwi Yatmiko');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_album`
--

CREATE TABLE `tbl_album` (
  `album_id` int(11) NOT NULL,
  `album_nama` varchar(50) DEFAULT NULL,
  `album_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `album_pengguna_id` int(11) DEFAULT NULL,
  `album_author` varchar(60) DEFAULT NULL,
  `album_count` int(11) DEFAULT '0',
  `album_cover` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_album`
--

INSERT INTO `tbl_album` (`album_id`, `album_nama`, `album_tanggal`, `album_pengguna_id`, `album_author`, `album_count`, `album_cover`) VALUES
(5, 'Drill Evacuation', '2018-04-10 18:10:24', 5, 'Hesen Dwi Yatmiko', 6, '182f5ba41446fe20e21846b15bdb405a.JPG'),
(6, 'K3 Workshop 7 Juli 2018', '2018-07-10 01:49:08', 8, 'Anisa', 1, '63acb8b1b7a25e73406f5ab855a1a94b.JPG');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_department`
--

CREATE TABLE `tbl_department` (
  `department_id` int(11) NOT NULL,
  `department_nama` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_department`
--

INSERT INTO `tbl_department` (`department_id`, `department_nama`) VALUES
(1, 'Adm Produksi'),
(2, 'Comercial'),
(3, 'Component'),
(4, 'Cutting'),
(5, 'Driver & Courier'),
(6, 'Embro'),
(7, 'Exim'),
(8, 'Finance'),
(9, 'Finishing'),
(10, 'HR & GA'),
(11, 'IE & Planning'),
(12, 'IT'),
(13, 'LAB'),
(14, 'LPK'),
(15, 'Maintenance & Utility'),
(16, 'Marketing'),
(17, 'Mechanic'),
(18, 'Merchandising'),
(19, 'PPIC'),
(20, 'Product Development'),
(21, 'Production'),
(22, 'Purchase'),
(23, 'QA'),
(24, 'QC'),
(25, 'Sample'),
(27, 'Staff'),
(28, 'Warehouse'),
(29, 'Washing'),
(30, 'Other'),
(31, 'Line 1'),
(32, 'Line 2'),
(35, 'Line 3'),
(36, 'Line 4'),
(37, 'Line 5'),
(38, 'Line 6'),
(39, 'Line 7'),
(40, 'Line 8'),
(41, 'Line 9'),
(42, 'Line 10'),
(43, 'Line 11'),
(44, 'Line 12'),
(45, 'Line 13'),
(46, 'Line 14'),
(47, 'Line 15'),
(48, 'Line 16'),
(49, 'Subcont');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_diagnosis`
--

CREATE TABLE `tbl_diagnosis` (
  `diagnosis_id` int(20) NOT NULL,
  `diagnosis_nama` varchar(150) DEFAULT NULL,
  `diagnosis_register` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_diagnosis`
--

INSERT INTO `tbl_diagnosis` (`diagnosis_id`, `diagnosis_nama`, `diagnosis_register`) VALUES
(1, 'Penyakitt Dalam', '2018-07-21 05:47:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_files`
--

CREATE TABLE `tbl_files` (
  `file_id` int(11) NOT NULL,
  `file_judul` varchar(120) DEFAULT NULL,
  `file_deskripsi` text,
  `file_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `file_oleh` varchar(60) DEFAULT NULL,
  `file_download` int(11) DEFAULT '0',
  `file_data` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_files`
--

INSERT INTO `tbl_files` (`file_id`, `file_judul`, `file_deskripsi`, `file_tanggal`, `file_oleh`, `file_download`, `file_data`) VALUES
(15, 'Kepmen Menaker No 68 Tahun 2004 tentang Pencegahan dan Penanggulangan HIV/AIDS di Tempat Kerja', 'Kepmen Menaker No 68 Tahun 2004 tentang Pencegahan dan Penanggulangan HIV AIDS di Tempat Kerja', '2018-06-13 03:20:57', 'Anisa', 0, 'c89f2dac51e0010aac9b452054217263.pdf'),
(16, 'Kepmen Menaker No 75 Tahun 2002 tentang Pemberlakuan SNI No SNI-04-0225-2000 Mengenai Persyaratan Umum Instalasi Listrik', 'Kepmen Menaker No 75 Tahun 2002 tentang Pemberlakuan SNI No SNI-04-0225-2000 Mengenai Persyaratan Umum Instalasi Listrik 2000', '2018-06-13 03:21:37', 'Anisa', 0, 'dfbfae799e685c3be20a3ac752df0b78.pdf'),
(17, 'Kepmen Menaker No 186 Tahun 1999 tentang Penanggulangan Kebakaran di Tempat Kerja', 'Kepmen Menaker No 186 Tahun 1999 tentang Penanggulangan Kebakaran di Tempat Kerja', '2018-06-13 03:21:58', 'Anisa', 0, '4c28d6e036f7150d42871f5caae1657a.pdf'),
(18, 'Kepmen Menaker No 187 Tahun 1999 tentang Pengendalian Bahan Kimia Berbahaya', 'Kepmen Menaker No 187 Tahun 1999 tentang Pengendalian Bahan Kimia Berbahaya', '2018-06-13 03:22:16', 'Anisa', 0, '4e96b1a2b832970e19c08eeb966088c3.pdf'),
(19, 'Kepmen Menaker No 245 Tahun 1990 tentang Hari Keselamatan Kerja Nasional', 'Kepmen Menaker No 245 Tahun 1990 tentang Hari Keselamatan Kerja Nasional', '2018-06-13 03:22:39', 'Anisa', 0, '387f56ddbeaaac33790cda4905f01623.pdf'),
(20, 'Kepmen Menaker No 333 Tahun 1989 tentang Diagnosis dan Pelaporan Penyakit Akibat Kerja', 'Kepmen Menaker No 333 Tahun 1989 tentang Diagnosis dan Pelaporan Penyakit Akibat Kerja', '2018-06-13 03:23:20', 'Anisa', 0, '2956f59ce0e00d55bee5ada10cba252d.pdf'),
(21, 'Permenaker No 01 Tahun 1976 tentang Wajib Latihan Hyperkes bagi Dokter Perusahaan', 'Permenaker No 01 Tahun 1976 tentang Wajib Latihan Hyperkes bagi Dokter Perusahaan', '2018-06-13 03:26:08', 'Anisa', 0, '2577724e784627fc629e23464d0af992.pdf'),
(22, 'Permenaker No 01 Tahun 1979 tentang Latihan Hygine Perusahaan, K3 Paramedis Perusahaan', 'Permenaker No 01 Tahun 1979 tentang Latihan Hygine Perusahaan, K3 Paramedis Perusahaan', '2018-06-13 03:26:23', 'Anisa', 0, '4a4eb688e6177c9b9a13b8ced1c30e32.pdf'),
(23, 'Permenaker No 01 Tahun 1981 tentang Kewajiban Melapor Penyakit Akibat Kerja', 'Permenaker No 01 Tahun 1981 tentang Kewajiban Melapor Penyakit Akibat Kerja', '2018-06-13 03:26:38', 'Anisa', 0, '852880085d566b6e400d8285606bed4b.pdf'),
(24, 'Permenaker No 01 Tahun 2007 tentang Pedoman Pemberian Penghargaan Keselamatan dan Kesehatan Kerja', 'Permenaker No 01 Tahun 2007 tentang Pedoman Pemberian Penghargaan Keselamatan dan Kesehatan Kerja', '2018-06-13 03:27:18', 'Anisa', 0, 'a9d89f888795809f7a184d98478e0012.pdf'),
(25, 'Permenaker No 02 Tahun 1980 tentang Pemeriksaan Kesehatan Tenaga Kerja dalam Penyelenggaraan Tenaga Kerja', 'Permenaker No 02 Tahun 1980 tentang Pemeriksaan Kesehatan Tenaga Kerja dalam Penyelenggaraan Tenaga Kerja', '2018-06-13 03:27:32', 'Anisa', 0, 'a9478eb2ec047dc58ea7d47b07bb9f1f.pdf'),
(27, 'Permenaker No 02 Tahun 1989 tentang Pengawasan Instalasi Penyalur Petir', 'Permenaker No 02 Tahun 1989 tentang Pengawasan Instalasi Penyalur Petir', '2018-06-13 03:28:23', 'Anisa', 0, '56f920d6103cabaa2140fcbfd78cf2b7.pdf'),
(28, 'Permenaker No 03 Tahun 1982 tentang Pelayanan Kesehatan Tenaga Kerja', 'Permenaker No 03 Tahun 1982 tentang Pelayanan Kesehatan Tenaga Kerja', '2018-06-13 03:28:40', 'Anisa', 0, '4b92e2576854adde0935173a136343a9.pdf'),
(29, 'Permenaker No 03 Tahun 1998 tentang Tata Cara Pelaporan dan Pemeriksaan Kecelakaan', 'Permenaker No 03 Tahun 1998 tentang Tata Cara Pelaporan dan Pemeriksaan Kecelakaan', '2018-06-13 03:29:00', 'Anisa', 0, '46118ba865eef29fd1c0a310a9978ccb.pdf'),
(30, 'Permenaker No 04 Tahun 1980 tentang Syarat Pemasangan dan Pemeliharaan APAR', 'Permenaker No 04 Tahun 1980 tentang Syarat Pemasangan dan Pemeliharaan APAR', '2018-06-13 03:29:32', 'Anisa', 0, '97685ce5fd8521512f0b27e16ae56504.pdf'),
(32, 'Permenaker No 04 Tahun 1987 tentang Panitia Pembina K3 Serta Cara Penunjukan Ahli', 'Permenaker No 04 Tahun 1987 tentang Panitia Pembina K3 Serta Cara Penunjukan Ahli', '2018-06-13 03:30:27', 'Anisa', 0, '1d1f2ae6777005cf595a5255747fc177.pdf'),
(33, 'Permenaker No 04 Tahun 1993 tentang Jaminan Kecelakaan Kerja', 'Permenaker No 04 Tahun 1993 tentang Jaminan Kecelakaan Kerja', '2018-06-13 03:30:42', 'Anisa', 0, '1ac6a0b2cc97a32fb19727764ab1c15f.pdf'),
(34, 'Permenaker No 05 Tahun 1985 tentang Pesawat Angkat dan Angkut', 'Permenaker No 05 Tahun 1985 tentang Pesawat Angkat dan Angkut', '2018-06-13 03:30:56', 'Anisa', 0, '9aaf8b1fbd7bf1772276b2266d6fa1f9.pdf'),
(35, 'Permenaker No 08 Tahun 2010 tentang Alat Pelindung Diri', 'Permenaker No 08 Tahun 2010 tentang Alat Pelindung Diri', '2018-06-13 03:31:22', 'Anisa', 0, 'ea7525a7bc1c382772a1edc226777938.pdf'),
(36, 'Permenaker No 15 Tahun 2008 tentang P2K di Tempat Kerja', 'Permenaker No 15 Tahun 2008 tentang P2K di Tempat Kerja', '2018-06-13 03:31:41', 'Anisa', 0, 'a4e3287375206bf6bae1e2d81b935f2f.pdf'),
(37, 'Permenaker TK No 02 Tahun 1983 tentang Instalasi Alarm Kebakaran Automatik  ', 'Permenaker TK No 02 Tahun 1983 tentang Instalasi Alarm Kebakaran Automatik', '2018-06-13 03:31:58', 'Anisa', 0, 'ade57d9c699e77bb4d98b83729dc8725.pdf'),
(38, 'Keppres No 22 Tahun 1993 tentang Penyakit yang Timbul Karena Hubungan Kerja', 'Keppres No 22 Tahun 1993 tentang Penyakit yang timbul karena hubungan kerja', '2018-06-13 03:32:12', 'Anisa', 0, 'd24119b993f120435a4c81771f9900fa.PDF'),
(39, 'Keputusan Direktur Jenderal Pembinaan Pengawasan Ketenagakerjaan No. 89 Tahun 2012 tentang Pembinaan Calon Ahli Keselama', 'Keputusan Direktur Jenderal Pembinaan Pengawasan Ketenagakerjaan No. 89 Tahun 2012 tentang Pembinaan Calon Ahli Keselamatan & Kesehatan Kerja (K3) Spesialis Listrik', '2018-06-13 03:32:37', 'Anisa', 0, 'ed134bf8fd498fc1417428a4faaad146.pdf'),
(40, 'Permen Perburuhan No 7 Tahun 1964 Tentang Syarat Kerja', 'Permen Perburuhan No 7 Tahun 1964 Tentang Syarat Kerja', '2018-06-13 03:33:10', 'Anisa', 0, '7724169ee67931db65ae97194809bd80.pdf'),
(41, 'PP No 50 Tahun 2012 Tentang SMK3', 'PP No 50 Tahun 2012 Tentang SMK3', '2018-06-13 03:33:31', 'Anisa', 0, '0b5c9ecf93a4ee8cfe384bd0abe9ee14.pdf'),
(42, 'UU No 1 Tahun 1970 tentang Keselamatan Kerja', 'UU No 1 Tahun 1970 tentang Keselamatan Kerja', '2018-06-13 03:33:44', 'Anisa', 0, '3af77dfa38cc31aef0af3b8990de04ac.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_galeri`
--

CREATE TABLE `tbl_galeri` (
  `galeri_id` int(11) NOT NULL,
  `galeri_judul` varchar(60) DEFAULT NULL,
  `galeri_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `galeri_gambar` varchar(40) DEFAULT NULL,
  `galeri_album_id` int(11) DEFAULT NULL,
  `galeri_pengguna_id` int(11) DEFAULT NULL,
  `galeri_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_galeri`
--

INSERT INTO `tbl_galeri` (`galeri_id`, `galeri_judul`, `galeri_tanggal`, `galeri_gambar`, `galeri_album_id`, `galeri_pengguna_id`, `galeri_author`) VALUES
(4, 'Diskusi Pemilihan Ketua Osis', '2017-01-20 23:04:29', '9b10fa300633f62f105e9b52789fc8f3.jpg', 3, 1, 'M Fikri Setiadi'),
(5, 'Panitia Pemilu Osis', '2017-01-21 13:12:56', '0ec0c2f9aae6501d7ed7930995d48b57.jpg', 3, 1, 'M Fikri Setiadi'),
(6, 'Proses Pemilu Osis', '2017-01-21 13:13:19', 'bfbe6cc1c8096f5f36c68e93da53c248.jpg', 3, 1, 'M Fikri Setiadi'),
(7, 'Belajar dengan native speaker', '2017-01-23 10:25:58', '831e5ad43ccc3c851d50c128ff095541.jpg', 1, 1, 'M Fikri Setiadi'),
(8, 'Diskusi dengan native speaker', '2017-01-23 10:26:41', '84afbf1d3ad45932f1d7ac47b8a00949.jpg', 1, 1, 'M Fikri Setiadi'),
(9, 'Foto bareng native speaker', '2017-01-23 10:27:04', 'a99ab060d5d5bf8c96f24fe385f7dd8b.jpg', 1, 1, 'M Fikri Setiadi'),
(10, 'Foto bareng native speaker', '2017-01-23 10:28:16', 'd70cedba6391b7b3c74b914efd82953f.jpg', 1, 1, 'M Fikri Setiadi'),
(11, 'Foto bareng native speaker', '2017-01-23 10:28:30', '10de99f425b9961ce1e87c5e5575f8f4.jpg', 1, 1, 'M Fikri Setiadi'),
(12, 'Belajar sambil bermain', '2017-01-23 10:31:18', '9df82241493b94d1e06b461129cf57b2.jpg', 4, 1, 'M Fikri Setiadi'),
(13, 'Belajar sambil bermain', '2017-01-23 10:31:31', '5374415f11683ad6dd31572a7bbf8a7b.jpg', 4, 1, 'M Fikri Setiadi'),
(14, 'Belajar komputer programming', '2017-01-23 10:32:00', '82b91bd35706b21c3ab04e205e358eb6.jpg', 4, 1, 'M Fikri Setiadi'),
(15, 'Belajar komputer programming', '2017-01-23 10:32:10', '93048f2a103987bce8c8ec8d6912de06.jpg', 4, 1, 'M Fikri Setiadi'),
(16, 'Belajar komputer programming', '2017-01-23 10:32:20', '41f46be181f2f8452c2041b5e79a05a5.jpg', 4, 1, 'M Fikri Setiadi'),
(17, 'Belajar sambil bermain', '2017-01-23 10:32:44', '2858b0555c252690e293d29b922ba8e6.jpg', 4, 1, 'M Fikri Setiadi'),
(18, 'Makan bersama', '2017-01-23 10:33:00', '90d67328e33a31d3f5eecd7dcb25b55d.jpg', 4, 1, 'M Fikri Setiadi'),
(19, 'Petugas PMK Menuju Titik Api', '2018-04-10 18:12:18', 'a6e4418d356baed3563242870337e4e5.JPG', 5, 5, 'Hesen Dwi Yatmiko'),
(20, 'Mobil Ambulance Menuju ke Pabrik', '2018-04-10 18:13:32', '756fdc3eee1cf87a6f96f1581c7510ea.JPG', 5, 5, 'Hesen Dwi Yatmiko'),
(21, 'Karyawan di evakuasi ke luar gedung', '2018-04-10 18:14:47', '25f1d69bf4f7e492f5d15e4534f47f1c.JPG', 5, 5, 'Hesen Dwi Yatmiko'),
(22, 'Dua unit mobil damkar dikerahkan dari BPBD Bantul dan Kasiha', '2018-04-10 18:16:13', 'ebdf218cec0657895381dfffd1cc377f.JPG', 5, 5, 'Hesen Dwi Yatmiko'),
(23, 'Evaluasi ', '2018-04-10 18:19:34', '111caa2f1dec2daaef0a65ca3aacf12c.JPG', 5, 5, 'Hesen Dwi Yatmiko'),
(24, 'Foto Bersama ', '2018-04-10 18:20:58', '23158f55f942bf69999b88cc11733a2e.JPG', 5, 5, 'Hesen Dwi Yatmiko'),
(25, 'Foto bersama', '2018-07-10 02:42:51', '0a1a0b453c303bcda337b40489d926e3.JPG', 6, 8, 'Anisa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_guru`
--

CREATE TABLE `tbl_guru` (
  `guru_id` int(11) NOT NULL,
  `guru_nip` varchar(30) DEFAULT NULL,
  `guru_nama` varchar(70) DEFAULT NULL,
  `guru_jenkel` varchar(2) DEFAULT NULL,
  `guru_tmp_lahir` varchar(80) DEFAULT NULL,
  `guru_tgl_lahir` varchar(80) DEFAULT NULL,
  `guru_mapel` varchar(120) DEFAULT NULL,
  `guru_photo` varchar(40) DEFAULT NULL,
  `guru_tgl_input` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_guru`
--

INSERT INTO `tbl_guru` (`guru_id`, `guru_nip`, `guru_nama`, `guru_jenkel`, `guru_tmp_lahir`, `guru_tgl_lahir`, `guru_mapel`, `guru_photo`, `guru_tgl_input`) VALUES
(9, '2', 'Dinas Pemadam Kebakaran Bantul', 'L', '-', '-', '0274 - 6462100', 'efb9583c711b353e8aa896b1a6ea21d8.jpg', '2018-04-10 19:15:12'),
(10, '3', 'RS PKU Muhamadiyah Bantul', 'L', '-', '-', '0274 - 367437', '7bc8e0cfc1f2e8a6716e8e7d6c3ba2b3.png', '2018-04-10 19:17:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_improvement`
--

CREATE TABLE `tbl_improvement` (
  `improvement_id` int(11) NOT NULL,
  `improvement_cluster` varchar(200) DEFAULT NULL,
  `improvement_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `improvement_ketua` varchar(200) DEFAULT NULL,
  `improvement_tanggal_kejadian` date DEFAULT NULL,
  `improvement_masalah` text,
  `improvement_area_perbaikan` varchar(90) DEFAULT NULL,
  `improvement_perbaikan` text,
  `improvement_by_rencana` varchar(200) DEFAULT NULL,
  `improvement_author` varchar(60) DEFAULT NULL,
  `improvement_tanggal_rencana` date DEFAULT NULL,
  `improvement_status` varchar(50) DEFAULT NULL,
  `improvement_progres` text,
  `improvement_by_target` varchar(100) DEFAULT NULL,
  `improvement_tanggal_penyelesaian` date DEFAULT NULL,
  `improvement_photo_temuan` varchar(40) DEFAULT NULL,
  `improvement_photo_perbaikan` varchar(40) DEFAULT NULL,
  `improvement_photo_temuan1` varchar(40) DEFAULT NULL,
  `improvement_photo_temuan2` varchar(40) DEFAULT NULL,
  `improvement_photo_temuan3` varchar(40) DEFAULT NULL,
  `improvement_photo_temuan4` varchar(40) DEFAULT NULL,
  `improvement_photo_perbaikan1` varchar(40) DEFAULT NULL,
  `improvement_photo_perbaikan2` varchar(40) DEFAULT NULL,
  `improvement_photo_perbaikan3` varchar(40) DEFAULT NULL,
  `improvement_photo_perbaikan4` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_improvement`
--

INSERT INTO `tbl_improvement` (`improvement_id`, `improvement_cluster`, `improvement_tanggal`, `improvement_ketua`, `improvement_tanggal_kejadian`, `improvement_masalah`, `improvement_area_perbaikan`, `improvement_perbaikan`, `improvement_by_rencana`, `improvement_author`, `improvement_tanggal_rencana`, `improvement_status`, `improvement_progres`, `improvement_by_target`, `improvement_tanggal_penyelesaian`, `improvement_photo_temuan`, `improvement_photo_perbaikan`, `improvement_photo_temuan1`, `improvement_photo_temuan2`, `improvement_photo_temuan3`, `improvement_photo_temuan4`, `improvement_photo_perbaikan1`, `improvement_photo_perbaikan2`, `improvement_photo_perbaikan3`, `improvement_photo_perbaikan4`) VALUES
(2, 'Chemical Safety', '2018-11-27 01:28:39', 'Alfana Bakhtian', '2018-11-23', 'There were unlabeled chemical put beside water bottle in drinking water station', 'Warehouse', '', '', 'Etsha Ayomi', '0000-00-00', '', '', '', '0000-00-00', 'Array', 'Array', '6b465bab9d899321cea5b20b161c2304.jpg', '', '', '', NULL, NULL, NULL, NULL),
(3, 'Electrical Safety', '2018-11-27 02:08:53', 'Heri Setiawan', '2018-11-23', 'It was found that there were no rubber mat and sign under the electrical panel.', 'Warehouse', 'dilakukan pemasangan rubber mate secara permanent agar tidak hilang / rusak terkena troli dan tanda bahaya', 'Heri Setiawan', 'Heri Setiawan', '2018-11-27', 'DONE', 'sudah dilakukan pemasangan rubber mate secara permanent agar tidak hilang / rusak terkena troli dan tanda bahaya', 'Heri Setiawan', '2018-11-28', 'Array', 'Array', 'db64262b555c486744d6934dbf25bf3a.jpg', '', '', '', '129d94c2c22bad372fcb4e510305d5ea.jpg', '', '', ''),
(4, 'Emergency and Evacuation', '2018-11-27 04:06:46', 'Ifan Widayat', '2018-11-23', 'There were no step arrows in warehouse stairs.', 'Warehouse', '', '', 'Etsha Ayomi', '0000-00-00', '', '', '', '0000-00-00', 'Array', 'Array', 'b2a985d88662984e73a19ed8106fb90f.jpg', '', '', '', NULL, NULL, NULL, NULL),
(5, 'Emergency and Evacuation', '2018-11-27 04:12:42', 'Ifan Widayat', '2018-11-23', 'Some evacuation paths were found blocked with stool/workers', 'Component', '', '', 'Etsha Ayomi', '0000-00-00', '', '', '', '0000-00-00', 'Array', 'Array', '23e6c02455a7fd45d4fd1a8f58bc7e23.jpg', 'b35cd3e9675fa90119f20103c2b18b74.jpg', '', '', NULL, NULL, NULL, NULL),
(6, 'Ergonomi', '2018-11-27 04:15:36', 'Nasucha', '2018-11-23', 'Thin standing pads were still in use.', 'Component', '', '', 'Etsha Ayomi', '0000-00-00', '', '', '', '0000-00-00', 'Array', 'Array', '170390bdeb18af152667218b7a1275da.jpg', '', '', '', NULL, NULL, NULL, NULL),
(7, 'Chemical Safety', '2018-11-27 05:21:08', 'Alfana Bakhtian', '2018-11-23', 'There were unlabeled chemical in Printing area.', 'Embro', '', '', 'Etsha Ayomi', '0000-00-00', '', '', '', '0000-00-00', 'Array', 'Array', '519fddd7f89e5dcf0033182d024b62e4.jpg', '', '', '', NULL, NULL, NULL, NULL),
(8, 'Emergency and Evacuation', '2018-11-28 06:05:25', 'Ifan Widayat', '2018-11-23', 'During audit date, there was box blocking the evacuation path.', 'Cutting', '', '', 'Etsha Ayomi', '0000-00-00', '', '', '', '0000-00-00', 'Array', 'Array', '7cd86152044353913a9dd7f2bb3ad8f0.jpg', '', '', '', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_inbox`
--

CREATE TABLE `tbl_inbox` (
  `inbox_id` int(11) NOT NULL,
  `inbox_nama` varchar(40) DEFAULT NULL,
  `inbox_email` varchar(60) DEFAULT NULL,
  `inbox_kontak` varchar(20) DEFAULT NULL,
  `inbox_pesan` text,
  `inbox_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `inbox_status` int(11) DEFAULT '1' COMMENT '1=Belum dilihat, 0=Telah dilihat'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(30) DEFAULT NULL,
  `kategori_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`kategori_id`, `kategori_nama`, `kategori_tanggal`) VALUES
(1, 'Pendidikan', '2016-09-05 15:48:40'),
(2, 'Politik', '2016-09-05 15:49:37'),
(3, 'Sains', '2016-09-05 15:59:15'),
(5, 'Penelitian', '2016-09-05 16:19:02'),
(6, 'Prestasi', '2016-09-06 12:50:45'),
(13, 'Olah Raga', '2017-01-12 22:20:07'),
(14, 'Pelatihan', '2018-04-10 14:16:48'),
(15, 'Apar', '2018-04-10 17:38:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kecelakaan_kerja`
--

CREATE TABLE `tbl_kecelakaan_kerja` (
  `kecelakaan_id` int(11) NOT NULL,
  `kecelakaan_jenis` varchar(200) DEFAULT NULL,
  `kecelakaan_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `kecelakaan_nama` varchar(200) DEFAULT NULL,
  `kecelakaan_tanggal_kejadian` date DEFAULT NULL,
  `kecelakaan_nip` varchar(20) DEFAULT NULL,
  `kecelakaan_department` varchar(90) DEFAULT NULL,
  `kecelakaan_waktu_kejadian` varchar(30) DEFAULT NULL,
  `kecelakaan_alat` varchar(200) DEFAULT NULL,
  `kecelakaan_author` varchar(60) DEFAULT NULL,
  `kecelakaan_kronologi` text,
  `kecelakaan_penyebab_utama` text,
  `kecelakaan_hasil_pemeriksaan` text,
  `kecelakaan_rencana_tindakan` text,
  `form_investigasi` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kecelakaan_kerja`
--

INSERT INTO `tbl_kecelakaan_kerja` (`kecelakaan_id`, `kecelakaan_jenis`, `kecelakaan_tanggal`, `kecelakaan_nama`, `kecelakaan_tanggal_kejadian`, `kecelakaan_nip`, `kecelakaan_department`, `kecelakaan_waktu_kejadian`, `kecelakaan_alat`, `kecelakaan_author`, `kecelakaan_kronologi`, `kecelakaan_penyebab_utama`, `kecelakaan_hasil_pemeriksaan`, `kecelakaan_rencana_tindakan`, `form_investigasi`) VALUES
(9, 'Tertusuk Jarum', '2018-07-13 06:28:41', 'Titi Jayanti', '2018-07-13', '3042', '48', '10:00', 'Mesin Jahit', 'Anisa', 'jari telunjuk tangan kanan terkena jarum saat menjahit', 'human error ', 'jari telunjuk tangan kanan robek kecil', 'Dilakukan training refreshment tentang keselamatan kerja dan memastikan mesin terpasang needle guard sebelum bekerja', NULL),
(10, 'Tertusuk Jarum', '2018-07-13 14:16:14', 'Anggi Oktavia Dewi', '2018-07-09', '2150', '41', '11:00', 'Mesin Jahit', 'Klinik', 'Jari telunjuk tangan kanan terkena jarum saat menjahit baju', 'human eror', 'jari telunjuk tangan kanan robek', '', NULL),
(12, 'Terkena Pisau', '2018-07-13 14:37:29', 'Apriliua Dwi Lestari', '2018-07-10', '3574', '35', '13:00', 'Mesin Jahit', 'Klinik', 'Jari telunjuk tangan kiri terkena pisau saat memotong kain', 'human eror', 'Jari telunjuk tangan kiri robek', '', NULL),
(13, 'Terkena Roda Mesin', '2018-07-13 14:40:55', 'Esti Sulami', '2018-07-11', '3404', '45', '11:15', 'Mesin Jahit', 'Klinik', 'Jari jempol kaki kiri terkena roda mesin saat mendorong mesin', 'Human Eror', 'Jari jempol kaki kiri robek dan berdarah ', '', NULL),
(14, 'Terjepit Mesin', '2018-07-13 14:43:38', 'Nurul Munasaroh', '2018-07-11', '8012', '40', '14:00', 'Mesin Jahit', 'Klinik', 'Jari jempol tangan kiri terjepit mesin saat menjahit', 'Human eror', 'Jari jempol tangan kiri robek', '', NULL),
(15, 'Terjepit Mesin', '2018-07-13 14:45:42', 'Rita Pamungkas', '2018-07-11', '3353', '42', '11:00', 'Mesin Jahit', 'Klinik', 'Jari manis tangan kiri terjepit mesin saat menjahit', 'Human Eror', 'Jari manis tangan kiri berdarah', '', NULL),
(16, 'Terkena Obeng', '2018-07-13 14:48:24', 'Rhesferina Dwi Astuti', '2018-07-11', '2007', '47', '10:15', 'Mesin Jahit', 'Klinik', 'Jari tengah tangan kiri terkena obeng saat memperbaiki mesin', 'Human Eror', 'Jari tengah tangan kiri robek dan berdarah', '', NULL),
(17, 'Tertusuk Jarum', '2018-07-17 02:22:00', 'Bekti Sri Rejeki', '2018-07-16', '3733', '42', '15:40', 'Mesin Jahit', 'Klinik', 'Jari telunjuk tangan kiri tertusuk jarum saat menjahit', 'Human Eror', 'Jari telunjuk tangan kiri robek', '', NULL),
(18, 'Tertusuk Jarum', '2018-07-26 05:37:21', 'Tutik Cahyanti', '2018-07-26', '5891', '40', '09.15', 'Mesin Jahit', 'Klinik', 'jari telunjuk tangan kanan tertusuk jarum saat menjahit', 'human error', 'jari telunjuk tangan kanan luka tertusuk kecil ', '', NULL),
(19, 'Tertusuk Jarum', '2018-07-27 09:16:25', 'ani alfiyah', '2018-07-27', '8551', '9', '15.45', 'Mesin Jahit', 'Klinik', 'jari telunjuk tangan kiri tertusuk jarum saat menjahit', 'human error', 'luka robekan kecil di jari telunjuk tangan kiri', '', NULL),
(20, 'Terjepit meja mesin', '2018-07-27 09:19:19', 'dwi puji lestari', '2018-07-27', '646', '46', '16.00', 'Mesin Jahit', 'Klinik', 'saat sedang keliling line, tanpa sengajatumit  kaki kanan terkena mesin jahit', 'human error ', 'ada luka lecet pada tumit kaki kanan', '', NULL),
(21, 'Tertusuk Jarum', '2018-07-31 07:29:46', 'Anggi Oktavia D.S', '2018-07-31', '2158', '41', '14:30', 'Mesin jahit', 'Klinik', 'Jari telunjuk tangan kiri terkena jarum saat menjahit', 'Human Eror', 'Jari telunjuk tangan kiri sobek', '', NULL),
(22, 'Terkena meja mesin', '2018-08-02 03:52:03', 'Jumiati', '2018-08-02', '1379', '14', '13:00', 'Mesin jahit', 'Etsha Ayomi', 'Jari jempol kaki kanan terkena kaki mesin saat berjalan.', 'Human eror', 'Kaki jempol kaki sobek', 'Dilakukan training refreshment tentang keselamatan kerja', NULL),
(23, 'tertusuk jarum', '2018-08-07 01:41:13', 'sitiati awamullah', '2018-08-07', '7856', '38', '09.00', 'mesin jahit', 'Klinik', 'jari telunjuk tangan kiri tertusuk jarum saat menjahit', 'human error', 'jari telunjuk tangan kiri mengalami robekan kecil', '', NULL),
(24, 'terjepit mesin', '2018-08-10 05:32:28', 'Ima Rohyani', '2018-08-10', '25', '31', '12.45', 'mesin jahit', 'Klinik', 'telapak tangan kanan memar dan lecet akibat terjepit mesin ketika memindahkan mesin', 'kurang berhati-hati', 'telapak tangan kanan memar dan lecet', '', NULL),
(25, 'terkena cekris', '2018-08-10 08:54:40', 'Rumiyati', '2018-08-10', '3382', '42', '16.40', 'gunting cekris', 'Klinik', 'jari telunjuk tangan kiri terkena cekris saat memotong kain', 'human error', 'jari telunjuk tangan kiri robek kecil', '', NULL),
(26, 'kecelakaan lalu lintas', '2018-08-10 08:58:59', 'Nuryanti', '2018-08-08', '1283', '37', '09.00', 'kendaraan (motor)', 'Klinik', 'pasien terjatuh saat mengendarai motor ketika menuju PT. Ameya LSI', 'human Error', 'lutut kanan dan kiri pasien mengalami lecet', '', NULL),
(27, 'Terkena pisau', '2018-08-16 00:46:33', 'Andestya Dwi C', '2018-08-16', '3896', '41', '08.10', 'Mesin jahit', 'Klinik', 'jari telunjuk tangan kiri terkena pisau obras saat menjahit', 'Human eror', 'jari telunjuk tangan kiri sobek', '', NULL),
(28, 'KLL', '2018-08-21 00:34:34', 'Tri Wahyudi', '2018-08-21', '6523', '10', '06.30', 'kendaraan (motor)', 'Klinik', 'pasien terjatuh karena menghindari pengguna jalan lain', '', 'lutut sebelah kanan mengalami dan jari kaki sebelah  luka lecet sedang', '', NULL),
(29, 'tertusuk jarum', '2018-08-23 02:52:14', 'Jumiyati', '2018-08-21', '599', '32', '16.25', 'mesin jahit', 'Klinik', 'jari telunjuk tangan kiri tertusuk jarum saat menjahit', 'human error', 'jari telunjuk tangan kiri robek kecil', '', NULL),
(30, 'Terjatuh dari motor', '2018-08-30 01:09:41', 'Jumiati', '2018-08-30', '1379', '39', '08:00', 'motor', 'Klinik', 'pasien berangkat kerja tiba-tiba saat naik motor pusing dan gliyer, pasien jatuh dari motor dan pingsan,sadar-sadar sudah di rumah warga.', 'Human Error', 'pergelangan kaki kiri sakit buat jalan,dan pasien pusing, tidak muntah', '', NULL),
(31, 'Terkena gunting', '2018-08-31 06:15:40', 'Ade Ika Ahmawati', '2018-08-31', '8427', '18', '13:40', 'gunting pemotong', 'Klinik', 'Jari telununjuk tangan kiri terkena gunting saat memotong', 'Human eror', 'Jari telunjuk tangan kiri sobek', '', NULL),
(32, 'terkena cekris', '2018-09-05 05:40:21', 'Linda Fitriyani', '2018-09-04', '6965', '38', '13.02', 'cekris', 'Klinik', 'jari telunjuk tangan kiri terkena cekris saat memotong', 'human error', 'jari telunjuk tangan kiri lecet kecil', '', NULL),
(33, 'KLL', '2018-09-07 09:00:16', 'Endah Dwi. R', '2018-09-07', '8343', '3', '07.00', 'kendaraan (motor)', 'Klinik', 'pasien terjatuh saat perjalanan menuju PT. Ameya LSI', 'human error', 'kaki sebelah kanan lecet-lecet', '', NULL),
(34, 'terkena cekris', '2018-09-19 02:17:40', 'Erna Dewi Ratnasari', '2018-09-19', '8480', '3', '09.15', 'gunting cekris', 'Klinik', 'jari tengah tangan kiri terkena cekris saat menggunting', 'kurang berhati', 'jari tengah tangan kiri robek kecil', '', NULL),
(35, 'terkena jarum', '2018-09-19 06:19:49', 'Sugiyati', '2018-09-19', '2198', '46', '13.15', 'mesin jahit', 'Klinik', 'jari jempol tangan kiri terkena jarum saat menjahit', 'human error', 'terjadi luka lecet di jari jempol tangan kiri', '', NULL),
(36, 'terkena cekris', '2018-09-19 07:09:57', 'siti Afiatun', '2018-09-19', '6875', '45', '14.05', 'gunting cekris', 'Klinik', 'jari tengah tanagn kanan terkena cekris saat memotong', 'human error', 'lecet pada jari tengah tangan kiri', '', NULL),
(37, 'tertusuk jarum', '2018-09-20 09:23:10', 'Murtini', '2018-09-20', '578', '31', '16.45', 'mesin jahit', 'Klinik', 'jari telunjuk tangan kanan terkena jarum', 'human error', 'ada luka robek kecil di jari telunjuk tangan kanan', '', NULL),
(38, 'Tertusuk Jarum', '2018-09-27 04:14:22', 'Indaryanti', '2018-09-27', '4022', '35', '11:15', 'Mesin jahit', 'Klinik', 'telunjuk tangan kiri terkena jarum saat menjahit', 'Human Error', 'jari telunjuk tengah sobek', '', NULL),
(39, 'Terkena Cekris', '2018-09-28 08:10:27', 'Ria Fitriani', '2018-09-28', '8088', '3', '15:10', 'Gunting Cekris', 'Klinik', 'Jari telunjuk tangan kanan terkena cekris saat memotong kain', 'Human Eror', 'Jari Telunjuk tangan kanan sobek', '', NULL),
(40, 'KLL', '2018-09-28 13:55:31', 'Dwi Nuryanti', '2018-09-28', '8598', '4', '20.20', 'kendaraan (motor)', 'Klinik', 'saat menuju perjalan ke ameya karyawan tersebut jatuh dari motor', 'human eror', 'jempol kaki sebelah kiri mengalami vulnus Excoriasi', '', NULL),
(41, 'Tertusuk Jarum', '2018-10-02 00:58:49', 'Fitria Desi Rumekti', '2018-10-02', '2757', '3', '07.50', 'Mesin jahit', 'Klinik', 'jari telunjuk tangan kiri tertusuk jarum', 'human error', 'vulnus Punctum', '', NULL),
(42, 'Tertusuk Jarum', '2018-10-03 06:21:04', 'Niki Rengganis', '2018-10-03', '5977', '3', '11.20', 'Mesin jahit', 'Klinik', 'jari telunjuk tangan kanan terkena jarum', 'human error', 'vulnus exoriasi', '', NULL),
(43, 'Terkena pisau', '2018-10-05 07:15:05', 'Eka Rahayu', '2018-10-05', '3141', '40', '14.13', 'pisau botton hold', 'Klinik', 'ketika mau memasukkan benang, pisau botton hold lepas dan melui jari telunjuk kanan', 'humon error', 'vulnus excoriasi', '', NULL),
(44, 'Terkena pisau', '2018-10-08 08:49:59', 'Rumiyani', '2018-10-08', '22', '39', '16:00', 'pisau botton hold', 'Klinik', 'Jari jempol tangan kanan terkena pisau saat melubang kancing', 'Human Error', '', '', NULL),
(45, 'terjepit mesin', '2018-10-15 02:21:07', 'Wahyu Endah', '2018-10-15', '8755', '3', '08.25', 'Mesin jahit', 'Klinik', 'jari telunjuk tangan kanan terjepit mesin saat akan menjahit', 'human error', 'vulnus laceratum', '', NULL),
(46, 'Terkena pisau', '2018-10-15 02:23:58', 'suprapti', '2018-10-15', '7629', '46', '08.15', 'pisau mesin', 'Klinik', 'ketika sedang mengganti jarum tiba-tiba jari telunjuk tangan kiri terkena pisau mesin', 'human error', 'vulnus laeratum', '', NULL),
(47, 'terjepit mesin', '2018-10-17 08:47:50', 'Nurul Hidayah', '2018-10-16', '6132', '46', '10.20', 'Mesin jahit', 'Klinik', 'Jari tengan tangan kiri terjepit mesin saat menjahit', 'human error', 'vulnus laceratum', '', NULL),
(48, 'terkena nidle gard', '2018-10-17 09:29:53', 'Anisa Wahyu Oktaviani', '2018-10-17', '6461', '42', '11.20', 'Mesin jahit', 'Klinik', 'jari manis tangan kiri terkena nidle gard saat menjahit', 'humon error', 'vulnus laceratum', '', NULL),
(49, 'terkena cekris', '2018-10-19 00:33:46', 'Irawati', '2018-10-19', '7936', '40', '07.30', 'gunting pemotong', 'Klinik', 'lengan dalam tangan kiri terkena cekris saat akan memotong benang', 'humon error', 'lengan dalam tangan kanan mengalami vulnus laceratum', '', NULL),
(50, 'Tertusuk Jarum', '2018-10-23 02:28:58', 'Kurnianingsih', '2018-10-23', '6180', '46', '09:30', 'Mesin jahit', 'Klinik', 'Jari tengah tangan kiri terkena jarum saat menjahit', 'Human eror', 'Jari tengah tangan kiri sobek', '', NULL),
(51, 'Tertusuk Jarum', '2018-10-23 02:30:45', 'Aprinia Sudarti', '2018-10-23', '5549', '31', '09:15', 'Mesin jahit', 'Klinik', 'Jari telunjuk tangan kiri terkena jarum saat menjahit', 'Human eror', 'Jari telunjuk tangan kiri sobek', '', NULL),
(52, 'Terkena cutter', '2018-10-24 07:45:51', 'Norman', '2018-10-24', '5545', '28', '09:50', 'Gunting cutter', 'Klinik', 'Jari telunjuk tangan kanan terkena cutter saat membuka ball kain', 'Human error', 'Jari telunjuk sobek', '', NULL),
(53, 'Terkena Cekris', '2018-10-24 07:49:25', 'Luli Andri Astuti', '2018-10-24', '10244', '32', '14:50', 'Gunting Cekris', 'Klinik', 'Paha kanan sebelah kanan terkena cekris saat memotong kain', 'Human Error', 'Paha kanan sebelah kanan sobek dua titik', '', NULL),
(54, 'Terkena pojokan meja dan lantai bagian kepala', '2018-10-24 08:25:09', 'Erni Siswantari', '2018-10-24', '6787', '25', '10:45', 'Lantai yang tidak rata', 'Klinik', 'Pasien jalan lalu tersandung lantai yang tidak rata sehingga kepala sebelah kanan terbentur pojokan meja dan pasien terjatuh kepala sebelah kanan terbentur lantai', 'Human Error', 'Kepala sebelah kanan benjol dan pasien mual muntah', '', NULL),
(55, 'Terkena Jarum', '2018-10-25 07:48:04', 'Tri Widiastuti', '2018-10-25', '8573', '43', '15:00', 'Mesin jahit', 'Klinik', 'Jari telunjuk tangan kanan terkena jarum saat menjahit', 'Human Eror', 'Jari telunjuk tangan kanan sobek', '', NULL),
(56, 'Terjatuh dari motor', '2018-10-29 00:35:02', 'Mita Prastika Dinarini', '2018-10-29', '8775', '36', '07.15', 'motor', 'Klinik', 'pasien mengalami kecelakaan saat menuju ke PT. Ameya LSI', 'humon error', 'nyeri kaki kiri dan lengan tidak bisa di gerakkan', '', NULL),
(57, 'Terkena Cekris', '2018-10-30 01:40:48', 'Endah Dwi Rahmawati', '2018-10-30', '8343', '3', '08.45', 'Gunting Cekris', 'Klinik', 'jari telunjuk tangan kiri terkena cekris saat memotong', 'humon error', 'vulnus laceratum', '', NULL),
(58, 'Terjatuh dari motor', '2018-11-01 01:07:00', 'Supi Winarsih', '2018-11-01', '6314', '3', '08.10', 'motor', 'Klinik', 'jempol kaki kiri terluka karena jatuh dari motor, perjalan dari rumah pasien ke ALSI', 'human error', 'vulnus laceratum', '', NULL),
(59, 'Tertusuk Jarum', '2018-11-09 08:23:16', 'Ima Rohyani', '2018-11-09', '25', '31', '15:35', 'Mesin jahit', 'Klinik', 'Jari tengah tangan kiri terkena jarum saat menjahit', 'Human Error', 'Jari tengah tangan kiri sobek', '', NULL),
(60, 'Terkena pisau', '2018-11-13 19:04:16', 'David irawan', '2018-11-14', '8772', '4', '02:15', 'Pisau pemotong kain', 'Klinik', 'Jari telunjuk tangan kiri terkena pisau saat memotong kain', 'Human Error', 'Jari telunjuk tangan kiri dagingnya terkelupas', '', NULL),
(61, 'Tertusuk Jarum', '2018-11-15 06:17:49', 'Sumarsih', '2018-11-15', '519', '3', '11.20', 'Mesin jahit', 'Klinik', 'jari tengah tangan kiri tertusuk jarum saat menjahit', 'human error', 'V. Laceratum', '', NULL),
(62, 'Tertusuk Jarum', '2018-11-21 08:07:02', 'Lainatunisa', '2018-11-21', '7819', '44', '15:00', 'Mesin jahit', 'Klinik', 'Jari telunjuk tangan kiri terkena jarum saat menjahit', 'Human Error', 'Jari telunjuk tangan kiri sobek', '', NULL),
(63, 'Terkena pisau', '2018-11-22 07:00:02', 'Rista dwi Indarti', '2018-11-22', '8426', '39', '!4:20', 'Pisau Obras', 'Klinik', 'Jari telunjuk tangan kiri terkena pisau obras saat memotong kain', 'Human error', 'jari telunjuk tangan kiri sobek', '', NULL),
(64, 'tertusuk jarum', '2018-11-27 02:30:38', 'Widya Hanjarani', '2018-11-27', '8824', '35', '09.20', 'mesin jahit', 'Klinik', 'jari telunjuk tangan kiri tertusuk  jarum saat menjahit', 'human error ', 'Vulnus. Laceratum', '', NULL),
(65, 'pisau', '2018-11-27 08:36:27', 'Waljiah', '2018-11-27', '7882', '45', '15.50', 'pisau botton hole', 'Klinik', 'jari telunjuk tangan kanan terkena pisau button hole ketika memasukkan benang ke dalam jarum', 'human error', 'V. Laceratum', '', NULL),
(66, 'terkena pisau cutter', '2018-11-29 00:28:07', 'Muhammad Sadali', '2018-11-28', '10202', '4', '13.10', 'pisau cutter', 'Klinik', 'jari telunjuk dan jari tengah tangan kanan terkena pisau cutter saat memotong kain', 'human error', 'Vulnus Laceratum', '', NULL),
(67, 'terjepit troli', '2018-11-29 01:51:53', 'Susie Susilowati', '2018-11-29', '1498', '9', '10.05', 'troli', 'Klinik', 'jari manis tangan kiri terjepi troli', 'Human error', 'V. Laceratum', '', NULL),
(68, 'tertusuk jarum', '2018-11-30 08:55:37', 'Awal Supanti', '2018-11-30', '2513', '6', '15.40', 'mesin bordir', 'Klinik', 'jari telunjuk tangan kiri tertusuk jarum saat membordir', 'human error', 'V. Laceratum', '', NULL),
(69, 'Tertusuk Jarum', '2018-12-03 05:48:27', 'Aprinia Sudarti', '2018-12-03', '5549', '31', '12:50', 'Mesin jahit', 'Klinik', 'Jari telunjuk tangan kiri terkena jarum saat menjahit', 'Human Error', 'Jari telunjuk tangan kiri sobek', '', NULL),
(70, 'Terkena Cekris', '2018-12-04 02:39:47', 'Fifin Nur Irianti', '2018-12-04', '8840', '37', '10:00', 'Gunting Cekris', 'Klinik', 'Jari telunjuk tangan kiri terkena cekris saat memotong kain', 'Human Error', 'Jari telunjuk tangan kiri sobek', '', NULL),
(71, 'Tertusuk Jarum', '2018-12-05 05:24:02', 'Riska Parwati', '2018-12-05', '3732', '42', '11:30', 'Mesin jahit', 'Klinik', 'Jari kelingking tangan kiri terkena jarum saat menjahit', 'Human Error', 'Jari keligking tangan kiri sobek', '', NULL),
(72, 'terjepit mesin', '2018-12-07 08:45:46', 'Mei Dwi Kristanti', '2018-12-07', '8700', '41', '15.33', 'mesin jahit', 'Klinik', 'jari telunjuk tangan kanan dan kiri terjepit mesin saat memasukkan benang ke jarum', 'human error', 'jari telunjuk tanggan kiri (memar), Jari Telunjuk tangan Kanan V. Laceratum', '', NULL),
(73, 'terkena cekris', '2018-12-11 08:35:27', 'Ambaryanti', '2018-12-11', '10035', '3', '09.30', 'gunting cekris', 'Klinik', 'jari telunjuk tangan kiri terkena cekris saat memotong kain', 'human error', 'Vulnus Laceratum', '', NULL),
(74, 'terkena cekris', '2018-12-11 08:37:14', 'Dewi Purnita Sari', '2018-12-11', '8843', '3', '10.15', 'gunting cekris', 'Klinik', 'Jari telunjuk tangan kiri terkena cekris saat memotong kain', 'human error', 'V. laceratum', '', NULL),
(75, 'tertusuk jarum', '2018-12-12 06:24:54', 'Dwi Suryani', '2018-12-12', '2251', '48', '08.40', 'mesin jahit', 'Klinik', 'jari telunjuk tangan kiri tertusuk  jarum saat menjahit', 'human error', 'Vulnus Laceratum', '', NULL),
(76, 'terkena cekris', '2018-12-12 06:27:20', 'Lia Alfiana', '2018-12-12', '8717', '40', '10.10', 'gunting cekris', 'Klinik', 'jari manis tangan kiri terkena cekris saat memotong kain', 'human error', 'Vulnus Laceratum', '', NULL),
(77, 'Terkena Cekris', '2018-12-17 05:44:38', 'Ria Parmawati', '2018-12-17', '8825', '44', '07:45', 'Gunting Cekris', 'Klinik', 'Jari telunjuk tangan kiri terkena cekris saat memotong kain', 'Human error', 'Jari telunjuk tangan kiri sobek', '', NULL),
(78, 'Terkena pisau', '2018-12-19 00:54:10', 'Anung Eko Setyawan', '2018-12-18', '8448', '4', '17:15', 'Pisau pemotong kain', 'Klinik', 'Jari tengan tangan kanan terkena pisau saat memotong kain', 'Human Error', 'Jari tengah tangan kanan sobek', '', NULL),
(79, 'terkena polibek berisi kain', '2018-12-24 01:11:16', 'Muda Munika Dewi', '2018-12-24', '6348', '45', '07.45', 'polibek berisi kain', 'Klinik', 'jari jempol kaki kiri hampir lepas karena terkena polibek berisi kain, polibek diseret dan mengenai jempol kaki', 'human error', 'onikolisis ', 'rujuk pku', NULL),
(80, 'tertusuk paku', '2018-12-28 09:01:32', 'devi febriyanti', '2018-12-28', '8793', '44', '15.45', 'mesin jahit', 'Klinik', 'jari tengah tangan kiri terkena jarum saat menjahit', 'human error', 'V. Laceratum', '', NULL),
(81, 'Terkena Cekris', '2018-12-31 06:57:17', 'Siti Fatonah', '2018-12-31', '5025', '47', '10', '10:50', 'Klinik', 'Jari telunjuk tangan kiri terkena cekris saat memotong kain', 'Human Eror', 'Jari telunjuk sobek', '', NULL),
(82, ' Terkena Cekris', '2019-01-09 07:03:32', 'Ria Pamungkas', '2019-01-08', '8572', '42', '13:40', 'Gunting Cekris', 'Klinik', 'Pada waktu gunting karet kolor terkena cekris di jari telunjuk tangan kiri', 'Human Error', 'Jari telunjuk tangan kiri sobek', '', NULL),
(83, 'Terjepit mesin', '2019-01-10 04:08:10', 'Marjono', '2019-01-10', '10144', '3', '11:00', 'mesin jahit', 'Klinik', 'Jari jempol tangan kiri terjepit mesin saat memindahkan mesin', 'Human Error', 'Jari jempol tangan kiri sobek', '', NULL),
(84, 'tertusuk jarum', '2019-01-10 07:55:50', 'Endria Wicahyani', '2019-01-10', '8860', '39', '14:35', 'mesin jahit', 'Klinik', 'Jari telunjuk tangan kiri terkena jarum saat menjahit', 'Human Error', 'Jari telunjuk tangan kiri sobek', '', NULL),
(85, 'tertusuk jarum', '2019-01-10 08:00:26', 'Jamzanah', '2019-01-10', '1376', '46', '15:00', 'mesin jahit', 'Klinik', 'Jari telunjuk tangan kanan terkena jarum saat meenjahit', 'Human error', 'Jari telunjuk tangan kiri sobek', '', NULL),
(86, 'Tertusuk jarum', '2019-01-16 01:26:11', 'Dwi Suryani', '2019-01-15', '2251', '48', '14:30', 'mesin jahit', 'Klinik', 'Jari telunjuk tangan kiri terkena jarum saat menjahit', 'Human Error', 'Jari telunjuk tanggan kiri sobek', '', NULL),
(87, 'Terkena Pisau', '2019-01-16 02:07:20', 'Tri Juniarti', '2019-01-16', '8782', '32', '09:00', 'mesin jahit', 'Klinik', 'Pasien sedang menjahit dan memasukan spoel scoci ke dalam mesin,kaki menginjak pedal mesin jahit, jari manis tangan kiri terkena pisau mesin jahit', 'Human Error', 'Jari manis tangan kiri sobek', '', NULL),
(88, 'KLL', '2019-01-18 14:12:07', 'setyaningsih', '2019-01-18', '8167', '24', '20.30', 'motor', 'Klinik', 'lutut kanan dan kiri pasien lecet karena terjatuh dari motor ketika menuju Ameya', 'human error', 'vulnus excoriasi', '', NULL),
(89, 'terkena cekris', '2019-01-21 08:57:34', 'Heni Wahyuningsih', '2019-01-21', '8406', '37', '16.00', 'gunting cekris', 'Klinik', 'jari telunjuk tangan kanan terkena cekris saat memotong kain', 'human error', 'vulnus Laceratum', '', NULL),
(90, 'tertusuk jarum', '2019-01-24 08:39:05', 'Riswanti', '2019-01-24', '2088', '3', '8.50', 'mesin jahit', 'Klinik', 'jari telunjuk tangan kiri terkena jarum saat menjahit', 'human error', 'vulnus Laceratum', '', NULL),
(91, 'Terjepit mesin', '2019-01-25 07:41:01', 'Tri Sulistya', '2019-01-25', '8774', '46', '08.10', 'mesin jahit', 'Klinik', 'jari jempol kaki kanan terjepit mesin', 'human error', 'memar', '', NULL),
(92, 'KLL', '2019-02-07 01:07:13', 'Pebru Budi Utami S', '2019-02-06', '3211', '9', '07.30', 'kendaraan (motor)', 'Etsha', 'pasien terjatuh dari motor saat menuju PT. Ameya', 'human error', 'mata kaki sebelah kiri mengalami lecet-lecet ringan', 'Dilakukan training refreshment tentang keselamatan kerja termasuk keamanan berkendara', NULL),
(93, 'tertusuk jarum', '2019-02-26 09:10:05', 'Hartutik', '2019-02-26', '58', '32', '15:45', 'mesin jahit', 'Etsha', 'Waktu berdiri mau bendel kain jari telunjuk tangan kiri terkena jarum di mesin jahit ', 'Human Error', 'Jari telunjuk tangan kiri sobek', 'Dilakukan training refreshment tentang keselamatan kerja dan memastikan needle guard terpasang dengan baik', NULL),
(94, 'tertusuk jarum', '2019-03-08 06:53:10', 'Fina Kristianti', '2019-03-06', '8344', '35', '16.25', 'mesin jahit', 'Etsha', 'jari telunjuk tangan kiri tertusuk jarum saat menjahit', 'human error', 'V. Laceratum', 'Dilakukan training refreshment tentang keselamatan kerja dan memastikan needle guard terpasang dengan baik', NULL),
(95, 'tertusuk jarum', '2019-03-12 04:23:49', 'Feni Isnawati', '2019-03-12', '8422', '3', '09:00', 'mesin jahit', 'Etsha', 'Jari telunjuk tangan kiri terkena jarum waktu menggeret piping kain', 'Human Error', 'Jari telunjuk tangan kiri sobek', 'Dilakukan training refreshment tentang keselamatan kerja dan memastikan needle guard terpasang dengan baik', NULL),
(96, 'tertusuk jarum', '2019-03-13 08:22:49', 'Fitriyani', '2019-03-13', '8796', '3', '13:05', 'mesin jahit', 'Etsha', 'Jari telunjuk tangan kiri tertusuk jarum saat sedang menjahit', 'Human Error', 'Jari telunjuk tangan kiri sobek', 'Dilakukan training refreshment tentang keselamatan kerja dan memastikan needle guard terpasang dengan baik', NULL),
(97, 'tertusuk jarum', '2019-03-14 02:01:43', 'Tyas Wijayanti', '2019-03-14', '8313', '40', '08:50', 'mesin jahit', 'Etsha', 'Jari manis tangan kiri terkena jarum saat menjahit', 'Human Error', 'Jari manis tangan kiri sobek', 'Dilakukan training refreshment tentang keselamatan kerja dan memastikan needle guard terpasang', NULL),
(98, 'terkena cekris', '2019-03-14 06:26:27', 'Sundari', '2019-03-14', '1340', '41', '09:55', 'mesin jahit', 'Etsha', 'Jari jempol tangan kanan terkena cekris saat memotong kain', 'Human Error', 'Jari jempol tangan kanan sobek', 'Dilakukan training refreshment tentang keselamatan kerja', NULL),
(99, 'terkena pisau cutter', '2019-03-14 16:23:56', 'sumarsih', '2019-03-14', '8409', '4', '23.10', 'pisau cutter', 'Anisa', 'jari telunjuk tangan kiri terkena pisau cekris', 'human error', 'vulnus. laceratum', 'Dilakukan training refreshment tentang keselamatan kerja', NULL),
(100, '6147', '2019-03-15 06:33:58', 'Yasinta Riski', '2019-03-15', '6147', '25', '13:30', 'Mesin Snap', 'Anisa', 'Jari telunjuk tangan kiri terkena snap saat akan memasang snap di baju.', 'Human error', 'Jari telunjuk tangan kiri sobek', 'Dilakukan training refreshment tentang keselamatan kerja dan memastikan mesin dalam kondisi aman sebelum dipakai', NULL),
(101, 'Terkena pisau cutter', '2019-03-25 05:35:57', 'Yuli Pancawati', '2019-03-25', '2980', '43', '11:00', 'mesin jahit', 'Anisa', 'Jari telunjuk tangan kiri terkena pisau obras saat menjahit', 'Human Error', 'Jari telunjuk tangan tangan kiri sobek', 'Dilakukan training refreshment tentang keselamatan kerja dan memastikan mesin terpasang needle guard sebelum bekerja', NULL),
(102, 'terkena pisau cutter', '2019-03-28 06:41:16', 'Heru Dwi Prasetyo', '2019-03-28', '8410', '4', '13:40', 'pisau cutter', 'Anisa', 'Jari telunjuk tangan kiri terkena pisau cutter saat membantu teman mengambil sarung tangan di dekat pisau cutter', 'Human Error', 'Jari telunjuk tangan kiri sobek', 'Dilakukan training refreshment tentang keselamatan kerja', NULL),
(103, 'terjepit troli', '2019-04-01 07:39:32', 'siti nurkhasanah', '2019-04-01', '10134', '24', '09.00', 'troli', 'Etsha', 'jari kaki kiri terjepit troli', 'human error', 'vulnus laceratum', 'Dilakukan training refreshment tentang keselamatan kerja dan APD', NULL),
(104, 'tertusuk jarum', '2019-04-02 06:31:56', 'tris tyastini', '2019-04-02', '6351', '43', '13.25', 'mesin jahit', 'Anisa', 'jempol tangan kiri tertusuk jarum saat menjahit', 'human error', 'vulnus laceratum', 'Dilakukan training refreshment tentang keselamatan kerja dan memastikan mesin terpasang needle guard sebelum bekerja', NULL),
(105, 'terkena pisau button hole', '2019-04-05 07:52:53', 'rias dwi astuti', '2019-04-05', '8517', '41', '14.10', 'mesin jahit', 'Etsha', 'jari tengah tangan kiri terkena pisau button hole saat memasang benang', 'humon error', 'vulnus laceratum', 'Dilakukan training refreshment tentang keselamatan kerja', NULL),
(106, 'terkena cekris', '2019-04-12 05:46:22', 'Ana Ernawati', '2019-04-12', '6270', '44', '10:00', 'cekris', 'Klinik', 'Jari telunjuk tangan kiri terkena cekris saat memotong kain', 'Human Error', 'Jari telunjuk tangan kiri sobek', '', NULL),
(107, 'tertusuk jarum', '2019-04-16 07:27:24', 'astuti', '2019-04-16', '5822', '44', '14.20', 'mesin jahit', 'Klinik', 'jari tengah tangan kiri tertusuk jarum saat menjahit', 'human error', 'vulnus laceratum', '', NULL),
(108, 'KLL', '2019-04-18 09:06:35', 'ari aryanto', '2019-04-18', '10756', '25', '07.45', 'kendaraan (motor)', 'Klinik', 'saat perjalanan dari rumah menuju ameya, pasien mengalami kecelakkan di daerah magelang', '', 'punggung mengalami lecet dan memar, telinga (vulnus Laceratum) dan kepala terlihat memar ', '', NULL),
(109, 'terkena cekris', '2019-04-23 01:15:58', 'Ika Setyaningsih', '2019-04-22', '5083', '47', '09:10', 'cekris', 'Klinik', 'Jari tengah tangan kiri terkena cekris saat memotong kain', 'Human Error', 'Jari tengah tangan kiri sobek', '', NULL),
(110, 'tertusuk jarum', '2019-04-24 08:10:40', 'Ana Ernawati', '2019-04-24', '6270', '45', '09:45', 'cekris', 'Klinik', 'Jari telunjuk tangan kiri terkena jarum saat menjahit baju', 'Human error', 'Jari telunjuk tangan kiri sobek', '', NULL),
(111, 'terkena pisau mesin jahit', '2019-04-24 08:19:32', 'Bekti Sri Rejeki', '2019-04-24', '3733', '42', '11:00', 'pisau mesin jahit', 'Klinik', 'Jari telunjuk tangan kiri terkena jarum saat menjahit', 'Human Error', 'Jari telunjuk tangan kiri sobek', '', NULL),
(112, 'tertusuk jarum', '2019-04-30 06:22:43', 'rohayati', '2019-04-30', '3272', '3', '11.10', 'mesin jahit', 'Klinik', 'jari telunjuk tangan kiri tertusuk jarum saat menjahit', 'human error', 'vulnus laceratum', '', NULL),
(113, 'terkena jarum', '2019-05-10 07:28:57', 'Rohayati', '2019-05-10', '3278', '3', '14:00', 'mesin jahit', 'Klinik', 'Jari telunjuk tangan kiri terkena jarum saat menjahit', 'Human Error', 'Jari telunjuk tangan kiri sobek', '', NULL),
(114, 'tersandung meja potong cutting', '2019-05-10 19:40:42', 'rohadi', '2019-05-11', '5052', '4', '02.05', 'meja potong cutting', 'Klinik', 'kaki sebelah kiri luka terbuka pada jempol kiri (kuku pada jempol kiri hampir lepas)', 'human eror', 'luka terbuka (kuku pada jempol kiri hampir lepas)', '', NULL),
(115, 'tertusuk jarum', '2019-05-15 00:10:50', 'titi jayanti', '2019-05-15', '3042', '43', '07.05', 'mesin jahit', 'Klinik', 'jari telunjuk tangan kanan tertusuk jarum saat menjahit', 'human error', 'vulnus laceratum', '', NULL),
(116, 'trauma mata ', '2019-05-15 06:36:51', 'murtini', '2019-05-15', '977', '24', '13.45', 'pulpen', 'Klinik', 'mata sebelah kiri mengalami trauma karena tertusuk pulpen', 'human error', 'trauma pada mata (memerah & berdarah)', 'rujuk PKU', NULL),
(117, 'terkena pisau cutter', '2019-05-24 20:17:07', 'marlinda widiastuti ', '2019-05-25', '7191', '4', '02.55', 'pisau cutter', 'Klinik', 'jari manis tangan kanan tertekana pisa cutter saat ', 'human error', 'vulnus laceratum', '', NULL),
(118, 'tertusuk jarum', '2019-05-28 08:04:57', 'millania Nurfitri', '2019-05-28', '8941', '48', '10.13', 'jarum jahit', 'Klinik', 'jempol kanan tertusuk jarum saat menjahit', 'human error', 'vulnus laceratum', '', NULL),
(119, 'tertusuk jarum', '2019-05-29 08:22:45', 'fitriyana', '2019-05-29', '3205', '39', '15.15', 'jarum jahit', 'Klinik', 'jari telunjuk tangan kiri tertusuk jarum saat menjahit', 'human error', 'vulnus laceratum', '', NULL),
(120, 'terkena cekris', '2019-05-31 00:40:11', 'tusriah', '2019-05-31', '503', '2', '07.40', 'gunting cekris', 'Klinik', 'jempol tangan kanan terkena gunting cekris saat memotong', 'human error', 'vulnus laceratum', '', NULL),
(121, 'tertusuk jarum', '2019-06-13 01:22:31', 'Wahyu wulandari', '2019-06-13', '7919', '25', '08:30', 'mesin jahit', 'Klinik', 'Jari telunjuk tangan kiri terkena jarum saat menjahit', 'Human Error', 'Jari telunjuk tangan kiri sobek', '', NULL),
(122, 'terkena cekris', '2019-06-26 05:47:07', 'Okti Fiana Putri', '2019-06-26', '8683', '31', '09.20', 'gunting cekris', 'Klinik', 'jari telunjuk tangan kiri terkena cekris saat memotong kain', 'Human error', 'jari telunjuk tangan kiri sobek', '', NULL),
(123, 'tertusuk jarum', '2019-06-28 06:37:33', 'Ratna Ningrum', '2019-06-28', '8548', '47', '07:30', 'mesin jahit', 'Klinik', 'Jari jempol tangan kiri terkena jarum saat menjahit', 'Human Error', 'Jari jempol tangan kiri luka', '', NULL),
(124, 'tertusuk jarum', '2019-07-02 08:54:41', 'lestari ningsih', '2019-07-02', '1606', '3', '15.40', 'mesin jahit', 'Klinik', 'jari telunjuk tangan kanan tertusuk jarum saat menjahit', 'human eror', 'vulnus laceratum', '', NULL),
(125, 'terjepit mesin', '2019-07-03 08:23:51', 'Oktavia Fitriani', '2019-01-03', '5701', '3', '15.20', 'mesin jahit', 'Klinik', 'jari telunjuk tangan kiri terjepit mesin jahit saat sedang menjahit', 'human error', 'vulnus laceratum', '', NULL),
(126, 'terjepit mesin', '2019-07-09 01:50:33', 'Norma Ida', '2019-07-09', '8792', '31', '08:30', 'mesin jahit', 'Klinik', 'Jari tengah tangan kiri terjepit mesin saat menjahit', 'human error\n', 'Jari tengan tangan kiri sobek', '', NULL),
(127, 'tertusuk jarum', '2019-07-10 06:18:16', 'Latifah Dewi Astuti', '2019-07-10', '8687', '42', '08:45', 'mesin jahit', 'Klinik', 'Jari telunjuk tangan kanan terkena jarum saat menjahit', 'Humam Error', 'Jari telun juk tangan kanan sobek', '', NULL),
(128, 'terkena cekris', '2019-07-11 02:22:55', 'Hana Solikkah', '2019-07-11', '9011', '37', '09:00', 'gunting cekris', 'Klinik', 'jari telunjuk tangan kiri terkena cekris saat memotong kain', 'Human Error', 'jari telunjuk tangan kiri sobek', '', NULL),
(129, 'terkena pisau cutter', '2019-07-12 06:02:21', 'Anis Atun Amri', '2019-07-12', '8707', '3', '10:55', 'pisau cutter', 'Klinik', 'Jari telunjuk tangan kanan terkena pisau saat memotong kain', 'Human Error', 'Jari telunjuk tangan kanan sobek', '', NULL),
(130, 'tertusuk jarum', '2019-07-18 08:46:18', 'dwi susanti', '2019-07-18', '7776', '45', '15.25', 'mesin jahit', 'Klinik', 'jari telunjuk tangan kiri terkena jarum saat menjahit', 'human error', 'vulnus laceratum', '', NULL),
(131, 'tertusuk jarum', '2019-07-19 07:29:05', 'dita paramita', '2018-07-19', '6991', '41', '14.25', 'mesin jahit', 'Klinik', 'jari tengah tangan kiri tertusuk jarum saat menjahit', 'human error', 'vulnus laceratum', '', NULL),
(132, 'terkena cekris', '2019-07-22 09:15:47', 'Latifah Nur aini', '2019-07-22', '9015', '41', '16:15', 'gunting cekris', 'Klinik', 'Jempol tangan kiri terkena cekris saat memotong kain', '\nHuman Error', 'Jempol tangan kiri sobek', '', NULL),
(133, 'tertusuk jarum', '2019-07-24 06:23:36', 'resti anggraini', '2019-07-24', '5249', '44', '09.00', 'mesin jahit', 'Klinik', 'Jari telunjuk tangan kiri ternena jarum saat menjahit', 'human error', 'jari telunjuk tangan kiri sobek', '', NULL),
(134, 'tertusuk jarum', '2019-07-25 07:35:27', 'vina wiyati', '2019-07-25', '7455', '3', '14:40', 'mesin jahit', 'Klinik', 'jari telunjuk  tangan kiri terkena jarum saat menjahit', 'human error', 'jari telunjuk tangan kiri sobek', '', NULL),
(135, 'terkena pisau obras', '2019-07-29 09:20:54', 'eni lestari', '2019-07-29', '4982', '45', '14.50', 'mesin jahit', 'Klinik', 'jari telunjuk tangan kiri terkena pisau obraqs saat menjahit', 'human eror', 'vulnus laceratum', '', NULL),
(136, 'tertusuk jarum', '2019-07-29 09:23:41', 'indriyani', '2019-07-29', '7930', '38', '15.10', 'mesin jahit', 'Klinik', 'jari tengah tangan kiri terkena jarum saat menjahit', 'human eror', 'vulnus laceratum', '', NULL),
(137, 'tertusuk paku', '2019-07-30 03:38:20', 'rifan syarif irfanto', '2019-07-30', '8688', '28', '10.40', 'paku', 'Klinik', 'telapak kaki sebelah kiri terkena paku palet saat bekerja', 'human eror', 'vulnus laceratum', '', NULL),
(138, 'terjepit mesin', '2019-07-30 06:17:13', 'eka nellawati', '2019-07-30', '5000', '21', '13.10', 'mesin jahit', 'Anisa', 'jari tengah tangan kiri terjepit mesin saat mendorong mesin jahit ', 'human eror', 'vulnus laceratum', 'Dilakukan refreshment training tentang keselamatan kerja', NULL),
(139, 'KLL', '2019-08-09 08:51:53', 'Beni agus Haryadi', '2019-08-09', '7120', '4', '07:30', 'kendaraan (motor)', 'Klinik', 'Pasien perjalanan berangkat kerja, mengalami kecelakaan di jalan diakibatkan gigi di motornya terkunci sehingga gas di motornya gk bisa dikendalikan', 'Human Error', 'jari kelingking kaki kanan sobek, pundak dan tangan lecet', '', NULL),
(140, 'terjepit mesin', '2019-08-12 08:18:24', 'febriyanti', '2019-08-12', '8489', '3', '09.15', 'mesin jahit', 'Klinik', 'jari telunjuk tangan kiri terjepit mesin saat menjahit', 'human error', 'vulnus laceratum', '', NULL),
(141, 'terjepit mesin', '2019-08-19 04:07:46', 'Budi rahayu', '2018-08-19', '6910', '38', '10:50', 'mesin jahit', 'Klinik', 'Telapak tangan kiri terjepit mesin saat menjahit', 'Human Error', 'Telapak tangan kiri sobek', '', NULL),
(142, 'terkena cekris', '2019-08-19 04:12:58', 'Rhesferina Dwi astuti', '2018-08-19', '2007', '37', '07:35', 'gunting cekris', 'Klinik', 'Jempol tangan kiri terkena cekris saat memotong kain', 'Human Error', 'Jempol tangan kiri sobek', '', NULL),
(143, 'terjepit mesin', '2019-08-20 06:27:52', 'Fifit lestari', '2018-08-20', '8945', '42', '08:00', 'mesin jahit', 'Klinik', 'Jari telunjuk tangan kiri terjepit mesin scoci jarum 2', 'Human Error', 'jari telunjuk tangan kiri sobek', '', NULL),
(144, 'terkena cutter', '2019-08-29 02:42:51', 'samsul anam', '2019-08-29', '2582', '29', '09.30', 'cutter ', 'Klinik', 'saat sedang digudang secara tidak sengaja menjatuhkan kain yang terdapat cutter kemudian tidak sengaja terinjak', 'human eror', 'vulnus laceratum', '', NULL),
(145, 'tertusuk jarum', '2019-08-30 06:29:27', 'Latifah Dewi Astuti', '2019-08-30', '8687', '42', '09.10', 'mesin jahit', 'Klinik', 'jari telunjuk tangan kiri terkena jarum saat menjahit', 'human error', 'vulnus laceratum', '', NULL),
(146, 'terkena grenda', '2019-09-06 09:01:27', 'ifan widayat', '2019-09-06', '10142', '15', '11:00', 'grenda', 'Klinik', 'jempol tangan kanan terkena grenda saat memotong besi', 'human error', 'jempol tangan kanan sobek', '', NULL),
(147, 'terkena cekris', '2019-09-10 01:17:06', 'Rhesferina Dwi astuti', '2019-09-10', '2007', '37', '8.20', 'gunting cekris', 'Klinik', 'jari telunjuk tangan kanan terkena cekris saat memotong', 'human error', 'vulnus laceratum', '', NULL),
(148, 'tertusuk jarum', '2019-09-13 01:29:28', 'maryati', '2019-09-13', '1211', '3', '08.30', 'mesin jahit', 'Klinik', 'jari telunjuk tangan kiri tertusuk jarum saat menjahit', 'human error', 'vulnus laceratum', '', NULL),
(149, 'terkena obeng', '2019-09-13 08:36:28', 'heri setiawan', '2019-09-13', '10631', '15', '15.30', 'obeng', 'Klinik', 'jari telunjuk tangan kiri terkena obeng saat memasang poster', 'human error', 'vulnus Laceratum', '', NULL),
(150, 'terjepit meja mesin jahit', '2019-09-17 02:16:22', 'erni sri lestari', '2019-09-16', '3948', '46', '09.00', 'mesin jahit', 'Klinik', 'jempol kaki kiri terjepit meja mesin jahit', 'human error', 'kuku jempol kaki kiri pecah', '', NULL),
(151, 'terkena nedle guad ', '2019-09-26 01:09:54', 'parinah', '2019-09-26', '1828', '48', '08.20', 'nedle guad', 'Klinik', 'jari manis tangin kiri terkena nedle guad saat menjahit', 'human error', 'vulnus laceratum', '', NULL),
(152, 'jarum pining', '2019-09-26 02:01:18', 'nova novita sari', '2019-09-26', '7346', '4', '09.10', 'jarum pining', 'Klinik', 'telapak tangan kiri terkena jarum pining saat sedang menggelar kain', 'human error', 'vulnus lacerATUM', '', NULL),
(153, 'tertusuk jarim', '2019-11-21 08:13:55', 'istiana', '2019-10-07', '9098', '40', '10.15', 'mesin jahit', 'Klinik', 'jari jempol tangan kiri tertusuk jarum saat menjahit', 'human eror', 'vulnus laceratum', '', NULL),
(154, 'kecelakaan lalu lintas', '2019-11-21 08:18:29', 'rumini', '2019-10-09', '4348', '10', '07.30', 'kendaraan bermotor', 'Klinik', 'jari kelingking tangan kanan terkena stang motor saat menuju ameya', 'human eror', 'retak bagian jari kelingking', '', NULL),
(155, 'tertusuk jarum', '2019-11-21 08:21:49', 'isnawati', '2019-10-17', '1794', '35', '09.20', 'mesin jahit', 'Klinik', 'jari telunjuk tangan kiri tertusuk jarum saat menjahit', 'human eror', 'vulnus laceratum', '', NULL),
(156, 'terkena skoci', '2019-11-21 08:36:56', 'krisnawati', '2019-10-28', '8488', '3', '13.20', 'mesin jahit', 'Klinik', 'jari telunjuk tangan kiri terkena skoci saat memasang benang', 'human eror', 'vulnus laceratum', '', NULL),
(157, 'terkena gunting', '2019-11-21 08:39:39', 'safitri', '2019-10-29', '6716', '25', '11.10', 'gunting ', 'Klinik', 'jari tengah tangan kiri terkena terkena gunting saat memotong', 'human eror', 'vulnus laceratum', '', NULL),
(158, 'terkena polibag/ bagor kain', '2019-11-21 08:42:59', 'Rangga Aji S', '2019-10-29', '8859', '29', '14.15', 'polibag/bagor kain', 'Klinik', 'jari kelingking tangan kanan terkena polibag/bagor kain saat mengangkat polibag sehingga jari kuku tersangkut', 'human eror', 'vulnus laceratum', '', NULL),
(159, 'tertusuk jarum', '2019-11-21 08:44:55', 'wahyuningsih', '2019-10-30', '1759', '47', '10.40', 'mesi jahit', 'Klinik', 'jari telunjuk tangan kiri tertusuk jarum saat menjahit', 'human error', 'vulnus laceratum', '', NULL),
(160, 'tertusuk jarum', '2019-11-21 08:46:36', 'ari purwati', '2019-11-06', '3408', '42', '9.10', 'mesin jahit', 'Klinik', 'jari tengah tangan kanan tertusuk jarum saat menjahit', 'human error', 'vulnus laceratum', '', NULL),
(161, 'terkena seng', '2019-11-21 08:50:54', 'songep', '2019-11-08', '8831', '15', '15.20', 'lembaran seng', 'Klinik', 'jari telunjuk tangan kiri terkena seng saat memindahkan seng ketempat lain', 'human error', 'vulnus laceratum', '', NULL),
(162, 'tertusuk jarum', '2019-12-03 04:25:21', 'arum riandari', '2019-12-03', '8836', '42', '11.05', 'mesin jahit', 'Klinik', 'jari telunjuk tangam kanan tertusuk jarum saat menjahit', 'human eror', 'vulnus Laceratum', '', NULL),
(163, 'terkena kain perca', '2019-12-03 06:22:48', 'rustini', '2019-12-03', '7852', '10', '13.15', 'kain perca', 'Klinik', 'jari kelingking tangan kiri terkena (kebeler) kain perca saat mengikat ', 'human error', 'vulnus laceratum', '', NULL),
(164, 'tertusuk jarum', '2019-12-06 06:54:35', 'tri oktafiani', '2019-12-06', '8350', '31', '13.45', 'mesin jahit', 'Klinik', 'jari jempol tangan kiri terkena jarum saat menjahit', '', '', '', NULL),
(165, 'terkena paku', '2019-12-06 07:02:45', 'Rifan Syarif Irfanto', '2019-12-06', '8688', '28', '13.55', 'paku', 'Klinik', 'jari manis tangan kanan terkena jarum saat buka barang masuk (box kayu)', 'human error', 'vulnus laceratum', '', NULL),
(166, 'terkena cekris', '2019-12-17 00:56:29', 'Nita Yuni Astuti', '2019-12-17', '8201', '45', '07.45', 'gunting cekris', 'Klinik', 'saat mendedel benang jari telunjuk tangan kiri terkena gunting cekris', 'human error (karyawan kurang berhati-hati)', 'vulnus laceratum', '', NULL),
(167, 'tertusuk jarum', '2019-12-17 06:10:50', 'duwi mufidatun', '2019-12-17', '4696', '3', '12.55', 'mesin jahit', 'Klinik', 'jari telunjuk tangan kiri tertusuk jarum saat menjahit', 'human error ', 'vulnus laceratum', '', NULL),
(168, 'tertusuk jarum', '2019-12-18 06:26:17', 'ika Apriyani', '2019-12-18', '8446', '40', '13.20', 'mesin jahit', 'Klinik', 'saat menarik kain di mesin jahit  kaki tidak sengaja menginjak mesin jahit sehinnga otomatis jarum turun dan mengenai jari telunjuk tangan kiri', 'human error (kurang berhati-hati)', 'vulnus laceratum', '', NULL),
(169, 'terkena pallet', '2019-12-19 01:22:24', 'taufik hidayat', '2019-11-13', '7429', '27', '13.10', 'pallet', 'Klinik', 'jari jempol kaki kiri terkena palet saat bongkar kain', 'human error', 'vulnus laceratum', '', NULL),
(170, 'terkena cutter', '2019-12-19 01:28:04', 'ima Monitha', '2019-11-14', '7429', '25', '10.15', 'pisau cutter', 'Klinik', 'jari telunjuk tangan kiri terkena terkena cutter saat memotong buku', 'human error', 'vulnus laceratum', '', NULL),
(171, 'terkena pisau cutter', '2019-12-19 01:36:04', 'Novi dyah santosa', '2019-11-15', '4050', '4', '14.10', 'pisau cutter', 'Klinik', 'jari telunjuk tangan kanan terkena pisau cutter saat memotong kain', 'human error', 'vulnus laceratum', '', NULL),
(172, 'terkena besi', '2019-12-19 01:39:39', 'tri wahyudi', '2019-12-19', '6253', '15', '13.40', 'batang besi', 'Klinik', '', 'pada saat pasien jongkok dan mau berdiri tiba-tiba kepala sebelah kanan terkena besi siku', 'memar', '', '3eb04124bf0e22385082c5538f86ca51.jpeg'),
(173, 'terjepit mesin', '2020-01-14 09:31:00', 'tri asworo ', '2020-01-14', '4658', '47', '16.25', 'mesin jahit', 'Klinik', 'jari telunjuk tangan kanan terjepit mesin saat menjahit', 'human error', 'vulnus laceratum', '', NULL),
(174, 'kll', '2020-01-14 09:38:18', 'riska puspita sari', '2020-01-14', '5727', '24', '07.15', 'kendaraan bermotor', 'Klinik', 'lutut kaki kiri memar karena terjatuh dari motor', 'tidak berhati-hati ketika menghindari kendaraan lain', 'memar', '', NULL),
(175, 'terkena cekris', '2020-01-16 08:24:53', 'melia kadarsih', '2020-01-16', '7468', '40', '15.20', 'gunting cekris', 'Klinik', 'jari telunjuk tangan kiri terkena cekris saat memotong kain', 'human error', 'vulnus Laceratum', '', NULL),
(176, 'tertusuk jarum', '2020-01-17 05:51:33', 'utami nugraini', '2020-01-17', '9162', '47', '17.10', 'mesin jahit', 'Klinik', 'jari jempol tangan kanan terkena cekris saat menjahit', 'human error', 'vulnus laceratum', '', NULL),
(180, 'tertusuk jarum', '2020-01-23 04:15:01', 'alviana swastika', '2020-01-06', '8758', '35', '10:00', 'mesin jahit', 'Klinik', 'jari telunjuk tangan kanan terkena jarum, saat menjahit', 'human error', 'jari telunjuk tangan kanan sobek', '', NULL),
(181, 'tertusuk jarum', '2020-01-23 04:16:59', 'ria nistyani', '2020-01-07', '7972', '48', '09:00', 'mesin jahit', 'Klinik', 'jari telunjuk tangan kanan terkena jarum saat menjahit', 'human error', 'jari telunjuk tangan kanan sobek', '', NULL),
(182, 'tertusuk jarum', '2020-01-23 05:55:29', 'nining anggraini', '2020-01-09', '8786', '3', '15:35', 'mesin jahit', 'Klinik', 'jari telunjuk tangan kiri terkena jarum saatmenjahit', 'human eror', 'jari telunjuk tangan kiri sobek', '', NULL),
(183, 'terkena gunting', '2020-01-23 06:12:42', 'aisyah kurniawati', '2020-01-20', '8006', '3', '09:15', 'gunting', 'Klinik', 'jari jempol tangan kiri terkena gunting saat memotong kain', 'human error', 'jari jempol tangan kiri luka', '', NULL),
(184, 'terjepit mesin', '2020-01-27 08:15:49', 'dian nuryanti', '2020-01-27', '9235', '35', '12.25', 'mesin jahit', 'Klinik', 'telapang tangan tangan kiri terjepit mesin menggeser mesin', 'human error ', 'lecet', '', NULL),
(185, 'tertusuk jarum', '2020-01-30 05:52:25', 'NUR KUSMIAH', '2020-01-30', '7194', '48', '12.40', 'mesin jahit', 'Klinik', 'Jari telunjuk tangan kiri tertusuk jarum saat menjahit', 'human error', 'vulnus laceratum', '', NULL),
(186, 'terjepit mesin', '2020-02-12 00:48:24', 'rinta purnama wulan', '2020-02-11', '9064', '46', '07.25', 'mesin jahit', 'Klinik', 'jari manis tangan kiri terjepit mesin saat membersihkan mesin', 'human error', 'vulnus laceratum', '', NULL),
(187, 'tertusuk jarum', '2020-02-18 02:27:27', 'heni herawati', '2020-02-17', '8183', '38', '10:30', 'mesin jahit', 'Klinik', 'jari telunjuk tangan kiri terkena jarum saat manjahit', 'human error', 'jari telunjuk tangan kiri sobek', '', NULL),
(188, 'tertusuk jarum', '2020-02-26 02:35:00', 'Herlina Widya Oktafiani', '2019-12-25', '8179', '44', '09. 20', 'mesin jahit', 'Klinik', 'jari telunjuk tangan kiri tertusuk jarum saat menjahit', 'human error', 'vulnus laceratum', '', '55d509384b0aca90efbe54c26e1dc467.xlsx'),
(189, 'tertusuk jarum', '2020-03-09 05:39:17', 'utami nugraini', '2020-03-09', '9162', '46', '12.35', 'mesin jahit', 'Klinik', 'jari tengah tangan kanan tertusuk jarum saat menjahit', 'human error', 'vulnus laceratum', '', NULL),
(190, 'tersandung mesin', '2020-03-10 00:57:33', 'siti Aminah', '2020-03-10', '4661', '25', '07.35', 'mesin jahit', 'Klinik', 'jari kelingking kaki kanan tersandung mesin ', 'human error', 'lecet pada area jari kelingking kaki kiri', '', NULL),
(191, 'tertusuk jarum', '2020-03-11 02:16:06', 'Fresti dwi Astuti', '2020-03-11', '4608', '47', '09.00', 'mesin jahit', 'Hesen Dwi Yatmiko', 'jari telunjuk tangan kiri tertusuk jarum saat menjahit', 'human error', 'lecet', '', '30d1c9464148af8a59ed3cf5c9bc86b6.xlsx'),
(192, 'tersandung rak panel', '2020-03-13 08:17:58', 'purwanti', '2020-03-13', '2977', '45', '15.05', 'rak panel', 'Klinik', 'jari jempol kaki kanan tersandung rak panel saat berjalan', 'human error', 'lecet pada ujung jari jempol', '', NULL),
(193, 'tertusuk jarum', '2020-03-18 09:07:57', 'Fitri lestari', '2020-03-18', '5856', '47', '16:00', 'mesin jahit', 'Klinik', 'Jari telunjuk tangan kiri terkena jarum saat menjahit', 'Human error', 'Jari telunjuk tangan kiri sobek', '', NULL),
(194, 'tertusuk jarum', '2020-03-24 07:43:58', 'Resti Nugraheni', '2020-03-24', '5249', '44', '14.40', 'mesin jahit', 'Klinik', 'jari telunjuk tangan kiri tertusuk jarum saat menjahit ', 'human error', 'lecet pada jari telunjuk tangan kiri', '', NULL),
(195, 'terkena cekris', '2020-04-17 01:49:25', 'zulfika nur rochim', '2020-04-17', '9020', '25', '08:45', 'gunting cekris', 'Klinik', 'jari jempol tangan kiri terkena cekris saat menjahit', 'human error', '', '', NULL),
(196, 'terkena cekris', '2020-04-17 09:17:21', 'dini riyanti', '2020-04-17', '7384', '36', '16.15', 'gunting cekris', 'Klinik', 'jari tengah dan telunjuk tangan kiri terkena cekris saat memotong kain', 'human error', 'v.laceratum', '', NULL),
(197, 'tersandung standart motor', '2020-04-24 01:58:47', 'sella damaryanti', '2020-04-24', '8523', '48', '08.45', 'kendaraan bermotor', 'Klinik', 'jempol kaki tersandung standart motor ', 'human eror', 'luka lecet pada jempol kaki kiri', '', NULL),
(198, 'terkena cekris', '2020-04-24 03:11:33', 'suparni', '2020-04-24', '6499', '48', '10.00', 'pisau cutter', 'Klinik', 'jari kelingking tangan kiri terkena cekris saat memotong', 'human error', 'vulnus laceratum', '', NULL),
(199, 'terkena pisau cutter', '2020-04-28 01:09:37', 'siti ngaisah', '2019-04-29', '7923', '43', '08:00', 'pisau cutter', 'Klinik', 'jari jempol tangan kiri terkena puisau cutter saat menjahity', 'human error', 'jempol tangan kiri sobek', '', NULL),
(200, 'tertusuk jarum', '2020-05-05 04:14:17', 'ria artika wati', '2020-05-05', '9337', '38', '11.00', 'mesin jahit', 'Klinik', 'jari tengah tangan kiri tertusuk jarum saat menjahit', 'human error', 'vulnus laceratum', '', NULL),
(201, 'kecelakaan kendaraan bermotor', '2020-05-09 00:02:33', 'anifah', '2020-05-09', '2795', '32', '06.40', 'kendaraan bermotor', 'Klinik', 'jempol  kaki dan lutut kaki kiri lecet saat terjatuh dari kendaraan bermotor (karyawan jatuh sendiri)', 'kurang focus ', 'jempol kaki dan lutut kiri mengalami lecet', '', NULL),
(202, 'terkena pisau obras', '2020-05-11 01:59:17', 'shinta komarajati', '2020-05-11', '9319', '38', '08:55', 'mesin jahit', 'Klinik', 'jari telunjuk tangan kiri terkena pisau obras saat membersihkan mesin jahit', 'human error', 'jari telunjuk tangan kiri sobek dibagian kuku', '', NULL),
(203, 'tertusuk jarum', '2020-05-14 03:45:10', 'hartutik', '2020-05-14', '58', '32', '10:45', 'mesin jahit', 'Klinik', 'jari telunjuk tangan kiri terkena jarum saat menjahit', 'Human error', 'jari telunjuk tangan kiri sobek', '', NULL),
(204, 'tertusuk jarum', '2020-05-18 05:39:18', 'zuli catur rahayu', '2020-05-18', '7531', '41', '12.30', 'mesin jahit', 'Klinik', 'jari tengah tangan kiri terkena jarum saat menjahit', 'human error', 'vulnus laceratum', '', NULL),
(205, 'terkerna obeng', '2020-05-20 03:30:50', 'parinah', '2020-05-20', '1828', '48', '10. 25 ', 'obeng ', 'Klinik', 'jempo tangan kiri terkena obeng saat mengganti sepatu pada mesin jahit', 'human error', 'vulnus laceratum ', '', NULL),
(206, 'terjepit pintu', '2020-06-08 09:19:03', 'viki tri nurjanah', '2020-06-08', '7367', '45', '07.30', 'pintu', 'Klinik', 'jari jempol tangan kiri terjepit pintu saat menutup pintu', 'human error', 'lecet dan kebiruan pada jempol tangan kiri', '', NULL),
(207, 'terkens sabit', '2020-06-12 01:01:32', 'muh syamsudin', '2020-06-12', '4648', '10', '07.50', 'sabit ', 'Klinik', 'jari manis tangan kiri terkena sabit saat memotong pohon ', 'kurang berhati-hati', 'vulnus laceratum', '', NULL);
INSERT INTO `tbl_kecelakaan_kerja` (`kecelakaan_id`, `kecelakaan_jenis`, `kecelakaan_tanggal`, `kecelakaan_nama`, `kecelakaan_tanggal_kejadian`, `kecelakaan_nip`, `kecelakaan_department`, `kecelakaan_waktu_kejadian`, `kecelakaan_alat`, `kecelakaan_author`, `kecelakaan_kronologi`, `kecelakaan_penyebab_utama`, `kecelakaan_hasil_pemeriksaan`, `kecelakaan_rencana_tindakan`, `form_investigasi`) VALUES
(208, 'tertusuk jarum', '2020-06-15 04:17:24', 'robiatul septiyawati', '2020-06-15', '7718', '38', '10:25', 'mesin jahit', 'Klinik', 'jari telunjuk tangan kiri terkena jarum saat menjahit', 'human error', 'jari telunjuk tangan kiri sobek', '', NULL),
(209, 'terkena cekris', '2020-07-13 07:49:02', 'sartini', '2020-07-13', '4185', '45', '14:40', 'gunting cekris', 'Klinik', 'telapak tangan kiri terkena cekris ', 'human error', 'telapak tangan kiri sobek', '', NULL),
(210, 'tertusik pin jarum', '2020-07-16 22:11:53', 'fitri zulfa', '2020-07-16', '6651', '4', '04.45', 'pin jarum mesin cutting', 'Klinik', 'telapak tangan kanan kiri tertusuk jarumhuman error pin saat spreading ', '', 'vulnus laceratum', 'rujuk PKU', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kecelakaan_kerja_old`
--

CREATE TABLE `tbl_kecelakaan_kerja_old` (
  `kecelakaan_id` int(11) NOT NULL,
  `kecelakaan_jenis` varchar(100) DEFAULT NULL,
  `kecelakaan_nama` text,
  `kecelakaan_tanggal_kejadian` date DEFAULT NULL,
  `kecelakaan_penyebab_id` int(11) DEFAULT NULL,
  `kecelakaan_penyebab_nama` varchar(30) DEFAULT NULL,
  `kecelakaan_views` int(11) DEFAULT '0',
  `kecelakaan_gambar` varchar(120) DEFAULT NULL,
  `kecelakaan_pengguna_id` int(11) DEFAULT NULL,
  `kecelakaan_author` varchar(40) DEFAULT NULL,
  `kecelakaan_nip` int(10) DEFAULT NULL,
  `kecelakaan_department` varchar(40) DEFAULT NULL,
  `kecelakaan_jam` time DEFAULT NULL,
  `kecelakaan_kronologi` text,
  `kecelakaan_penyebab_utama` text,
  `kecelakaan_hasil_pemeriksaan` text,
  `kecelakaan_rencana_tindakan` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `kelas_id` int(11) NOT NULL,
  `kelas_nama` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`kelas_id`, `kelas_nama`) VALUES
(1, 'Adm Produksi'),
(2, 'Comercial'),
(3, 'Component'),
(4, 'Cutting'),
(5, 'Driver & Courier'),
(6, 'Embro'),
(7, 'Exim'),
(8, 'Finance'),
(9, 'Finishing'),
(10, 'HR & GA'),
(11, 'IE & Planning'),
(12, 'IT'),
(13, 'LAB'),
(14, 'LPK'),
(15, 'Maintenance & Utility'),
(16, 'Marketing'),
(17, 'Mechanic'),
(18, 'Merchandising'),
(19, 'PPIC'),
(20, 'Product Development'),
(21, 'Production'),
(22, 'Purchase'),
(23, 'QA'),
(24, 'QC'),
(25, 'Sample'),
(26, 'Sewing'),
(27, 'Staff'),
(28, 'Warehouse'),
(29, 'Washing');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_komentar`
--

CREATE TABLE `tbl_komentar` (
  `komentar_id` int(11) NOT NULL,
  `komentar_nama` varchar(30) DEFAULT NULL,
  `komentar_email` varchar(50) DEFAULT NULL,
  `komentar_isi` varchar(120) DEFAULT NULL,
  `komentar_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `komentar_status` varchar(2) DEFAULT NULL,
  `komentar_tulisan_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_log_aktivitas`
--

CREATE TABLE `tbl_log_aktivitas` (
  `log_id` int(11) NOT NULL,
  `log_nama` text,
  `log_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `log_ip` varchar(20) DEFAULT NULL,
  `log_pengguna_id` int(11) DEFAULT NULL,
  `log_icon` blob,
  `log_jenis_icon` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengguna`
--

CREATE TABLE `tbl_pengguna` (
  `pengguna_id` int(11) NOT NULL,
  `pengguna_nama` varchar(50) DEFAULT NULL,
  `pengguna_moto` varchar(100) DEFAULT NULL,
  `pengguna_jenkel` varchar(2) DEFAULT NULL,
  `pengguna_username` varchar(30) DEFAULT NULL,
  `pengguna_password` varchar(35) DEFAULT NULL,
  `pengguna_tentang` text,
  `pengguna_email` varchar(50) DEFAULT NULL,
  `pengguna_nohp` varchar(20) DEFAULT NULL,
  `pengguna_facebook` varchar(35) DEFAULT NULL,
  `pengguna_twitter` varchar(35) DEFAULT NULL,
  `pengguna_linkdin` varchar(35) DEFAULT NULL,
  `pengguna_google_plus` varchar(35) DEFAULT NULL,
  `pengguna_status` int(2) DEFAULT '1',
  `pengguna_level` varchar(3) DEFAULT NULL,
  `pengguna_register` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `pengguna_photo` varchar(40) DEFAULT NULL,
  `pengguna_last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengguna`
--

INSERT INTO `tbl_pengguna` (`pengguna_id`, `pengguna_nama`, `pengguna_moto`, `pengguna_jenkel`, `pengguna_username`, `pengguna_password`, `pengguna_tentang`, `pengguna_email`, `pengguna_nohp`, `pengguna_facebook`, `pengguna_twitter`, `pengguna_linkdin`, `pengguna_google_plus`, `pengguna_status`, `pengguna_level`, `pengguna_register`, `pengguna_photo`, `pengguna_last_login`) VALUES
(5, 'Hesen Dwi Yatmiko', NULL, 'L', 'hesen', '27ef07b55cdc4d10598051abdf6c9fd0', NULL, 'hesen@ameyaindo.com', '081297871114', NULL, NULL, NULL, NULL, 1, '1', '2018-04-10 13:56:11', 'cbc84d4e54dcb036d6534325a8072f91.jpg', '2018-06-28 18:56:32'),
(8, 'Anisa', NULL, 'P', 'anisa', '9c1315392630716ff699cf92a0d0c501', NULL, 'anisa@ameyaindo.com', '02746466796', NULL, NULL, NULL, NULL, 1, '1', '2018-05-01 19:41:50', '5a7abb88359bca19552efb404ce8f06e.jpg', '2018-06-29 08:04:53'),
(9, 'Ramesh Sundaram', NULL, 'L', 'rameshsundaram', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'rameshsundaram@ameyaindo.com', '02746466796', NULL, NULL, NULL, NULL, 1, '2', '2018-06-13 02:01:37', 'f070e976b3ca783d776dd04b72daf9e4.jpg', NULL),
(10, 'Muhrim', NULL, 'L', 'muhrim', 'c33367701511b4f6020ec61ded352059', NULL, 'muhrim@ameyaindo.com', '02746466796', NULL, NULL, NULL, NULL, 1, '2', '2018-06-13 02:02:21', 'd591d6639cffdcd83f08409f854006ef.jpg', '2018-07-05 10:57:53'),
(11, 'Heri Setiawan', NULL, 'L', 'herisetiawan', '25d55ad283aa400af464c76d713c07ad', NULL, 'maintenance@ameyaindo.com', '082301120789', NULL, NULL, NULL, NULL, 1, '2', '2018-06-13 02:03:07', '461dcb439d1c3502584719b8f95d70aa.jpg', '0000-00-00 00:00:00'),
(13, 'Yohanes Andi', NULL, 'L', 'andi', 'f9ef457965f8c774b62ae762b5bfcbc5', NULL, 'andi@ameyaindo.com', '081827723/ 082324576', NULL, NULL, NULL, NULL, 1, '2', '2018-06-13 02:04:39', '109dea76d57f8be577174dc360477fb3.jpg', '2018-06-28 19:03:11'),
(14, 'Ifan Widayat', NULL, 'L', 'ifan', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'maintenance@ameyaindo.com', '02746466796', NULL, NULL, NULL, NULL, 1, '2', '2018-06-13 02:05:22', '47b897ddd62ec66f8bd077ea1bac44b1.jpg', NULL),
(15, 'Pramesthi Pitararesmi', NULL, 'P', 'pipit', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'pipit@ameyaindo.com', '02746466796', NULL, NULL, NULL, NULL, 1, '2', '2018-06-13 02:06:03', '1c0df5a545f5008a6c5a28013c376931.jpg', NULL),
(17, 'Deni Rahmat Hidayat', NULL, 'L', 'deni', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'deni@ameyaindo.com', '02746466796', NULL, NULL, NULL, NULL, 1, '2', '2018-06-13 02:08:04', 'bae90a190c1b4718712a74bede242b81.jpg', NULL),
(18, ' Marjono', NULL, 'L', 'marjono', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'marjono@ameyaindo.com', '02746466796', NULL, NULL, NULL, NULL, 1, '2', '2018-06-13 02:08:42', '3714b3aa5f141b7e8be904dadadfecbb.jpg', NULL),
(19, 'Hartini', NULL, 'P', 'hartini', 'c00843a96118f64a7447c4fefa6c13bc', NULL, 'admin.production@ameyaindo.com', '02746466796', NULL, NULL, NULL, NULL, 1, '2', '2018-06-13 02:09:25', '8ddfcc920267ba06664c72496b59dbc5.jpg', '0000-00-00 00:00:00'),
(20, 'Ninik Winarni', NULL, 'P', 'ninik', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'admin.production@ameyaindo.com', '02746466796', NULL, NULL, NULL, NULL, 1, '2', '2018-06-13 02:10:01', '5558652ebc9848bee651994c5549a31e.jpg', NULL),
(21, 'Nasucha', NULL, 'L', 'nasucha', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'mekanik@ameyaindo.com', '02746466796', NULL, NULL, NULL, NULL, 1, '2', '2018-06-13 02:11:13', '068fecdc02f151c04dd540e29f84f59b.jpg', NULL),
(23, 'Putut Adi P', NULL, 'L', 'putut', '4059b02a6bdb5ec798ccd21a3650a3f3', NULL, 'putut@ameyaindo.com', '02746466796', NULL, NULL, NULL, NULL, 1, '2', '2018-06-13 02:12:46', '882bf9d6a923ff7b78865051c3c8fba7.jpg', '2018-07-17 14:32:21'),
(24, 'Bernadus Gili', NULL, 'L', 'abeng', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'abeng@ameyaindo.com', '02746466796', NULL, NULL, NULL, NULL, 1, '2', '2018-06-13 02:13:21', '6c1b18fd45ffe68dd89506ddc3e503f9.jpg', NULL),
(25, 'Herdiyanto', NULL, 'L', 'herdiyanto', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'herdiyanto@ameyaindo.com', '02746466796', NULL, NULL, NULL, NULL, 1, '2', '2018-06-13 02:14:03', '7224e8107cf14491997888b750046c55.JPG', NULL),
(26, 'Heri Martono', NULL, 'L', 'herimartono', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'maintenance@ameyaindo.com', '02746466796', NULL, NULL, NULL, NULL, 1, '2', '2018-06-13 02:14:45', 'fee300892e7d2f306f6456b5e92039f0.jpg', NULL),
(27, 'Arma Yudhianto', NULL, 'L', 'arma', '6c523bf579664da0b465cb17275d72f0', NULL, 'arma@ameyaindo.com', '083840674746', NULL, NULL, NULL, NULL, 1, '2', '2018-06-13 02:15:25', 'd892747918f08a876c7bc0874b783763.JPG', '0000-00-00 00:00:00'),
(28, 'Admin', NULL, 'L', 'admin', '27ef07b55cdc4d10598051abdf6c9fd0', NULL, 'it@ameyaindo.com', '081297871114', NULL, NULL, NULL, NULL, 1, '2', '2018-06-28 08:38:00', '6fc272fba6faa2465970f790833ab593.jpg', '2018-06-28 19:02:15'),
(29, 'Klinik', NULL, 'L', 'klinik', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'klinik@ameyaindo.com', '02746466796', NULL, NULL, NULL, NULL, 1, '2', '2018-07-13 02:56:49', 'c6d64efe44f39113aebcf85af12d8478.png', '2018-07-13 09:57:30'),
(30, 'Wahyu setyanto', NULL, 'L', 'wahyusetyanto', 'ab802d8406fc4c5dcb974180b1650580', NULL, 'ie2@ameyaindo.com', '08562546491', NULL, NULL, NULL, NULL, 1, '2', '2018-09-14 10:42:28', '4df5a7a208160188786f29bbb4c09d32.jpg', '0000-00-00 00:00:00'),
(31, 'Etsha', NULL, 'P', 'etsha', '02d8c4ac323c5df679077f020f170453', NULL, 'etsha@ameyaindo.com', '62 2746466796', NULL, NULL, NULL, NULL, 1, '1', '2018-10-31 11:54:49', '26616eb95ab79cff46a63c7a80eb442f.jpg', '0000-00-00 00:00:00'),
(32, 'Parameshwaran', NULL, 'L', 'Param', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'param@ameyaindo.com', '62 2746466796', NULL, NULL, NULL, NULL, 1, '2', '2018-11-05 09:16:57', '4ccd3a6ae8bbd1d94942951759e5ef8f.jpg', '0000-00-00 00:00:00'),
(33, 'Septi Kusumadewi', NULL, 'P', 'Septi', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'septi.kusumadewi@ameyaindo.com', '62 2746466796', NULL, NULL, NULL, NULL, 1, '2', '2018-11-05 09:18:19', 'a1ae4fc45d12288045825e926ddf9bf5.jpg', '0000-00-00 00:00:00'),
(34, 'Dadang Eko A', NULL, 'L', 'dadang', '25f9e794323b453885f5181f1b624d0b', NULL, 'dadang@ameyaindo.com', '62 2746466796', NULL, NULL, NULL, NULL, 1, '2', '2018-12-05 03:35:47', 'a825b834077a1be2d20b80d664aa67d6.jpg', NULL),
(35, 'Hardjono', NULL, 'L', 'hardjono', '25f9e794323b453885f5181f1b624d0b', NULL, 'packing@ameyaindo.com', '62 2746466796', NULL, NULL, NULL, NULL, 1, '2', '2018-12-05 03:39:07', '86696531011c25c48d193ebe80ed2e3d.jpg', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengumuman`
--

CREATE TABLE `tbl_pengumuman` (
  `pengumuman_id` int(11) NOT NULL,
  `pengumuman_judul` varchar(150) DEFAULT NULL,
  `pengumuman_deskripsi` text,
  `pengumuman_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `pengumuman_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengumuman`
--

INSERT INTO `tbl_pengumuman` (`pengumuman_id`, `pengumuman_judul`, `pengumuman_deskripsi`, `pengumuman_tanggal`, `pengumuman_author`) VALUES
(5, 'K3 Meeting on April 2018', 'Just want to remind you for our K3 Meeting on Thursday, April 26, 2018 at 03.30 pm in Pandawa room. For your information that Pak Yos from BWI will also attend to the meeting. Need your cooperation to come on time. Thank You ! ', '2018-04-25 18:33:01', 'Hesen Dwi Yatmiko');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengunjung`
--

CREATE TABLE `tbl_pengunjung` (
  `pengunjung_id` int(11) NOT NULL,
  `pengunjung_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `pengunjung_ip` varchar(40) DEFAULT NULL,
  `pengunjung_perangkat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengunjung`
--

INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES
(1, '2016-08-11 09:51:56', '127.0.0.1', 'Firefox'),
(2, '2016-08-12 03:13:56', '127.0.0.1', 'Firefox'),
(3, '2016-08-12 15:22:55', '127.0.0.1', 'Firefox'),
(4, '2016-08-12 15:26:41', '127.0.0.1', 'Firefox'),
(5, '2016-08-12 15:27:13', '127.0.0.1', 'Firefox'),
(6, '2016-08-12 16:54:34', '127.0.0.1', 'Firefox'),
(7, '2016-08-12 16:55:35', '127.0.0.1', 'Firefox'),
(8, '2016-08-12 16:59:42', '127.0.0.1', 'Firefox'),
(9, '2016-08-12 17:00:10', '127.0.0.1', 'Firefox'),
(10, '2016-09-18 06:24:15', '127.0.0.1', 'Firefox'),
(11, '2016-09-18 06:24:19', '127.0.0.1', 'Firefox'),
(12, '2016-09-18 06:24:19', '127.0.0.1', 'Firefox'),
(13, '2016-09-18 06:24:19', '127.0.0.1', 'Firefox'),
(14, '2016-09-18 06:24:19', '127.0.0.1', 'Firefox'),
(15, '2016-09-18 06:24:19', '127.0.0.1', 'Firefox'),
(16, '2016-09-18 06:24:19', '127.0.0.1', 'Firefox'),
(17, '2016-09-18 06:24:19', '127.0.0.1', 'Firefox'),
(18, '2016-09-18 06:24:19', '127.0.0.1', 'Firefox'),
(19, '2016-09-18 06:24:19', '127.0.0.1', 'Firefox'),
(20, '2016-09-18 06:24:19', '127.0.0.1', 'Firefox'),
(21, '2016-09-18 06:24:19', '127.0.0.1', 'Firefox'),
(22, '2016-09-18 06:24:19', '127.0.0.1', 'Firefox'),
(23, '2016-09-18 06:24:19', '127.0.0.1', 'Firefox'),
(24, '2017-02-04 03:06:28', '::1', 'Chrome'),
(25, '2017-02-04 03:06:52', '127.0.0.1', 'Firefox'),
(26, '2017-02-04 03:08:07', '::1', 'Chrome'),
(27, '2017-02-05 04:32:50', '::1', 'Chrome'),
(28, '2017-02-05 05:20:35', '127.0.0.1', 'Firefox'),
(29, '2017-02-06 03:20:44', '::1', 'Chrome'),
(30, '2017-02-08 10:07:27', '::1', 'Chrome'),
(31, '2017-02-10 05:11:41', '::1', 'Chrome'),
(32, '2017-02-20 05:45:57', '::1', 'Chrome'),
(33, '2017-02-21 13:03:52', '::1', 'Chrome'),
(34, '2017-02-27 03:47:01', '::1', 'Chrome'),
(35, '2017-03-01 15:09:01', '::1', 'Chrome'),
(36, '2017-03-03 17:18:27', '::1', 'Chrome'),
(37, '2017-03-12 06:40:08', '::1', 'Chrome'),
(38, '2017-03-13 06:34:08', '::1', 'Chrome'),
(39, '2017-03-22 14:07:51', '::1', 'Firefox'),
(40, '2017-03-24 19:38:38', '::1', 'Firefox'),
(41, '2017-03-24 20:16:21', '::1', 'Firefox'),
(42, '2017-03-28 00:10:59', '::1', 'Firefox'),
(43, '2017-03-29 08:38:53', '::1', 'Firefox'),
(44, '2017-03-29 20:51:47', '::1', 'Firefox'),
(45, '2017-03-31 08:48:22', '::1', 'Firefox'),
(46, '2017-04-06 08:33:34', '::1', 'Firefox'),
(47, '2017-04-07 10:25:13', '::1', 'Firefox'),
(48, '2017-04-07 19:59:50', '::1', 'Firefox'),
(49, '2017-04-08 20:05:39', '::1', 'Firefox'),
(50, '2017-04-09 22:20:26', '::1', 'Firefox'),
(51, '2017-04-10 21:46:26', '117.102.64.98', 'Chrome'),
(52, '2017-04-10 21:46:33', '125.165.129.35', 'Firefox'),
(53, '2017-04-10 22:51:54', '69.171.225.46', 'Other'),
(54, '2017-04-10 22:54:09', '69.171.225.12', 'Other'),
(55, '2017-04-10 22:54:40', '69.171.225.21', 'Other'),
(56, '2017-04-10 22:54:54', '69.171.225.18', 'Other'),
(57, '2017-04-10 23:03:20', '36.83.246.250', 'Chrome'),
(58, '2017-04-10 23:05:31', '202.62.17.121', 'Chrome'),
(59, '2017-04-10 23:06:21', '106.187.46.205', 'Chrome'),
(60, '2017-04-10 23:06:23', '173.252.98.28', 'Other'),
(61, '2017-04-10 23:10:12', '107.167.103.241', 'Opera'),
(62, '2017-04-10 23:15:50', '202.67.41.244', 'Chrome'),
(63, '2017-04-10 23:18:00', '36.72.192.194', 'Chrome'),
(64, '2017-04-10 23:19:16', '112.215.175.62', 'Chrome'),
(65, '2017-04-10 23:19:45', '173.252.102.112', 'Other'),
(66, '2017-04-10 23:19:53', '112.215.154.56', 'Firefox'),
(67, '2017-04-10 23:20:02', '158.140.170.23', 'Chrome'),
(68, '2017-04-10 23:22:09', '36.81.37.52', 'Chrome'),
(69, '2017-04-10 23:22:50', '120.188.65.243', 'Chrome'),
(70, '2017-04-10 23:25:52', '124.153.33.11', 'Chrome'),
(71, '2017-04-10 23:25:57', '112.215.172.240', 'Chrome'),
(72, '2017-04-10 23:27:10', '132.255.240.27', 'Chrome'),
(73, '2017-04-10 23:27:58', '103.213.131.147', 'Chrome'),
(74, '2017-04-10 23:29:14', '36.84.225.114', 'Chrome'),
(75, '2017-04-10 23:29:21', '180.253.158.87', 'Chrome'),
(76, '2017-04-10 23:33:11', '173.252.84.52', 'Other'),
(77, '2017-04-10 23:34:27', '202.67.35.20', 'Chrome'),
(78, '2017-04-10 23:36:38', '202.67.40.210', 'Chrome'),
(79, '2017-04-10 23:39:19', '120.188.76.26', 'Chrome'),
(80, '2017-04-10 23:40:41', '173.252.123.186', 'Other'),
(81, '2017-04-10 23:45:05', '110.139.8.41', 'Mozilla'),
(82, '2017-04-10 23:52:48', '202.80.216.219', 'Chrome'),
(83, '2017-04-10 23:54:52', '223.255.230.13', 'Safari'),
(84, '2017-04-10 23:55:14', '36.78.69.101', 'Chrome'),
(85, '2017-04-11 00:02:29', '180.251.173.137', 'Chrome'),
(86, '2017-04-11 00:02:41', '125.161.185.216', 'Chrome'),
(87, '2017-04-11 00:15:58', '139.192.226.49', 'Chrome'),
(88, '2017-04-11 00:17:46', '107.167.112.88', 'Opera'),
(89, '2017-04-11 00:17:49', '180.247.26.15', 'Chrome'),
(90, '2017-04-11 00:19:40', '204.44.65.210', 'Internet Explorer'),
(91, '2017-04-11 00:22:34', '36.78.96.198', 'Chrome'),
(92, '2017-04-11 00:23:16', '138.197.192.28', 'Chrome'),
(93, '2017-04-11 00:23:43', '112.215.151.61', 'Chrome'),
(94, '2017-04-11 00:25:22', '202.51.104.154', 'Chrome'),
(95, '2017-04-11 00:32:18', '202.67.44.7', 'Firefox'),
(96, '2017-04-11 00:36:29', '118.136.122.84', 'Chrome'),
(97, '2017-04-11 00:39:01', '61.247.21.51', 'Chrome'),
(98, '2017-04-11 00:41:14', '114.124.180.250', 'Chrome'),
(99, '2017-04-11 00:41:31', '120.188.64.226', 'Chrome'),
(100, '2017-04-11 00:42:50', '180.247.204.243', 'Chrome'),
(101, '2017-04-11 00:44:24', '125.161.179.203', 'Chrome'),
(102, '2017-04-11 00:45:42', '114.125.55.58', 'Chrome'),
(103, '2017-04-11 00:49:50', '158.140.182.11', 'Chrome'),
(104, '2017-04-11 00:53:45', '202.67.33.22', 'Chrome'),
(105, '2017-04-11 00:58:20', '120.188.65.30', 'Chrome'),
(106, '2017-04-11 00:59:31', '120.188.77.153', 'Chrome'),
(107, '2017-04-11 01:02:08', '125.167.185.147', 'Mozilla'),
(108, '2017-04-11 01:03:59', '118.136.84.45', 'Chrome'),
(109, '2017-04-11 01:04:17', '110.136.129.138', 'Chrome'),
(110, '2017-04-11 01:04:28', '36.75.108.223', 'Chrome'),
(111, '2017-04-11 01:05:22', '36.72.38.146', 'Chrome'),
(112, '2017-04-11 01:06:07', '120.188.5.85', 'Chrome'),
(113, '2017-04-11 01:09:29', '180.253.90.210', 'Chrome'),
(114, '2017-04-11 01:11:54', '107.167.99.179', 'Opera'),
(115, '2017-04-11 01:12:25', '112.215.171.165', 'Chrome'),
(116, '2017-04-11 01:14:31', '203.166.201.206', 'Chrome'),
(117, '2017-04-11 01:14:57', '107.167.99.208', 'Opera'),
(118, '2017-04-11 01:15:01', '36.73.194.145', 'Mozilla'),
(119, '2017-04-11 01:16:01', '107.167.113.164', 'Opera'),
(120, '2017-04-11 01:16:18', '120.92.32.177', 'Chrome'),
(121, '2017-04-11 01:16:59', '180.245.132.122', 'Chrome'),
(122, '2017-04-11 01:17:32', '120.188.80.236', 'Chrome'),
(123, '2017-04-11 01:17:33', '114.125.89.57', 'Chrome'),
(124, '2017-04-11 01:17:37', '139.0.186.187', 'Chrome'),
(125, '2017-04-11 01:18:01', '125.166.215.131', 'Chrome'),
(126, '2017-04-11 01:18:05', '120.188.6.216', 'Mozilla'),
(127, '2017-04-11 01:18:42', '125.161.98.148', 'Chrome'),
(128, '2017-04-11 01:19:46', '36.73.9.148', 'Chrome'),
(129, '2017-04-11 01:19:51', '114.125.182.65', 'Chrome'),
(130, '2017-04-11 01:20:43', '114.125.40.100', 'Chrome'),
(131, '2017-04-11 01:21:21', '120.188.86.219', 'Chrome'),
(132, '2017-04-11 01:22:11', '118.136.103.194', 'Mozilla'),
(133, '2017-04-11 01:23:23', '36.81.10.230', 'Chrome'),
(134, '2017-04-11 01:23:23', '114.125.164.4', 'Chrome'),
(135, '2017-04-11 01:24:04', '107.167.112.218', 'Chrome'),
(136, '2017-04-11 01:24:26', '107.167.98.132', 'Opera'),
(137, '2017-04-11 01:25:20', '180.246.19.210', 'Chrome'),
(138, '2017-04-11 01:25:48', '120.188.1.85', 'Chrome'),
(139, '2017-04-11 01:27:26', '139.195.66.235', 'Chrome'),
(140, '2017-04-11 01:27:42', '115.178.198.211', 'Chrome'),
(141, '2017-04-11 01:27:53', '115.178.235.88', 'Chrome'),
(142, '2017-04-11 01:28:25', '36.84.87.138', 'Mozilla'),
(143, '2017-04-11 01:28:41', '114.121.232.136', 'Chrome'),
(144, '2017-04-11 01:28:59', '118.96.227.216', 'Chrome'),
(145, '2017-04-11 01:29:21', '36.68.184.231', 'Mozilla'),
(146, '2017-04-11 01:29:54', '120.188.3.198', 'Chrome'),
(147, '2017-04-11 01:32:20', '61.94.133.70', 'Chrome'),
(148, '2017-04-11 01:32:20', '8.37.235.44', 'Safari'),
(149, '2017-04-11 01:32:55', '110.136.254.232', 'Chrome'),
(150, '2017-04-11 01:33:53', '36.83.28.90', 'Chrome'),
(151, '2017-04-11 01:34:01', '120.188.80.239', 'Chrome'),
(152, '2017-04-11 01:34:26', '114.125.72.8', 'Chrome'),
(153, '2017-04-11 01:34:35', '180.247.33.166', 'Safari'),
(154, '2017-04-11 01:34:46', '180.214.232.22', 'Chrome'),
(155, '2017-04-11 01:35:23', '61.5.92.125', 'Chrome'),
(156, '2017-04-11 01:35:58', '36.69.222.51', 'Chrome'),
(157, '2017-04-11 01:36:00', '182.253.139.130', 'Chrome'),
(158, '2017-04-11 01:36:12', '120.188.86.170', 'Chrome'),
(159, '2017-04-11 01:36:32', '139.228.97.115', 'Chrome'),
(160, '2017-04-11 01:36:54', '36.67.61.15', 'Chrome'),
(161, '2017-04-11 01:36:56', '114.4.78.184', 'Chrome'),
(162, '2017-04-11 01:37:45', '202.67.40.221', 'Chrome'),
(163, '2017-04-11 01:38:39', '112.215.172.66', 'Chrome'),
(164, '2017-04-11 01:38:47', '36.74.207.97', 'Chrome'),
(165, '2017-04-11 01:39:12', '64.233.173.4', 'Chrome'),
(166, '2017-04-11 01:39:43', '36.84.136.234', 'Chrome'),
(167, '2017-04-11 01:41:00', '202.62.16.49', 'Chrome'),
(168, '2017-04-11 01:41:04', '125.167.120.95', 'Chrome'),
(169, '2017-04-11 01:41:22', '168.235.207.168', 'Firefox'),
(170, '2017-04-11 01:41:28', '120.188.64.235', 'Chrome'),
(171, '2017-04-11 01:41:46', '120.188.81.204', 'Chrome'),
(172, '2017-04-11 01:42:02', '125.162.245.169', 'Chrome'),
(173, '2017-04-11 01:42:56', '180.242.10.170', 'Chrome'),
(174, '2017-04-11 01:43:39', '64.233.173.6', 'Chrome'),
(175, '2017-04-11 01:43:47', '112.215.174.87', 'Chrome'),
(176, '2017-04-11 01:44:13', '36.71.46.157', 'Chrome'),
(177, '2017-04-11 01:44:43', '103.56.235.74', 'Chrome'),
(178, '2017-04-11 01:44:54', '120.188.66.124', 'Chrome'),
(179, '2017-04-11 01:45:01', '69.171.225.33', 'Other'),
(180, '2017-04-11 01:45:50', '114.125.202.40', 'Chrome'),
(181, '2017-04-11 01:46:21', '120.188.87.93', 'Chrome'),
(182, '2017-04-11 01:46:22', '118.136.85.176', 'Chrome'),
(183, '2017-04-11 01:46:27', '64.233.173.8', 'Chrome'),
(184, '2017-04-11 01:47:08', '36.79.200.132', 'Chrome'),
(185, '2017-04-11 01:47:37', '120.188.35.53', 'Chrome'),
(186, '2017-04-11 01:49:15', '110.138.153.190', 'Chrome'),
(187, '2017-04-11 01:49:20', '114.125.73.228', 'Chrome'),
(188, '2017-04-11 01:49:28', '36.81.119.196', 'Chrome'),
(189, '2017-04-11 01:49:58', '120.188.65.140', 'Chrome'),
(190, '2017-04-11 01:50:41', '125.161.188.27', 'Chrome'),
(191, '2017-04-11 01:50:59', '124.40.251.74', 'Firefox'),
(192, '2017-04-11 01:51:07', '139.228.108.66', 'Chrome'),
(193, '2017-04-11 01:51:09', '180.254.57.164', 'Chrome'),
(194, '2017-04-11 01:52:43', '180.247.95.40', 'Chrome'),
(195, '2017-04-11 01:52:56', '103.205.56.66', 'Chrome'),
(196, '2017-04-11 01:52:56', '103.56.232.196', 'Chrome'),
(197, '2017-04-11 01:53:28', '180.241.167.242', 'Chrome'),
(198, '2017-04-11 01:53:30', '112.215.171.106', 'Chrome'),
(199, '2017-04-11 01:54:48', '114.125.214.65', 'Chrome'),
(200, '2017-04-11 01:55:16', '36.71.48.50', 'Firefox'),
(201, '2017-04-11 01:56:48', '103.9.227.1', 'Chrome'),
(202, '2017-04-11 01:56:52', '202.62.17.134', 'Chrome'),
(203, '2017-04-11 01:57:16', '36.74.110.84', 'Chrome'),
(204, '2017-04-11 01:57:30', '112.215.173.135', 'Chrome'),
(205, '2017-04-11 01:57:53', '36.80.43.86', 'Chrome'),
(206, '2017-04-11 01:58:40', '45.76.207.98', 'Chrome'),
(207, '2017-04-11 01:58:59', '180.214.233.30', 'Chrome'),
(208, '2017-04-11 01:59:04', '36.78.97.242', 'Mozilla'),
(209, '2017-04-11 01:59:34', '61.94.220.130', 'Chrome'),
(210, '2017-04-11 01:59:39', '8.37.230.63', 'Safari'),
(211, '2017-04-11 01:59:56', '125.162.99.169', 'Chrome'),
(212, '2017-04-11 02:00:07', '223.255.227.25', 'Chrome'),
(213, '2017-04-11 02:00:43', '114.121.244.144', 'Chrome'),
(214, '2017-04-11 02:01:00', '114.125.214.143', 'Chrome'),
(215, '2017-04-11 02:01:19', '8.37.235.230', 'Safari'),
(216, '2017-04-11 02:01:25', '120.188.86.129', 'Chrome'),
(217, '2017-04-11 02:01:46', '120.188.74.41', 'Chrome'),
(218, '2017-04-11 02:02:01', '115.178.239.193', 'Chrome'),
(219, '2017-04-11 02:02:25', '202.67.46.8', 'Chrome'),
(220, '2017-04-11 02:02:32', '36.80.211.28', 'Chrome'),
(221, '2017-04-11 02:03:30', '139.195.162.58', 'Chrome'),
(222, '2017-04-11 02:03:52', '202.154.180.10', 'Chrome'),
(223, '2017-04-11 02:04:10', '114.125.184.7', 'Chrome'),
(224, '2017-04-11 02:04:37', '120.188.85.253', 'Chrome'),
(225, '2017-04-11 02:05:08', '139.195.209.21', 'Chrome'),
(226, '2017-04-11 02:05:33', '120.188.33.114', 'Chrome'),
(227, '2017-04-11 02:05:39', '8.37.233.52', 'Safari'),
(228, '2017-04-11 02:05:45', '36.79.130.99', 'Chrome'),
(229, '2017-04-11 02:05:57', '36.74.24.2', 'Chrome'),
(230, '2017-04-11 02:06:19', '114.125.186.131', 'Chrome'),
(231, '2017-04-11 02:06:21', '202.62.17.197', 'Chrome'),
(232, '2017-04-11 02:07:07', '118.96.232.253', 'Chrome'),
(233, '2017-04-11 02:07:41', '36.79.188.51', 'Chrome'),
(234, '2017-04-11 02:07:49', '36.74.122.45', 'Chrome'),
(235, '2017-04-11 02:07:59', '36.84.110.69', 'Chrome'),
(236, '2017-04-11 02:07:59', '112.215.172.153', 'Chrome'),
(237, '2017-04-11 02:08:13', '36.82.30.206', 'Chrome'),
(238, '2017-04-11 02:08:39', '180.214.232.2', 'Chrome'),
(239, '2017-04-11 02:09:14', '107.167.112.128', 'Opera'),
(240, '2017-04-11 02:09:16', '36.70.178.105', 'Chrome'),
(241, '2017-04-11 02:09:31', '139.195.130.19', 'Chrome'),
(242, '2017-04-11 02:10:07', '114.125.57.214', 'Chrome'),
(243, '2017-04-11 02:10:17', '120.188.85.184', 'Chrome'),
(244, '2017-04-11 02:10:28', '125.163.107.41', 'Firefox'),
(245, '2017-04-11 02:10:51', '114.125.41.144', 'Chrome'),
(246, '2017-04-11 02:10:57', '61.94.103.59', 'Chrome'),
(247, '2017-04-11 02:11:44', '36.76.30.210', 'Chrome'),
(248, '2017-04-11 02:12:02', '36.73.134.193', 'Chrome'),
(249, '2017-04-11 02:12:07', '112.215.173.16', 'Chrome'),
(250, '2017-04-11 02:12:54', '120.188.92.195', 'Chrome'),
(251, '2017-04-11 02:12:56', '125.163.92.209', 'Chrome'),
(252, '2017-04-11 02:13:55', '182.253.142.24', 'Chrome'),
(253, '2017-04-11 02:14:04', '120.188.86.148', 'Chrome'),
(254, '2017-04-11 02:14:32', '182.253.163.61', 'Chrome'),
(255, '2017-04-11 02:15:38', '36.74.148.31', 'Chrome'),
(256, '2017-04-11 02:16:33', '8.37.233.156', 'Safari'),
(257, '2017-04-11 02:16:40', '114.125.56.121', 'Firefox'),
(258, '2017-04-11 02:16:48', '158.140.165.20', 'Chrome'),
(259, '2017-04-11 02:16:53', '125.164.97.226', 'Chrome'),
(260, '2017-04-11 02:16:54', '120.188.92.249', 'Chrome'),
(261, '2017-04-11 02:17:02', '118.137.208.31', 'Chrome'),
(262, '2017-04-11 02:17:06', '180.244.71.107', 'Chrome'),
(263, '2017-04-11 02:17:13', '120.188.87.220', 'Chrome'),
(264, '2017-04-11 02:17:33', '112.215.172.199', 'Safari'),
(265, '2017-04-11 02:17:59', '110.138.44.236', 'Chrome'),
(266, '2017-04-11 02:18:11', '168.235.195.254', 'Safari'),
(267, '2017-04-11 02:18:16', '180.245.98.188', 'Chrome'),
(268, '2017-04-11 02:18:34', '114.125.183.102', 'Chrome'),
(269, '2017-04-11 02:18:54', '125.164.38.13', 'Chrome'),
(270, '2017-04-11 02:19:03', '114.121.239.102', 'Chrome'),
(271, '2017-04-11 02:19:39', '168.235.206.137', 'Safari'),
(272, '2017-04-11 02:20:08', '202.80.213.87', 'Chrome'),
(273, '2017-04-11 02:20:54', '180.246.73.3', 'Chrome'),
(274, '2017-04-11 02:21:38', '36.75.32.145', 'Mozilla'),
(275, '2017-04-11 02:21:40', '112.215.154.115', 'Chrome'),
(276, '2017-04-11 02:21:45', '36.73.96.185', 'Mozilla'),
(277, '2017-04-11 02:22:14', '8.37.232.215', 'Safari'),
(278, '2017-04-11 02:22:29', '36.68.233.0', 'Chrome'),
(279, '2017-04-11 02:22:44', '36.84.224.73', 'Chrome'),
(280, '2017-04-11 02:23:05', '66.220.151.86', 'Other'),
(281, '2017-04-11 02:23:37', '120.188.75.121', 'Chrome'),
(282, '2017-04-11 02:23:55', '207.241.226.233', 'Mozilla'),
(283, '2017-04-11 02:24:11', '36.73.181.116', 'Chrome'),
(284, '2017-04-11 02:25:14', '198.186.192.44', 'Other'),
(285, '2017-04-11 02:25:32', '114.4.78.117', 'Chrome'),
(286, '2017-04-11 02:26:14', '36.72.95.85', 'Firefox'),
(287, '2017-04-11 02:27:02', '120.188.81.107', 'Chrome'),
(288, '2017-04-11 02:27:55', '114.124.149.112', 'Chrome'),
(289, '2017-04-11 02:28:05', '114.125.205.41', 'Chrome'),
(290, '2017-04-11 02:28:30', '125.163.78.202', 'Chrome'),
(291, '2017-04-11 02:28:53', '114.125.52.130', 'Firefox'),
(292, '2017-04-11 02:29:21', '114.4.78.150', 'Chrome'),
(293, '2017-04-11 02:29:23', '114.121.156.129', 'Chrome'),
(294, '2017-04-11 02:29:27', '112.215.172.8', 'Chrome'),
(295, '2017-04-11 02:30:06', '114.125.166.163', 'Chrome'),
(296, '2017-04-11 02:30:11', '139.195.187.141', 'Chrome'),
(297, '2017-04-11 02:30:29', '36.72.21.12', 'Chrome'),
(298, '2017-04-11 02:32:10', '8.37.225.108', 'Firefox'),
(299, '2017-04-11 02:32:15', '180.248.6.118', 'Chrome'),
(300, '2017-04-11 02:33:20', '8.37.233.95', 'Safari'),
(301, '2017-04-11 02:33:52', '120.188.80.6', 'Safari'),
(302, '2017-04-11 02:34:28', '211.227.156.112', 'Chrome'),
(303, '2017-04-11 02:34:30', '125.167.187.126', 'Chrome'),
(304, '2017-04-11 02:35:08', '107.167.112.72', 'Chrome'),
(305, '2017-04-11 02:35:33', '112.215.152.98', 'Mozilla'),
(306, '2017-04-11 02:35:42', '180.251.167.150', 'Chrome'),
(307, '2017-04-11 02:36:03', '36.82.76.215', 'Chrome'),
(308, '2017-04-11 02:37:21', '168.235.206.238', 'Safari'),
(309, '2017-04-11 02:37:45', '124.153.33.39', 'Chrome'),
(310, '2017-04-11 02:38:15', '168.235.197.19', 'Firefox'),
(311, '2017-04-11 02:38:20', '36.73.87.46', 'Chrome'),
(312, '2017-04-11 02:38:21', '188.166.218.174', 'Firefox'),
(313, '2017-04-11 02:38:39', '36.78.54.201', 'Firefox'),
(314, '2017-04-11 02:39:00', '139.228.95.10', 'Chrome'),
(315, '2017-04-11 02:39:00', '120.188.80.114', 'Chrome'),
(316, '2017-04-11 02:39:11', '182.253.203.58', 'Chrome'),
(317, '2017-04-11 02:39:30', '36.78.66.34', 'Chrome'),
(318, '2017-04-11 02:40:32', '120.188.79.185', 'Mozilla'),
(319, '2017-04-11 02:41:11', '118.96.235.203', 'Chrome'),
(320, '2017-04-11 02:41:20', '180.253.236.103', 'Chrome'),
(321, '2017-04-11 02:42:54', '125.161.188.207', 'Chrome'),
(322, '2017-04-11 02:43:44', '36.66.72.178', 'Chrome'),
(323, '2017-04-11 02:43:52', '36.84.13.131', 'Chrome'),
(324, '2017-04-11 02:44:22', '112.215.45.240', 'Firefox'),
(325, '2017-04-11 02:44:37', '49.182.76.246', 'Chrome'),
(326, '2017-04-11 02:44:45', '180.247.77.200', 'Chrome'),
(327, '2017-04-11 02:44:55', '36.88.158.84', 'Chrome'),
(328, '2017-04-11 02:45:14', '202.62.17.12', 'Chrome'),
(329, '2017-04-11 02:45:41', '182.253.163.51', 'Firefox'),
(330, '2017-04-11 02:45:47', '139.195.94.117', 'Chrome'),
(331, '2017-04-11 02:46:17', '114.4.83.68', 'Chrome'),
(332, '2017-04-11 02:47:06', '114.125.37.46', 'Safari'),
(333, '2017-04-11 02:47:08', '173.252.74.105', 'Other'),
(334, '2017-04-11 02:48:40', '112.215.200.30', 'Chrome'),
(335, '2017-04-11 02:49:58', '120.188.81.20', 'Chrome'),
(336, '2017-04-11 02:50:08', '120.188.33.140', 'Chrome'),
(337, '2017-04-11 02:50:42', '114.4.79.120', 'Chrome'),
(338, '2017-04-11 02:51:03', '139.194.221.74', 'Chrome'),
(339, '2017-04-11 02:51:05', '120.188.87.99', 'Firefox'),
(340, '2017-04-11 02:51:24', '36.73.62.30', 'Chrome'),
(341, '2017-04-11 02:51:29', '112.215.45.120', 'Firefox'),
(342, '2017-04-11 02:51:30', '112.215.153.184', 'Safari'),
(343, '2017-04-11 02:51:35', '36.78.67.111', 'Chrome'),
(344, '2017-04-11 02:52:07', '120.188.80.165', 'Chrome'),
(345, '2017-04-11 02:52:13', '61.94.100.166', 'Chrome'),
(346, '2017-04-11 02:52:24', '180.252.168.2', 'Chrome'),
(347, '2017-04-11 02:52:26', '36.84.64.22', 'Chrome'),
(348, '2017-04-11 02:52:32', '198.144.107.187', 'Chrome'),
(349, '2017-04-11 02:53:18', '120.188.80.158', 'Chrome'),
(350, '2017-04-11 02:54:23', '180.244.55.126', 'Chrome'),
(351, '2017-04-11 02:54:54', '107.167.112.118', 'Opera'),
(352, '2017-04-11 02:55:19', '36.73.63.156', 'Chrome'),
(353, '2017-04-11 02:56:20', '125.167.92.123', 'Safari'),
(354, '2017-04-11 02:57:51', '180.247.136.78', 'Chrome'),
(355, '2017-04-11 02:58:59', '114.124.148.228', 'Chrome'),
(356, '2017-04-11 02:59:20', '120.188.80.220', 'Chrome'),
(357, '2017-04-11 02:59:26', '180.248.179.126', 'Chrome'),
(358, '2017-04-11 02:59:39', '36.78.194.86', 'Chrome'),
(359, '2017-04-11 02:59:48', '202.67.46.46', 'Chrome'),
(360, '2017-04-11 03:00:10', '113.210.202.42', 'Chrome'),
(361, '2017-04-11 03:01:23', '114.120.233.30', 'Chrome'),
(362, '2017-04-11 03:02:10', '202.182.55.230', 'Chrome'),
(363, '2017-04-11 03:02:20', '180.244.73.72', 'Chrome'),
(364, '2017-04-11 03:02:52', '49.213.16.227', 'Chrome'),
(365, '2017-04-11 03:03:39', '36.73.177.201', 'Chrome'),
(366, '2017-04-11 03:03:48', '112.215.152.124', 'Chrome'),
(367, '2017-04-11 03:08:14', '120.188.0.47', 'Chrome'),
(368, '2017-04-11 03:09:19', '36.84.58.187', 'Chrome'),
(369, '2017-04-11 03:11:54', '111.94.229.133', 'Chrome'),
(370, '2017-04-11 03:12:07', '118.136.18.255', 'Chrome'),
(371, '2017-04-11 03:12:47', '36.74.212.125', 'Chrome'),
(372, '2017-04-11 03:12:56', '103.206.245.142', 'Chrome'),
(373, '2017-04-11 03:13:57', '36.71.129.27', 'Chrome'),
(374, '2017-04-11 03:18:20', '180.252.123.165', 'Chrome'),
(375, '2017-04-11 03:18:37', '180.253.138.223', 'Chrome'),
(376, '2017-04-11 03:18:47', '66.249.79.83', 'Googlebot'),
(377, '2017-04-11 03:19:03', '36.80.242.230', 'Chrome'),
(378, '2017-04-11 03:19:30', '223.255.231.154', 'Chrome'),
(379, '2017-04-11 03:19:31', '114.125.200.74', 'Chrome'),
(380, '2017-04-11 03:21:00', '66.249.79.78', 'Googlebot'),
(381, '2017-04-11 03:21:21', '114.4.83.180', 'Mozilla'),
(382, '2017-04-11 03:23:31', '139.192.11.235', 'Chrome'),
(383, '2017-04-11 03:23:46', '125.160.66.244', 'Firefox'),
(384, '2017-04-11 03:23:53', '112.215.170.139', 'Chrome'),
(385, '2017-04-11 03:24:37', '112.215.153.158', 'Safari'),
(386, '2017-04-11 03:25:05', '110.139.187.176', 'Chrome'),
(387, '2017-04-11 03:25:14', '111.94.122.151', 'Chrome'),
(388, '2017-04-11 03:25:22', '112.215.153.252', 'Chrome'),
(389, '2017-04-11 03:27:00', '112.215.170.48', 'Chrome'),
(390, '2017-04-11 03:28:12', '125.160.51.241', 'Chrome'),
(391, '2017-04-11 03:29:29', '66.249.79.85', 'Googlebot'),
(392, '2017-04-11 03:29:40', '120.188.83.178', 'Chrome'),
(393, '2017-04-11 03:30:02', '112.215.170.170', 'Chrome'),
(394, '2017-04-11 03:30:03', '139.228.17.159', 'Chrome'),
(395, '2017-04-11 03:30:08', '107.167.112.5', 'Opera'),
(396, '2017-04-11 03:31:09', '180.249.17.245', 'Chrome'),
(397, '2017-04-11 03:31:14', '182.253.163.14', 'Chrome'),
(398, '2017-04-11 03:31:44', '202.80.215.217', 'Chrome'),
(399, '2017-04-11 03:32:21', '120.188.95.126', 'Chrome'),
(400, '2017-04-11 03:32:31', '118.136.247.154', 'Firefox'),
(401, '2017-04-11 03:32:40', '66.102.6.211', 'Chrome'),
(402, '2017-04-11 03:32:40', '66.102.6.207', 'Chrome'),
(403, '2017-04-11 03:32:41', '66.102.6.209', 'Chrome'),
(404, '2017-04-11 03:33:46', '36.84.9.122', 'Firefox'),
(405, '2017-04-11 03:34:10', '120.188.94.195', 'Chrome'),
(406, '2017-04-11 03:34:31', '36.84.2.91', 'Chrome'),
(407, '2017-04-11 03:34:48', '125.164.16.170', 'Chrome'),
(408, '2017-04-11 03:35:11', '125.164.15.224', 'Chrome'),
(409, '2017-04-11 03:35:40', '114.125.70.243', 'Chrome'),
(410, '2017-04-11 03:36:05', '180.241.222.250', 'Chrome'),
(411, '2017-04-11 03:36:31', '112.215.44.57', 'Safari'),
(412, '2017-04-11 03:39:29', '114.4.82.125', 'Chrome'),
(413, '2017-04-11 03:39:34', '120.188.5.175', 'Chrome'),
(414, '2017-04-11 03:40:03', '103.233.157.202', 'Chrome'),
(415, '2017-04-11 03:43:49', '37.34.62.205', 'Other'),
(416, '2017-04-11 03:45:13', '120.188.32.191', 'Chrome'),
(417, '2017-04-11 03:46:29', '168.235.198.107', 'Safari'),
(418, '2017-04-11 03:46:36', '36.84.0.75', 'Chrome'),
(419, '2017-04-11 03:47:19', '182.253.163.7', 'Chrome'),
(420, '2017-04-11 03:47:25', '36.68.52.209', 'Safari'),
(421, '2017-04-11 03:47:39', '103.47.132.52', 'Chrome'),
(422, '2017-04-11 03:49:34', '36.66.211.11', 'Chrome'),
(423, '2017-04-11 03:49:48', '112.215.171.166', 'Chrome'),
(424, '2017-04-11 03:51:25', '103.4.167.243', 'Chrome'),
(425, '2017-04-11 03:51:27', '120.188.85.6', 'Chrome'),
(426, '2017-04-11 03:51:38', '120.188.81.83', 'Chrome'),
(427, '2017-04-11 03:52:28', '120.188.83.233', 'Chrome'),
(428, '2017-04-11 03:53:13', '125.165.48.195', 'Firefox'),
(429, '2017-04-11 03:53:56', '203.130.236.249', 'Chrome'),
(430, '2017-04-11 03:54:04', '115.178.238.196', 'Mozilla'),
(431, '2017-04-11 03:54:25', '202.179.189.74', 'Mozilla'),
(432, '2017-04-11 03:56:26', '182.253.62.114', 'Chrome'),
(433, '2017-04-11 03:57:13', '112.215.154.28', 'Chrome'),
(434, '2017-04-11 03:57:29', '110.137.169.204', 'Chrome'),
(435, '2017-04-11 03:57:32', '223.255.227.26', 'Chrome'),
(436, '2017-04-11 03:57:37', '112.215.63.20', 'Chrome'),
(437, '2017-04-11 03:58:22', '139.194.53.216', 'Chrome'),
(438, '2017-04-11 03:58:51', '27.50.17.11', 'Chrome'),
(439, '2017-04-11 03:59:10', '182.253.163.50', 'Firefox'),
(440, '2017-04-11 03:59:23', '36.76.123.254', 'Chrome'),
(441, '2017-04-11 03:59:56', '103.47.132.22', 'Chrome'),
(442, '2017-04-11 04:00:06', '8.37.233.83', 'Safari'),
(443, '2017-04-11 04:00:22', '114.125.180.165', 'Chrome'),
(444, '2017-04-11 04:01:15', '180.252.143.230', 'Chrome'),
(445, '2017-04-11 04:01:21', '163.53.185.146', 'Chrome'),
(446, '2017-04-11 04:02:09', '114.125.207.121', 'Chrome'),
(447, '2017-04-11 04:02:16', '36.72.9.120', 'Chrome'),
(448, '2017-04-11 04:04:20', '61.5.60.185', 'Chrome'),
(449, '2017-04-11 04:04:22', '36.80.153.97', 'Chrome'),
(450, '2017-04-11 04:05:17', '180.252.239.223', 'Chrome'),
(451, '2017-04-11 04:06:46', '120.188.33.120', 'Chrome'),
(452, '2017-04-11 04:06:46', '118.97.50.22', 'Chrome'),
(453, '2017-04-11 04:07:41', '118.97.50.23', 'Chrome'),
(454, '2017-04-11 04:08:45', '36.84.229.118', 'Chrome'),
(455, '2017-04-11 04:08:48', '114.125.11.225', 'Chrome'),
(456, '2017-04-11 04:09:25', '182.23.59.66', 'Firefox'),
(457, '2017-04-11 04:09:52', '118.97.50.24', 'Chrome'),
(458, '2017-04-11 04:10:35', '175.111.91.19', 'Firefox'),
(459, '2017-04-11 04:10:37', '121.101.131.66', 'Chrome'),
(460, '2017-04-11 04:10:52', '2.235.170.197', 'Chrome'),
(461, '2017-04-11 04:11:19', '180.247.185.142', 'Chrome'),
(462, '2017-04-11 04:12:14', '36.80.179.43', 'Firefox'),
(463, '2017-04-11 04:12:29', '36.75.240.166', 'Chrome'),
(464, '2017-04-11 04:13:07', '118.97.241.130', 'Chrome'),
(465, '2017-04-11 04:13:07', '101.128.85.22', 'Chrome'),
(466, '2017-04-11 04:13:24', '182.253.122.110', 'Chrome'),
(467, '2017-04-11 04:14:07', '120.188.65.57', 'Chrome'),
(468, '2017-04-11 04:14:14', '115.164.60.248', 'Chrome'),
(469, '2017-04-11 04:14:18', '180.250.206.226', 'Chrome'),
(470, '2017-04-11 04:14:42', '125.165.103.49', 'Chrome'),
(471, '2017-04-11 04:15:01', '104.237.243.90', 'Firefox'),
(472, '2017-04-11 04:15:06', '180.254.241.158', 'Chrome'),
(473, '2017-04-11 04:15:26', '36.85.5.162', 'Chrome'),
(474, '2017-04-11 04:15:32', '120.188.67.11', 'Chrome'),
(475, '2017-04-11 04:15:34', '38.80.23.2', 'Firefox'),
(476, '2017-04-11 04:15:37', '61.94.194.3', 'Chrome'),
(477, '2017-04-11 04:15:38', '222.124.22.228', 'Chrome'),
(478, '2017-04-11 04:15:43', '180.178.93.249', 'Chrome'),
(479, '2017-04-11 04:16:08', '36.80.213.229', 'Chrome'),
(480, '2017-04-11 04:17:03', '175.184.250.82', 'Chrome'),
(481, '2017-04-11 04:17:32', '103.31.109.2', 'Chrome'),
(482, '2017-04-11 04:17:47', '168.235.202.213', 'Safari'),
(483, '2017-04-11 04:18:19', '120.188.85.102', 'Chrome'),
(484, '2017-04-11 04:18:25', '61.5.84.239', 'Chrome'),
(485, '2017-04-11 04:18:27', '36.73.220.140', 'Chrome'),
(486, '2017-04-11 04:18:33', '180.247.181.120', 'Chrome'),
(487, '2017-04-11 04:19:26', '36.73.22.116', 'Chrome'),
(488, '2017-04-11 04:20:45', '36.84.229.80', 'Chrome'),
(489, '2017-04-11 04:20:59', '120.188.67.170', 'Chrome'),
(490, '2017-04-11 04:21:00', '36.85.13.189', 'Chrome'),
(491, '2017-04-11 04:21:54', '66.96.246.66', 'Chrome'),
(492, '2017-04-11 04:22:24', '111.68.27.251', 'Chrome'),
(493, '2017-04-11 04:23:07', '202.80.212.117', 'Chrome'),
(494, '2017-04-11 04:23:35', '112.215.171.69', 'Mozilla'),
(495, '2017-04-11 04:24:11', '222.124.214.250', 'Chrome'),
(496, '2017-04-11 04:24:29', '140.0.203.15', 'Chrome'),
(497, '2017-04-11 04:24:34', '116.254.126.142', 'Chrome'),
(498, '2017-04-11 04:24:49', '120.188.66.255', 'Chrome'),
(499, '2017-04-11 04:25:09', '168.235.194.213', 'Safari'),
(500, '2017-04-11 04:25:24', '114.125.9.160', 'Safari'),
(501, '2017-04-11 04:25:30', '112.215.201.184', 'Safari'),
(502, '2017-04-11 04:25:33', '125.163.255.80', 'Chrome'),
(503, '2017-04-11 04:25:45', '168.235.200.204', 'Safari'),
(504, '2017-04-11 04:26:13', '128.199.233.142', 'Safari'),
(505, '2017-04-11 04:27:47', '112.215.154.169', 'Firefox'),
(506, '2017-04-11 04:28:01', '168.235.195.242', 'Safari'),
(507, '2017-04-11 04:28:42', '223.25.97.210', 'Chrome'),
(508, '2017-04-11 04:30:00', '203.176.183.20', 'Chrome'),
(509, '2017-04-11 04:30:26', '180.253.126.127', 'Chrome'),
(510, '2017-04-11 04:30:42', '36.78.129.171', 'Chrome'),
(511, '2017-04-11 04:33:27', '14.102.152.234', 'Chrome'),
(512, '2017-04-11 04:33:45', '8.37.230.53', 'Safari'),
(513, '2017-04-11 04:34:03', '112.215.172.183', 'Chrome'),
(514, '2017-04-11 04:35:21', '112.215.65.96', 'Safari'),
(515, '2017-04-11 04:36:18', '110.5.102.56', 'Chrome'),
(516, '2017-04-11 04:36:41', '114.121.246.246', 'Chrome'),
(517, '2017-04-11 04:36:53', '110.139.27.171', 'Chrome'),
(518, '2017-04-11 04:38:41', '120.188.65.207', 'Chrome'),
(519, '2017-04-11 04:39:07', '180.254.64.231', 'Chrome'),
(520, '2017-04-11 04:39:10', '202.133.6.54', 'Chrome'),
(521, '2017-04-11 04:40:16', '36.68.41.249', 'Chrome'),
(522, '2017-04-11 04:42:44', '125.163.57.73', 'Chrome'),
(523, '2017-04-11 04:43:57', '114.121.157.148', 'Chrome'),
(524, '2017-04-11 04:44:22', '140.0.229.214', 'Chrome'),
(525, '2017-04-11 04:45:51', '103.55.216.76', 'Firefox'),
(526, '2017-04-11 04:47:01', '120.188.4.116', 'Chrome'),
(527, '2017-04-11 04:47:39', '202.124.205.203', 'Mozilla'),
(528, '2017-04-11 04:47:47', '202.80.212.84', 'Chrome'),
(529, '2017-04-11 04:48:28', '36.74.26.7', 'Chrome'),
(530, '2017-04-11 04:48:28', '210.57.215.142', 'Chrome'),
(531, '2017-04-11 04:48:32', '202.43.183.130', 'Chrome'),
(532, '2017-04-11 04:48:52', '61.94.50.125', 'Chrome'),
(533, '2017-04-11 04:49:50', '139.192.185.41', 'Chrome'),
(534, '2017-04-11 04:50:22', '36.72.118.174', 'Chrome'),
(535, '2017-04-11 04:50:52', '118.136.225.170', 'Chrome'),
(536, '2017-04-11 04:51:24', '202.67.46.40', 'Chrome'),
(537, '2017-04-11 04:51:40', '182.253.33.51', 'Firefox'),
(538, '2017-04-11 04:51:42', '180.254.26.52', 'Chrome'),
(539, '2017-04-11 04:51:43', '36.66.168.63', 'Chrome'),
(540, '2017-04-11 04:52:00', '112.215.45.116', 'Firefox'),
(541, '2017-04-11 04:52:28', '112.215.172.67', 'Chrome'),
(542, '2017-04-11 04:53:57', '180.245.67.128', 'Chrome'),
(543, '2017-04-11 04:54:37', '36.83.178.178', 'Chrome'),
(544, '2017-04-11 04:54:46', '118.96.213.178', 'Firefox'),
(545, '2017-04-11 04:56:06', '114.125.170.252', 'Chrome'),
(546, '2017-04-11 04:56:19', '124.153.32.100', 'Chrome'),
(547, '2017-04-11 04:56:47', '120.188.74.139', 'Mozilla'),
(548, '2017-04-11 04:57:23', '124.153.33.42', 'Mozilla'),
(549, '2017-04-11 04:58:20', '36.78.128.112', 'Firefox'),
(550, '2017-04-11 04:58:46', '103.228.26.4', 'Chrome'),
(551, '2017-04-11 04:59:53', '36.82.101.17', 'Chrome'),
(552, '2017-04-11 05:00:57', '139.0.54.49', 'Chrome'),
(553, '2017-04-11 05:00:59', '180.252.103.36', 'Mozilla'),
(554, '2017-04-11 05:01:09', '117.102.64.82', 'Firefox'),
(555, '2017-04-11 05:03:35', '202.67.44.8', 'Chrome'),
(556, '2017-04-11 05:03:52', '114.125.26.15', 'Chrome'),
(557, '2017-04-11 05:03:59', '180.246.224.105', 'Chrome'),
(558, '2017-04-11 05:04:41', '112.215.170.35', 'Mozilla'),
(559, '2017-04-11 05:05:09', '180.251.217.107', 'Chrome'),
(560, '2017-04-11 05:06:11', '36.84.39.119', 'Chrome'),
(561, '2017-04-11 05:06:46', '103.241.206.74', 'Chrome'),
(562, '2017-04-11 05:07:54', '203.160.128.8', 'Chrome'),
(563, '2017-04-11 05:09:00', '36.71.230.230', 'Chrome'),
(564, '2017-04-11 05:09:09', '118.136.40.213', 'Chrome'),
(565, '2017-04-11 05:10:02', '8.37.225.146', 'Firefox'),
(566, '2017-04-11 05:10:03', '180.251.6.162', 'Chrome'),
(567, '2017-04-11 05:10:10', '112.215.201.35', 'Chrome'),
(568, '2017-04-11 05:10:16', '120.188.64.132', 'Chrome'),
(569, '2017-04-11 05:10:49', '112.215.151.179', 'Chrome'),
(570, '2017-04-11 05:11:10', '107.167.99.205', 'Opera'),
(571, '2017-04-11 05:11:24', '210.211.18.82', 'Chrome'),
(572, '2017-04-11 05:11:27', '112.215.174.151', 'Chrome'),
(573, '2017-04-11 05:11:38', '120.188.73.159', 'Chrome'),
(574, '2017-04-11 05:13:15', '36.81.46.228', 'Chrome'),
(575, '2017-04-11 05:15:07', '36.77.89.224', 'Chrome'),
(576, '2017-04-11 05:15:46', '107.167.112.144', 'Chrome'),
(577, '2017-04-11 05:15:59', '125.165.178.198', 'Firefox'),
(578, '2017-04-11 05:16:26', '139.192.58.131', 'Chrome'),
(579, '2017-04-11 05:16:30', '36.69.12.48', 'Chrome'),
(580, '2017-04-11 05:16:50', '202.179.190.162', 'Chrome'),
(581, '2017-04-11 05:17:02', '36.78.33.42', 'Chrome'),
(582, '2017-04-11 05:17:24', '103.213.131.160', 'Chrome'),
(583, '2017-04-11 05:17:31', '36.85.24.1', 'Mozilla'),
(584, '2017-04-11 05:17:49', '202.158.89.154', 'Chrome'),
(585, '2017-04-11 05:18:38', '36.70.91.134', 'Firefox'),
(586, '2017-04-11 05:18:51', '114.125.30.235', 'Chrome'),
(587, '2017-04-11 05:19:28', '125.163.174.117', 'Chrome'),
(588, '2017-04-11 05:19:37', '103.17.246.48', 'Firefox'),
(589, '2017-04-11 05:20:58', '36.88.134.156', 'Chrome'),
(590, '2017-04-11 05:22:29', '120.188.5.152', 'Mozilla'),
(591, '2017-04-11 05:23:04', '114.124.33.225', 'Chrome'),
(592, '2017-04-11 05:23:20', '112.215.200.147', 'Chrome'),
(593, '2017-04-11 05:23:59', '180.253.125.143', 'Chrome'),
(594, '2017-04-11 05:24:06', '36.69.83.3', 'Chrome'),
(595, '2017-04-11 05:25:00', '36.68.118.78', 'Firefox'),
(596, '2017-04-11 05:25:12', '180.245.99.108', 'Chrome'),
(597, '2017-04-11 05:25:51', '8.37.225.106', 'Firefox'),
(598, '2017-04-11 05:25:52', '58.10.55.252', 'Chrome'),
(599, '2017-04-11 05:26:43', '36.73.65.61', 'Firefox'),
(600, '2017-04-11 05:26:54', '202.62.18.53', 'Chrome'),
(601, '2017-04-11 05:27:15', '180.243.101.157', 'Chrome'),
(602, '2017-04-11 05:29:16', '180.249.209.233', 'Chrome'),
(603, '2017-04-11 05:30:49', '120.188.7.226', 'Chrome'),
(604, '2017-04-11 05:31:05', '36.85.139.235', 'Firefox'),
(605, '2017-04-11 05:32:19', '203.142.64.87', 'Chrome'),
(606, '2017-04-11 05:32:55', '107.167.112.181', 'Opera'),
(607, '2017-04-11 05:33:41', '182.253.73.4', 'Firefox'),
(608, '2017-04-11 05:33:52', '110.136.57.170', 'Chrome'),
(609, '2017-04-11 05:38:00', '112.215.200.152', 'Mozilla'),
(610, '2017-04-11 05:38:13', '168.235.205.184', 'Safari'),
(611, '2017-04-11 05:39:24', '125.164.109.171', 'Chrome'),
(612, '2017-04-11 05:39:26', '36.73.58.152', 'Chrome'),
(613, '2017-04-11 05:39:52', '202.62.16.15', 'Chrome'),
(614, '2017-04-11 05:41:33', '36.73.54.54', 'Chrome'),
(615, '2017-04-11 05:42:02', '36.80.151.109', 'Firefox'),
(616, '2017-04-11 05:42:50', '202.67.40.199', 'Chrome'),
(617, '2017-04-11 05:43:05', '114.4.83.133', 'Chrome'),
(618, '2017-04-11 05:43:07', '173.193.202.116', 'Firefox'),
(619, '2017-04-11 05:43:54', '202.62.16.181', 'Chrome'),
(620, '2017-04-11 05:44:49', '167.114.233.118', 'Firefox'),
(621, '2017-04-11 05:45:06', '180.241.24.74', 'Chrome'),
(622, '2017-04-11 05:46:37', '125.166.212.190', 'Chrome'),
(623, '2017-04-11 05:46:57', '180.241.179.220', 'Chrome'),
(624, '2017-04-11 05:47:03', '125.167.75.246', 'Chrome'),
(625, '2017-04-11 05:47:24', '168.235.194.226', 'Safari'),
(626, '2017-04-11 05:51:37', '118.97.137.170', 'Chrome'),
(627, '2017-04-11 05:52:29', '180.247.208.196', 'Chrome'),
(628, '2017-04-11 05:54:01', '103.9.124.211', 'Chrome'),
(629, '2017-04-11 05:56:05', '120.188.94.118', 'Chrome'),
(630, '2017-04-11 05:56:09', '36.73.12.186', 'Firefox'),
(631, '2017-04-11 05:56:20', '36.66.254.39', 'Firefox'),
(632, '2017-04-11 05:57:04', '120.188.81.56', 'Chrome'),
(633, '2017-04-11 05:58:38', '36.82.7.245', 'Chrome'),
(634, '2017-04-11 05:59:12', '103.212.43.138', 'Chrome'),
(635, '2017-04-11 06:00:14', '139.193.114.21', 'Chrome'),
(636, '2017-04-11 06:00:26', '112.215.175.249', 'Firefox'),
(637, '2017-04-11 06:01:00', '120.188.33.237', 'Chrome'),
(638, '2017-04-11 06:01:29', '36.80.106.53', 'Chrome'),
(639, '2017-04-11 06:01:46', '36.84.0.88', 'Firefox'),
(640, '2017-04-11 06:02:36', '103.57.192.122', 'Chrome'),
(641, '2017-04-11 06:04:31', '36.72.190.47', 'Firefox'),
(642, '2017-04-11 06:06:17', '125.163.105.25', 'Chrome'),
(643, '2017-04-11 06:06:42', '115.178.234.139', 'Mozilla'),
(644, '2017-04-11 06:07:07', '114.120.234.114', 'Mozilla'),
(645, '2017-04-11 06:08:26', '202.67.46.227', 'Chrome'),
(646, '2017-04-11 06:08:58', '36.77.160.216', 'Chrome'),
(647, '2017-04-11 06:09:50', '139.193.15.145', 'Chrome'),
(648, '2017-04-11 06:10:23', '112.215.172.245', 'Chrome'),
(649, '2017-04-11 06:10:26', '207.241.226.232', 'Mozilla'),
(650, '2017-04-11 06:10:43', '120.188.0.239', 'Chrome'),
(651, '2017-04-11 06:10:45', '180.251.99.141', 'Chrome'),
(652, '2017-04-11 06:10:49', '125.162.56.58', 'Chrome'),
(653, '2017-04-11 06:11:15', '36.72.50.199', 'Chrome'),
(654, '2017-04-11 06:11:56', '139.194.66.128', 'Chrome'),
(655, '2017-04-11 06:12:31', '36.78.127.45', 'Firefox'),
(656, '2017-04-11 06:12:36', '36.74.170.244', 'Chrome'),
(657, '2017-04-11 06:13:35', '36.83.123.80', 'Chrome'),
(658, '2017-04-11 06:14:12', '36.84.13.207', 'Chrome'),
(659, '2017-04-11 06:14:26', '112.198.68.78', 'Chrome'),
(660, '2017-04-11 06:14:56', '180.251.88.168', 'Firefox'),
(661, '2017-04-11 06:15:08', '119.110.69.226', 'Chrome'),
(662, '2017-04-11 06:15:36', '36.85.65.250', 'Chrome'),
(663, '2017-04-11 06:16:19', '112.78.141.82', 'Firefox'),
(664, '2017-04-11 06:16:33', '125.163.59.51', 'Chrome'),
(665, '2017-04-11 06:16:55', '116.197.132.78', 'Firefox'),
(666, '2017-04-11 06:17:15', '120.188.67.180', 'Chrome'),
(667, '2017-04-11 06:18:03', '114.4.83.35', 'Chrome'),
(668, '2017-04-11 06:18:04', '125.162.19.20', 'Firefox'),
(669, '2017-04-11 06:18:05', '182.253.3.140', 'Chrome'),
(670, '2017-04-11 06:21:21', '36.78.130.219', 'Firefox'),
(671, '2017-04-11 06:23:41', '180.246.25.27', 'Firefox'),
(672, '2017-04-11 06:24:39', '202.150.146.82', 'Chrome'),
(673, '2017-04-11 06:24:41', '125.162.222.87', 'Mozilla'),
(674, '2017-04-11 06:25:10', '120.188.86.20', 'Chrome'),
(675, '2017-04-11 06:25:19', '125.163.109.106', 'Chrome'),
(676, '2017-04-11 06:25:48', '120.188.81.160', 'Chrome'),
(677, '2017-04-11 06:28:59', '175.111.89.10', 'Chrome'),
(678, '2017-04-11 06:30:03', '114.121.245.17', 'Mozilla'),
(679, '2017-04-11 06:32:30', '110.139.200.11', 'Chrome'),
(680, '2017-04-11 06:32:36', '114.125.52.89', 'Chrome'),
(681, '2017-04-11 06:33:01', '36.74.177.233', 'Chrome'),
(682, '2017-04-11 06:33:20', '180.254.162.29', 'Firefox'),
(683, '2017-04-11 06:33:29', '125.160.100.4', 'Chrome'),
(684, '2017-04-11 06:34:35', '202.77.111.104', 'Chrome'),
(685, '2017-04-11 06:34:52', '36.69.153.83', 'Chrome'),
(686, '2017-04-11 06:34:55', '180.254.13.225', 'Chrome'),
(687, '2017-04-11 06:35:00', '180.251.214.117', 'Chrome'),
(688, '2017-04-11 06:35:03', '36.74.134.188', 'Chrome'),
(689, '2017-04-11 06:35:17', '107.167.103.167', 'Opera'),
(690, '2017-04-11 06:36:32', '139.193.222.23', 'Chrome'),
(691, '2017-04-11 06:36:35', '182.253.72.87', 'Chrome'),
(692, '2017-04-11 06:36:46', '101.255.64.210', 'Chrome'),
(693, '2017-04-11 06:37:56', '36.69.60.79', 'Chrome'),
(694, '2017-04-11 06:38:10', '36.84.229.27', 'Firefox'),
(695, '2017-04-11 06:41:04', '202.62.16.239', 'Firefox'),
(696, '2017-04-11 06:41:18', '36.81.58.185', 'Chrome'),
(697, '2017-04-11 06:41:20', '112.215.152.52', 'Chrome'),
(698, '2017-04-11 06:41:44', '36.74.224.172', 'Chrome'),
(699, '2017-04-11 06:41:47', '112.215.200.247', 'Mozilla'),
(700, '2017-04-11 06:42:10', '112.215.153.115', 'Chrome'),
(701, '2017-04-11 06:42:34', '223.164.0.178', 'Chrome'),
(702, '2017-04-11 06:42:34', '36.72.62.17', 'Chrome'),
(703, '2017-04-11 06:43:14', '103.209.131.44', 'Firefox'),
(704, '2017-04-11 06:43:19', '139.195.33.29', 'Chrome'),
(705, '2017-04-11 06:44:27', '103.61.248.82', 'Chrome'),
(706, '2017-04-11 06:46:26', '175.103.43.86', 'Chrome'),
(707, '2017-04-11 06:47:25', '120.188.94.79', 'Chrome'),
(708, '2017-04-11 06:47:29', '202.169.46.130', 'Chrome'),
(709, '2017-04-11 06:48:13', '158.140.170.38', 'Chrome'),
(710, '2017-04-11 06:49:31', '180.245.193.140', 'Chrome'),
(711, '2017-04-11 06:50:00', '180.246.157.179', 'Chrome'),
(712, '2017-04-11 06:51:27', '36.76.23.139', 'Chrome'),
(713, '2017-04-11 06:51:42', '202.67.41.213', 'Chrome'),
(714, '2017-04-11 06:52:10', '36.78.163.149', 'Chrome'),
(715, '2017-04-11 06:52:48', '158.140.166.0', 'Chrome'),
(716, '2017-04-11 06:55:12', '207.244.86.209', 'Chrome'),
(717, '2017-04-11 06:56:11', '120.188.79.122', 'Chrome'),
(718, '2017-04-11 06:57:47', '36.73.104.74', 'Chrome'),
(719, '2017-04-11 06:57:57', '222.124.22.251', 'Firefox'),
(720, '2017-04-11 06:58:08', '120.188.93.249', 'Chrome'),
(721, '2017-04-11 07:01:39', '120.188.33.199', 'Chrome'),
(722, '2017-04-11 07:01:42', '125.161.64.96', 'Chrome'),
(723, '2017-04-11 07:03:17', '182.253.122.125', 'Chrome'),
(724, '2017-04-11 07:03:42', '36.68.234.47', 'Chrome'),
(725, '2017-04-11 07:04:09', '36.72.94.211', 'Chrome'),
(726, '2017-04-11 07:04:24', '125.163.125.211', 'Chrome'),
(727, '2017-04-11 07:04:28', '180.248.243.155', 'Chrome'),
(728, '2017-04-11 07:04:34', '182.253.34.175', 'Mozilla'),
(729, '2017-04-11 07:05:04', '103.24.49.225', 'Chrome'),
(730, '2017-04-11 07:06:18', '180.248.250.226', 'Chrome'),
(731, '2017-04-11 07:08:42', '36.84.157.255', 'Chrome'),
(732, '2017-04-11 07:08:45', '202.152.156.210', 'Firefox'),
(733, '2017-04-11 07:09:17', '114.125.53.87', 'Chrome'),
(734, '2017-04-11 07:09:19', '120.188.7.170', 'Chrome'),
(735, '2017-04-11 07:11:05', '152.118.148.226', 'Internet Explorer'),
(736, '2017-04-11 07:11:19', '182.253.188.125', 'Chrome'),
(737, '2017-04-11 07:12:23', '5.254.97.108', 'Chrome'),
(738, '2017-04-11 07:12:59', '120.188.3.109', 'Chrome'),
(739, '2017-04-11 07:14:14', '180.246.199.52', 'Chrome'),
(740, '2017-04-11 07:14:41', '210.211.17.14', 'Chrome'),
(741, '2017-04-11 07:15:35', '36.82.201.211', 'Chrome'),
(742, '2017-04-11 07:15:50', '103.23.102.111', 'Chrome'),
(743, '2017-04-11 07:16:55', '36.81.75.68', 'Chrome'),
(744, '2017-04-11 07:18:35', '114.125.39.153', 'Chrome'),
(745, '2017-04-11 07:20:10', '222.124.52.127', 'Chrome'),
(746, '2017-04-11 07:20:49', '180.248.199.49', 'Chrome'),
(747, '2017-04-11 07:21:36', '125.163.114.139', 'Chrome'),
(748, '2017-04-11 07:25:13', '107.167.99.151', 'Opera'),
(749, '2017-04-11 07:25:41', '114.125.116.95', 'Chrome'),
(750, '2017-04-11 07:26:25', '202.62.18.115', 'Chrome'),
(751, '2017-04-11 07:26:26', '61.8.69.82', 'Chrome'),
(752, '2017-04-11 07:28:07', '113.161.224.83', 'Chrome'),
(753, '2017-04-11 07:28:21', '103.47.132.24', 'Chrome'),
(754, '2017-04-11 07:28:39', '120.188.64.12', 'Chrome'),
(755, '2017-04-11 07:29:39', '103.47.134.26', 'Chrome'),
(756, '2017-04-11 07:30:05', '202.9.85.34', 'Chrome'),
(757, '2017-04-11 07:31:35', '182.253.62.142', 'Chrome'),
(758, '2017-04-11 07:31:43', '36.88.45.251', 'Chrome'),
(759, '2017-04-11 07:32:00', '114.121.133.17', 'Mozilla'),
(760, '2017-04-11 07:32:54', '190.233.193.231', 'Chrome'),
(761, '2017-04-11 07:33:17', '202.80.215.57', 'Chrome'),
(762, '2017-04-11 07:33:54', '115.178.216.124', 'Chrome'),
(763, '2017-04-11 07:36:37', '222.165.226.122', 'Firefox'),
(764, '2017-04-11 07:37:43', '36.82.13.155', 'Chrome'),
(765, '2017-04-11 07:38:06', '202.182.59.185', 'Firefox'),
(766, '2017-04-11 07:38:18', '103.21.206.66', 'Chrome'),
(767, '2017-04-11 07:38:50', '36.69.87.71', 'Chrome'),
(768, '2017-04-11 07:39:18', '43.247.13.202', 'Chrome'),
(769, '2017-04-11 07:39:44', '66.102.7.143', 'Chrome'),
(770, '2017-04-11 07:42:57', '168.235.195.74', 'Safari'),
(771, '2017-04-11 07:43:47', '103.8.12.99', 'Chrome'),
(772, '2017-04-11 07:43:50', '180.252.137.203', 'Chrome'),
(773, '2017-04-11 07:44:03', '36.87.53.20', 'Safari'),
(774, '2017-04-11 07:44:42', '114.125.87.178', 'Chrome'),
(775, '2017-04-11 07:45:40', '158.140.172.34', 'Chrome'),
(776, '2017-04-11 07:45:48', '61.94.132.66', 'Chrome'),
(777, '2017-04-11 07:47:12', '101.255.60.254', 'Chrome'),
(778, '2017-04-11 07:48:45', '36.74.102.19', 'Chrome'),
(779, '2017-04-11 07:49:18', '180.246.244.93', 'Chrome'),
(780, '2017-04-11 07:49:28', '118.97.151.193', 'Firefox'),
(781, '2017-04-11 07:49:37', '117.102.122.242', 'Chrome'),
(782, '2017-04-11 07:50:27', '36.71.249.134', 'Chrome'),
(783, '2017-04-11 07:51:30', '112.215.171.45', 'Chrome'),
(784, '2017-04-11 07:51:54', '103.241.5.116', 'Chrome'),
(785, '2017-04-11 07:52:07', '36.78.103.212', 'Chrome'),
(786, '2017-04-11 07:52:45', '36.72.80.127', 'Chrome'),
(787, '2017-04-11 07:53:48', '36.78.123.228', 'Chrome'),
(788, '2017-04-11 07:53:52', '36.68.235.225', 'Chrome'),
(789, '2017-04-11 07:54:13', '125.161.181.154', 'Firefox'),
(790, '2017-04-11 07:54:49', '36.80.164.131', 'Chrome'),
(791, '2017-04-11 07:55:51', '180.245.211.69', 'Chrome'),
(792, '2017-04-11 07:55:52', '125.167.186.204', 'Chrome'),
(793, '2017-04-11 07:57:10', '114.125.119.153', 'Chrome'),
(794, '2017-04-11 07:59:35', '114.121.234.35', 'Chrome'),
(795, '2017-04-11 08:02:02', '107.167.103.67', 'Opera'),
(796, '2017-04-11 08:02:23', '36.80.9.250', 'Chrome'),
(797, '2017-04-11 08:02:26', '36.88.62.43', 'Chrome'),
(798, '2017-04-11 08:02:33', '114.125.184.105', 'Chrome'),
(799, '2017-04-11 08:02:43', '185.182.81.53', 'Chrome'),
(800, '2017-04-11 08:04:20', '66.102.7.141', 'Chrome'),
(801, '2017-04-11 08:04:33', '36.88.158.219', 'Chrome'),
(802, '2017-04-11 08:06:01', '36.73.34.208', 'Chrome'),
(803, '2017-04-11 08:07:34', '36.74.20.46', 'Chrome'),
(804, '2017-04-11 08:08:04', '36.82.100.128', 'Chrome'),
(805, '2017-04-11 08:09:06', '112.215.65.245', 'Chrome'),
(806, '2017-04-11 08:09:18', '114.4.78.119', 'Chrome'),
(807, '2017-04-11 08:09:22', '110.137.171.177', 'Chrome'),
(808, '2017-04-11 08:09:23', '140.0.198.87', 'Mozilla'),
(809, '2017-04-11 08:09:56', '103.47.134.18', 'Chrome'),
(810, '2017-04-11 08:10:19', '36.66.46.34', 'Chrome'),
(811, '2017-04-11 08:11:08', '180.246.96.230', 'Chrome'),
(812, '2017-04-11 08:13:02', '146.185.31.213', 'Firefox'),
(813, '2017-04-11 08:18:25', '163.53.186.186', 'Firefox'),
(814, '2017-04-11 08:19:00', '202.62.16.98', 'Chrome'),
(815, '2017-04-11 08:20:45', '36.70.200.11', 'Chrome'),
(816, '2017-04-11 08:23:46', '112.215.45.58', 'Chrome'),
(817, '2017-04-11 08:24:50', '66.96.234.91', 'Chrome'),
(818, '2017-04-11 08:25:31', '103.66.199.34', 'Chrome'),
(819, '2017-04-11 08:26:29', '182.253.163.82', 'Chrome'),
(820, '2017-04-11 08:28:13', '103.3.44.1', 'Chrome'),
(821, '2017-04-11 08:28:58', '36.88.90.200', 'Chrome'),
(822, '2017-04-11 08:29:55', '180.254.255.166', 'Chrome'),
(823, '2017-04-11 08:30:00', '115.178.200.226', 'Chrome'),
(824, '2017-04-11 08:30:21', '120.188.1.120', 'Chrome'),
(825, '2017-04-11 08:31:50', '103.195.142.26', 'Chrome'),
(826, '2017-04-11 08:33:09', '120.188.0.9', 'Firefox'),
(827, '2017-04-11 08:34:54', '120.188.81.213', 'Chrome'),
(828, '2017-04-11 08:35:56', '182.253.131.41', 'Mozilla'),
(829, '2017-04-11 08:36:00', '8.37.234.123', 'Chrome'),
(830, '2017-04-11 08:36:03', '36.72.34.63', 'Chrome'),
(831, '2017-04-11 08:36:12', '115.178.239.80', 'Chrome'),
(832, '2017-04-11 08:36:30', '103.58.111.34', 'Chrome'),
(833, '2017-04-11 08:37:52', '8.37.225.224', 'Firefox'),
(834, '2017-04-11 08:37:55', '112.215.200.93', 'Chrome'),
(835, '2017-04-11 08:38:56', '120.188.92.156', 'Chrome'),
(836, '2017-04-11 08:39:03', '114.125.103.119', 'Chrome'),
(837, '2017-04-11 08:39:44', '107.167.112.73', 'Chrome'),
(838, '2017-04-11 08:41:38', '120.188.66.2', 'Chrome'),
(839, '2017-04-11 08:42:20', '36.72.134.144', 'Chrome'),
(840, '2017-04-11 08:42:49', '36.66.215.5', 'Firefox'),
(841, '2017-04-11 08:44:02', '114.125.101.241', 'Chrome'),
(842, '2017-04-11 08:45:12', '182.253.37.186', 'Firefox'),
(843, '2017-04-11 08:45:41', '114.125.117.183', 'Chrome'),
(844, '2017-04-11 08:45:41', '114.125.101.71', 'Chrome'),
(845, '2017-04-11 08:45:41', '114.125.101.255', 'Chrome'),
(846, '2017-04-11 08:47:04', '114.124.34.31', 'Mozilla'),
(847, '2017-04-11 08:48:04', '202.62.17.122', 'Chrome'),
(848, '2017-04-11 08:48:17', '139.192.131.90', 'Chrome'),
(849, '2017-04-11 08:52:28', '120.188.3.158', 'Chrome'),
(850, '2017-04-11 08:52:46', '200.77.128.224', 'Mozilla'),
(851, '2017-04-11 08:54:02', '112.215.151.215', 'Chrome'),
(852, '2017-04-11 08:55:16', '114.4.82.59', 'Chrome'),
(853, '2017-04-11 08:55:26', '36.79.229.121', 'Chrome'),
(854, '2017-04-11 08:57:17', '118.136.224.179', 'Chrome'),
(855, '2017-04-11 09:00:14', '202.67.41.242', 'Chrome'),
(856, '2017-04-11 09:00:47', '36.77.191.150', 'Mozilla'),
(857, '2017-04-11 09:01:02', '125.166.214.129', 'Chrome'),
(858, '2017-04-11 09:03:01', '202.93.231.81', 'Chrome'),
(859, '2017-04-11 09:03:16', '36.68.69.52', 'Chrome'),
(860, '2017-04-11 09:03:35', '112.215.152.222', 'Chrome'),
(861, '2017-04-11 09:04:31', '36.79.42.167', 'Chrome'),
(862, '2017-04-11 09:05:06', '103.47.134.3', 'Chrome'),
(863, '2017-04-11 09:10:05', '139.59.96.104', 'Chrome'),
(864, '2017-04-11 09:11:32', '36.73.101.192', 'Firefox'),
(865, '2017-04-11 09:12:15', '180.252.110.204', 'Chrome'),
(866, '2017-04-11 09:14:01', '36.84.224.105', 'Firefox'),
(867, '2017-04-11 09:14:56', '112.215.172.91', 'Chrome'),
(868, '2017-04-11 09:15:05', '43.252.159.29', 'Chrome'),
(869, '2017-04-11 09:15:55', '114.124.2.201', 'Chrome'),
(870, '2017-04-11 09:16:28', '103.77.50.21', 'Chrome'),
(871, '2017-04-11 09:17:54', '114.125.215.48', 'Mozilla'),
(872, '2017-04-11 09:18:38', '202.62.17.10', 'Chrome'),
(873, '2017-04-11 09:19:39', '202.93.231.70', 'Firefox'),
(874, '2017-04-11 09:20:09', '103.47.134.15', 'Firefox'),
(875, '2017-04-11 09:22:00', '120.188.77.49', 'Firefox'),
(876, '2017-04-11 09:22:27', '120.188.3.239', 'Chrome'),
(877, '2017-04-11 09:23:36', '180.189.162.131', 'Chrome'),
(878, '2017-04-11 09:23:56', '36.83.36.137', 'Chrome'),
(879, '2017-04-11 09:25:38', '175.111.89.42', 'Chrome'),
(880, '2017-04-11 09:26:32', '213.171.207.70', 'Chrome'),
(881, '2017-04-11 09:27:18', '180.252.173.112', 'Chrome'),
(882, '2017-04-11 09:27:58', '115.178.234.185', 'Chrome'),
(883, '2017-04-11 09:28:04', '36.77.83.38', 'Chrome'),
(884, '2017-04-11 09:28:52', '103.248.248.86', 'Chrome'),
(885, '2017-04-11 09:29:08', '180.254.74.221', 'Chrome'),
(886, '2017-04-11 09:29:15', '36.78.55.37', 'Firefox'),
(887, '2017-04-11 09:29:24', '112.78.191.34', 'Chrome'),
(888, '2017-04-11 09:29:40', '120.188.81.161', 'Chrome'),
(889, '2017-04-11 09:29:44', '115.178.201.60', 'Chrome'),
(890, '2017-04-11 09:30:50', '36.72.202.102', 'Chrome'),
(891, '2017-04-11 09:31:34', '120.188.79.93', 'Chrome'),
(892, '2017-04-11 09:33:02', '36.80.202.16', 'Firefox'),
(893, '2017-04-11 09:35:08', '139.194.22.183', 'Chrome'),
(894, '2017-04-11 09:37:47', '120.188.87.248', 'Chrome'),
(895, '2017-04-11 09:38:06', '182.253.163.75', 'Chrome'),
(896, '2017-04-11 09:39:02', '103.213.128.19', 'Chrome'),
(897, '2017-04-11 09:39:47', '202.169.53.3', 'Firefox'),
(898, '2017-04-11 09:41:29', '202.67.40.1', 'Chrome'),
(899, '2017-04-11 09:42:58', '120.188.66.119', 'Chrome'),
(900, '2017-04-11 09:43:18', '36.74.115.169', 'Chrome'),
(901, '2017-04-11 09:45:43', '103.47.132.27', 'Chrome'),
(902, '2017-04-11 09:45:55', '180.241.75.46', 'Mozilla'),
(903, '2017-04-11 09:45:55', '36.84.228.213', 'Chrome'),
(904, '2017-04-11 09:46:20', '118.136.88.249', 'Chrome'),
(905, '2017-04-11 09:49:26', '120.188.83.242', 'Chrome'),
(906, '2017-04-11 09:49:28', '36.77.137.120', 'Chrome');
INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES
(907, '2017-04-30 22:23:39', '::1', NULL),
(908, '2017-04-30 22:24:29', '::1', NULL),
(909, '2017-04-30 22:25:33', '::1', NULL),
(910, '2017-05-01 03:13:26', '::1', NULL),
(911, '2017-05-01 04:25:45', '::1', NULL),
(912, '2017-05-06 00:42:53', '::1', 'Firefox'),
(913, '2017-05-06 12:18:14', '::1', 'Firefox'),
(914, '2017-05-12 22:18:46', '::1', 'Firefox'),
(915, '2017-05-13 03:07:38', '::1', 'Firefox'),
(916, '2017-05-15 22:29:45', '::1', 'Firefox'),
(917, '2017-05-16 17:45:41', '::1', 'Firefox'),
(918, '2017-05-22 15:01:31', '::1', 'Firefox'),
(919, '2017-06-01 01:36:36', '::1', 'Firefox'),
(920, '2017-06-20 10:48:33', '::1', 'Firefox'),
(921, '2017-06-21 08:58:10', '::1', 'Firefox'),
(922, '2017-06-23 09:00:12', '::1', 'Firefox'),
(923, '2017-06-26 08:24:53', '::1', 'Firefox'),
(924, '2017-06-30 11:09:40', '::1', 'Firefox'),
(925, '2018-04-10 13:53:33', '::1', 'Chrome'),
(926, '2018-04-11 11:10:58', '::1', 'Firefox'),
(927, '2018-04-12 12:18:36', '::1', 'Firefox'),
(928, '2018-04-16 13:33:12', '::1', 'Firefox'),
(929, '2018-04-17 18:37:57', '::1', 'Firefox'),
(930, '2018-04-18 12:46:35', '::1', 'Firefox'),
(931, '2018-04-22 11:51:16', '::1', 'Firefox'),
(932, '2018-04-23 10:03:59', '::1', 'Firefox'),
(933, '2018-04-24 19:39:01', '::1', 'Firefox'),
(934, '2018-04-25 11:59:52', '::1', 'Firefox'),
(935, '2018-04-25 19:45:38', '192.168.11.16', 'Chrome'),
(936, '2018-04-25 23:01:51', '192.168.70.84', 'Firefox'),
(937, '2018-04-25 23:02:35', '192.168.70.14', 'Chrome'),
(938, '2018-04-26 10:30:38', '192.168.70.215', 'Chrome'),
(939, '2018-05-01 12:28:59', '192.168.70.227', 'Firefox'),
(940, '2018-05-01 19:40:44', '192.168.70.84', 'Firefox'),
(941, '2018-05-01 19:52:33', '192.168.70.227', 'Firefox'),
(942, '2018-05-02 13:45:03', '192.168.70.201', 'Chrome'),
(943, '2018-05-03 12:29:21', '192.168.70.84', 'Firefox'),
(944, '2018-05-03 13:10:09', '192.168.70.227', 'Firefox'),
(945, '2018-05-13 11:17:10', '192.168.70.84', 'Chrome'),
(946, '2018-05-17 04:26:32', '192.168.70.84', 'Chrome'),
(947, '2018-05-18 01:05:05', '192.168.70.84', 'Chrome'),
(948, '2018-05-18 07:54:37', '192.168.70.10', 'Chrome'),
(949, '2018-06-13 01:43:49', '192.168.70.227', 'Chrome'),
(950, '2018-06-13 04:02:44', '192.168.70.84', 'Firefox'),
(951, '2018-06-25 07:11:31', '192.168.70.84', 'Chrome'),
(952, '2018-06-25 07:23:14', '192.168.70.227', 'Firefox'),
(953, '2018-06-25 07:30:24', '192.168.70.181', 'Chrome'),
(954, '2018-06-25 08:29:05', '192.168.70.14', 'Firefox'),
(955, '2018-06-26 01:39:19', '192.168.70.6', 'Chrome'),
(956, '2018-06-26 02:02:57', '192.168.70.110', 'Firefox'),
(957, '2018-06-26 02:05:38', '192.168.70.84', 'Chrome'),
(958, '2018-06-28 08:35:51', '192.168.70.84', 'Firefox'),
(959, '2018-06-29 01:03:57', '192.168.70.227', 'Chrome'),
(960, '2018-06-29 01:06:24', '192.168.70.181', 'Firefox'),
(961, '2018-07-03 04:25:27', '192.168.70.14', 'Chrome'),
(962, '2018-07-03 07:50:06', '192.168.70.84', 'Firefox'),
(963, '2018-07-03 08:44:22', '192.168.70.227', 'Chrome'),
(964, '2018-07-04 02:43:32', '192.168.70.227', 'Chrome'),
(965, '2018-07-04 02:49:13', '192.168.70.84', 'Chrome'),
(966, '2018-07-05 01:46:54', '192.168.70.109', 'Firefox'),
(967, '2018-07-05 03:56:44', '192.168.70.26', 'Chrome'),
(968, '2018-07-06 02:14:15', '192.168.70.14', 'Chrome'),
(969, '2018-07-06 10:57:23', '192.168.70.84', 'Chrome'),
(970, '2018-07-10 01:43:53', '192.168.70.227', 'Chrome'),
(971, '2018-07-12 10:08:51', '192.168.70.218', 'Other'),
(972, '2018-07-12 10:21:00', '192.168.70.184', 'Firefox'),
(973, '2018-07-12 10:24:45', '192.168.70.84', 'Chrome'),
(974, '2018-07-13 01:30:35', '192.168.70.84', 'Firefox'),
(975, '2018-07-13 02:48:04', '192.168.70.227', 'Chrome'),
(976, '2018-07-13 02:48:26', '192.168.70.10', 'Chrome'),
(977, '2018-07-13 07:38:18', '192.168.70.232', 'Chrome'),
(978, '2018-07-13 09:02:18', '192.168.70.14', 'Chrome'),
(979, '2018-07-13 10:07:52', '192.168.70.215', 'Chrome'),
(980, '2018-07-14 05:17:14', '192.168.70.10', 'Chrome'),
(981, '2018-07-17 02:14:06', '192.168.70.14', 'Chrome'),
(982, '2018-07-17 02:17:20', '192.168.70.10', 'Chrome'),
(983, '2018-07-18 06:12:39', '192.168.70.181', 'Firefox'),
(984, '2018-07-19 02:17:11', '192.168.70.10', 'Chrome'),
(985, '2018-07-21 05:40:24', '192.168.70.14', 'Firefox'),
(986, '2018-07-23 04:55:18', '192.168.70.123', 'Chrome'),
(987, '2018-07-26 05:30:10', '192.168.70.10', 'Chrome'),
(988, '2018-07-27 03:17:42', '192.168.70.10', 'Chrome'),
(989, '2018-07-27 08:25:54', '192.168.70.14', 'Chrome'),
(990, '2018-07-30 02:34:51', '192.168.70.10', 'Chrome'),
(991, '2018-07-31 06:03:33', '192.168.70.227', 'Firefox'),
(992, '2018-08-01 01:06:56', '192.168.70.227', 'Chrome'),
(993, '2018-08-02 02:51:36', '192.168.70.227', 'Chrome'),
(994, '2018-08-03 01:38:51', '192.168.70.227', 'Chrome'),
(995, '2018-08-06 03:51:07', '192.168.70.227', 'Chrome'),
(996, '2018-08-07 01:37:27', '192.168.70.227', 'Chrome'),
(997, '2018-08-07 08:15:55', '192.168.70.14', 'Chrome'),
(998, '2018-08-10 05:29:01', '192.168.70.227', 'Chrome'),
(999, '2018-08-13 00:34:11', '192.168.70.227', 'Chrome'),
(1000, '2018-08-13 01:36:01', '192.168.70.181', 'Firefox'),
(1001, '2018-08-14 00:14:20', '192.168.70.227', 'Chrome'),
(1002, '2018-08-15 00:21:50', '192.168.70.227', 'Chrome'),
(1003, '2018-08-15 06:38:45', '192.168.70.84', 'Chrome'),
(1004, '2018-08-16 00:42:12', '192.168.70.227', 'Chrome'),
(1005, '2018-08-20 15:07:50', '192.168.70.227', 'Chrome'),
(1006, '2018-08-21 00:31:44', '192.168.70.227', 'Chrome'),
(1007, '2018-08-23 02:49:02', '192.168.70.227', 'Chrome'),
(1008, '2018-08-24 13:15:19', '192.168.70.227', 'Chrome'),
(1009, '2018-08-27 06:28:09', '192.168.70.14', 'Chrome'),
(1010, '2018-08-27 08:56:03', '192.168.70.227', 'Chrome'),
(1011, '2018-08-28 00:29:38', '192.168.70.227', 'Chrome'),
(1012, '2018-08-29 00:23:48', '192.168.70.227', 'Chrome'),
(1013, '2018-08-30 00:25:39', '192.168.70.227', 'Chrome'),
(1014, '2018-08-31 00:50:52', '192.168.70.227', 'Chrome'),
(1015, '2018-08-31 08:16:20', '192.168.70.10', 'Firefox'),
(1016, '2018-09-05 05:35:51', '192.168.70.227', 'Chrome'),
(1017, '2018-09-07 08:56:09', '192.168.70.227', 'Chrome'),
(1018, '2018-09-10 00:30:18', '192.168.70.227', 'Chrome'),
(1019, '2018-09-12 00:06:19', '192.168.70.227', 'Chrome'),
(1020, '2018-09-12 06:50:35', '192.168.70.14', 'Chrome'),
(1021, '2018-09-12 06:53:18', '192.168.70.84', 'Chrome'),
(1022, '2018-09-13 00:12:09', '192.168.70.227', 'Chrome'),
(1023, '2018-09-14 00:23:48', '192.168.70.227', 'Chrome'),
(1024, '2018-09-14 10:31:42', '192.168.70.145', 'Firefox'),
(1025, '2018-09-15 04:35:49', '192.168.70.100', 'Firefox'),
(1026, '2018-09-17 01:08:45', '192.168.70.10', 'Chrome'),
(1027, '2018-09-17 07:45:08', '192.168.70.84', 'Chrome'),
(1028, '2018-09-17 09:34:13', '192.168.70.236', 'Chrome'),
(1029, '2018-09-19 02:14:28', '192.168.70.227', 'Firefox'),
(1030, '2018-09-20 09:20:17', '192.168.70.227', 'Chrome'),
(1031, '2018-09-25 06:20:22', '192.168.70.227', 'Chrome'),
(1032, '2018-09-27 04:12:25', '192.168.70.227', 'Chrome'),
(1033, '2018-09-28 08:07:37', '192.168.70.227', 'Chrome'),
(1034, '2018-09-28 08:38:41', '192.168.70.10', 'Chrome'),
(1035, '2018-09-28 09:22:59', '192.168.70.14', 'Chrome'),
(1036, '2018-09-28 10:36:39', '192.168.70.84', 'Chrome'),
(1037, '2018-09-29 00:02:32', '192.168.70.100', 'Firefox'),
(1038, '2018-10-01 05:25:40', '192.168.70.84', 'Chrome'),
(1039, '2018-10-02 00:53:49', '192.168.70.227', 'Chrome'),
(1040, '2018-10-03 05:56:23', '192.168.70.227', 'Chrome'),
(1041, '2018-10-04 04:23:56', '192.168.70.236', 'Chrome'),
(1042, '2018-10-05 07:08:26', '192.168.70.227', 'Chrome'),
(1043, '2018-10-08 08:46:51', '192.168.70.227', 'Chrome'),
(1044, '2018-10-10 02:12:17', '192.168.70.236', 'Chrome'),
(1045, '2018-10-15 01:13:12', '192.168.70.227', 'Chrome'),
(1046, '2018-10-16 04:04:12', '192.168.70.169', 'Chrome'),
(1047, '2018-10-17 08:44:56', '192.168.70.227', 'Chrome'),
(1048, '2018-10-17 08:44:56', '192.168.70.227', 'Chrome'),
(1049, '2018-10-18 08:09:42', '192.168.70.227', 'Chrome'),
(1050, '2018-10-18 08:09:42', '192.168.70.227', 'Chrome'),
(1051, '2018-10-19 00:30:00', '192.168.70.227', 'Chrome'),
(1052, '2018-10-23 02:22:59', '192.168.70.227', 'Chrome'),
(1053, '2018-10-24 07:41:37', '192.168.70.227', 'Chrome'),
(1054, '2018-10-25 07:45:27', '192.168.70.227', 'Chrome'),
(1055, '2018-10-26 07:08:43', '192.168.70.14', 'Chrome'),
(1056, '2018-10-26 07:18:30', '192.168.70.181', 'Firefox'),
(1057, '2018-10-29 00:32:02', '192.168.70.227', 'Chrome'),
(1058, '2018-10-29 07:56:58', '192.168.70.10', 'Chrome'),
(1059, '2018-10-29 09:57:25', '192.168.70.181', 'Firefox'),
(1060, '2018-10-30 01:36:47', '192.168.70.227', 'Chrome'),
(1061, '2018-10-30 01:36:47', '192.168.70.227', 'Chrome'),
(1062, '2018-10-31 09:09:57', '192.168.70.169', 'Chrome'),
(1063, '2018-11-01 01:01:38', '192.168.70.227', 'Chrome'),
(1064, '2018-11-01 01:28:30', '192.168.70.169', 'Chrome'),
(1065, '2018-11-01 08:03:07', '192.168.70.10', 'Chrome'),
(1066, '2018-11-02 01:50:47', '192.168.70.169', 'Chrome'),
(1067, '2018-11-05 00:29:32', '192.168.70.227', 'Chrome'),
(1068, '2018-11-05 05:34:44', '192.168.70.169', 'Chrome'),
(1069, '2018-11-05 09:07:11', '192.168.70.236', 'Chrome'),
(1070, '2018-11-05 09:40:16', '192.168.70.181', 'Firefox'),
(1071, '2018-11-08 02:21:45', '192.168.70.227', 'Chrome'),
(1072, '2018-11-08 05:45:41', '192.168.70.169', 'Chrome'),
(1073, '2018-11-09 01:16:01', '192.168.70.181', 'Chrome'),
(1074, '2018-11-12 03:22:53', '192.168.70.181', 'Firefox'),
(1075, '2018-11-12 03:25:42', '192.168.70.14', 'Chrome'),
(1076, '2018-11-12 06:00:43', '192.168.70.169', 'Chrome'),
(1077, '2018-11-14 07:40:57', '192.168.70.227', 'Chrome'),
(1078, '2018-11-14 07:40:57', '192.168.70.227', 'Chrome'),
(1079, '2018-11-15 06:15:41', '192.168.70.227', 'Chrome'),
(1080, '2018-11-15 06:15:41', '192.168.70.227', 'Chrome'),
(1081, '2018-11-21 07:57:21', '192.168.70.169', 'Chrome'),
(1082, '2018-11-23 01:32:16', '192.168.70.236', 'Chrome'),
(1083, '2018-11-23 01:57:48', '192.168.70.181', 'Firefox'),
(1084, '2018-11-23 04:07:26', '192.168.70.169', 'Chrome'),
(1085, '2018-11-26 03:40:58', '192.168.70.75', 'Firefox'),
(1086, '2018-11-26 04:00:26', '192.168.70.14', 'Chrome'),
(1087, '2018-11-26 06:12:26', '192.168.70.109', 'Chrome'),
(1088, '2018-11-27 01:39:19', '192.168.70.169', 'Chrome'),
(1089, '2018-11-27 01:45:25', '192.168.70.227', 'Chrome'),
(1090, '2018-11-27 02:05:16', '192.168.70.232', 'Chrome'),
(1091, '2018-11-27 08:22:48', '192.168.70.181', 'Firefox'),
(1092, '2018-11-27 13:11:25', '192.168.70.100', 'Firefox'),
(1093, '2018-11-28 01:42:27', '192.168.70.109', 'Chrome'),
(1094, '2018-11-28 04:17:16', '192.168.70.181', 'Firefox'),
(1095, '2018-11-28 07:31:57', '192.168.70.227', 'Chrome'),
(1096, '2018-11-28 07:31:57', '192.168.70.227', 'Chrome'),
(1097, '2018-11-29 00:23:30', '192.168.70.227', 'Chrome'),
(1098, '2018-11-29 00:23:30', '192.168.70.227', 'Chrome'),
(1099, '2018-11-29 04:12:01', '192.168.70.169', 'Chrome'),
(1100, '2018-11-30 05:33:39', '192.168.70.169', 'Chrome'),
(1101, '2018-11-30 08:47:08', '192.168.70.227', 'Chrome'),
(1102, '2018-11-30 08:47:08', '192.168.70.227', 'Chrome'),
(1103, '2018-12-03 01:12:47', '192.168.70.236', 'Chrome'),
(1104, '2018-12-03 01:20:33', '192.168.70.109', 'Chrome'),
(1105, '2018-12-03 05:44:43', '192.168.70.227', 'Chrome'),
(1106, '2018-12-03 09:21:44', '192.168.70.181', 'Chrome'),
(1107, '2018-12-04 02:20:00', '192.168.70.169', 'Chrome'),
(1108, '2018-12-04 02:37:16', '192.168.70.227', 'Chrome'),
(1109, '2018-12-04 03:51:18', '192.168.70.84', 'Chrome'),
(1110, '2018-12-05 01:28:17', '192.168.70.181', 'Chrome'),
(1111, '2018-12-05 03:06:43', '192.168.70.236', 'Chrome'),
(1112, '2018-12-05 05:20:10', '192.168.70.227', 'Chrome'),
(1113, '2018-12-07 01:00:41', '192.168.70.181', 'Chrome'),
(1114, '2018-12-07 08:40:54', '192.168.70.227', 'Chrome'),
(1115, '2018-12-07 08:40:54', '192.168.70.227', 'Chrome'),
(1116, '2018-12-10 02:03:47', '192.168.70.14', 'Chrome'),
(1117, '2018-12-11 02:58:43', '192.168.70.169', 'Chrome'),
(1118, '2018-12-11 08:30:21', '192.168.70.227', 'Chrome'),
(1119, '2018-12-11 08:30:21', '192.168.70.227', 'Chrome'),
(1120, '2018-12-12 06:22:16', '192.168.70.227', 'Chrome'),
(1121, '2018-12-13 04:25:13', '192.168.70.169', 'Chrome'),
(1122, '2018-12-14 08:53:45', '192.168.70.14', 'Chrome'),
(1123, '2018-12-17 03:35:12', '192.168.70.181', 'Chrome'),
(1124, '2018-12-17 05:41:47', '192.168.70.227', 'Chrome'),
(1125, '2018-12-17 11:21:18', '192.168.70.169', 'Chrome'),
(1126, '2018-12-19 00:51:15', '192.168.70.227', 'Chrome'),
(1127, '2018-12-19 08:31:55', '192.168.70.169', 'Chrome'),
(1128, '2018-12-20 03:53:17', '192.168.70.169', 'Chrome'),
(1129, '2018-12-21 12:30:58', '192.168.70.169', 'Chrome'),
(1130, '2018-12-24 01:03:42', '192.168.70.227', 'Chrome'),
(1131, '2018-12-24 01:03:42', '192.168.70.227', 'Chrome'),
(1132, '2018-12-24 02:29:57', '192.168.70.236', 'Chrome'),
(1133, '2018-12-24 06:23:07', '192.168.70.169', 'Chrome'),
(1134, '2018-12-28 02:11:31', '192.168.70.181', 'Chrome'),
(1135, '2018-12-28 08:53:57', '192.168.70.227', 'Chrome'),
(1136, '2018-12-28 08:53:57', '192.168.70.227', 'Chrome'),
(1137, '2018-12-31 06:08:50', '192.168.70.227', 'Chrome'),
(1138, '2019-01-03 03:45:26', '192.168.70.181', 'Chrome'),
(1139, '2019-01-03 10:05:43', '192.168.70.236', 'Chrome'),
(1140, '2019-01-04 09:18:20', '192.168.70.14', 'Chrome'),
(1141, '2019-01-04 09:18:37', '192.168.70.236', 'Chrome'),
(1142, '2019-01-04 11:28:32', '192.168.70.169', 'Chrome'),
(1143, '2019-01-07 07:57:31', '192.168.70.236', 'Chrome'),
(1144, '2019-01-09 06:36:30', '192.168.70.227', 'Chrome'),
(1145, '2019-01-09 12:29:22', '192.168.70.169', 'Chrome'),
(1146, '2019-01-10 04:05:55', '192.168.70.227', 'Chrome'),
(1147, '2019-01-11 01:14:48', '192.168.70.227', 'Chrome'),
(1148, '2019-01-16 01:21:48', '192.168.70.227', 'Chrome'),
(1149, '2019-01-16 06:39:25', '192.168.70.236', 'Chrome'),
(1150, '2019-01-18 14:04:31', '192.168.70.227', 'Chrome'),
(1151, '2019-01-18 14:04:31', '192.168.70.227', 'Chrome'),
(1152, '2019-01-21 08:54:45', '192.168.70.227', 'Chrome'),
(1153, '2019-01-21 08:54:45', '192.168.70.227', 'Chrome'),
(1154, '2019-01-24 08:11:19', '192.168.70.227', 'Chrome'),
(1155, '2019-01-25 06:42:23', '192.168.70.181', 'Chrome'),
(1156, '2019-01-25 07:38:30', '192.168.70.227', 'Chrome'),
(1157, '2019-01-25 07:38:30', '192.168.70.227', 'Chrome'),
(1158, '2019-01-28 05:35:06', '192.168.70.169', 'Chrome'),
(1159, '2019-01-31 00:47:11', '192.168.70.236', 'Chrome'),
(1160, '2019-02-01 02:58:47', '192.168.70.236', 'Chrome'),
(1161, '2019-02-04 08:42:59', '192.168.70.181', 'Chrome'),
(1162, '2019-02-07 01:03:50', '192.168.70.227', 'Chrome'),
(1163, '2019-02-07 01:03:50', '192.168.70.227', 'Chrome'),
(1164, '2019-02-07 02:06:48', '192.168.70.236', 'Chrome'),
(1165, '2019-02-08 03:10:31', '192.168.70.236', 'Chrome'),
(1166, '2019-02-11 08:40:42', '192.168.70.14', 'Chrome'),
(1167, '2019-02-12 09:26:25', '192.168.70.181', 'Chrome'),
(1168, '2019-02-13 00:38:40', '192.168.70.227', 'Chrome'),
(1169, '2019-02-13 02:24:46', '192.168.70.169', 'Chrome'),
(1170, '2019-02-18 07:33:15', '192.168.70.14', 'Chrome'),
(1171, '2019-02-19 06:06:01', '192.168.70.227', 'Chrome'),
(1172, '2019-02-19 06:06:01', '192.168.70.227', 'Chrome'),
(1173, '2019-02-26 09:04:46', '192.168.70.227', 'Chrome'),
(1174, '2019-02-27 08:37:30', '192.168.70.181', 'Chrome'),
(1175, '2019-02-28 03:23:26', '192.168.70.181', 'Chrome'),
(1176, '2019-03-01 06:29:16', '192.168.70.181', 'Chrome'),
(1177, '2019-03-04 00:42:28', '192.168.70.227', 'Chrome'),
(1178, '2019-03-04 00:42:28', '192.168.70.227', 'Chrome'),
(1179, '2019-03-05 02:37:02', '192.168.70.236', 'Chrome'),
(1180, '2019-03-05 02:39:45', '192.168.70.84', 'Chrome'),
(1181, '2019-03-05 12:07:43', '192.168.70.14', 'Chrome'),
(1182, '2019-03-06 02:51:17', '192.168.70.84', 'Chrome'),
(1183, '2019-03-08 06:49:36', '192.168.70.227', 'Chrome'),
(1184, '2019-03-12 04:19:17', '192.168.70.227', 'Chrome'),
(1185, '2019-03-13 02:20:49', '192.168.70.181', 'Chrome'),
(1186, '2019-03-13 08:19:23', '192.168.70.227', 'Chrome'),
(1187, '2019-03-14 01:40:38', '192.168.70.227', 'Chrome'),
(1188, '2019-03-14 07:14:04', '192.168.70.84', 'Chrome'),
(1189, '2019-03-15 00:58:35', '192.168.70.227', 'Chrome'),
(1190, '2019-03-20 02:56:52', '192.168.70.10', 'Chrome'),
(1191, '2019-03-21 06:46:35', '192.168.70.84', 'Chrome'),
(1192, '2019-03-25 04:14:30', '192.168.70.84', 'Chrome'),
(1193, '2019-03-25 05:32:53', '192.168.70.227', 'Chrome'),
(1194, '2019-03-28 01:20:22', '192.168.70.181', 'Chrome'),
(1195, '2019-03-28 06:34:28', '192.168.70.227', 'Chrome'),
(1196, '2019-04-01 07:31:05', '192.168.70.227', 'Chrome'),
(1197, '2019-04-01 07:31:05', '192.168.70.227', 'Chrome'),
(1198, '2019-04-02 00:49:48', '192.168.70.181', 'Chrome'),
(1199, '2019-04-02 06:28:34', '192.168.70.227', 'Chrome'),
(1200, '2019-04-04 01:13:25', '192.168.70.181', 'Chrome'),
(1201, '2019-04-04 06:36:00', '192.168.70.227', 'Chrome'),
(1202, '2019-04-04 06:36:00', '192.168.70.227', 'Chrome'),
(1203, '2019-04-05 04:30:24', '192.168.70.181', 'Chrome'),
(1204, '2019-04-05 07:48:32', '192.168.70.227', 'Chrome'),
(1205, '2019-04-05 07:48:32', '192.168.70.227', 'Chrome'),
(1206, '2019-04-09 02:41:56', '192.168.70.236', 'Chrome'),
(1207, '2019-04-10 01:32:12', '192.168.70.236', 'Chrome'),
(1208, '2019-04-10 01:33:40', '192.168.70.181', 'Chrome'),
(1209, '2019-04-10 02:54:06', '192.168.70.84', 'Chrome'),
(1210, '2019-04-10 06:33:54', '192.168.70.14', 'Chrome'),
(1211, '2019-04-11 02:28:34', '192.168.70.52', 'Chrome'),
(1212, '2019-04-11 03:39:47', '192.168.70.181', 'Chrome'),
(1213, '2019-04-11 05:33:28', '192.168.70.14', 'Chrome'),
(1214, '2019-04-12 04:01:59', '192.168.70.181', 'Chrome'),
(1215, '2019-04-12 05:39:36', '192.168.70.227', 'Chrome'),
(1216, '2019-04-16 01:43:50', '192.168.70.84', 'Chrome'),
(1217, '2019-04-16 05:55:36', '192.168.70.236', 'Chrome'),
(1218, '2019-04-16 07:24:51', '192.168.70.227', 'Chrome'),
(1219, '2019-04-16 07:24:51', '192.168.70.227', 'Chrome'),
(1220, '2019-04-18 08:50:06', '192.168.70.227', 'Chrome'),
(1221, '2019-04-23 01:12:29', '192.168.70.227', 'Chrome'),
(1222, '2019-04-24 05:36:22', '192.168.70.227', 'Chrome'),
(1223, '2019-04-30 03:10:10', '192.168.70.14', 'Chrome'),
(1224, '2019-04-30 06:20:40', '192.168.70.227', 'Chrome'),
(1225, '2019-05-06 08:19:37', '192.168.70.14', 'Chrome'),
(1226, '2019-05-09 03:58:09', '192.168.70.14', 'Chrome'),
(1227, '2019-05-10 07:23:02', '192.168.70.227', 'Chrome'),
(1228, '2019-05-10 19:22:08', '192.168.70.227', 'Chrome'),
(1229, '2019-05-14 06:27:59', '192.168.70.14', 'Chrome'),
(1230, '2019-05-15 00:06:39', '192.168.70.227', 'Chrome'),
(1231, '2019-05-17 02:16:24', '192.168.70.14', 'Chrome'),
(1232, '2019-05-20 07:41:51', '192.168.70.109', 'Chrome'),
(1233, '2019-05-24 05:44:15', '192.168.70.14', 'Chrome'),
(1234, '2019-05-24 19:59:39', '192.168.70.227', 'Chrome'),
(1235, '2019-05-24 19:59:39', '192.168.70.227', 'Chrome'),
(1236, '2019-05-28 08:01:33', '192.168.70.227', 'Chrome'),
(1237, '2019-05-28 08:01:33', '192.168.70.227', 'Chrome'),
(1238, '2019-05-29 08:09:29', '192.168.70.227', 'Chrome'),
(1239, '2019-05-29 08:09:29', '192.168.70.227', 'Chrome'),
(1240, '2019-05-31 00:36:37', '192.168.70.227', 'Chrome'),
(1241, '2019-05-31 00:36:37', '192.168.70.227', 'Chrome'),
(1242, '2019-06-13 01:20:24', '192.168.70.227', 'Chrome'),
(1243, '2019-06-24 01:51:52', '192.168.70.14', 'Chrome'),
(1244, '2019-06-26 05:44:34', '192.168.70.227', 'Chrome'),
(1245, '2019-06-28 06:33:52', '192.168.70.227', 'Chrome'),
(1246, '2019-07-01 09:40:47', '192.168.70.14', 'Chrome'),
(1247, '2019-07-02 06:22:30', '192.168.70.14', 'Chrome'),
(1248, '2019-07-02 08:48:21', '192.168.70.227', 'Chrome'),
(1249, '2019-07-02 08:48:21', '192.168.70.227', 'Chrome'),
(1250, '2019-07-03 04:09:41', '192.168.70.14', 'Chrome'),
(1251, '2019-07-03 08:21:00', '192.168.70.227', 'Chrome'),
(1252, '2019-07-03 08:21:00', '192.168.70.227', 'Chrome'),
(1253, '2019-07-05 08:50:27', '192.168.70.181', 'Chrome'),
(1254, '2019-07-08 08:47:05', '192.168.10.20', 'Chrome'),
(1255, '2019-07-09 01:47:53', '192.168.70.227', 'Chrome'),
(1256, '2019-07-10 06:13:28', '192.168.70.227', 'Chrome'),
(1257, '2019-07-11 00:38:32', '192.168.70.227', 'Chrome'),
(1258, '2019-07-12 00:33:46', '192.168.70.227', 'Chrome'),
(1259, '2019-07-18 08:41:19', '192.168.70.227', 'Chrome'),
(1260, '2019-07-18 08:41:19', '192.168.70.227', 'Chrome'),
(1261, '2019-07-19 07:26:57', '192.168.70.227', 'Chrome'),
(1262, '2019-07-19 07:26:57', '192.168.70.227', 'Chrome'),
(1263, '2019-07-22 09:13:05', '192.168.70.227', 'Chrome'),
(1264, '2019-07-23 04:10:16', '192.168.70.14', 'Chrome'),
(1265, '2019-07-24 06:21:33', '192.168.70.227', 'Chrome'),
(1266, '2019-07-25 07:31:11', '192.168.70.227', 'Chrome'),
(1267, '2019-07-29 06:52:01', '192.168.70.227', 'Chrome'),
(1268, '2019-07-29 06:52:01', '192.168.70.227', 'Chrome'),
(1269, '2019-07-29 07:31:41', '192.168.70.14', 'Chrome'),
(1270, '2019-07-30 03:33:27', '192.168.70.227', 'Chrome'),
(1271, '2019-08-01 07:41:34', '192.168.70.14', 'Chrome'),
(1272, '2019-08-09 05:39:19', '192.168.70.227', 'Chrome'),
(1273, '2019-08-12 08:16:12', '192.168.70.227', 'Chrome'),
(1274, '2019-08-12 08:16:12', '192.168.70.227', 'Chrome'),
(1275, '2019-08-19 04:05:31', '192.168.70.227', 'Chrome'),
(1276, '2019-08-20 01:33:09', '192.168.70.227', 'Chrome'),
(1277, '2019-08-20 07:37:47', '192.168.70.181', 'Chrome'),
(1278, '2019-08-20 09:46:56', '192.168.70.25', 'Chrome'),
(1279, '2019-08-21 00:41:53', '192.168.70.227', 'Chrome'),
(1280, '2019-08-29 02:31:37', '192.168.70.227', 'Chrome'),
(1281, '2019-08-29 02:31:37', '192.168.70.227', 'Chrome'),
(1282, '2019-08-30 06:13:21', '192.168.70.227', 'Chrome'),
(1283, '2019-08-30 06:13:21', '192.168.70.227', 'Chrome'),
(1284, '2019-09-02 09:10:51', '192.168.70.227', 'Chrome'),
(1285, '2019-09-06 08:59:05', '192.168.70.227', 'Chrome'),
(1286, '2019-09-09 07:02:44', '192.168.70.181', 'Chrome'),
(1287, '2019-09-10 01:15:05', '192.168.70.227', 'Chrome'),
(1288, '2019-09-10 01:15:05', '192.168.70.227', 'Chrome'),
(1289, '2019-09-10 03:58:09', '192.168.70.181', 'Chrome'),
(1290, '2019-09-13 01:27:18', '192.168.70.227', 'Chrome'),
(1291, '2019-09-13 01:27:18', '192.168.70.227', 'Chrome'),
(1292, '2019-09-13 06:17:21', '192.168.70.181', 'Chrome'),
(1293, '2019-09-17 02:13:44', '192.168.70.227', 'Chrome'),
(1294, '2019-09-17 02:23:42', '192.168.70.74', 'Chrome'),
(1295, '2019-09-17 02:37:08', '192.168.70.14', 'Chrome'),
(1296, '2019-09-17 02:43:18', '192.168.70.181', 'Chrome'),
(1297, '2019-09-23 01:27:48', '192.168.70.181', 'Chrome'),
(1298, '2019-09-26 01:06:00', '192.168.70.227', 'Chrome'),
(1299, '2019-09-26 01:06:00', '192.168.70.227', 'Chrome'),
(1300, '2019-10-01 00:57:34', '192.168.70.181', 'Chrome'),
(1301, '2019-10-04 05:33:22', '192.168.70.181', 'Chrome'),
(1302, '2019-10-08 01:38:17', '192.168.70.227', 'Chrome'),
(1303, '2019-10-08 01:38:17', '192.168.70.227', 'Chrome'),
(1304, '2019-10-17 07:08:23', '192.168.70.227', 'Chrome'),
(1305, '2019-10-17 07:53:47', '192.168.70.3', 'Chrome'),
(1306, '2019-10-17 08:11:11', '192.168.70.14', 'Chrome'),
(1307, '2019-10-17 08:11:52', '192.168.70.181', 'Chrome'),
(1308, '2019-10-18 03:45:37', '192.168.70.227', 'Chrome'),
(1309, '2019-10-21 05:49:33', '192.168.70.227', 'Chrome'),
(1310, '2019-10-21 05:49:33', '192.168.70.227', 'Chrome'),
(1311, '2019-10-21 06:46:10', '192.168.70.3', 'Chrome'),
(1312, '2019-10-24 01:04:51', '192.168.70.181', 'Chrome'),
(1313, '2019-10-24 06:43:14', '192.168.70.3', 'Chrome'),
(1314, '2019-10-25 03:18:26', '192.168.70.227', 'Chrome'),
(1315, '2019-10-25 03:18:26', '192.168.70.227', 'Chrome'),
(1316, '2019-10-25 08:32:24', '192.168.70.181', 'Chrome'),
(1317, '2019-10-28 05:39:54', '192.168.70.227', 'Chrome'),
(1318, '2019-10-29 14:32:15', '192.168.70.84', 'Chrome'),
(1319, '2019-10-29 17:07:58', '192.168.70.227', 'Chrome'),
(1320, '2019-10-29 17:07:58', '192.168.70.227', 'Chrome'),
(1321, '2019-11-04 03:40:44', '192.168.70.181', 'Chrome'),
(1322, '2019-11-04 10:38:17', '192.168.70.3', 'Chrome'),
(1323, '2019-11-04 14:24:35', '192.168.70.250', 'Chrome'),
(1324, '2019-11-06 00:58:14', '192.168.70.3', 'Chrome'),
(1325, '2019-11-11 01:15:47', '192.168.70.227', 'Chrome'),
(1326, '2019-11-12 00:55:54', '192.168.70.227', 'Chrome'),
(1327, '2019-11-12 08:59:39', '192.168.70.109', 'Firefox'),
(1328, '2019-11-15 06:59:54', '192.168.70.181', 'Chrome'),
(1329, '2019-11-18 00:51:30', '192.168.70.181', 'Chrome'),
(1330, '2019-11-19 23:42:41', '192.168.70.250', 'Chrome'),
(1331, '2019-11-20 01:26:32', '192.168.70.181', 'Chrome'),
(1332, '2019-11-20 03:38:56', '192.168.10.59', 'Other'),
(1333, '2019-11-21 00:29:33', '192.168.70.75', 'Firefox'),
(1334, '2019-11-21 01:24:28', '192.168.70.227', 'Chrome'),
(1335, '2019-11-22 00:44:13', '192.168.70.227', 'Firefox'),
(1336, '2019-11-26 02:23:58', '192.168.70.227', 'Chrome'),
(1337, '2019-12-03 04:09:50', '192.168.70.227', 'Chrome'),
(1338, '2019-12-03 04:09:50', '192.168.70.227', 'Chrome'),
(1339, '2019-12-05 09:06:18', '192.168.70.227', 'Chrome'),
(1340, '2019-12-05 09:06:18', '192.168.70.227', 'Chrome'),
(1341, '2019-12-06 06:47:53', '192.168.70.227', 'Chrome'),
(1342, '2019-12-06 06:47:53', '192.168.70.227', 'Chrome'),
(1343, '2019-12-17 00:53:01', '192.168.70.227', 'Chrome'),
(1344, '2019-12-17 00:53:01', '192.168.70.227', 'Chrome'),
(1345, '2019-12-18 06:20:29', '192.168.70.227', 'Chrome'),
(1346, '2019-12-18 06:20:29', '192.168.70.227', 'Chrome'),
(1347, '2019-12-19 01:13:55', '192.168.70.181', 'Chrome'),
(1348, '2019-12-19 01:19:04', '192.168.70.227', 'Chrome'),
(1349, '2020-01-08 02:32:27', '192.168.70.181', 'Chrome'),
(1350, '2020-01-08 06:35:47', '::1', 'Chrome'),
(1351, '2020-01-08 06:48:24', '192.168.70.250', 'Chrome'),
(1352, '2020-01-08 07:08:55', '192.168.70.227', 'Chrome'),
(1353, '2020-01-09 01:04:45', '192.168.70.227', 'Chrome'),
(1354, '2020-01-10 01:38:43', '192.168.70.181', 'Chrome'),
(1355, '2020-01-14 02:18:02', '192.168.70.227', 'Chrome'),
(1356, '2020-01-14 02:18:02', '192.168.70.227', 'Chrome'),
(1357, '2020-01-16 08:19:19', '192.168.70.227', 'Chrome'),
(1358, '2020-01-16 08:19:19', '192.168.70.227', 'Chrome'),
(1359, '2020-01-17 05:45:40', '192.168.70.227', 'Chrome'),
(1360, '2020-01-17 05:45:40', '192.168.70.227', 'Chrome'),
(1361, '2020-01-22 01:19:14', '192.168.70.227', 'Chrome'),
(1362, '2020-01-23 01:33:13', '192.168.70.227', 'Chrome'),
(1363, '2020-01-27 08:12:16', '192.168.70.227', 'Chrome'),
(1364, '2020-01-27 08:12:16', '192.168.70.227', 'Chrome'),
(1365, '2020-01-30 05:50:27', '192.168.70.227', 'Chrome'),
(1366, '2020-01-31 00:56:38', '192.168.70.227', 'Chrome'),
(1367, '2020-01-31 00:56:38', '192.168.70.227', 'Chrome'),
(1368, '2020-01-31 00:56:38', '192.168.70.227', 'Chrome'),
(1369, '2020-01-31 01:15:52', '192.168.70.232', 'Chrome'),
(1370, '2020-02-06 05:41:02', '192.168.70.227', 'Chrome'),
(1371, '2020-02-12 00:45:35', '192.168.70.227', 'Chrome'),
(1372, '2020-02-12 00:45:35', '192.168.70.227', 'Chrome'),
(1373, '2020-02-17 08:29:53', '192.168.70.181', 'Chrome'),
(1374, '2020-02-18 02:22:45', '192.168.70.227', 'Chrome'),
(1375, '2020-02-25 04:23:15', '192.168.70.236', 'Chrome'),
(1376, '2020-02-26 00:58:13', '192.168.70.227', 'Chrome'),
(1377, '2020-02-26 00:58:13', '192.168.70.227', 'Chrome'),
(1378, '2020-03-06 01:56:09', '192.168.70.24', 'Chrome'),
(1379, '2020-03-06 02:34:17', '192.168.70.181', 'Chrome'),
(1380, '2020-03-06 08:19:28', '::1', 'Chrome'),
(1381, '2020-03-09 05:36:41', '192.168.70.227', 'Chrome'),
(1382, '2020-03-09 05:36:41', '192.168.70.227', 'Chrome'),
(1383, '2020-03-10 00:55:11', '192.168.70.227', 'Chrome'),
(1384, '2020-03-10 00:55:11', '192.168.70.227', 'Chrome'),
(1385, '2020-03-11 02:14:02', '192.168.70.227', 'Chrome'),
(1386, '2020-03-13 08:15:17', '192.168.70.227', 'Chrome'),
(1387, '2020-03-13 08:15:17', '192.168.70.227', 'Chrome'),
(1388, '2020-03-18 09:05:38', '192.168.70.227', 'Chrome'),
(1389, '2020-03-24 07:41:23', '192.168.70.227', 'Chrome'),
(1390, '2020-04-17 01:47:09', '192.168.70.227', 'Chrome'),
(1391, '2020-04-22 00:50:36', '192.168.70.227', 'Chrome'),
(1392, '2020-04-24 01:50:51', '192.168.70.227', 'Chrome'),
(1393, '2020-04-27 00:22:28', '192.168.70.227', 'Chrome'),
(1394, '2020-04-28 00:18:07', '192.168.70.227', 'Chrome'),
(1395, '2020-04-28 07:11:20', '192.168.70.181', 'Chrome'),
(1396, '2020-04-29 00:18:38', '192.168.70.227', 'Chrome'),
(1397, '2020-04-30 01:35:47', '192.168.70.227', 'Chrome'),
(1398, '2020-05-02 01:29:04', '192.168.70.227', 'Chrome'),
(1399, '2020-05-05 04:09:59', '192.168.70.227', 'Chrome'),
(1400, '2020-05-05 04:09:59', '192.168.70.227', 'Chrome'),
(1401, '2020-05-08 23:58:36', '192.168.70.227', 'Chrome'),
(1402, '2020-05-11 00:21:15', '192.168.70.227', 'Chrome'),
(1403, '2020-05-14 03:16:55', '192.168.70.227', 'Firefox'),
(1404, '2020-05-15 00:18:46', '192.168.70.227', 'Chrome'),
(1405, '2020-05-18 05:37:09', '192.168.70.227', 'Chrome'),
(1406, '2020-05-20 03:27:21', '192.168.70.227', 'Chrome'),
(1407, '2020-05-20 03:27:21', '192.168.70.227', 'Chrome'),
(1408, '2020-06-02 00:56:02', '192.168.70.227', 'Chrome'),
(1409, '2020-06-03 01:21:07', '192.168.70.227', 'Chrome'),
(1410, '2020-06-05 01:06:08', '192.168.70.227', 'Chrome'),
(1411, '2020-06-08 01:54:49', '192.168.70.181', 'Chrome'),
(1412, '2020-06-08 09:07:39', '192.168.70.227', 'Chrome'),
(1413, '2020-06-12 00:59:06', '192.168.70.227', 'Chrome'),
(1414, '2020-06-12 00:59:06', '192.168.70.227', 'Chrome'),
(1415, '2020-06-15 04:13:49', '192.168.70.227', 'Chrome'),
(1416, '2020-06-22 00:51:00', '192.168.70.227', 'Chrome'),
(1417, '2020-06-22 00:51:00', '192.168.70.227', 'Chrome'),
(1418, '2020-07-08 00:50:06', '192.168.70.227', 'Chrome'),
(1419, '2020-07-08 00:50:06', '192.168.70.227', 'Chrome'),
(1420, '2020-07-13 00:57:24', '192.168.70.227', 'Chrome'),
(1421, '2020-07-14 01:07:14', '192.168.70.227', 'Chrome'),
(1422, '2020-07-16 21:45:37', '192.168.70.227', 'Chrome');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_penyebab_kecelakaan_kerja`
--

CREATE TABLE `tbl_penyebab_kecelakaan_kerja` (
  `penyebab_id` int(11) NOT NULL,
  `penyebab_nama` varchar(30) DEFAULT NULL,
  `penyebab_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_penyebab_kecelakaan_kerja`
--

INSERT INTO `tbl_penyebab_kecelakaan_kerja` (`penyebab_id`, `penyebab_nama`, `penyebab_tanggal`) VALUES
(1, 'Mesin Cutter', '2018-04-17 22:17:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_program_k3`
--

CREATE TABLE `tbl_program_k3` (
  `program_id` int(11) NOT NULL,
  `program_nama` varchar(30) DEFAULT NULL,
  `program_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `program_tahun` varchar(50) DEFAULT NULL,
  `program_email` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_program_k3`
--

INSERT INTO `tbl_program_k3` (`program_id`, `program_nama`, `program_tanggal`, `program_tahun`, `program_email`) VALUES
(1, 'Hygiene', '2018-04-23 09:57:41', '2018', 'hesendwiyatmiko@gmail.com,hesen@ameyaindo.com'),
(2, '5S / 5R', '2018-04-23 10:04:23', '2018', NULL),
(3, 'Alat Pelindung Diri (APD)', '2018-04-24 19:52:19', '2018', NULL),
(4, 'Ergonomi', '2018-04-24 19:52:37', '2018', NULL),
(5, 'Electrical Safety', '2018-04-24 19:53:05', '2018', NULL),
(6, 'Chemical Safety', '2018-04-24 19:53:17', '2018', NULL),
(7, 'Emergency and Evacuation', '2018-04-24 19:53:37', '2018', NULL),
(8, 'First Aid and Work Accident', '2018-04-24 19:54:23', '2018', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `siswa_id` int(11) NOT NULL,
  `siswa_nis` varchar(20) DEFAULT NULL,
  `siswa_nama` varchar(70) DEFAULT NULL,
  `siswa_jenkel` varchar(2) DEFAULT NULL,
  `siswa_kelas_id` int(11) DEFAULT NULL,
  `siswa_photo` varchar(40) DEFAULT NULL,
  `siswa_team` varchar(20) DEFAULT NULL,
  `siswa_email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`siswa_id`, `siswa_nis`, `siswa_nama`, `siswa_jenkel`, `siswa_kelas_id`, `siswa_photo`, `siswa_team`, `siswa_email`) VALUES
(1, '10589', 'Hesen Dwi Yatmiko', 'L', 12, 'f2d108bb46dd164f8f91db9745c67ee8.jpg', 'Hygiene', 'hesendwiyatmiko@gmail.com,hesen@ameyaindo.com'),
(2, '10414', 'Anisa Maretta R', 'P', 10, '2170a3be50b40776ec3a7b951d4f9ea3.jpg', 'Ergonomi', 'anisa@ameyaindo.com'),
(3, '10733', 'Muhrim', 'L', 10, '54b9b6580a8dedc84d6ac467b6181d4f.jpg', 'Emergency and Evacua', 'muhrim@ameyaindo.com'),
(4, '10631', 'Heri Setiawan', 'L', 15, '69adc18e1f0e1107721f1ea59a8e2e26.jpg', 'Electrical Safety', 'maintenance@ameyaindo.com'),
(6, '10424', 'Yohanes Andi', 'L', 10, '2a4e839a33ffefdc26e99f309fa0775d.jpg', 'Emergency and Evacua', 'andi@ameyaindo.com'),
(7, '10142', 'Ifan Widayat', 'L', 15, '3a2ec0e588826f505704f48478ad58bd.jpg', 'Emergency and Evacua', 'maintenance@ameyaindo.com'),
(9, '10221', 'Alfana Bakhtian', 'L', 29, '57fb86db8336a061375d8df595ff42a8.jpg', 'Chemical Safety', 'washing@ameyaindo.com'),
(10, '10236', 'Deni Rahmat Hidayat', 'L', 21, '4f94bf2d795ddfc18ee70cb668047293.jpg', '5S / 5R', 'deni@ameyaindo.com'),
(11, '10144', 'Marjono', 'L', 3, '4af0c53ffef6ccdd3268dfb05270fe97.jpg', '5S / 5R', 'marjono@ameyaindo.com'),
(12, '10393', 'Hartini', 'P', 26, '6a122e966c37b0a35544ac31761067ca.jpg', 'Hygiene', 'admin.production@ameyaindo.com'),
(13, '10444', 'Ninik Winarni', 'P', 26, '87fd7d91401dcbdc1293db27e5e16a3a.jpg', 'Ergonomi', 'admin.production@ameyaindo.com'),
(14, '10040', 'Nasucha', 'L', 17, '09d033c55542fbc9dc444dd4a5085f9f.jpg', 'Ergonomi', 'mekanik@ameyaindo.com'),
(16, '10367', 'Putut Adi P', 'L', 25, '52f3db1ff4b3f34dcd38ffdb1ed61bcf.jpg', 'Alat Pelindung Diri ', 'putut@ameyaindo.com'),
(17, '10730', 'Bernadus Gili', 'L', 28, 'd27ae496e58500177d230c6cf40df842.jpg', '5S / 5R', 'abeng@ameyaindo.com'),
(18, '10528', 'Herdiyanto', 'L', 24, '67d78fb069267be00fd9f8099c3de49c.JPG', '5S / 5R', 'herdiyanto@ameyaindo.com'),
(19, '10044', 'Heri Martono', 'L', 15, '996f8b63712e5f2882d973bcd0c64792.jpg', 'Emergency and Evacua', 'maintenance@ameyaindo.com'),
(20, '10629', 'Arma Yudhianto', 'L', 15, '4606f0f79d768d0fca6f066a9225aa77.jpg', '5S / 5R', 'arma@ameyaindo.com'),
(21, '10336', 'Ramesh Sundaram', 'L', 10, '5e2c0f0849d6d0f3155b18667679152d.jpg', 'Emergency and Evacua', 'rameshsundaram@ameyaindo.com'),
(23, '10813', 'Etsha Kartika Ayomi', 'P', 10, 'b86215d63dbf689e9bbbb3161773c1cb.jpg', 'Chemical Safety', 'etsha@ameyaindo.com'),
(24, '10554', 'Septi Kusumadewi', 'L', 10, '25cf6e7a4852af46caadbcdb7e4717a0.jpg', 'First Aid and Work A', 'septi.kusumadewi@ameyaindo.com'),
(25, '10210', 'Parameshwaran', 'L', 21, '4217ae7bcf4a03a435debe08bf1676ab.jpg', '5S / 5R', 'param@ameyaindo.com'),
(26, '10773', 'Dadang Eko A', 'L', 25, 'a65cfee31b11f0a9adb9fa4d7ffd9dd0.jpg', 'Emergency and Evacua', 'dadang@ameyaindo.com'),
(27, '10249', 'Hrdjono', 'L', 9, '7d39ebda8196f1c31bb175385789c5a1.jpg', 'First Aid and Work A', 'packing@ameyaindo.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_testimoni`
--

CREATE TABLE `tbl_testimoni` (
  `testimoni_id` int(11) NOT NULL,
  `testimoni_nama` varchar(30) DEFAULT NULL,
  `testimoni_isi` varchar(120) DEFAULT NULL,
  `testimoni_email` varchar(35) DEFAULT NULL,
  `testimoni_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tulisan`
--

CREATE TABLE `tbl_tulisan` (
  `tulisan_id` int(11) NOT NULL,
  `tulisan_judul` varchar(100) DEFAULT NULL,
  `tulisan_isi` text,
  `tulisan_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `tulisan_kategori_id` int(11) DEFAULT NULL,
  `tulisan_kategori_nama` varchar(30) DEFAULT NULL,
  `tulisan_views` int(11) DEFAULT '0',
  `tulisan_gambar` varchar(40) DEFAULT NULL,
  `tulisan_pengguna_id` int(11) DEFAULT NULL,
  `tulisan_author` varchar(40) DEFAULT NULL,
  `tulisan_img_slider` int(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_tulisan`
--

INSERT INTO `tbl_tulisan` (`tulisan_id`, `tulisan_judul`, `tulisan_isi`, `tulisan_tanggal`, `tulisan_kategori_id`, `tulisan_kategori_nama`, `tulisan_views`, `tulisan_gambar`, `tulisan_pengguna_id`, `tulisan_author`, `tulisan_img_slider`) VALUES
(22, 'Pelatihan Evakuasi Bencana Kebakaran', '<p>Dalam rangka tanggap bencana di lingkungan PT. Ameya Livingstyle Indonesia diadakan Pelatihan Penanggulangan Bencana dan Penyelamatan (Evakuasi) yang diantaranya tentang Mitigasi Bencana, Keselamatan Petugas, Praktik Penanggulangan Bencana dan Evakuasi. Tujuan dilakukannya pelatihan ini di maksud agar seluruh karyawan supaya selalu waspada dan siap dalam menghadapi bencana kebakaran atau gempa bumi.</p>\r\n', '2017-05-16 19:37:57', 14, 'Pelatihan', 1, '6145e09c93da90f54b04de448ee5af1a.JPG', 5, 'Hesen Dwi Yatmiko', 0),
(23, 'Sosialisasi APAR (Alat Pemadam Api Ringan)', '<p>Sosialisasi APAR (Alat Pemadam Api Ringan) ini disampaikan langsung oleh Bapak Zuliansyah dari Badan penanggulangan Bencana Daerah dan Kebakaran Kota Bantul, dengan penyampaian informasi mengenai jenis APAR (Alat Pemadam Api Ringan) yang tersedia di yaitu :</p>\r\n\r\n<ol>\r\n	<li>APAR isi Powder</li>\r\n	<li>APAR isi Gas CO2</li>\r\n</ol>\r\n\r\n<p>Selain itu juga dijelaskan mengenai ciri kondisi APAR (Alat Pemadam Api Ringan) yang siap pakai :</p>\r\n\r\n<ol>\r\n	<li>Posisi masih tersegel,</li>\r\n	<li>Ada Pen Pengaman,</li>\r\n	<li>Pada label pengecekan APAR (tanggal pemeriksaan dan kondisi APAR) masih berfungsi,</li>\r\n	<li>Jarum barometer tekanan harus berada pada area hijau dengan tekanan sampai 17 bar (kecuali APAR dengan media Karbon Dioxide yang tidak memiliki barometer penunjuk tekanan isi APAR).&nbsp;Selanjutnya bapak Zuliansyah juga menjelaskan bahwa APAR (Alat Pemadam Api Ringan)&nbsp; adalah untuk memadamkan api dengan klasifikasi sumber kebakaran yaitu :</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>Klas A : Kebakaran yang berasal dari bahan biasa padat yang mudah terbakar Contoh : kertas, kayu, plstik, karet, dll.</li>\r\n	<li>Klas B : Kebakaran yang berasal dari bahan cair dan gas yang mudah menyala Contoh : minyak tanah, bensin, solar, thinner, LNG, LPG, dll.</li>\r\n	<li>Klas C : Kebakaran yang berasal dari peralatan listrik (hubungan arus pendek) Contoh : generator listrik, setrika listrik, dll.</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Cara penggunaan APAR (Alat Pemadam Api Ringan)&nbsp; yang tepat dan benar dengan langkah : &nbsp;<br />\r\nBuka segel dengan cara memutar pinnya</p>\r\n\r\n<ol>\r\n	<li>Tarik pin APAR\r\n	<ol>\r\n		<li>Ambil posisi tidak melawan arah angin. Cara mengetahui arah angin, perhatikan asapnya, jangan berdiri dengan posisi menantang asap. Posisi berdiri sekitar 1,5 m- 3 meter dari api</li>\r\n	</ol>\r\n	</li>\r\n	<li>Angkat APAR, arahkan moncong selang ke arah api</li>\r\n	<li>Semprot api dengan cara menekan tuas pada alat pemadam</li>\r\n</ol>\r\n', '2017-05-16 19:41:06', 14, 'Pelatihan', 2, '875ca9b5ac8a2e224584e85b1088a6a6.jpg', 5, 'Hesen Dwi Yatmiko', 1),
(24, 'Simulasi Evakuasi Kebakaran Dengan BPBD Bantull', '<p><strong>Bantul</strong> - PT. Ameya Livingstyle Indonesia&nbsp;menggelar simulasi evakuasi kebakaran gedung produksi, Jumat&nbsp;(06/04/2018). Simulasi itu ditujukan mengantispasi terjadinya bencana yang berdampak pada keamanan karyawan dan para pekerja.<br />\r\n<br />\r\nSimulasi tersebut diikuti oleh 2000&nbsp;karyawan&nbsp;mulai dari Satpam, staff, dan pekerja produksi.<br />\r\nKegiatan ini&nbsp;juga didukung oleh BPBD, BNPB dan Unit Pemadam Kebakaran.<br />\r\n<br />\r\nSkenarionya yakni terjadi kebakaran di ruang genset. Kemudian pihak PT. Ameya&nbsp;mengumumkan agar karyawan berlari ke jalur evakuasi. Lalu Tim pemadam kebakaran datang, sementara tim K3&nbsp;menolong para korban.<br />\r\n&nbsp;</p>\r\n', '2017-05-16 19:46:05', 14, 'Pelatihan', 2, 'd50981bc2385f5305b6087c92d30d5c7.JPG', 5, 'Hesen Dwi Yatmiko', 1),
(25, 'Bimbingan Teknis Pengujian Instalasi Listrik', '<p>Sampai saat ini kecelakaan kerja akibat listrik masih sering terjadi, potensi bahaya listrik mulai dari sentuhan langsung, sentuhan tidak langsung serta kebakaran yang terjadi di perusahaan dapat menimbulkan kerugian yang cukup besar termasuk korban jiwa. Untuk mengendalikan potensi bahaya listrik, maka perusahaan wajib melaksanakan pengujian dan pemeriksaan terhadap semua instalasi listrik di tempat kerjanya, agar semua instalasi listrik dapat digunakan secara aman.</p>\r\n\r\n<p>Berkaiatan dengan pengujian dan pemeriksaan instalasi listrik tersebut, salah satu unit kerja yang mempunyai tugas untuk melaksanakannya yaitu Balai K3 Jakarta dengan personil yang kompeten di bidang tersebut. Dalam rangka meningkatkan pengetahuan Pegawai dibidang pengujian dan pemeriksaan instalasi listrik di lingkungan PT. Ameya.</p>\r\n', '2018-04-11 14:21:37', 14, 'Pelatihan', 10, 'a45d783b5b77160272aae87e2c5c3325.JPG', 5, 'Hesen Dwi Yatmiko', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `struktur`
--
ALTER TABLE `struktur`
  ADD PRIMARY KEY (`struktur_id`);

--
-- Indexes for table `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  ADD PRIMARY KEY (`agenda_id`);

--
-- Indexes for table `tbl_album`
--
ALTER TABLE `tbl_album`
  ADD PRIMARY KEY (`album_id`),
  ADD KEY `album_pengguna_id` (`album_pengguna_id`);

--
-- Indexes for table `tbl_department`
--
ALTER TABLE `tbl_department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `tbl_diagnosis`
--
ALTER TABLE `tbl_diagnosis`
  ADD PRIMARY KEY (`diagnosis_id`);

--
-- Indexes for table `tbl_files`
--
ALTER TABLE `tbl_files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  ADD PRIMARY KEY (`galeri_id`),
  ADD KEY `galeri_album_id` (`galeri_album_id`),
  ADD KEY `galeri_pengguna_id` (`galeri_pengguna_id`);

--
-- Indexes for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  ADD PRIMARY KEY (`guru_id`);

--
-- Indexes for table `tbl_improvement`
--
ALTER TABLE `tbl_improvement`
  ADD PRIMARY KEY (`improvement_id`);

--
-- Indexes for table `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  ADD PRIMARY KEY (`inbox_id`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `tbl_kecelakaan_kerja`
--
ALTER TABLE `tbl_kecelakaan_kerja`
  ADD PRIMARY KEY (`kecelakaan_id`);

--
-- Indexes for table `tbl_kecelakaan_kerja_old`
--
ALTER TABLE `tbl_kecelakaan_kerja_old`
  ADD PRIMARY KEY (`kecelakaan_id`),
  ADD KEY `tulisan_kategori_id` (`kecelakaan_penyebab_id`),
  ADD KEY `tulisan_pengguna_id` (`kecelakaan_pengguna_id`);

--
-- Indexes for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`kelas_id`);

--
-- Indexes for table `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  ADD PRIMARY KEY (`komentar_id`),
  ADD KEY `komentar_tulisan_id` (`komentar_tulisan_id`);

--
-- Indexes for table `tbl_log_aktivitas`
--
ALTER TABLE `tbl_log_aktivitas`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `log_pengguna_id` (`log_pengguna_id`);

--
-- Indexes for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  ADD PRIMARY KEY (`pengguna_id`);

--
-- Indexes for table `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  ADD PRIMARY KEY (`pengumuman_id`);

--
-- Indexes for table `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  ADD PRIMARY KEY (`pengunjung_id`);

--
-- Indexes for table `tbl_penyebab_kecelakaan_kerja`
--
ALTER TABLE `tbl_penyebab_kecelakaan_kerja`
  ADD PRIMARY KEY (`penyebab_id`);

--
-- Indexes for table `tbl_program_k3`
--
ALTER TABLE `tbl_program_k3`
  ADD PRIMARY KEY (`program_id`);

--
-- Indexes for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`siswa_id`);

--
-- Indexes for table `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  ADD PRIMARY KEY (`testimoni_id`);

--
-- Indexes for table `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  ADD PRIMARY KEY (`tulisan_id`),
  ADD KEY `tulisan_kategori_id` (`tulisan_kategori_id`),
  ADD KEY `tulisan_pengguna_id` (`tulisan_pengguna_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `struktur`
--
ALTER TABLE `struktur`
  MODIFY `struktur_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;
--
-- AUTO_INCREMENT for table `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  MODIFY `agenda_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tbl_album`
--
ALTER TABLE `tbl_album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_department`
--
ALTER TABLE `tbl_department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `tbl_diagnosis`
--
ALTER TABLE `tbl_diagnosis`
  MODIFY `diagnosis_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_files`
--
ALTER TABLE `tbl_files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  MODIFY `galeri_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  MODIFY `guru_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_improvement`
--
ALTER TABLE `tbl_improvement`
  MODIFY `improvement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  MODIFY `inbox_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tbl_kecelakaan_kerja`
--
ALTER TABLE `tbl_kecelakaan_kerja`
  MODIFY `kecelakaan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;
--
-- AUTO_INCREMENT for table `tbl_kecelakaan_kerja_old`
--
ALTER TABLE `tbl_kecelakaan_kerja_old`
  MODIFY `kecelakaan_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  MODIFY `kelas_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  MODIFY `komentar_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_log_aktivitas`
--
ALTER TABLE `tbl_log_aktivitas`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  MODIFY `pengguna_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  MODIFY `pengumuman_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  MODIFY `pengunjung_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1423;
--
-- AUTO_INCREMENT for table `tbl_penyebab_kecelakaan_kerja`
--
ALTER TABLE `tbl_penyebab_kecelakaan_kerja`
  MODIFY `penyebab_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_program_k3`
--
ALTER TABLE `tbl_program_k3`
  MODIFY `program_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  MODIFY `siswa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  MODIFY `testimoni_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  MODIFY `tulisan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
