-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.20-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for framgia
CREATE DATABASE IF NOT EXISTS `framgia` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `framgia`;

-- Dumping structure for table framgia.record
CREATE TABLE IF NOT EXISTS `record` (
  `RECORDID` int(11) NOT NULL AUTO_INCREMENT,
  `AUTHOR` text,
  `TIME_POST` text,
  `TITLE` text,
  `TAGS` text,
  `VIEWS` text,
  PRIMARY KEY (`RECORDID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- Dumping data for table framgia.record: ~17 rows (approximately)
/*!40000 ALTER TABLE `record` DISABLE KEYS */;
INSERT INTO `record` (`RECORDID`, `AUTHOR`, `TIME_POST`, `TITLE`, `TAGS`, `VIEWS`) VALUES
	(1, 'Phan Lý Huỳnh', 'in about 7 hours', 'Docker và những kiến thức cơ bản', 'Dockerdocker containerDockerhubdocker images', '13'),
	(2, 'Trần Minh Hiếu', 'about 4 hours ago', 'Realm Mobile Database', 'RealmiOS', '8'),
	(3, 'Do Van Nam', 'about 7 hours ago', 'Minio – Object storage server như AWS S3', 'StorageMinioDockerAWS S3Cloud storage service', '20'),
	(4, 'Nguyen Tuan Linh', 'about 8 hours ago', 'Một số quiz về XSS trong Rails', 'Ruby on railsWeb Development', '10'),
	(5, 'Tiến Nguyễn Văn', 'about 12 hours ago', 'Những mẹo và thủ thuật bạn có thể dùng để quẩy với Laravel Eloquent', 'eloquentTipsLaravelTricksPHP', '66'),
	(6, 'Mai Quoc Dat', 'about 13 hours ago', 'Custom Native Control trên Xamarin.Form bằng Custom Renderer', 'xamarin', '5'),
	(7, 'Thịnh Bùi', 'about 13 hours ago', '[LINUX 101] KERNEL - Bộ xương sống của Linux', 'kernel updateLinux', '33'),
	(8, 'botvn', 'about 14 hours ago', '[Hack Game] 3. Giới thiệu con trỏ', 'HackBot GameAuto GameHack Game', '117'),
	(9, 'Trần Tuấn Anh', 'about 14 hours ago', 'Hiểu rõ về Callback Function trong Ruby on Rails ?', 'callback functioncallbackRails For BeginnersRuby on railsRails', '13'),
	(10, 'Hoàng Đức Quân', 'about 15 hours ago', 'PSR-16: Các Interface thông thường cho các thư viện xử lý vùng nhớ đệm(cache)', 'PHPClean Code', '15'),
	(11, 'Han Van Hiep', 'about 15 hours ago', 'Xây dựng ứng dụng Todo với Blazor', 'ASP.NET Core', '8'),
	(12, 'Nguyễn Văn Minh', 'Friday, 10:16 PM', 'Một vài câu lệnh hữu ích khi sử dụng Vim', '', '51'),
	(13, 'Chung Nguyễn Trần', 'Friday, 9:46 PM', 'Laravel 5.8: Cập nhật Carbon 2.0', 'Laravel 5.8Laravel', '68'),
	(14, 'Nguyen My Huyen', 'Friday, 7:53 PM', '5 lỗi bảo mật rất dễ gặp trong Rails', 'Securityruby and rails', '22'),
	(15, 'Lê Quốc Việt', 'Friday, 6:55 PM', 'Nested attributes cho lính mới.', 'Ruby', '19'),
	(16, 'Nguyen Le Anh Quan', 'Friday, 2:34 PM', 'CSS - Behind the sences', 'Front-endCSSHTML', '101'),
	(17, 'Shalesh', 'Friday, 2:18 PM', 'SAP Gateway security with Two Factor Authentication', 'what is SAP GUISAP GUI', '13');
/*!40000 ALTER TABLE `record` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
