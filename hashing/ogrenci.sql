-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 17 Haz 2022, 12:55:28
-- Sunucu sürümü: 5.7.36
-- PHP Sürümü: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `ogrenci`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bolumler`
--

DROP TABLE IF EXISTS `bolumler`;
CREATE TABLE IF NOT EXISTS `bolumler` (
  `bolum_id` tinyint(4) NOT NULL,
  `bolum_adi` varchar(40) NOT NULL,
  `sure` tinyint(3) UNSIGNED NOT NULL,
  `koordinator` char(8) NOT NULL,
  PRIMARY KEY (`bolum_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `bolumler`
--

INSERT INTO `bolumler` (`bolum_id`, `bolum_adi`, `sure`, `koordinator`) VALUES
(1, 'Bilgi Yönetimi', 2, '25698745'),
(2, 'BYS', 2, '99999999'),
(3, 'Yazılım Mühendisliği', 4, '78965412');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `dersler`
--

DROP TABLE IF EXISTS `dersler`;
CREATE TABLE IF NOT EXISTS `dersler` (
  `derskod` char(7) NOT NULL,
  `dersadi` varchar(30) NOT NULL,
  `kredi` tinyint(3) UNSIGNED NOT NULL,
  `dersi_veren` char(8) NOT NULL,
  PRIMARY KEY (`derskod`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `dersler`
--

INSERT INTO `dersler` (`derskod`, `dersadi`, `kredi`, `dersi_veren`) VALUES
('BLG1010', 'Bilgisayar', 4, '25698745'),
('BLG2020', 'İşletim Sistemleri', 2, '78965412'),
('BLG3030', 'Bilgi Toplumu Politikasi', 2, '99999999'),
('BYS1010', 'Klavye Teknikleri', 4, '99999999');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hocalar`
--

DROP TABLE IF EXISTS `hocalar`;
CREATE TABLE IF NOT EXISTS `hocalar` (
  `sicil_no` char(8) NOT NULL,
  `ad` varchar(20) NOT NULL,
  `soyad` varchar(20) NOT NULL,
  `unvani` varchar(20) NOT NULL,
  PRIMARY KEY (`sicil_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `hocalar`
--

INSERT INTO `hocalar` (`sicil_no`, `ad`, `soyad`, `unvani`) VALUES
('25698745', 'M.Olcay ', 'Özcan', 'Dr.Ögr.Üyesi'),
('78965412', 'Kenan ', 'BAYSAL', 'Ogretim Gorevlisi'),
('99999999', 'Betül', 'Balkan', 'S.Ogr.Gor');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `notlar`
--

DROP TABLE IF EXISTS `notlar`;
CREATE TABLE IF NOT EXISTS `notlar` (
  `ogrno` char(10) NOT NULL,
  `derskod` char(7) NOT NULL,
  `vize` tinyint(4) DEFAULT NULL,
  `final` tinyint(4) DEFAULT NULL,
  `gecmenotu` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `notlar`
--

INSERT INTO `notlar` (`ogrno`, `derskod`, `vize`, `final`, `gecmenotu`) VALUES
('1095410030', 'BLG1010', 50, 50, 50),
('1095410014', 'BLG1010', 40, 60, 40),
('1095410023', 'BLG1010', 30, 30, 30),
('1095410002', 'BLG1010', 70, 20, 20),
('1095410012', 'BLG1010', 60, 60, 60),
('1095410030', 'BLG2020', 50, 50, 50),
('1095410014', 'BLG2020', 30, 30, 30),
('1095410023', 'BLG2020', 80, 80, 80),
('1095410002', 'BLG2020', 55, 55, 55),
('1095410012', 'BLG2020', 45, 47, 45),
('1095410030', 'BLG3030', 20, NULL, NULL),
('1112221112', 'BYS1010', 35, NULL, NULL),
('1095410012', 'BLG3030', 65, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ogrenci`
--

DROP TABLE IF EXISTS `ogrenci`;
CREATE TABLE IF NOT EXISTS `ogrenci` (
  `ogrno` char(10) NOT NULL,
  `ad` varchar(20) NOT NULL,
  `soyad` varchar(20) NOT NULL,
  `bolumu` tinyint(3) UNSIGNED NOT NULL,
  `giris_yili` date NOT NULL,
  `sifre` varchar(200) NOT NULL,
  PRIMARY KEY (`ogrno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `ogrenci`
--

INSERT INTO `ogrenci` (`ogrno`, `ad`, `soyad`, `bolumu`, `giris_yili`, `sifre`) VALUES
('1095410030', 'Ceylan', 'AKCI', 1, '2009-01-08', '123456'),
('1095410014', 'Emine', 'SIVRI', 1, '2010-06-15', '123456'),
('1095410023', 'Emre', 'ÇELIKOGLU', 1, '2010-12-02', '123456'),
('1095410002', 'Cihan', 'TÜRK', 1, '2008-12-03', '123456'),
('1095410012', 'HASAN Berkay', 'SEZGiN', 2, '2009-12-30', '123456'),
('1112221112', 'Ender', 'AKSU', 3, '2007-09-11', '123456');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
