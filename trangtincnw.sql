-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2017 at 03:13 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `trangtincnw`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
`id` int(10) unsigned NOT NULL,
  `id_nguoidung` int(11) unsigned NOT NULL,
  `id_tintuc` int(11) unsigned NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `id_nguoidung`, `id_tintuc`, `noidung`, `created_at`, `updated_at`) VALUES
(2, 1, 1, 'aaa', '2017-12-16 17:00:00', NULL),
(3, 1, 1, 'Hay', '2017-12-16 23:24:25', '2017-12-16 23:24:25');

-- --------------------------------------------------------

--
-- Table structure for table `loaitin`
--

CREATE TABLE IF NOT EXISTS `loaitin` (
`id` int(10) unsigned NOT NULL,
  `id_theloai` int(11) unsigned NOT NULL,
  `tenloaitin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tenkhongdau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loaitin`
--

INSERT INTO `loaitin` (`id`, `id_theloai`, `tenloaitin`, `tenkhongdau`, `created_at`, `updated_at`) VALUES
(1, 1, 'Bóng đá', 'bong-da', '2017-12-16 17:00:00', '2017-12-09 17:00:00'),
(2, 1, 'Thời trang', 'thoi-trang', '2017-12-10 17:00:00', '2017-12-11 05:51:29'),
(3, 2, 'Showbiz Việt', 'showbiz-viet', '2017-12-14 20:01:15', '2017-12-14 20:01:15'),
(4, 2, 'Tin hot', 'tin-hot', '2017-12-16 19:43:30', '2017-12-16 19:43:30'),
(5, 3, 'Sinh viên', 'sinh-vien', '2017-12-16 19:48:24', '2017-12-16 19:48:24'),
(6, 2, 'showbiz thế giới', 'showbiz-the-gioi', '2017-12-16 19:50:33', '2017-12-16 19:50:33'),
(7, 3, 'Du hoc', 'du-hoc', '2017-12-16 20:07:34', '2017-12-16 20:07:34');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `theloai`
--

CREATE TABLE IF NOT EXISTS `theloai` (
`id` int(10) NOT NULL,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tenkhongdau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `theloai`
--

INSERT INTO `theloai` (`id`, `ten`, `tenkhongdau`, `created_at`, `updated_at`) VALUES
(1, 'Thể thao', 'the-thao', NULL, NULL),
(2, 'Giải trí', 'giai-tri', '2017-12-14 20:00:37', '2017-12-14 20:00:37'),
(3, 'Học đường', 'hoc-duong', '2017-12-16 19:48:09', '2017-12-16 19:48:09');

-- --------------------------------------------------------

--
-- Table structure for table `tinchitiet`
--

CREATE TABLE IF NOT EXISTS `tinchitiet` (
`id` int(10) NOT NULL,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hinh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tinchitiet`
--

INSERT INTO `tinchitiet` (`id`, `ten`, `hinh`, `link`, `noidung`, `created_at`, `updated_at`) VALUES
(1, 'khoa hoc', 'obKT_congnghe.jpg', 'google.com', '<p>khoa hoc</p>\r\n', '2017-12-16 19:15:39', '2017-12-16 19:15:39'),
(2, 'tong hop', 'HZ1F_tonghop.jpg', 'google.com', '<p>tong hop</p>\r\n', '2017-12-16 19:16:10', '2017-12-16 19:16:10'),
(3, 'xe', 'V2in_xe.jpg', 'google.com', '<p>xe</p>\r\n', '2017-12-16 19:22:54', '2017-12-16 19:22:54');

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

CREATE TABLE IF NOT EXISTS `tintuc` (
`id` int(10) NOT NULL,
  `tieude` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tieudekhongdau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tomtat` text COLLATE utf8_unicode_ci NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `hinh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `soluotxem` int(11) NOT NULL,
  `id_loaitin` int(11) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `noibat` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tintuc`
--

INSERT INTO `tintuc` (`id`, `tieude`, `tieudekhongdau`, `tomtat`, `noidung`, `hinh`, `soluotxem`, `id_loaitin`, `created_at`, `updated_at`, `noibat`) VALUES
(1, 'Đừng bao giờ nhắm mắt chọn bừa', 'dung-bao-gio-nham-mat-chon-bua', '                                    Có tình yêu mà muốn ăn đời ở kiếp với nhau còn e rằng khó, thì thử hỏi không có tình yêu sẽ còn tai hại đến thế nào nữa đây?\r\n                                ', '<p>nữ nghệ sĩ chia sẻ rằng có thể cô chưa từng biết tình yêu là gì, chưa từng được nếm mùi vị của tình yêu. Vậy nhưng cô vẫn có một tấm chồng, vẫn có một gia đình và có những đứa con. Cô nói lúc bấy giờ, cô chỉ đơn thuần nghĩ tới việc tìm một ai đó có điều kiện tốt hơn mình, người ta sẽ lo cho mình. Và được lo toan, được có một nơi chốn đi về, đó đã là điều may mắn.</p>\r\n\r\n<div class="VCSortableInPreviewMode noCaption active" style="margin: 0px auto 25px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: ">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><a class="detail-img-lightbox" href="https://kenh14cdn.com/2017/quote1-1512744700299.jpg" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-decoration-line: none; box-sizing: border-box; cursor: zoom-in; display: block;" target="_blank" title=""><img alt="Đừng bao giờ nhắm mắt chọn bừa một tấm chồng, kết hôn có thể muộn chứ tuyệt đối không thể nhầm - Ảnh 1." class="lightbox-content" id="img_520d0630-dc27-11e7-9705-4525ce6e0a02" src="https://kenh14cdn.com/2017/quote1-1512744700299.jpg" style="border:0px; box-sizing:border-box; color:transparent; display:block; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; line-height:inherit; margin:0px; max-width:100%; padding:0px; vertical-align:bottom; width:620px" title="Đừng bao giờ nhắm mắt chọn bừa một tấm chồng, kết hôn có thể muộn chứ tuyệt đối không thể nhầm - Ảnh 1." /></a></div>\r\n</div>\r\n\r\n<p>Nhưng có lẽ vì kết hôn mà không có tình yêu, cho nên hậu quả tất yếu của mối quan hệ đó cũng đã diễn ra. Vì không có tình yêu nên mái ấm gia đình không thực sự là mái ấm. Nó trở thành một địa ngục trần gian cho những người trong cuộc. Khi mâu thuẫn vợ chồng nảy sinh, người ta không dùng tình yêu thương và cái nghĩa cái tình vợ chồng để ngồi lại nói chuyện với nhau. Mà người ta nhanh chóng đứng về hai chiến tuyến.</p>\r\n\r\n<p>Chúng ta vẫn thường ca ngợi tình yêu và mong cầu tình yêu cho dù chúng ta ở độ tuổi bao nhiêu chăng nữa. Bởi vì chúng ta có niềm tin rằng khi có tình yêu, cuộc sống sẽ trở nên tốt đẹp hơn và dễ dàng tha thứ, bao dung cho nhau hơn. Chúng ta cũng có những nỗi sợ canh cánh trong lòng về việc một ngày nào đó tình yêu sẽ cạn, và người mình yêu không còn muốn tha thiết đi đường dài cùng mình nữa. Cho nên, có tình yêu mà đến với nhau đã chẳng nói trước được điều gì, huống hồ là ngay từ xuất phát điểm ban đâu đã không có một chút rung động thật lòng?</p>\r\n\r\n<p>Không chỉ riêng câu chuyện của nữ nghệ sĩ kể trên, hằng ngày và hằng giờ vẫn có khá nhiều cô gái hỏi nhau vu vơ rằng nên lấy người yêu mình hay lấy người mình yêu? Liệu rằng có nên chấp nhận kết hôn với một người chỉ vì người ta tốt và có điều kiện chăm lo cho mình, còn tình yêu có hay không không quan trọng?</p>\r\n', 'a53f_kethon.jpg', 0, 4, '2017-12-14 20:04:48', '2017-12-14 20:23:17', 1),
(2, 'U23 Việt Nam 2-1 U23 Thái Lan', 'u23-viet-nam-2-1-u23-thai-lan', '                                                                                                                                                Công Phượng lập cú đúp, U23 Việt Nam "phục thù" Thái Lan\r\n                                \r\n                                \r\n                                \r\n                                ', '<div class="timeline-row" id="timeline-row-18681" style="margin: 0px; padding: 16px 0px 12px; border-width: 0px 0px 1px; border-top-style: initial; border-right-style: initial; border-bottom-style: solid; border-left-style: initial; border-top-color: initial; border-right-color: initial; border-bottom-color: rgb(224, 224, 224); border-left-color: initial; border-image: initial; font-variant-numeric: inherit; font-stretch: inherit; font-size: medium; line-height: inherit; font-family: Arial, Helvetica, sans-serif; vertical-align: baseline; width: 605px; float: left; color: rgb(0, 0, 0);">\r\n<div class="timeline-des" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: 22px; font-family: inherit; vertical-align: baseline;">Lần gần nhất hai đội gặp nhau là tại SEA Games 29, khi Việt Nam thua thảm 0-3 và bị loại ngay vòng bảng. U23 Việt Nam ngày hôm đó chơi thiếu tự tin, bị tâm lý. Lần này gặp lại, các cầu thủ sẽ được cởi bỏ áp lực vì chỉ đá một trận giao hữu. Hy vọng thầy trò Park Hang Seo sẽ chơi tốt để mang về niềm vui cho người hâm mộ.</div>\r\n\r\n<div class="mgt8" style="margin: 8px 0px 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;">\r\n<div class="image-timeline mgt8" style="margin: 8px 0px 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; float: left;">\r\n<p><img alt="" src="http://kenh14cdn.com/zoom/490_300/2017/21103517-10211906430749383-16098199-o-1503573300094-1503573324339-1513312889739.jpg" style="border:0px; color:transparent; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; height:300px; line-height:inherit; margin:0px; padding:0px; vertical-align:baseline; width:490px" title="" /></p>\r\n</div>\r\n</div>\r\n</div>\r\n', '9SDI_congphuong.jpg', 0, 1, '2017-12-15 04:45:10', '2017-12-15 05:13:26', 0),
(3, 'Toàn là đàn ông, tại sao Thành Cát Tư Hãn lại phát cho mỗi binh sĩ 1 bộ đồ lót bằng lụa?', 'toan-la-dan-ong-tai-sao-thanh-cat-tu-han-lai-phat-cho-moi-binh-si-1-bo-do-lot-bang-lua-', 'Cùng với việc trang bị cho mỗi binh sĩ một bộ đồ lót mặc bên trong, đội quân của Thành Cát Tư Hãn đã gây nên nỗi kinh hoàng trên khắp lục địa Á - Âu trong thế kỷ 13', '<p>Các đơn vị này đều do tướng lĩnh phụ trách hậu cần quản lý, cung cấp và điều động.</p>\r\n\r\n<div class="VCSortableInPreviewMode" style="margin: 0px auto 25px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: &quot;Times New Roman&quot;, Georgia, serif; vertical-align: baseline; text-align: center; width: 620px; box-sizing: border-box; color: rgb(34, 34, 34);">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><a class="detail-img-lightbox" href="https://kenh14cdn.com/2017/photo-1-1513405714538.jpg" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-decoration-line: none; box-sizing: border-box; cursor: zoom-in; display: block;" target="_blank" title="Thành Cát Tư Hãn đã xây dựng hệ thống tổ chức quân đội vô cùng quy củ, nghiêm ngặt ngay từ rất sớm. Tranh minh họa."><img alt=" Toàn là đàn ông, tại sao Thành Cát Tư Hãn lại phát cho mỗi binh sĩ 1 bộ đồ lót bằng lụa? - Ảnh 1." class="lightbox-content" id="img_57270bd0-e22a-11e7-a3ff-a11f55525792" src="https://kenh14cdn.com/2017/photo-1-1513405714538.jpg" style="border:0px; box-sizing:border-box; color:transparent; display:block; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; line-height:inherit; margin:0px; max-width:100%; padding:0px; vertical-align:bottom; width:620px" title=" Toàn là đàn ông, tại sao Thành Cát Tư Hãn lại phát cho mỗi binh sĩ 1 bộ đồ lót bằng lụa? - Ảnh 1." /></a></div>\r\n\r\n<div class="PhotoCMS_Caption" style="margin: 0px; padding: 10px; border: 0px; font-style: italic; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; background: rgb(242, 242, 242); text-align: left; box-sizing: border-box;">\r\n<p style="margin-left:0px; margin-right:0px">Thành Cát Tư Hãn đã xây dựng hệ thống tổ chức quân đội vô cùng quy củ, nghiêm ngặt ngay từ rất sớm. Tranh minh họa.</p>\r\n</div>\r\n</div>\r\n\r\n<p><strong>Có gì trong mỗi chiếc túi trên lưng ngựa của binh lính Mông Cổ?</strong></p>\r\n\r\n<p>Mỗi binh lính đều phải tự chịu trách nhiệm về quân trang của mình và trải qua những cuộc kiểm tra định kỳ. Nếu trang bị cá nhân không đầy đủ, họ sẽ bị đuổi ra khỏi quân ngũ và trục xuất về nhà.</p>\r\n\r\n<p>Các binh lính đều được cấp cho một bộ đồ lót làm bằng tơ lụa. Đây cũng là giai thoại nổi tiếng về đội quân huyền thoại này.</p>\r\n\r\n<p>Người Mông Cổ tin rằng mũi tên dù sắc bén tới nỗi xuyên thủng giáp, nhưng lại không thể xuyên qua tơ lụa. Trong trường hợp người lính trúng tên, tơ lụa sẽ theo đầu mũi tên găm vào vết thương.</p>\r\n\r\n<p>Thông thường, việc rút mũi tên ra khỏi cơ thể sẽ làm vết thương bị rách ra và càng trở nên nghiêm trọng. Nhưng khi có đồ lót tơ lụa, lớp tơ lụa này sẽ quấn vào đầu mũi tên, giúp việc rút tên diễn ra dễ dàng và ít đau đớn hơn.</p>\r\n\r\n<p>Binh lính có thể tự mình rút tên bằng cách lay nhẹ tơ lụa xung quanh vết thương hoặc có thể nhờ đến sự chữa trị của thầy thuốc mà không lo vết thương bị xé rách.</p>\r\n', 'n7Ju_thanhcattuhan.jpg', 0, 4, '2017-12-16 19:45:07', '2017-12-16 19:45:07', 0),
(4, 'Ozil vô-lê đẹp mắt, Arsenal trở lại Top 4', 'ozil-vo-le-dep-mat-arsenal-tro-lai-top-4', 'Bàn thắng duy nhất của Mesut Ozil ngay phút 23 giúp Arsenal đánh bại Newcastle 1-0, ở vòng 18 Ngoại hạng Anh.', '<h2>&nbsp;</h2>\r\n\r\n<p style="margin: 0px 0px 25px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 17px; line-height: 25px; font-family: &quot;Times New Roman&quot;, Georgia, serif; vertical-align: baseline; box-sizing: border-box; color: rgb(34, 34, 34); -webkit-font-smoothing: subpixel-antialiased;">Đánh bại Newcastle ngay tại Emirates, Arsenal chấm dứt chuỗi 3 trận không biết mùi chiến thắng và trở lại Top 4. Đây là 3 điểm quan trọng với thầy trò Arsene Wenger, về mặt tinh thần, sau hàng loạt kết quả không tốt gần đây.</p>\r\n\r\n<p style="margin: 0px 0px 25px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 17px; line-height: 25px; font-family: &quot;Times New Roman&quot;, Georgia, serif; vertical-align: baseline; box-sizing: border-box; color: rgb(34, 34, 34); -webkit-font-smoothing: subpixel-antialiased;">&nbsp;</p>\r\n\r\n<div class="VCSortableInPreviewMode noCaption" style="margin: 0px auto 25px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: &quot;Times New Roman&quot;, Georgia, serif; vertical-align: baseline; text-align: center; width: 640px; box-sizing: border-box; color: rgb(34, 34, 34);" type="Photo">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><a class="detail-img-lightbox" data-fancybox-group="img-lightbox" href="https://kenh14cdn.com/2017/4761b98000000578-5186197-image-a-181513438495923-1513443407296.jpg" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-decoration-line: none; box-sizing: border-box; cursor: zoom-in; display: block;" target="_blank" title=""><img alt="Ozil vô-lê đẹp mắt, Arsenal trở lại Top 4 - Ảnh 3." class="lightbox-content" data-original="https://kenh14cdn.com/2017/4761b98000000578-5186197-image-a-181513438495923-1513443407296.jpg" h="606" id="img_1f02c2f0-e282-11e7-86e2-9127cb1071d4" photoid="1f02c2f0-e282-11e7-86e2-9127cb1071d4" rel="lightbox" src="https://kenh14cdn.com/2017/4761b98000000578-5186197-image-a-181513438495923-1513443407296.jpg" style="border:0px; box-sizing:border-box; color:transparent; display:block; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; line-height:inherit; margin:0px; max-width:100%; padding:0px; vertical-align:bottom; width:640px" title="Ozil vô-lê đẹp mắt, Arsenal trở lại Top 4 - Ảnh 3." type="photo" w="962" /></a></div>\r\n</div>\r\n\r\n<p style="margin: 0px 0px 25px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 17px; line-height: 25px; font-family: &quot;Times New Roman&quot;, Georgia, serif; vertical-align: baseline; box-sizing: border-box; color: rgb(34, 34, 34); -webkit-font-smoothing: subpixel-antialiased;">Sân nhà vẫn là điểm tựa tin cậy đối với Arsenal, giúp "Pháo thủ" chơi trên chân hoàn toàn Newcastle và sớm có bàn mở tỷ số ở phút 23. Sau nỗ lực theo bóng của Sanchez, bóng bật ra và Ozil nhanh chân tung cú vô-lê đẹp mắt khiến thủ môn Elliot đứng chôn chân.</p>\r\n', 'xI63_arsenal.jpg', 0, 1, '2017-12-16 19:47:23', '2017-12-16 19:47:23', 1),
(5, 'Bối rối về việc phải làm gì sau khi tốt nghiệp đại học, đây là vài gợi ý cho bạn.', 'boi-roi-ve-viec-phai-lam-gi-sau-khi-tot-nghiep-dai-hoc-day-la-vai-goi-y-cho-ban-', '                                    Tốt nghiệp đại học là một khoảnh khắc thú vị và đầy ý nghĩa, nhưng nhiều sinh viên lại rất bối rối về việc phải làm gì sau khi tốt nghiệp đại học. Đừng quá lo lắng về điều này bởi có rất nhiều lựa chọn đang đợi chúng ta phía trước. Dưới đây là danh sách một số điều bạn có thể làm sau khi tốt nghiệp đại học.\r\n                                ', '<p>Trở lại trường và tiếp tục học đại học hoặc cao học là thực tế của nhiều sinh viên. Có nhiều lý do khiến sinh viên quyết định quay trở lại trường học. Có thể bạn cảm thấy không thích lĩnh vực nghề nghiệp mà mình đang theo học hoặc lĩnh vực mà bạn chọn không có nhiều cơ hội việc làm chẳng hạn... Nếu thấy mình trong tình huống này, hãy tìm hiểu các lựa chọn đào tạo hoặc tham khảo ý kiến từ các anh chị đi trước, giáo viên của bạn.</p>\r\n\r\n<p><strong>Tìm kiếm một công việc ổn định</strong></p>\r\n\r\n<div class="VCSortableInPreviewMode active noCaption" style="margin: 0px auto 25px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: ">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><a class="detail-img-lightbox" href="https://kenh14cdn.com/2017/photo-1-1512993016103.jpg" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-decoration-line: none; box-sizing: border-box; cursor: zoom-in; display: block;" target="_blank" title=""><img alt="Bối rối về việc phải làm gì sau khi tốt nghiệp đại học, đây là vài gợi ý cho bạn - Ảnh 1." class="lightbox-content" id="img_7589ffc0-de69-11e7-b5ed-414e95710a31" src="https://kenh14cdn.com/2017/photo-1-1512993016103.jpg" style="border:0px; box-sizing:border-box; color:transparent; display:block; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; line-height:inherit; margin:0px; max-width:100%; padding:0px; vertical-align:bottom; width:620px" title="Bối rối về việc phải làm gì sau khi tốt nghiệp đại học, đây là vài gợi ý cho bạn - Ảnh 1." /></a></div>\r\n</div>\r\n\r\n<p><span style="font-family:inherit; font-size:inherit">Đây cũng là một trong những điều sinh viên mong muốn thực hiện ngay sau khi ra trường. Bạn có thể tìm công việc từ nhiều nguồn khác nhau: truyền thông, các mối quan hệ xã hội... Và thực tế, trong thị trường lao động đầy cạnh tranh như hiện nay việc tân cử nhân tìm được cho mình một công việc phù hợp và yêu thích đôi khi không đơn giản. Do đó, nhiều sinh viên có thể chấp nhận làm trái ngành trái nghề bước đầu, sau đó dần tìm cho mình những cơ hội việc làm khác.</span></p>\r\n\r\n<p><strong>Freelance (nghề tự do)&nbsp;</strong></p>\r\n\r\n<p>Sau khi bạn hoàn thành chương trình đại học, bạn có thể muốn dành chút thời gian để "bù đắp" những ngày tháng học tập căng thẳng. Vì vậy nhiều sinh viên đã lựa chọn Freelance (nghề tự do), vừa có thu nhập vừa có sự thoải mái trong công việc, có thời gian dành riêng cho bản thân. Chẳng hạn nếu bạn có niềm đam mê nhiếp ảnh, bạn có thể chụp sự kiện, đám cưới, sinh nhật... Với số tiền tích lũy được, bạn có thể đi đây đi đó, trải nghiệm cuộc sống và văn hóa ở những vùng đất mới sẽ giúp chúng ta có cái nhìn mới mẻ, và nạp thêm năng lượng cho bản thân.</p>\r\n', 'Nir2_totnghiep.jpg', 0, 5, '2017-12-16 19:49:30', '2017-12-17 06:56:08', 0),
(6, '"Cô gái ma ám" xuất sắc lên ngôi Quán quân "Asia''s Got Talent"!', 'co-gai-ma-am-xuat-sac-len-ngoi-quan-quan-asias-got-talent-', 'Sau hàng loạt những tiết mục ảo thuật rùng rợn, ấn tượng, The Sacred Riana đã chiến thắng "Asia''s Got Talent" mùa 2.', '<p>Kết quả được dựa trên lượng bình chọn của công chúng, chứng tỏ Riana đã chinh phục được rất nhiều khán giả trên khắp châu Á với những tiết mục không đụng hàng của mình.</p>\r\n\r\n<div class="VCSortableInPreviewMode active noCaption" style="margin: 0px auto 25px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: &quot;Times New Roman&quot;, Georgia, serif; vertical-align: baseline; text-align: center; width: 620px; box-sizing: border-box; color: rgb(34, 34, 34);">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><a class="detail-img-lightbox" href="https://kenh14cdn.com/2017/screen-shot-2017-12-14-at-235333-1513274550601.png" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-decoration-line: none; box-sizing: border-box; cursor: zoom-in; display: block;" target="_blank" title=""><img alt="Cô gái ma ám xuất sắc lên ngôi Quán quân Asias Got Talent! - Ảnh 2." class="lightbox-content" id="img_fd117360-e0f8-11e7-8d9c-8d9e7f5ca023" src="https://kenh14cdn.com/2017/screen-shot-2017-12-14-at-235333-1513274550601.png" style="border:0px; box-sizing:border-box; color:transparent; display:block; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; line-height:inherit; margin:0px; max-width:100%; padding:0px; vertical-align:bottom; width:620px" title="Cô gái ma ám xuất sắc lên ngôi Quán quân Asias Got Talent! - Ảnh 2." /></a></div>\r\n</div>\r\n\r\n<div class="VCSortableInPreviewMode active" style="margin: 0px auto 25px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: &quot;Times New Roman&quot;, Georgia, serif; vertical-align: baseline; text-align: center; width: 620px; box-sizing: border-box; color: rgb(34, 34, 34);">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><a class="detail-img-lightbox" href="https://kenh14cdn.com/2017/screen-shot-2017-12-14-at-235427-1513274550603.png" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-decoration-line: none; box-sizing: border-box; cursor: zoom-in; display: block;" target="_blank" title="Riana lên ngôi Quán quân"><img alt="Cô gái ma ám xuất sắc lên ngôi Quán quân Asias Got Talent! - Ảnh 3." class="lightbox-content" id="img_fd41f940-e0f8-11e7-aad6-b357a4250db9" src="https://kenh14cdn.com/2017/screen-shot-2017-12-14-at-235427-1513274550603.png" style="border:0px; box-sizing:border-box; color:transparent; display:block; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; line-height:inherit; margin:0px; max-width:100%; padding:0px; vertical-align:bottom; width:620px" title="Cô gái ma ám xuất sắc lên ngôi Quán quân Asias Got Talent! - Ảnh 3." /></a></div>\r\n\r\n<div class="PhotoCMS_Caption" style="margin: 0px; padding: 10px; border: 0px; font-style: italic; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; background: rgb(242, 242, 242); text-align: left; box-sizing: border-box;">\r\n<p style="margin-left:0px; margin-right:0px">Riana lên ngôi Quán quân</p>\r\n</div>\r\n</div>\r\n\r\n<p>Sau chiến thắng này, khán giả cũng như truyền thông chỉ có thể biết được cảm xúc thật của cô nàng thông qua quản lý, bởi chính Riana quyết định giữ đúng tính cách kỳ quặc, im lặng của nhân vật ra cả bên ngoài tiết mục.</p>\r\n\r\n<div class="VCSortableInPreviewMode active" style="margin: 0px auto 25px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: &quot;Times New Roman&quot;, Georgia, serif; vertical-align: baseline; text-align: center; width: 620px; box-sizing: border-box; color: rgb(34, 34, 34);">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><a class="detail-img-lightbox" href="https://kenh14cdn.com/2017/screen-shot-2017-12-14-at-235457-1513274550604.png" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-decoration-line: none; box-sizing: border-box; cursor: zoom-in; display: block;" target="_blank" title="Cô nàng giữ đúng tính cách kỳ quặc, "><img alt="Cô gái ma ám xuất sắc lên ngôi Quán quân Asias Got Talent! - Ảnh 4." class="lightbox-content" id="img_fd8d0c00-e0f8-11e7-8d9c-8d9e7f5ca023" src="https://kenh14cdn.com/2017/screen-shot-2017-12-14-at-235457-1513274550604.png" style="border:0px; box-sizing:border-box; color:transparent; display:block; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; line-height:inherit; margin:0px; max-width:100%; padding:0px; vertical-align:bottom; width:620px" title="Cô gái ma ám xuất sắc lên ngôi Quán quân Asias Got Talent! - Ảnh 4." /></a></div>\r\n\r\n<div class="PhotoCMS_Caption" style="margin: 0px; padding: 10px; border: 0px; font-style: italic; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; background: rgb(242, 242, 242); text-align: left; box-sizing: border-box;">\r\n<p style="margin-left:0px; margin-right:0px">Cô nàng giữ đúng tính cách kỳ quặc, "đáng sợ" của nhân vật khi được các thí sinh khác chúc mừng...</p>\r\n</div>\r\n</div>\r\n\r\n<div class="VCSortableInPreviewMode active" style="margin: 0px auto 25px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: &quot;Times New Roman&quot;, Georgia, serif; vertical-align: baseline; text-align: center; width: 620px; box-sizing: border-box; color: rgb(34, 34, 34);">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><a class="detail-img-lightbox" href="https://kenh14cdn.com/2017/screen-shot-2017-12-14-at-235507-1513274550605.png" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-decoration-line: none; box-sizing: border-box; cursor: zoom-in; display: block;" target="_blank" title="... cũng như lúc trả lời phỏng vấn"><img alt="Cô gái ma ám xuất sắc lên ngôi Quán quân Asias Got Talent! - Ảnh 5." class="lightbox-content" id="img_fea92a60-e0f8-11e7-aad6-b357a4250db9" src="https://kenh14cdn.com/2017/screen-shot-2017-12-14-at-235507-1513274550605.png" style="border:0px; box-sizing:border-box; color:transparent; display:block; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; line-height:inherit; margin:0px; max-width:100%; padding:0px; vertical-align:bottom; width:620px" title="Cô gái ma ám xuất sắc lên ngôi Quán quân Asias Got Talent! - Ảnh 5." /></a></div>\r\n\r\n<div class="PhotoCMS_Caption" style="margin: 0px; padding: 10px; border: 0px; font-style: italic; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; background: rgb(242, 242, 242); text-align: left; box-sizing: border-box;">\r\n<p style="margin-left:0px; margin-right:0px">... cũng như lúc trả lời phỏng vấn</p>\r\n</div>\r\n</div>\r\n', 'Bt4Z_cogaimaam.jpg', 0, 6, '2017-12-16 19:52:37', '2017-12-16 19:52:37', 1),
(7, 'Du học thuở ban đầu, bạn đã biết cách để hòa nhập nhanh ?', 'du-hoc-thuo-ban-dau-ban-da-biet-cach-de-hoa-nhap-nhanh-', '                                    Có lẽ phần đông những du học sinh mới bước chân sang học tập tại nước ngoài dù học tập dưới hình thức nào, môi trường nào, điều kiện nào thì hòa nhập vẫn là vấn đề khiến bạn gặp nhiều trở ngại. Liệu có phải hoàn toàn do hoàn cảnh, môi trường hay vì bạn chưa biết cách và nỗ lực hết sức để bắt nhịp nhanh với đời sống tại đó?\r\n                                ', '<p>Mỗi quốc gia lại mang những sắc thái chung của châu lục bản địa, đồng thời có những nét văn hóa đặc trưng vùng miền. Như trong văn hóa nói chuyện của học sinh, sinh viên Mỹ, chủ đề họ thường trao đổi hàng ngày như thể thao (bóng rổ, bóng chày, khúc côn cầu…), truyền hình thực tế (các show đang "hot" trên sóng truyền hình), giải trí… Đó cũng là một gợi ý để bạn trau dồi thêm các lĩnh vực đó.</p>\r\n\r\n<div class="VCSortableInPreviewMode active noCaption" style="margin: 0px auto 25px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 17px; line-height: inherit; font-family: ">\r\n<div style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; box-sizing: border-box;"><a class="detail-img-lightbox" href="https://kenh14cdn.com/2017/anh-1-1512402868473.jpg" style="margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; text-decoration-line: none; box-sizing: border-box; cursor: zoom-in; display: block;" target="_blank" title=""><img alt="Du học thuở ban đầu, bạn đã biết cách để hòa nhập nhanh nhất? - Ảnh 1." class="lightbox-content" id="img_69e03b20-d90b-11e7-ac76-a5489c13b337" src="https://kenh14cdn.com/2017/anh-1-1512402868473.jpg" style="border:0px; box-sizing:border-box; color:transparent; display:block; font-family:inherit; font-size:inherit; font-stretch:inherit; font-style:inherit; font-variant:inherit; font-weight:inherit; line-height:inherit; margin:0px; max-width:100%; padding:0px; vertical-align:bottom; width:620px" title="Du học thuở ban đầu, bạn đã biết cách để hòa nhập nhanh nhất? - Ảnh 1." /></a></div>\r\n</div>\r\n\r\n<p>Làm thế nào để bạn hiểu và thấm nhuần văn hóa quốc gia du học khi chưa một lần đặt chân? Tại sao không nhờ vào internet – công cụ bạn có thể hiểu mọi thứ. Những bộ phim, những bài hát, những lễ hội, những tác phẩm văn học hay những show truyền hình phát 24/24 trên các kênh truyền thông hàng ngày là nơi bạn có thể tìm hiểu, học hỏi và tiếp thu phần nào nét văn hóa của quốc gia nơi bạn sẽ đặt chân tới để tu nghiệp. Giờ đây các quốc gia đã không còn biên giới khi có mạng kết nối toàn cầu, là cơ hội tốt để bạn học tập, trau dồi và sẵn sàng cho hành trình du học của mình.</p>\r\n\r\n<h3>Cởi mở hết sức có thể</h3>\r\n\r\n<p>Dù với những ai năng động, hoạt ngôn hay cuồng nhiệt thế nào đi chăng nữa, bước chân vào một cuộc sống mới khi du học nước ngoài thì ít nhiều vẫn phải "trùng xuống" trong thời gian đầu. Và đó dường như còn là trở ngại lớn hơn rất nhiều với những du học sinh vốn hướng nội, trầm tính và có phần nhu mì. Nhưng đừng đổ lỗi do bản tính, hòa nhập nhanh chóng hay không chính là trong cách ứng xử của bạn. Cởi mở chính là nguyên tắc đầu tiên để bạn bắt nhịp nhanh chóng với cuộc sống mới khi du học.</p>\r\n', 'BZCa_duhoc.jpg', 0, 7, '2017-12-16 20:08:38', '2017-12-17 06:54:59', 0),
(8, 'Man City trêu tức Man Utd khi mừng trận thắng Tottenham', 'man-city-treu-tuc-man-utd-khi-mung-tran-thang-tottenham', 'Đội giữ đỉnh bảng Ngoại hạng Anh nhắc tới đối thủ cùng thành phố, nhằm trả đũa vụ ẩu đả giữa hai bên vào tuần trước.', '<p>Với trận thắng Tottenham 4-1, Man City nới rộng khoảng cách với đội nhì bảng Man Utd lên thành 14 điểm, trước khi đội quân của Mourinho đấu vòng 18 trên sân West Brom hôm nay.</p>\r\n\r\n<table align="center" border="0" cellpadding="3" cellspacing="0" class="tplCaption" style="box-sizing:border-box; font-family:arial; font-size:14px; margin:10px auto; max-width:100%; padding:0px; text-rendering:geometricPrecision; width:500px">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt="man-city-treu-tuc-man-utd-khi-mung-tran-thang-tottenham" class="lazyLoaded" src="https://i-thethao.vnecdn.net/2017/12/17/47651E4000000578-5187051-image-9368-2245-1513498868.jpg" style="border:0px; box-sizing:border-box; font-size:0px; line-height:0; margin:0px; max-width:100%; padding:0px; text-rendering:geometricPrecision" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Mendy quay video cảnh đồng đội trêu tức Man Utd ngay sau trận thắng Tottenham.</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Theo&nbsp;<em>Sports Mail</em>, đây là cách các học trò Pep Guardiola trả đũa đội bóng cùng thành phố, sau vụ ẩu đả giữa hai bên trong đường hầm sân Old Trafford cuối tuần trước.</p>\r\n\r\n<p>Cầu thủ Man City hôm đó bật nhạc to và hát hò ngay trong phòng thay đồ sân Old Trafford, khiến Jose Mourinho khó chịu. HLV người Bồ Đào Nha đã cãi vã với thủ thành Ederson, và bị ném chai nước vào đầu. Sau đó, Marcos Rojo đã dẫn một nhóm cầu thủ Man Utd sang phòng thay đồ đối thủ để làm cho ra lẽ.</p>\r\n', 'OZpu_mancity.jpg', 0, 1, '2017-12-17 06:27:26', '2017-12-17 06:27:26', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quyen` int(11) NOT NULL DEFAULT '0',
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `quyen`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Trần Thị Mỹ Hiền', 'tranhien171196@gmail.com', 1, '$2y$10$oMlV1jV35wHfxHVUgTLo7eba21zDUpx3Hcr.pQMhwvXNwX8ZPcSfi', 'kHKM1FGFLhAckgrdabgJSRWWkLt3U4lNjDC6P8cxdnrUYMp38sC9Gb1icoaW', '2017-12-15 08:12:58', '2017-12-17 07:03:47'),
(2, 'Nguyễn Thị Kim Hà', 'ntkha196@gmail.com', 0, '$2y$10$NKso6QqSHicMKezmAWDGXeTQCVZmI8JINisp4op6NYB0Uz6eYVaSW', 'qSCeFktfstnwwuHuhxDF8QKOFCjNnIBoQSyYrrXJNnwLmMlnaLRvVDoEvird', '2017-12-17 00:06:01', '2017-12-17 07:11:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loaitin`
--
ALTER TABLE `loaitin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
 ADD KEY `password_resets_email_index` (`email`), ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `theloai`
--
ALTER TABLE `theloai`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tinchitiet`
--
ALTER TABLE `tinchitiet`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tintuc`
--
ALTER TABLE `tintuc`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `loaitin`
--
ALTER TABLE `loaitin`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `theloai`
--
ALTER TABLE `theloai`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tinchitiet`
--
ALTER TABLE `tinchitiet`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tintuc`
--
ALTER TABLE `tintuc`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
