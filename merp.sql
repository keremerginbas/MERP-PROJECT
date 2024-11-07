-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 06 Haz 2024, 22:29:05
-- Sunucu sürümü: 10.4.27-MariaDB
-- PHP Sürümü: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `merp`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tb_ayar`
--

CREATE TABLE `tb_ayar` (
  `ayar_id` int(1) NOT NULL,
  `ayar_adi` varchar(100) NOT NULL,
  `ayar_deger` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `tb_ayar`
--

INSERT INTO `tb_ayar` (`ayar_id`, `ayar_adi`, `ayar_deger`) VALUES
(5, 'dizin', 'http://127.0.0.1/merp/'),
(6, 'logo', 'logo.jpg'),
(8, 'mesajsayi', '20'),
(9, 'verisayi', '10'),
(10, 'oturumsuresi', '600'),
(13, 'sifre', '!cetinkaya@2021'),
(14, 'stmp', 'mail.rcetinkaya.com'),
(15, 'port', '587');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tb_ders`
--

CREATE TABLE `tb_ders` (
  `ders_id` int(3) NOT NULL,
  `ders` varchar(50) NOT NULL,
  `dersyeri` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `tb_ders`
--

INSERT INTO `tb_ders` (`ders_id`, `ders`, `dersyeri`) VALUES
(1, 'Matematik', 'Kampüs'),
(2, 'Türkçe', 'Kampüs'),
(8, 'Tarih', 'Kampüs');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tb_duyuru`
--

CREATE TABLE `tb_duyuru` (
  `duyuru_id` int(5) NOT NULL,
  `duyuru` varchar(100) NOT NULL,
  `metin` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `tb_duyuru`
--

INSERT INTO `tb_duyuru` (`duyuru_id`, `duyuru`, `metin`) VALUES
(2, 'Duyuru Başlık', 'dfsdf sdf sdf sdf sdf sdf sdfsfsdfsdfsdfsdfsfwef wef wefw fwf wf dfsdf sdf sdf sdf sdf sdf sdfsfsdfsdfsdfsdfsfwef wef wefw fwf wf dfsdf sdf sdf sdf sdf sdf sdfsfsdfsdfsdfsdfsfwef wef wefw fwf wf');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tb_etkinlik`
--

CREATE TABLE `tb_etkinlik` (
  `etkinlik_id` int(5) NOT NULL,
  `etkinlik` varchar(100) NOT NULL,
  `metin` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `tb_etkinlik`
--

INSERT INTO `tb_etkinlik` (`etkinlik_id`, `etkinlik`, `metin`) VALUES
(2, 'Etkinlik Başlık', 'asdasdadad asd asd asd asd asd');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tb_kullanici`
--

CREATE TABLE `tb_kullanici` (
  `kullanici_id` int(2) NOT NULL,
  `kullanici` varchar(50) NOT NULL,
  `sifre` varchar(250) NOT NULL,
  `eposta` varchar(150) NOT NULL,
  `adi` varchar(150) NOT NULL,
  `foto` varchar(200) NOT NULL,
  `durum` int(1) NOT NULL,
  `tarih` datetime NOT NULL,
  `ders` varchar(100) DEFAULT NULL,
  `kpanel` int(1) NOT NULL,
  `tip` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `tb_kullanici`
--

INSERT INTO `tb_kullanici` (`kullanici_id`, `kullanici`, `sifre`, `eposta`, `adi`, `foto`, `durum`, `tarih`, `ders`, `kpanel`, `tip`) VALUES
(1, 'merp', 'c56d0e9a7ccec67b4ea131655038d604', 'merp@merp.com', 'Merp', 'images/profil/Kpanel-2b81107c09.jpg', 1, '0000-00-00 00:00:00', '1', 1, 1),
(11, 'berk', 'c56d0e9a7ccec67b4ea131655038d604', 'berk@berk.com', 'Berk', '', 0, '2024-05-30 00:17:28', '1,2,8', 1, 2),
(12, 'tatar', 'c56d0e9a7ccec67b4ea131655038d604', 'kpanel@kulweb.net', 'Kürşat TATAR', '', 0, '2024-06-01 12:37:06', '1,2,8,', 1, 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tb_sinav`
--

CREATE TABLE `tb_sinav` (
  `sinav_id` int(5) NOT NULL,
  `sinav` varchar(100) NOT NULL,
  `tarih` datetime NOT NULL,
  `ders_id` int(5) NOT NULL,
  `sinavyeri` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `tb_sinav`
--

INSERT INTO `tb_sinav` (`sinav_id`, `sinav`, `tarih`, `ders_id`, `sinavyeri`) VALUES
(1, 'Matematik Sınavı', '2024-05-30 00:06:00', 1, 'Kampüs'),
(2, 'Türkçe Sınavı', '2024-05-30 01:16:00', 2, 'Kampüs');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tb_sonuc`
--

CREATE TABLE `tb_sonuc` (
  `sonuc_id` int(5) NOT NULL,
  `sinav_id` int(5) NOT NULL,
  `sonuc` int(11) NOT NULL,
  `kullanici_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `tb_sonuc`
--

INSERT INTO `tb_sonuc` (`sonuc_id`, `sinav_id`, `sonuc`, `kullanici_id`) VALUES
(2, 1, 80, 11),
(3, 1, 90, 12),
(6, 1, 90, 11),
(7, 1, 50, 12);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tb_yazilar`
--

CREATE TABLE `tb_yazilar` (
  `yazi_id` int(3) NOT NULL,
  `baslik` varchar(150) NOT NULL,
  `metin` text NOT NULL,
  `resim` varchar(250) NOT NULL,
  `tarih` datetime NOT NULL,
  `yol` varchar(110) NOT NULL,
  `etiket` varchar(250) NOT NULL,
  `yayin` datetime DEFAULT NULL,
  `adres` varchar(200) DEFAULT NULL,
  `thumb` varchar(250) NOT NULL,
  `anasayfa` int(1) NOT NULL,
  `kategori_id` int(5) DEFAULT NULL,
  `tur` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `tb_ayar`
--
ALTER TABLE `tb_ayar`
  ADD PRIMARY KEY (`ayar_id`);

--
-- Tablo için indeksler `tb_ders`
--
ALTER TABLE `tb_ders`
  ADD PRIMARY KEY (`ders_id`);

--
-- Tablo için indeksler `tb_duyuru`
--
ALTER TABLE `tb_duyuru`
  ADD PRIMARY KEY (`duyuru_id`);

--
-- Tablo için indeksler `tb_etkinlik`
--
ALTER TABLE `tb_etkinlik`
  ADD PRIMARY KEY (`etkinlik_id`);

--
-- Tablo için indeksler `tb_kullanici`
--
ALTER TABLE `tb_kullanici`
  ADD PRIMARY KEY (`kullanici_id`);

--
-- Tablo için indeksler `tb_sinav`
--
ALTER TABLE `tb_sinav`
  ADD PRIMARY KEY (`sinav_id`);

--
-- Tablo için indeksler `tb_sonuc`
--
ALTER TABLE `tb_sonuc`
  ADD PRIMARY KEY (`sonuc_id`);

--
-- Tablo için indeksler `tb_yazilar`
--
ALTER TABLE `tb_yazilar`
  ADD PRIMARY KEY (`yazi_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `tb_ayar`
--
ALTER TABLE `tb_ayar`
  MODIFY `ayar_id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Tablo için AUTO_INCREMENT değeri `tb_ders`
--
ALTER TABLE `tb_ders`
  MODIFY `ders_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `tb_duyuru`
--
ALTER TABLE `tb_duyuru`
  MODIFY `duyuru_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `tb_etkinlik`
--
ALTER TABLE `tb_etkinlik`
  MODIFY `etkinlik_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `tb_kullanici`
--
ALTER TABLE `tb_kullanici`
  MODIFY `kullanici_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `tb_sinav`
--
ALTER TABLE `tb_sinav`
  MODIFY `sinav_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `tb_sonuc`
--
ALTER TABLE `tb_sonuc`
  MODIFY `sonuc_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `tb_yazilar`
--
ALTER TABLE `tb_yazilar`
  MODIFY `yazi_id` int(3) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
