-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th9 19, 2018 lúc 12:58 PM
-- Phiên bản máy phục vụ: 10.2.12-MariaDB
-- Phiên bản PHP: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `id5023757_webphim`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `account` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ten` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `account`, `password`, `ten`, `active`) VALUES
(1, 'admin', '827ccb0eea8a706c4c34a16891f84e7b', 'admin', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `daodien`
--

CREATE TABLE `daodien` (
  `id_daodien` int(11) NOT NULL,
  `ten_daodien` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ten_daodien_kd` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `daodien`
--

INSERT INTO `daodien` (`id_daodien`, `ten_daodien`, `ten_daodien_kd`) VALUES
(1, 'Ryan Coogler', 'Ryan-Coogler'),
(2, '', ''),
(3, 'Ryan Coogler', 'Ryan-Coogler'),
(4, 'Ryan Coogler', 'Ryan-Coogler'),
(5, 'Ryan Coogler', 'Ryan-Coogler'),
(6, 'Hiroaki Miyamoto', 'Hiroaki-Miyamoto'),
(7, 'Hiroaki Miyamoto', 'Hiroaki-Miyamoto'),
(8, 'Hiroaki Miyamoto', 'Hiroaki-Miyamoto'),
(9, 'Mike Mendez', 'Mike-Mendez'),
(10, 'Baoqiang Wang', 'Baoqiang-Wang'),
(11, 'D.J. Caruso', 'D.J.-Caruso'),
(12, 'Hark Tsui', 'Hark-Tsui'),
(13, 'Joss Whedon', 'Joss-Whedon'),
(14, 'Joss Whedon', 'Joss-Whedon'),
(15, 'J. A. Bayona', 'J.-A.-Bayona'),
(16, 'Gary Ross', 'Gary-Ross'),
(17, 'Gary Ross', 'Gary-Ross'),
(18, 'David Leitch', 'David-Leitch'),
(19, 'David Leitch', 'David-Leitch'),
(20, 'Nitesh Tiwari', 'Nitesh-Tiwari'),
(21, 'Nitesh Tiwari', 'Nitesh-Tiwari');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dienvien`
--

CREATE TABLE `dienvien` (
  `id_dienvien` int(11) NOT NULL,
  `ten_dienvien` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ten_dienvien_kd` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dienvien`
--

INSERT INTO `dienvien` (`id_dienvien`, `ten_dienvien`, `ten_dienvien_kd`) VALUES
(1, 'Chadwick Boseman', 'Chadwick-Boseman'),
(2, 'Michael B. Jordan', 'Michael-B.-Jordan'),
(3, 'Lupita Nyong\'o', 'Lupita-Nyong\'o'),
(4, 'Danai Gurira', 'Danai-Gurira'),
(5, 'Martin Freeman', 'Martin-Freeman'),
(6, 'Daniel Kaluuya', 'Daniel-Kaluuya'),
(7, 'Letitia Wright', 'Letitia-Wright'),
(8, 'Winston Duke', 'Winston-Duke'),
(9, 'Angela Bassett', 'Angela-Bassett'),
(10, 'Forest Whitaker', 'Forest-Whitaker'),
(11, 'Andy Serkis', 'Andy-Serkis'),
(12, 'John Kani', 'John-Kani'),
(123, '', ''),
(124, 'Brina Palencia', 'Brina-Palencia'),
(125, 'Christopher Sabat', 'Christopher-Sabat'),
(126, 'Keith Silverstein', 'Keith-Silverstein'),
(127, 'Colleen Clinkenbeard', 'Colleen-Clinkenbeard'),
(128, 'Patrick Seitz', 'Patrick-Seitz'),
(129, 'Eric Vale', 'Eric-Vale'),
(130, 'Hikari Mitsushima', 'Hikari-Mitsushima'),
(131, 'Mayumi Tanaka', 'Mayumi-Tanaka'),
(132, 'Ikue Ôtani', 'Ikue-Otani'),
(133, 'Ian Sinclair', 'Ian-Sinclair'),
(134, 'Luci Christian', 'Luci-Christian'),
(135, 'Kappei Yamaguchi', 'Kappei-Yamaguchi'),
(136, 'Dolph Lundgren', 'Dolph-Lundgren'),
(137, 'Kristina Klebe', 'Kristina-Klebe'),
(138, 'Tony Bentley', 'Tony-Bentley'),
(139, 'Baoqiang Wang', 'Baoqiang-Wang'),
(140, 'Yan Liu', 'Yan-Liu'),
(141, 'Bai-Ke', 'Bai-Ke'),
(142, 'Vin Diesel', 'Vin-Diesel'),
(143, 'Donnie Yen', 'Donnie-Yen'),
(144, 'Deepika Padukone', 'Deepika-Padukone'),
(145, 'Kris Wu', 'Kris-Wu'),
(146, 'Kenny Lin', 'Kenny-Lin'),
(147, 'Chen Yao', 'Chen-Yao'),
(148, 'Robert Downey Jr.', 'Robert-Downey-Jr.'),
(149, 'Chris Evans', 'Chris-Evans'),
(150, 'Mark Ruffalo', 'Mark-Ruffalo'),
(151, 'Chris Pratt', 'Chris-Pratt'),
(152, 'Bryce Dallas Howard', 'Bryce-Dallas-Howard'),
(153, 'Rafe Spall', 'Rafe-Spall'),
(154, 'Justice Smith', 'Justice-Smith'),
(155, 'Daniella Pineda', 'Daniella-Pineda'),
(156, 'James Cromwell', 'James-Cromwell'),
(157, 'Toby Jones', 'Toby-Jones'),
(158, 'Ted Levine', 'Ted-Levine'),
(159, 'Jeff Goldblum', 'Jeff-Goldblum'),
(160, 'BD Wong', 'BD-Wong'),
(161, 'Geraldine Chaplin', 'Geraldine-Chaplin'),
(162, 'Isabella Sermon', 'Isabella-Sermon'),
(163, 'Sandra Bullock', 'Sandra-Bullock'),
(164, 'Cate Blanchett', 'Cate-Blanchett'),
(165, 'Anne Hathaway', 'Anne-Hathaway'),
(166, 'Sarah Paulson', 'Sarah-Paulson'),
(167, 'Rihanna', 'Rihanna'),
(168, 'Mindy Kaling', 'Mindy-Kaling'),
(169, 'Awkwafina', 'Awkwafina'),
(170, 'Helena Bonham Carter', 'Helena-Bonham-Carter'),
(171, 'Richard Armitage', 'Richard-Armitage'),
(172, 'James Corden', 'James-Corden'),
(173, 'Dakota Fanning', 'Dakota-Fanning'),
(174, 'Elliott Gould', 'Elliott-Gould'),
(175, 'Ryan Reynolds', 'Ryan-Reynolds'),
(176, 'Josh Brolin', 'Josh-Brolin'),
(177, 'Morena Baccarin', 'Morena-Baccarin'),
(178, 'Julian Dennison', 'Julian-Dennison'),
(179, 'Zazie Beetz', 'Zazie-Beetz'),
(180, 'T.J. Miller', 'T.J.-Miller'),
(181, 'Leslie Uggams', 'Leslie-Uggams'),
(182, 'Karan Soni', 'Karan-Soni'),
(183, 'Brianna Hildebrand', 'Brianna-Hildebrand'),
(184, 'Jack Kesy', 'Jack-Kesy'),
(185, 'Eddie Marsan', 'Eddie-Marsan'),
(186, 'Shiori Kutsuna', 'Shiori-Kutsuna'),
(187, 'Aamir Khan', 'Aamir-Khan'),
(188, 'Sakshi Tanwar', 'Sakshi-Tanwar'),
(189, 'Fatima Sana Shaikh', 'Fatima-Sana-Shaikh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kichban`
--

CREATE TABLE `kichban` (
  `id_kichban` int(11) NOT NULL,
  `kichban` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kichban_kd` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `kichban`
--

INSERT INTO `kichban` (`id_kichban`, `kichban`, `kichban_kd`) VALUES
(1, 'Joe Robert Cole', 'Joe-Robert-Cole'),
(2, 'Ryan Coogler', 'Ryan-Coogler'),
(3, 'Jack Kirby', 'Jack-Kirby'),
(4, 'Stan Lee', 'Stan-Lee'),
(5, 'Simeon Wilkins', 'Simeon-Wilkins'),
(6, '', ''),
(7, 'Clint Bickham', 'Clint-Bickham'),
(8, 'Tsutomu Kuroiwa', 'Tsutomu-Kuroiwa'),
(9, 'Brina Palencia', 'Brina-Palencia'),
(10, 'Christopher Sabat', 'Christopher-Sabat'),
(11, 'Keith Silverstein', 'Keith-Silverstein'),
(12, 'Dan Berk', 'Dan-Berk'),
(13, 'Robert Olsen', 'Robert-Olsen'),
(14, 'Ding Ding', 'Ding-Ding'),
(15, 'Baoqiang Wang', 'Baoqiang-Wang'),
(16, 'Rich Wilkes', 'Rich-Wilkes'),
(17, 'F. Scott Frazier', 'F.-Scott-Frazier'),
(18, 'Stephen Chow', 'Stephen-Chow'),
(19, 'Si-Cheun Lee', 'Si-Cheun-Lee'),
(20, 'Joss Whedon', 'Joss-Whedon'),
(21, 'Derek Connolly', 'Derek-Connolly'),
(22, 'Colin Trevorrow', 'Colin-Trevorrow'),
(23, 'Michael Crichton', 'Michael-Crichton'),
(24, 'Gary Ross', 'Gary-Ross'),
(25, 'Olivia Milch', 'Olivia-Milch'),
(26, 'George Clayton Johnson', 'George-Clayton-Johnson'),
(27, 'Jack Golden Russell', 'Jack-Golden-Russell'),
(28, 'Paul Wernick', 'Paul-Wernick'),
(29, 'Rhett Reese', 'Rhett-Reese'),
(30, 'Fabian Nicieza', 'Fabian-Nicieza'),
(31, 'Rob Liefeld', 'Rob-Liefeld'),
(32, 'Ryan Reynolds', 'Ryan-Reynolds'),
(33, 'Piyush Gupta', 'Piyush-Gupta'),
(34, 'Shreyas Jain', 'Shreyas-Jain');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phim`
--

CREATE TABLE `phim` (
  `id_phim` int(11) NOT NULL,
  `tenphim_vn` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tenphim_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `daodien` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kichban` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dienvien` text COLLATE utf8_unicode_ci NOT NULL,
  `theloai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nam_sanxuat` year(4) NOT NULL,
  `thoiluong` time NOT NULL,
  `diem_imdb` decimal(2,1) NOT NULL,
  `link_phude` text COLLATE utf8_unicode_ci NOT NULL,
  `link_thuyetminh` text COLLATE utf8_unicode_ci NOT NULL,
  `poster` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `luotxem` int(11) NOT NULL,
  `gioithieu` text COLLATE utf8_unicode_ci NOT NULL,
  `phimbo` tinyint(1) NOT NULL DEFAULT 0,
  `trailer` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngay_them` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phim`
--

INSERT INTO `phim` (`id_phim`, `tenphim_vn`, `tenphim_en`, `daodien`, `kichban`, `dienvien`, `theloai`, `nam_sanxuat`, `thoiluong`, `diem_imdb`, `link_phude`, `link_thuyetminh`, `poster`, `active`, `luotxem`, `gioithieu`, `phimbo`, `trailer`, `ngay_them`) VALUES
(1, 'Thợ Săn Quỷ (2017)', 'Do not Kill It (2017) ', '9', '[12,13]', '[136,137,138]', '[\"4\",\"12\",\"6\"]', 2017, '01:23:00', 5.2, 'https://drive.google.com/file/d/0Bz7FgiHfhIxqQXoxQ05OQUJTcTQ/preview', '', 'Dont.Kill.It.2016.jpg', 1, 44, 'Một con quỷ cổ xưa đang đe dọa một thị trấn nhỏ ở Mississippi.\r\n', 0, '', NULL),
(2, 'Đại Náo Thiên Trúc (2017)', 'Buddies in India (2017)', '10', '[14,15]', '[139,140,141]', '[\"4\",\"12\"]', 2017, '00:00:00', 4.0, '', 'https://drive.google.com/file/d/0Bz7FgiHfhIxqSzZfeHEwVzd1QW8/preview', 'Buddies.in.India.2017.jpg', 1, 52, 'Đại Náo Thiên Trúc là tác phẩm điện ảnh phóng tác dựa trên tiểu thuyết Tây Du Ký của Ngô Thừa Ân. Xoay quanh quá trình sang Ấn Độ tìm kiếm di chúc của nhóm 4 người Đường Sâm, Vũ Không, Chu Thiên Bằng và Ngộ Tĩnh. Trong phim, Lục Tiểu Linh Đồng vào vai Võ Thánh, cha của Vũ Không (Vương Bảo Cường). Đặc biệt, ông còn tái hiện lại hình ảnh Tôn Ngộ Không huyền thoại của mình trên màn ảnh rộng.', 0, '', NULL),
(3, 'Siêu Chiến Binh (2017)', 'The Guardians (2017)', '', '', '', '', 2017, '00:00:00', 3.7, '', 'https://drive.google.com/file/d/0Bz7FgiHfhIxqUnFOTWJxODJFbTg/preview', 'The.Guardians.2017.jpg', 1, 15, 'Khi cuộc chiến tranh lạnh giữa Nga và Mỹ không ngừng leo thang căng thẳng, một tổ chức tên Patriot được lập ra nhằm đào tạo một biệt đội siêu anh hùng bao gồm các thành viên của những nước Xô Viết. Họ được cải tạo gen và biến thành những chiến binh bất khả chiến bại. Suốt nhiều năm, những siêu anh hùng này cố gắng che giấu danh tính của mình cho đến khi thời thế buộc họ phải xuất hiện, bảo vệ nền hòa bình trái đất.', 0, NULL, NULL),
(4, 'Sau Thảm Họa (2017)', 'Aftermath (2017)', '', '', '', '', 2017, '00:00:00', 5.7, '', 'https://drive.google.com/file/d/0Bz7FgiHfhIxqWHFqck5QNHp5OXM/preview', 'Aftermath.2017.jpg', 1, 25, 'Bộ phim dựa trên một sự việc có thật về thảm họa hàng không. Roman (Arnold Schwarzenegger thủ vai) nóng lòng chào đón vợ và cô con gái đang mang thai trở về nước Mỹ. Trong tư thế háo hức, nhưng khi đến sân bay, ông nhận được tin khủng khiếp rằng người thân của mình đã tử nạn trong vụ va chạm máy bay thảm khốc. Trong chớp mắt, mất hết cả gia đình, quá suy sụp, Roman thu mình vào một thế giới đau khổ và trống rỗng, nơi chỉ lấp đầy những kỷ niệm cùng những câu hỏi không có lời đáp. Người đàn ông có số phận nghiệt ngã nhất thế gian không thể nào yên lòng và quyết tâm tìm ra người chịu trách nhiệm cho mất mát của ông.', 0, NULL, NULL),
(5, 'Những Kẻ Khờ Mơ Mộng (2016)', 'La La Land (2016)', '', '', '', '', 2016, '00:00:00', 8.3, 'https://drive.google.com/file/d/0Bz7FgiHfhIxqLUpTOW5xUXBQd2M/preview', '', 'La.La.Land.2016.jpg', 1, 58, 'La La Land là câu chuyện tình yêu tuyệt đẹp thời hiện đại giữa chàng nhạc công piano tài hoa chuyên diễn tại các quán bar Sebastian và cô diễn viên mới nổi xinh đẹp Mia Dolan. Thế nhưng, ở thiên đường điện ảnh Hollywood, tình yêu và sự thành công dường như không thể song hành. Khi thành công và sự nổi tiếng đến, họ sẽ phải đối mặt ra sao? ', 0, NULL, NULL),
(7, 'Tây Du Ký: Mối Tình Ngoại Truyện 2 (2017)', 'Journey to the West: The Demons Strike Back (2017)', '12', '[18,19]', '[145,146,147]', '[\"4\",\"12\",\"6\"]', 2017, '01:49:00', 5.4, '', 'https://drive.google.com/file/d/0Bz7FgiHfhIxqbzlPRmZQUDREcDg/preview', 'Journey.to.the.West.The.Demons.Strike.Back2017.jpg', 1, 50, 'Tây Du Hàng Ma Thiên 2 2016 dựa trên cốt truyện nổi tiếng Tây Du Ký của Ngô Thừa Ân, chủ yếu xoay quanh câu chuyện thu phục 3 đệ tử của Đường Tam Tạng (Ngô Diệc Phàm). Trong đó, Lâm Canh Tân sẽ hóa thân thành Tôn Ngộ Không, khác xa với các hình tượng Tôn Ngộ Không khác. Tác phẩm do Châu Tinh Trì chỉ đạo diễn xuất, sẽ là một sự bùng nổ hay thảm họa?\r\n', 0, '', NULL),
(8, 'xXx: Phản Đòn (2017)', 'xXx: Return of Xander Cage (2017)', '11', '[16,17]', '[142,143,144]', '[\"4\",\"12\"]', 2017, '01:47:00', 5.3, '', 'https://drive.google.com/file/d/0Bz7FgiHfhIxqcVJlUVpXQ0l0SUk/preview', 'xXx.Return.of.Xander.Cage.2017.jpg', 1, 99, 'xXx: Return Of Xander Cage 2017 là một tác phẩm điện ảnh hành động gay cấn được phát hành bởi hãng Paramount Pictures. Không chỉ quy tụ dàn diễn viên nổi tiếng quốc tế như Vin Diesel, Samuel L.Jackson, Chân Tử Đan, mà Sự Trở Lại Của Xander Cage còn có sự góp mặt của các nhân tố mới tiềm năng, điển hình như nam diễn viên Ngô Diệc Phàm.\r\n', 0, '', NULL),
(9, 'Vũ Điệu Thần Tiên (2016)', 'Ballerina (2016)', '', '', '', '', 2016, '00:00:00', 6.8, '', 'https://drive.google.com/file/d/0Bz7FgiHfhIxqNXVwVGZwc0twYXM/preview', 'Ballerina.2016.jpg', 1, 13, 'Vào những năm 1880, Félicie- một cô gái mồ côi nghèo với mơ ước trở thành một nữ diễn viên múa ballet nhưng không được đào tạo một cách chính quy… Cô bé quyết định thoát khỏi vùng nông thôn Brittany để đến với Paris hoa lệ cùng cậu bạn thân Victor. 11 tuổi – không một chút kinh nghiệm – không một xu dính túi nhưng với sự giúp đỡ của Victor và Odette (cựu diễn viên múa ballet tài giỏi) và sự quyết tâm cao độ, Félicie chấp nhận đương đầu với vô số thách thức để theo đuổi đam mê của mình. Liệu cô bé có đủ can đảm theo đuổi đam mê và biến ước mơ thành sự thật? ', 0, NULL, NULL),
(10, 'Biệt Đội Mãnh Hổ (2016)', 'Railroad Tigers (2016)', '', '', '', '', 2016, '00:00:00', 6.1, '', 'https://drive.google.com/file/d/0Bz7FgiHfhIxqOFZvSkdQVXZtMEk/preview', 'Railroad.Tigers.2016.jpg', 1, 16, 'Railroad Tigers là bộ phim hành động, lịch sử được nhiều người chờ đón. Năm 1941, trong bối cảnh Trung Quốc thù trong giặc ngoài, một công nhân đường sắt Trung Quốc đã dẫn dắt những anh em có cùng chí hướng để chống lại quân Nhật, cướp lấy thực phẩm cứu khổ tế bần. Trước tình hình đó, quân đội Nhật bắt đầu gửi thêm quân đội tới đàn áp khiến đội Mãnh Hổ gặp vô vàn khó khăn. Đây là bộ phim võ thuật tiếp theo của “ông vua” Thành Long, phim còn có sự tham gia của nam diễn viên thực lực trẻ tuổi Vương Đại Lục và cựu thành viên nhóm nhạc EXO- Hoàng Tử Thao. ', 0, NULL, NULL),
(11, 'Đột Kích Màn Đêm (2017)', 'Sleepless (2017)', '', '', '', '', 2017, '00:00:00', 5.6, '', 'https://drive.google.com/file/d/0Bz7FgiHfhIxqTExqZUlFODdoUHM/preview', 'Sleepless.2017.jpg', 1, 8, 'Sau khi phi vụ vận chuyển ma túy trái phép gặp thất bại bởi hai cảnh sát Vincent Downs (Jamie Foxx) và Sean (Tip T.I. Harris), gã chủ sòng bài Stan Rubino (Dermot Mulroney) quyết định ra tay trả thù bằng cách bắt cóc con trai của Vincent (Octavius J. Johnson).\r\nBị truy đuổi bởi cả thanh tra đến từ Sở Nội vụ là Jen Bryant (Michelle Monaghan) lẫn những tên trùm khét tiếng, viên sĩ quan da màu buộc phải dựa vào bản năng để có thể giải cứu con trai mình ngay trong đêm định mệnh. ', 0, NULL, NULL),
(12, 'Đại Hiệp Triển Chiêu (2003)', 'Cat And Mouse (2003)', '', '', '', '', 2003, '00:00:00', 5.3, '', 'https://drive.google.com/file/d/0Bz7FgiHfhIxqRVhvbS1xTm5VWXc/preview', 'Cat.And.Mouse.2003.jpg', 1, 11, 'Trong phim Đại Hiệp Triển Chiêu, Bao Thanh Thiên là vị quan nổi tiếng nhất huyện Khai Phong thời Bắc Tống.Nhờ có ông mà dân chúng có được một cuộc sống ấm no hạnh phúc. Trong phim online này, Triển Chiêu là một trong những thủ hạ tâm đắc nhất của ông.Nhưng là một kẻ yêu thích sự tự do tự tại, cuộc sống nơi quan trường khiến Triển Chiêu cảm thấy nhàm chán.Anh liền đi chu du tứ hải hành hiệp trượng nghĩa.Trong một lần hành động,Triển Chiêu đã gặp phải một người bạn vừa đáng sợ vừa quan trọng trong cuộc đời của anh, Cẩm Mao Thử - Bạch Ngọc Đường.Và cũng xuất hiện 1 người con gái rất yêu anh nhưng cuối cùng lại ko có được anh - Nguyệt Hoa công chúa. Xem phim Đại Hiệp Triển Chiêu và hy vọng bộ phim sẽ mang lại những giờ phút thư giãn cho các bạn! \r\n', 0, NULL, NULL),
(13, 'Sát Thủ Bóng Đêm (2016)', 'Assassin is Creed (2016)', '', '', '', '', 2016, '00:00:00', 6.0, '', 'https://drive.google.com/file/d/0Bz7FgiHfhIxqbVk0VFdqZU4yaVU/preview', 'Assassin.is.Creed.2016.jpg', 1, 33, 'Phim xoay quanh Callum Lynch, trong những thí nghiệm công nghệ vô tình kích hoạt được những ký ức trong tiềm thức, từ đó có thể trải nghiệm được những gì mà tổ tiên anh - Aguilar thực hiện từ thế kỷ 15 ở Tây Ban Nha. Không chỉ vậy, Callum phát hiện ra mình là hậu duệ của hội Sát thủ, được thừa hưởng những kỹ năng và kiến thức phi thường để đánh bại hội Templar trong thời hiện tại.', 0, NULL, NULL),
(14, 'Thế Giới Ngầm 5: Trận Chiến Đẫm Máu (2016)', 'Underworld: Blood Wars (2016)', '', '', '', '', 2016, '00:00:00', 5.8, '', 'https://drive.google.com/file/d/0Bz7FgiHfhIxqTl9HV3JKMjdYamM/preview', 'Underworld.Blood.Wars.2016.jpg', 1, 10, 'Sau năm năm vắng bóng, bông hồng nước anh Kate Beckinsale tiếp tục trở lại với hành trình săn người sói trong phần năm của series mang tên Underworld: Blood Wars. Ở phần phim trước, cả Người sói và phe Ma cà rồng đều bị loài người tấn công và tiêu diệt. Tuy nhiên, những hình cảnh trong trailer của Underworld: Blood Wars cho thấy cả 2 giống loài từng thống trị Thế giới từ hàng trăm năm trước này vẫn còn hùng mạnh lẫn nhiều bí ẩn bên trong mà người xem chưa được biết hết. Không những thế phe Người sói đã có thủ lĩnh mới là Marius và phát động cuộc chiến diện rộng chống lại Ma cà rồng. Không chỉ sử dụng súng mà cả 2 phe còn có những pha cận chiến với kiếm vô cùng mãn nhãn.', 0, NULL, NULL),
(15, 'Tử Chiến Trường Thành (2016)', 'The Great Wall (2016)', '', '', '', '', 2016, '00:00:00', 6.1, '', 'https://drive.google.com/file/d/0Bz7FgiHfhIxqcWdzeWFuQ1hxY0U/preview', 'The.Great.Wall.2016.jpg', 1, 14, 'Lấy bối cảnh thời kỳ Bắc Tống, chuyện phim xoay quanh câu chuyện của William Garin (Damon) – thành viên trong nhóm lính đánh thuê châu Âu được cử sang Trung Quốc để đánh cắp công thức chế tạo thuốc súng. Sau khi bị phát hiện và bị tống giam bên trong Vạn Lý Trường Thành, anh đã vô tình phát hiện ra những bí ẩn đáng sợ đằng sau công trình được coi là Đệ nhất kỳ quan của thế giới. ', 0, NULL, NULL),
(16, 'Vùng Đất Quỷ Dữ 6: Hồi Cuối (2016)', 'Resident Evil: The Final Chapter (2016) ', '', '', '', '', 2016, '00:00:00', 5.6, '', 'https://drive.google.com/file/d/0Bz7FgiHfhIxqVjhiYWs4MC1SQTA/preview', 'Resident.Evil.The.Final.Chapter.2016.jpg', 1, 12, 'Trong phần 6 này, cô nàng nhân vật chính Alice trong phần này sẽ phải sống lại những kí ức kinh hoàng tại thành phố Raccoon City, nơi mà tập đoàn Umbrella đang tập trung mọi nguồn lực để giáng một đòn cuối cùng vào nhóm những người sống sót sau thảm họa zombie. Alice sẽ phải nhờ tới sự giúp đỡ của những người bạn xung quanh để chiến đấu với các chủng loài zombie mới xuất hiện cùng binh đoàn xác sống đang ùn ùn tiến về phía họ.', 0, NULL, NULL),
(17, 'Chiến Tranh Giữa Các Vì Sao: Ngoại Truyện (2016)', 'Rogue One (2016)', '', '', '', '', 2016, '00:00:00', 7.9, '', 'https://drive.google.com/file/d/0Bz7FgiHfhIxqdVZkS3ppTjBLNkE/preview', 'Rogue.One.2016.jpg', 1, 51, 'Rogue One: A Star Wars Story, còn được biết đến với tên Star Wars: Ngoại truyện, diễn ra trong khoảng thời gian giữa tập III (Revenge of the Sith) và tập IV (The New Hope). Theo chân nữ nhân vật chính xinh đẹp Jyn Erso trong sứ mệnh đánh cắp bản thiết kế của vũ khí huỷ diệt Ngôi Sao Chết (The Death Star). Đây chính là mấu chốt để vén lên bức màn sự thật đằng sau việc quân liên minh phát hiện ra điểm yếu của Ngôi Sao chết và phá huỷ nó trong tập IV. Điều này cũng khép lại những tranh luận về vì sao siêu vũ khí của đế chế lại có thể bị phá huỷ một cách dễ dàng như vậy, vốn đã kéo dài hơn 40 năm qua.', 0, NULL, NULL),
(18, 'Đấu Trường Âm Nhạc (2016)', 'Sing (2016)', '', '', '', '', 2016, '00:00:00', 7.2, 'https://drive.google.com/file/d/0Bz7FgiHfhIxqTjhmcEhWRVpiVG8/preview', '', 'sing.2016.jpg', 1, 33, 'Sing 2016 là bộ phim hoạt hình xoay quanh một cuộc thi âm nhạc của các loại động vậy. Phong cách vui nhộn, sự phong phú về đồ họa và dĩ nhiên, âm nhạc đặc sắc chính là những điểm đáng mong đợi ở tác phẩm này. Đạo diễn thực hiện phim là một tên tuổi khá lạ, Garth Jennings, tuy nhiên dàn diễn viên lồng tiếng lại cực kỳ quen mặt. Họ chính là Matthew McConaughey, Reese Witherspoon, Seth MacFarlane, Tori Kelly...\r\n', 0, NULL, NULL),
(19, 'Phù Thủy Tối Thượng (2016)', 'Doctor Strange (2016)', '', '', '', '', 2016, '00:00:00', 7.6, '', 'https://drive.google.com/file/d/0Bz7FgiHfhIxqdzU4a1pmMVZjT3c/preview', 'Doctor.Strange.2016.jpg', 1, 66, 'DOCTOR STRANGE là câu chuyện về bác sĩ Giải Phẫu Thần Kinh tên Stephen Vincent Strange. Cuộc đời anh thay đổi từ sau một tai nạn xe hơi khủng khiếp. Sau tai nạn đó, Stephen nhận ra mình có những năng lực bí ẩn cũng như biết thêm về thế giới ma thuật huyền bí. Từ một vị bác sĩ bình thường, Stephen Strange dần nhận được nhiều siêu năng lực để cứu trái đất khỏi những tai họa. ', 0, NULL, NULL),
(20, 'Ngày Định Mệnh (2016)', 'Patriots Day (2016)', '', '', '', '', 2016, '00:00:00', 7.4, '', 'https://drive.google.com/file/d/0Bz7FgiHfhIxqcWVZelVJRWNwUzA/preview', 'Patriots.Day.2016.jpg', 1, 8, 'Trong phim Ngày Định Mệnh 2017, vụ đánh bom kinh hoàng ngày 15/04/2013 tại Giải Marathon Boston khiến 5 người thiệt mạng và hơn 280 người bị thương. Chứng kiến toàn bộ sự kiện khủng khiếp này, hạ sĩ Tommy Saunders (Mark Wahlberg) cùng những người sống sót, các điều tra viên và lực lượng FBI phải chạy đua với thời gian trong cuộc truy lùng khủng bố quy mô lớn chưa từng thấy trong lịch sử nước Mỹ.\r\n', 0, NULL, NULL),
(21, 'Người Sói: Trận Chiến Cuối Cùng (2017)', 'Logan (2017)', '', '', '', '', 2017, '00:00:00', 8.3, '', 'https://drive.google.com/file/d/0Bz7FgiHfhIxqZmViOHNuUncyVUk/preview', 'logan2017.jpg', 1, 26, 'Đặt bối cảnh ở tương lai năm 2024, khi nhóm X-Men đã tan rã. Năng lực hồi phục của Wolverine – Logan dần dần mất đi còn giáo sư X lại mắc bệnh Alzheimer suy giảm trí nhớ. Lúc này, một tập đoàn do Nathaniel Essex lãnh đạo tìm cách phá hoại thế giới, Logan phải chiến đấu chống lại hắn cùng với sự giúp đỡ của cô bé Laura Kinney – một người đột biến được nhân bản từ chính ông.\r\n', 0, NULL, NULL),
(22, 'Người Đẹp Và Quái Vật (2017)', 'Beauty and the Beast (2017)', '', '', '', '', 2017, '00:00:00', 7.5, '', 'https://drive.google.com/file/d/0Bz7FgiHfhIxqVEJXWWt3cnRDYWc/preview', 'Beauty.and.the.Beast.2017.jpg', 1, 6, 'Câu chuyện của Beauty and the Beast xoay quanh Belle, một cô gái ham học và siêng năng. Bella đã thay cha làm tù nhân trong lâu đài của Beast xấu xí, nhưng rồi cô phát hiện ra rằng anh thực sự là một hoàng tử và đem lòng yêu anh. Khi biết Belle đã phải lòng Beast, Gaston dẫn một đám đông giận dữ tới để giết anh ta. Cuối cùng, tình yêu chân thành của Belle đã giúp Beast phá bỏ lời nguyền, được trở lại làm người.', 0, NULL, NULL),
(23, 'Avatar (2009)', 'Avatar (2009)', '', '', '', '', 2009, '00:00:00', 7.8, 'https://drive.google.com/file/d/0Bz7FgiHfhIxqNlA1T0tCMzhxcVU/preview', 'https://drive.google.com/file/d/0Bz7FgiHfhIxqTlVhSE5Cb0c5Znc/preview', 'Avatar.2009.jpg', 1, 16, 'Avatar là câu chuyện về người anh hùng bất đắc dĩ Jake Sully – một cựu sĩ quan thủy quân lục chiến bị liệt nửa thân. Người anh em sinh đôi của anh được chọn để tham gia vào chương trình cấy gien với người ngoài hành tinh Na’vi nhằm tạo ra một giống loài mới có thể hít thở không khí tại hành tinh Pandora. Giống người mới này được gọi là Avatar. Sau khi anh của Jake bị giết, Jake được chọn để thay thế anh mình và đã trở thành một Avatar, Jake có nhiệm vụ đi tìm hiểu và nghiên cứu hành tinh Pandora. Những thông tin mà anh thu thập được rất có giá trị cho chiến dịch xâm chiếm hành tinh xanh thứ hai này của loài người. ', 0, NULL, NULL),
(24, 'Hành Trình Của Moana (2016)', 'Moana (2016)', '', '', '', '', 2016, '00:00:00', 7.7, '', 'https://drive.google.com/file/d/0Bz7FgiHfhIxqU3Vzd1NFbG9Yd00/preview', 'Moana.2016.jpg', 1, 24, 'Ở một ngôi làng giữa biển khơi - có một cô bé đầy dũng mãnh, gan dạ, khao khát tự do và luôn tìm đến miền biển khơi, nhưng lại bị người làng ngăn cản - chính là Moana. Thế nhưng rồi, bóng tối hiện về, hòn đảo chết dần, cô được biển khơi trao tặng sứ mệnh vượt đại dương, trả lại trái tim cho Te Fiti, để cứu lấy nhân loại. Xuyên suốt đồng hành trên chuyến đi là Á Thần Maui - kẻ đã gây ra sai lầm trong quá khứ và chú gà HeiHei ngốc nghếch. Hành trình đầy giông bão và khó khăn, Moana và Maui sẽ vượt qua như thế nào ?!', 0, NULL, NULL),
(25, 'Đại Chiến Thái Bình Dương (2013)', 'Pacific Rim (2013)', '', '', '', '', 2013, '00:00:00', 7.0, '', 'https://drive.google.com/file/d/0Bz7FgiHfhIxqbk1uYl9ndFg0dW8/preview', 'Pacific.Rim.2013.jpg', 1, 12, 'Một bộ phim hấp dẫn không thể bỏ qua khi con người phải chiến đấu chống lại những quái vật đến từ kẽ nứt của Thái Bình Dương mang tên gọi Kaiju. Chúng đang đe dọa hủy diệt thế giới loài người khi con người gần như thất bại hoàn toàn trước sức mạnh của lũ quái khổng lồ.', 0, NULL, NULL),
(26, 'Diệp Vấn (2008)', 'Ip Man (2008)', '', '', '', '', 2008, '00:00:00', 8.1, '', 'https://drive.google.com/file/d/0Bz7FgiHfhIxqS1dlNlhWREwxSk0/preview', 'Ip.Man.2008.jpg', 1, 6, 'Vào năm 1937, chiến tranh bùng nổ, và quân Nhật nhanh chóng chiếm đóng Phật Sơn. Diệp gia bị niêm phong, Diệp Vấn cũng vợ con phải chuyển đến một căn nhà lụp xụp; anh phải đi xúc than để kiếm miếng ăn cho gia đình. Tên tướng Nhật là Miura bị ám ảnh bởi võ thuật, và dùng lương thực để thưởng cho những trận đấu võ giữa người dân và quân lính của hắn. Vài người bạn của Diệp Vấn không kiềm chế được và xin tham gia. Lam võ khùng vốn có lòng tự tôn dân tộc rất cao, không hề sợ hãi lao lên thách thức Miura nhưng đã phải trả giá bằng tính mạng của mình. Ngày hôm sau, chứng kiến thêm cái chết của Lưu sư phụ, Diệp Vấn nổi cơn thịnh nộ và hạ gục 10 tên lính nhật trong một lượt đấu. ', 0, NULL, NULL),
(27, 'Mầm Sống Hiểm Họa (2017)', 'Life (2017)', '', '', '', '', 2017, '00:00:00', 6.8, 'https://drive.google.com/file/d/0Bz7FgiHfhIxqaU9uLVBYbzRXVlk/preview', '', 'Life.2017.jpg', 1, 13, 'Life 2017 là câu chuyện kể về một phi hành đoàn gồm 6 thành viên trên trạm vũ trụ quốc tế. Họ đang trong một nhiệm vụ mang tầm quan trọng nhất lịch sử nhân loại, đấy là tìm ra sự sống trên Sao Hỏa, Khi phi hành đoàn bắt đầu tiến hành nghiên cứu, phương pháp của họ đã có kết thúc gây nên hậu quả ngoài ý muốn, đồng thời cũng chứng minh tồn tại của một loài thực thể không ai mong đợi.\r\n', 0, NULL, NULL),
(28, 'Năm Anh Em Siêu Nhân (2017)', 'Power Rangers (2017)', '', '', '', '', 2017, '00:00:00', 6.5, '', 'https://drive.google.com/file/d/0Bz7FgiHfhIxqNU43aEI0MUtaTTA/preview', 'Power.Rangers.2017.jpg', 1, 11, 'Phim 5 Anh Em Siêu Nhân xoay quanh một nhóm 5 chiến binh trẻ tuổi được chọn để chống lại phù thủy Rita Repulsa và ngăn chặn những âm mưu muốn hủy diệt trái đất. Họ có những năng lực siêu nhiên độc đáo và chỉ phát huy tác dụng mạnh nhất khi tất cả tập hợp lại và cùng chung tay giải cứu thế giới.', 0, NULL, NULL),
(29, 'Vệ Sĩ Sài Gòn (2016)', 'Saigon Bodyguards (2016)', '', '', '', '', 2016, '00:00:00', 4.1, '', 'https://drive.google.com/file/d/0Bz7FgiHfhIxqRFQ1YXRzNVozQjA/preview', 've.si.sai.gon.2016.jpg', 1, 14, 'Trong Vệ Sĩ Sài Gòn, Mr. Hoàn Hảo và Mr. Mê Gái sắp phải đương đầu với một nhiệm vụ tưởng không khó nhưng không ngờ lại … khó không tưởng: bảo vệ Henry (B Trần đóng) - chàng công tử nhà giàu với tính cách khó gần. Công việc “bảo mẫu” không còn “ngon ăn” khi Henry bất ngờ bị bắt cóc. Cặp đôi vệ sĩ “bá đạo“ buộc phải \"xắn tay áo\" lên điều tra và hứa mang Henry về cho Thi - nữ khách hàng xinh đẹp (chi Pu đóng) vì nguyên tắc hàng đầu của một vệ sĩ là “bảo vệ thân chủ tới cùng!” Khác với những vai diễn trước, bên cạnh nét hài duyên dáng vốn làm nên tên tuổi và sự thành công của mình, lần này Thái Hòa sẽ có một vai diễn hành động thực thụ khi kết hợp cùng Kim Lý. Các khán giả nếu đã quá quen với một Thái Hoà \"ngu ngơ\" sẽ rất bất ngờ với tài đánh võ cực chất của anh trong những trường đoạn hành động vừa hồi hộp gay cấn nhưng cũng hài hước đến bất ngờ.\r\n', 0, NULL, NULL),
(30, 'Người Hobbit 3: Đại Chiến Năm Cánh Quân (2014)', 'The Hobbit: The Battle of the Five Armies (2014)', '', '', '', '', 2014, '00:00:00', 7.4, 'https://drive.google.com/file/d/0Bz7FgiHfhIxqSURrbWNsOVM0Y2c/preview', 'https://drive.google.com/file/d/0Bz7FgiHfhIxqNlFSNFlwRFZ4Yk0/preview', 'The.Hobbit.The.Battle.of.the.Five.Armies.2014.poster.jpg', 1, 39, 'Sau khi thành công tiến vào lãnh địa của con rồng Smaug, anh chàng Hobbit gan dạ Bilbo cùng những người đồng đội Dwarf của mình sẽ phải đối mặt với những nguy hiểm gì? Những đội quân Orc đang rình rập, liệu Thor Oakenshield có thành công giành lại vương quốc của mình hay không, và số phận của vùng Trung Địa sẽ xoay chuyển như thế nào khi thế lực bóng tối từ Modor dần dần hiện thân.', 0, NULL, NULL),
(31, 'Kong: Đảo Đầu Lâu (2017)', 'Kong: Skull Island (2017)', '', '', '', '', 2017, '00:00:00', 6.9, '', 'https://drive.google.com/file/d/0Bz7FgiHfhIxqZEgtRlMtaWk1c0k/preview', 'Kong.Skull.Island.2017.poster.jpg', 1, 22, 'Phim Kong: Skull Island tái hiện lại hình tượng King Kong (Chúa tể loài khỉ) trong một hành trình phiêu lưu, hấp dẫn dưới bàn tay đạo diễn tài ba Jordan Vogt-Robert. Kong: Skull Islands được quay ngoại cảnh ở Tràng An, Vân Long, Tam Cốc, Vịnh Hạ Long và Động Phong Nha-Kẻ Bàng cùng các địa danh quốc tế như Hawaii, Úc...', 0, NULL, NULL),
(33, 'Quá Nhanh Quá Nguy Hiểm Phần 8 (2017)', 'The Fate of the Furious (2017)', '', '', '', '', 2017, '00:00:00', 7.0, 'https://drive.google.com/file/d/0Bz7FgiHfhIxqWVQ2Y3Q5aTZqd2s/preview', 'https://drive.google.com/file/d/0Bz7FgiHfhIxqNFBFSHV6UEpmLVE/preview', 'The.Fate.of.the.Furious.2017.jpg', 1, 39, 'Dom và Letty hiện đang đi hưởng tuần trăng mật. Brian cùng Mia đã quyết định từ giã sự nghiệp. Các thành viên còn lại của nhóm cũng đã được minh oan và dần trở về với cuộc sống bình thường. Nhưng một người phụ nữ bí ẩn (do nữ diễn viên đoạt giải Oscar Charlize Theron thủ vai) đã dẫn dụ Dom vào thế giới tội phạm mà anh dường như không thể thoát ra được và thậm chí phản bội lại cả những người thân thiết nhất, họ sẽ phải trải qua những thử thách cam go mà họ chưa từng đối mặt.', 0, NULL, NULL),
(34, 'Xì Trum: Ngôi Làng Kỳ Bí (2017)', 'Smurfs: The Lost Village (2017)', '', '', '', '', 2017, '00:00:00', 5.9, '', 'https://drive.google.com/file/d/0Bz7FgiHfhIxqdWJ2SlNmNWdOeG8/preview', 'Smurfs.The.Lost.Village.2017.jpg', 1, 16, 'Phim Smurfs: The Lost Village (2017): Dựa trên bộ truyện tranh Xì Trum bằng tiếng Pháp nổi tiếng của Bỉ ra mắt vào năm 1958. Xì Trum là một chủng tộc người da xanh tí hon sống trong xứ sở Xì Trum xa xôi. Chúng ở trong những ngôi nhà có hình cây nấm. Làng Xì Trum do Tí Vua đứng đầu và mỗi Tí đại đại diện cho một tính cách của con người. Họ phải đối mặt với lão phù thủy Gargamel độc ác luôn tìm cách xâm chiếm ngôi làng. Ngoài ra, cuộc sống thường ngày của các Tí cũng vô cùng hài hước và thú vị với đủ các trò tinh nghịch cũng như tai nạn dở khóc dở cười.\r\n', 0, NULL, NULL),
(35, 'Nữ Hoàng Băng Giá (2013)', 'Frozen (2013)', '', '', '', '', 2013, '00:00:00', 7.5, '', 'https://drive.google.com/file/d/0Bz7FgiHfhIxqR3lnVHpWVWR4eGM/preview', 'Frozen.2013.jpg', 1, 12, 'Phim Nữ Hoàng Băng Giá 2013 là bộ phim dựa trên câu chuyện nổi tiếng The Snow Queen (Bà Chúa Tuyết) trong bộ truyện cổ tích của Andersen. Phim Nữ Hoàng Băng Giá là một bộ phim được mong chờ vì nó là sự kết hợp của phim hoạt hình, âm nhạc và hiệu ứng 3D. Đây cũng là bộ phim hoạt hình thứ 53 trong lịch sử của hãng Walt Disney. Mời các bạn cùng xem phim hay này!\r\n', 0, NULL, NULL),
(36, 'Bí Kíp Luyện Rồng (2010)', 'How to Train Your Dragon (2010)', '', '', '', '', 2010, '00:00:00', 8.1, '', 'https://drive.google.com/file/d/0Bz7FgiHfhIxqUkZWMTB3Y2tVRlE/preview', 'How.To.Train.Your.Dragon.2010.jpg', 1, 16, 'Bộ phim lấy bối cảnh là một thế giới thần thoại của người Viking và loài rồng. Câu chuyện xoay quanh cậu bé Hiccup, sống tại đảo Berk. Khi Hiccup được tham gia vào khóa huấn luyện rồng với những cậu bé cùng trang lứa, cậu coi đây là cơ hội để chứng minh rằng mình đã trưởng thành và là một chiến binh thật sự. Cậu đã giải thoát và kết bạn với một chú rồng và đặt chú tên Toothless. Mối quan hệ này đã thay đổi hoàn toàn cuộc sống của cậu khi cậu đấu tranh để thuyết phục cả bộ tộc mình rằng việc giết rồng là không cần thiết… ', 0, NULL, NULL),
(37, 'Nhóc Trùm (2017)', 'The Boss Baby (2017)', '', '', '', '', 2017, '00:00:00', 6.4, 'https://drive.google.com/file/d/0Bz7FgiHfhIxqbU1OazFQeTZlSG8/preview', '', 'The.Boss.Baby.2017.jpg', 1, 9, 'Phim Nhóc Trùm Nói về cậu bé Tim 7 tuổi vốn dĩ đang có một cuộc sống rất ấm êm và đầy màu hồng thì bỗng dưng phải đối mặt với biến cố lớn trong đời: có một đứa em trai và phải học cách làm anh. Mọi khi cậu luôn là tâm điểm trong mắt bố mẹ, nhưng giờ đây Tim phải chấp nhận san sẻ tình yêu thương. Chưa hết, đứa em trai quái chiêu của cậu còn “thống trị” toàn bộ căn nhà, bắt nạt Tim và luôn khóc thét trước mặt bố mẹ để dành quyền được dỗ dành.', 0, NULL, NULL),
(38, 'Thành Phố Vàng Đã Mất Tích (2016)', 'The Lost City of Z (2016)', '', '', '', '', 2016, '00:00:00', 6.8, '', 'https://drive.google.com/file/d/0Bz7FgiHfhIxqQURiMjhHMi1rWkE/preview', 'The.Lost.City.of.Z.2016.jpg', 1, 4, 'Thành Phố Vàng Đã Mất kể lại câu chuyện có thật về nhà thám hiểm người Anh, Percy Fawcett, người đã thám hiểm tới Amazon vào thế kỷ 20 và phát hiện ra một nền văn minh tiên tiến chưa từng được biết tới. ', 0, NULL, NULL),
(39, 'Harry Potter Và Bảo Bối Tử Thần: Phần 2 (2011)', 'Harry Potter and the Deathly Hallows: Part 2 (2011)', '', '', '', '', 2011, '00:00:00', 8.1, 'https://drive.google.com/file/d/0Bz7FgiHfhIxqRFhOUDAzMy1lQm8/preview', '', 'Harry.Potter.and.the.Deathly.Hallows.Part.2.2011.jpg', 1, 7, 'Kết thúc phần 1 là khi nhóm bạn Harry Potter, Ron và Hermione quay trở lại trường Hogwarts để tìm và tiêu diệt Trường Sinh Linh Giá cuối cùng của Voldemort. Nhưng Voldemort đã phát hiện ra nhiệm vụ của họ, và trận chiến pháp thuật lớn nhất trong lịch sử đã diễn ra ở đây, nơi mà biết bao người ngã xuống, nơi mà tất cả các pháp sư dũng cảm sẵn sàng đánh đổi cuộc sống của mình để tiêu diệt tận cùng thế lực hắc ám. Giáo sư Dumbledore mặc dù đã mất từ tập 6, nhưng ở phần cuối ông vẫn đóng vai trò quan trọng trong việc dẫn đường chỉ lối cho Harry chiến đấu với phù thủy hắc ám mạnh nhất mọi thời đại... ', 0, NULL, NULL),
(40, 'Biệt Đội Bắt Cương Thi (2017)', 'Vampire Cleanup Department (2017)', '', '', '', '', 2017, '00:00:00', 5.9, '', 'https://drive.google.com/file/d/0Bz7FgiHfhIxqODF2VUl2ZERWTGc/preview', 'Vampire.Cleanup.Department.2017.jpg', 1, 6, 'Phim Biệt Đội Bắt Cương Thi - Vampire Cleanup Department 2017: Trong thời hiện đại ở Hồng Kông, một thế hệ các thanh thiếu niên trẻ mà điển hình là Tim Cheung quyết tâm gia nhập vào hội Vampire Cleanup Department, một đội đặc nhiệm và bí mật để giải quyết các vụ án có liên quan đến ma cà rồng tại Trung Quốc mà nhiều người hay gọi nó là Goeng Si. Trong quá trình hành động, anh được sự chỉ dẫn của chú Châu, một trong những đội ngũ cán bộ cao cấp, và cho đến cuối cùng anh lại tự mình cứu lấy một nữ Goeng Si, người đã bị vị lãnh chúa tà ác Goeng Si chôn sống cô kể từ thời phong kiến xa xưa.\r\n', 0, NULL, NULL),
(41, 'Vỏ Bọc Ma (2017)', 'Ghost in the Shell (2017)', '', '', '', '', 2017, '00:00:00', 6.6, '', 'https://drive.google.com/file/d/0Bz7FgiHfhIxqNjhhc0lKRFl1Ym8/preview', 'Ghost in the Shell 2017.jpg', 1, 7, 'Phim Vỏ Bọc Ma được xây dựng dựa trên tác phẩm truyện tranh nổi tiếng cùng tên của Nhật, nội dung phim nói về thiếu tá Motoko Kusanagi, chỉ huy lực lượng đặc nhiệm Khu 9, chuyên giải quyết những tên tội phạm nguy hiểm, và đang phải đối đầu với tên hacker có biệt danh Puppet Master đang âm mưu tiêu diệt kế hoạch cộng nghệ Hanka Robotic.', 0, NULL, NULL),
(42, 'Harry Potter Và Bảo Bối Tử Thần: Phần 1 (2010)', 'Harry Potter and the Deathly Hallows: Part 1 (2010) ', '', '', '', '', 2010, '00:00:00', 7.7, 'https://drive.google.com/file/d/0Bz7FgiHfhIxqQkVQdWNOSWZYaUU/preview', '', 'Harry Potter and the Deathly Hallows P1 2010.jpg', 1, 1, 'Chúa tể Voldemort cùng đám tay chân của hắn đang âm mưu tấn công Harry Potter khi cậu rời khỏi ngôi nhà của gia đình Dursley lần cuối cùng. Ngay trước khi phép bảo vệ cho Harry tại gia đình Dursley hết hiệu lực vào thời điểm Harry bước qua tuổi 17, người của Hội Phượng hoàng đến để hộ tống cậu tới một nơi ở mới an toàn. Mặc dù đã dùng sáu người nguỵ trang thành Harry, Harry thật vẫn bị Voldemort cùng các Tử thần Thực tử phát hiện ra trên đường đi và bị tấn công... ', 0, NULL, NULL),
(43, 'Người Hobbit 2: Đại Chiến Với Rồng Lửa (2013)', 'The Hobbit: The Desolation of Smaug (2013)', '', '', '', '', 2013, '00:00:00', 7.9, '', 'https://drive.google.com/file/d/0Bz7FgiHfhIxqWThuN09GdGk3aUE/preview', 'The.Hobbit.The.Desolation.of.Smaug.2013.jpg', 1, 4, 'Bỏ lại đằng sau những cảnh quay mát mắt của làng Shire, các thảo nguyên rộng lớn hay khung cảnh kỳ vĩ xinh đẹp của thung lũng Rivendell, Người Hobbit: Đại chiến với rồng lửa không còn là một bộ phim mãn nhãn về mặt thị giác với những cảnh quay lộng lẫy như phần trước, Người Hobbit: Hành trình vô định. Ngược lại, Người Hobbit: Đại chiến với rồng lửa mang đến một cái nhìn huyền bí, tăm tối và vô cùng u ám về hành trình giết rồng của 13 người lùn và một chàng Hobbit. Gần như toàn bộ bối cảnh của phim đều diễn ra trong nhà kho, ngục tối, dưới lòng đất, các hầm mỏ hay những đại sảnh tối đen. Bên cạnh đó, những cảnh quay chém giết trần trụi và mạnh bạo cũng dễ dàng khiến khán giả phải “lạnh sống lưng” khi thưởng thức tác phẩm điện ảnh này.', 0, NULL, NULL),
(44, 'Người Hobbit: Hành Trình Vô Định (2012)', 'The Hobbit: An Unexpected Journey (2012)', '', '', '', '', 2012, '00:00:00', 7.9, '', 'https://drive.google.com/file/d/0Bz7FgiHfhIxqMVNHRHoyd0VjQ2M/preview', 'The.Hobbit.An.Unexpected.Journey.2012.jpg', 1, 4, 'The Hobbit đưa người xem trở về với thế giới Trung Địa huyền ảo và tham gia vào cuộc hành trình vô định của Bilbo Baggins – chú của nhân vật Frodo. Lấy mốc thời gian trước những sự kiện xảy ra trong ba phần Chúa Nhẫn, The Hobbit xoay quanh nhân vật Bilbo Baggins, người bị cuốn vào một chuyến phiêu lưu phi thường để đoạt lại xứ sở Người Lùn đang bị chiếm giữ bởi con rồng khổng lồ Smaug. Chuyến đi của Bilbo có sự hộ tống của Pháp sư Gandalf Áo Xám và 13 thành viên tộc Người Lùn mà dẫn đầu là hoàng tử Thorin Oakensheild. Cuộc hành trình đưa họ tới những vùng đất kỳ lạ của Trung Địa – nơi có những vị tiên lộng lẫy, những con yêu tinh khổng lồ, những phù thủy bí hiểm và cả những linh hồn giấu mặt đang theo dõi nhất cử nhất động của họ.', 0, NULL, NULL),
(45, 'Bố Già Xứ Venice (2017)', 'Once Upon a Time in Venice (2017)', '', '', '', '', 2017, '00:00:00', 5.3, '', 'https://drive.google.com/file/d/0Bz7FgiHfhIxqYkRZc09BMUVoQjA/preview', 'Once.Upon.a.Time.in.Venice.2017.jpg', 1, 5, 'Phim Bố Già Xứ Venice xoay quanh Steve Ford (Bruce Willis), gã thám tử tư với phương châm sống: “hết mình với phụ nữ, mạnh bạo với đám đàn ông” bất ngờ bị một băng đảng khét tiếng đánh cắp chú chó cưng. Để cứu lấy người bạn thân thương, Steve buộc phải trộm ma túy theo yêu cầu của tay trùm Spyder và đối mặt với những tình huống tréo ngoe, dở khóc dở cười…', 0, NULL, NULL),
(46, 'Huấn Luyện Viên Đấu Vật (2016)', 'Dangal (2016)', '21', '[\"33\",\"34\"]', '[\"187\",\"188\",\"189\"]', '[\"4\",\"14\"]', 2016, '00:00:00', 8.7, '', 'https://drive.google.com/file/d/0Bz7FgiHfhIxqbVY5dXp2TDM4Y1U/preview', 'Dangal 2016.jpg', 1, 4, 'Dangal kể về nhà vô địch đô vật Mahavir Singh Phogat, dám đứng lên chống lại những kẻ cuồng loạn để huấn luyện cho hai con gái anh – Geeta Phgat và Babita Kumari theo con đường đô vật chuyên nghiệp. Bộ phim đề cao sức mạnh của người phụ nữ, khuyến khích phụ nữ tham gia thể thao và đề cao tinh thần tự hào dân tộc.', 0, '', NULL),
(47, 'Ðảo Hải Tặc (1999)', 'One Piece (1999)', '', '', '', '', 1999, '00:00:00', 8.7, '', '', 'one piece.jpg', 1, 64, 'Câu chuyện bắt đầu với cảnh xử tử của Vua Hải Tặc Gold Roger. Ngay trước khi chết, Roger tiết lộ rằng kho báu của ông ta để hết ngoài biển ấy nếu ai tìm được sẽ là của kẻ đó. Và thế là những người có máu phưu lưu và những kẻ tham vọng đều đổ xô ra biển tìm kiếm kho báu vĩ đại nhất, One Piece. Kỉ nguyên hải tặc bắt đâu.', 0, NULL, NULL),
(49, 'Boruto: Naruto Thế Hệ Tiếp Theo (2017)', 'Boruto: Naruto Next Generations (2017)', '', '', '', '', 2017, '00:00:00', 8.5, '', '', 'boruto.jpg', 1, 38, 'Naruto đã đạt ước nguyện của mình khi trở thành Hokaghe và kết hôn cùng Hinata, với sự xuất hiện của 2 đứa bé tên Boruto và Himawari - một thế hệ mới của ninja đã sẵn sàng.\r\n', 0, NULL, NULL),
(50, 'Trò Chươi Vương Quyền 1 (2011)', 'Game of Thrones Season 1 (2011)', '2', '[\"6\"]', '[\"123\"]', '[\"4\"]', 2011, '00:00:00', 9.5, '', '', 'Game_of_Thrones_Season_1_(2011)1.jpg', 1, 6, 'Game of Throne kể về bảy gia tộc chiến đấu để làm chủ vùng đất thần thoại Westeros. Những gia tộc thống trị là Houses Stark, Lannister, và Baratheon. Vị vua của Westeros, Robert Baratheon, yêu cầu người bạn cũ của ông là Eddard – lãnh chúa Stark giữ chức vụ cao, Eddard miễn cưỡng chấp nhận mệnh lệnh để tìm ra sự thật đằng sau. Trong lúc ấy, gia tộc của Nữ hoàng, Lannisters, có lẽ đang dự tính mưu đồ để tước đoạt quyền lực. Ở phía bên kia biển khơi, những thành viên cuối cùng của dòng tộc trước đây đã bị truất phế quyền thống trị ,Targaryens, cũng đang sắp đặt kế hoạch giành lại ngai vàng. Còn ở phía cực Bắc, Bóng Trắng – loài quỷ vốn chìm trong giấc ngủ rất dài, nay đã thức giấc,… ', 0, '', '2018-06-20 00:09:44'),
(51, 'Trò Chươi Vương Quyền 2 (2012)', 'Game Of Thrones Season 2 (2012)', '', '', '', '', 2012, '00:00:00', 9.5, '', '', 'game-of-thrones-season-2-promo.png', 1, 11, 'Tiếp nối phần 1 , với phần 2 lần này phim nói về Vùng đất huyền thoại Westeros đang tiếp tục bị 7 gia đình quý tộc đấu đá nhau để giành quyền kiểm soát, nhằm đạt được mục đích 7 gia tộc này đã không từ bất kì thủ đoạn nào dù có bỉ ổi đến mấy. Theo thống kê Game of Thrones 2 là 1 trong những bộ phim được mong chờ nhất năm 2012. Giống như phần 1, phần 2 của loạt phim này làm khán giả mãn nhãn với những cảnh quay hoành tráng những tình huống căng thẳng tới ngẹt thở đẩy người xem vào trạng thái không biết nhân vật của mình sẽ chết lúc nào. ', 0, NULL, NULL),
(52, 'Trò Chươi Vương Quyền 3 (2013)', 'Game Of Thrones Season 3 (2013)', '', '', '', '', 2013, '00:00:00', 9.5, '', '', 'Game-of-Thrones-Season-3-Episode-6-Preview.jpg', 1, 6, 'Game of Thrones là một series do HBO sản xuất được chuyển thể từ bộ tiểu thuyết sử thi giả tưởng A Song of Ice and Fire của tác gia người Mĩ George R. Martin. Nội dung kể về 7 gia tộc chiến đấu để làm chủ vùng đất thần thoại Westeros. Những gia tộc thống trị là Houses Stark, Lannister, và Baratheon. Vị vua của Westeros, Robert Baratheon, yêu cầu người bạn cũ của ông là Eddard – lãnh chúa Stark giữ chức vụ cao nhất (Cánh tay mặt của Nhà vua) và ngầm cảnh báo “Cánh tay” trước đây đã chết vì bị ám sát; Eddard chấp nhận mệnh lệnh để tìm ra sự thật đằng sau. Trong lúc ấy, gia tộc của Nữ hoàng, Lannisters, có lẽ đang dự tính mưu đồ để tước đoạt quyền lực. Ở phía bên kia biển khơi, những thành viên cuối cùng của dòng tộc trước đây đã bị truất phế quyền thống trị ,Targaryens, cũng đang sắp đặt kế hoạch giành lại ngai vàng. Sự xung đột giữa các gia tộc này, và với sự tồn tại của các dòng tộc lớn khác như Greyjoy, Tully, Arryn, và Tyrell đã dẫn đến cuộc chiến toàn diện. Trong khoảng thời gian này thì ở phía cực Bắc, Bóng Trắng – loài quỷ vốn chìm trong ', 0, NULL, NULL),
(53, 'Trò Chươi Vương Quyền 4 (2014)', 'Game Of Thrones Season 4 (2014)', '2', '[\"6\"]', '[\"123\"]', '[\"4\"]', 2014, '00:00:00', 9.5, '', '', 'Game_Of_Thrones_Season_4_(2014)1.jpg', 1, 2, 'Phần 4 của series phim truyền hình nổi tiếng Game Of Thrones sẽ dựa theo nửa cuối của tiểu thuyết A Storm of Swords (Quyển thứ 3 của tiểu thuyết A Song of Ice and Fire). Cuộc tranh đấu không mệt mỏi của 7 gia tộc chiến đấu để làm chủ vùng đất thần thoại Westeros được tiếp tục trong phần 4. Một mưu đồ chính trị mới lại trỗi dậy và các phe phái còn sống sót không chỉ đấu tranh với kẻ thù bên ngoài mà còn với giặc trong. Gia tộc Lannister giành chiến thắng sau khi đã đánh bại các mối đe dọa, mặc dù vùng đất thần thoại Westeros đã nằm trong tay sự kiểm soát của gia tộc Lannister, nhưng vẫn còn hai phe phái phản đối họ: Greyjoys và Baratheons! Lần này thì các thế lực siêu nhiên đang nổi dậy như đội quân White Walkers đang dần tràn về vương quốc từ phương bắc, phù thủy Đỏ với các phép thuật hắc ám của mình đang dần trở nên mạnh hơn, 3 con rồng của công chúa Daenerys Targaryen cũng đã lớn và sẽ trở thành một thế lực lớn trong cuộc tranh đấu này.', 1, '', NULL),
(54, 'Trò Chươi Vương Quyền 5 (2015)', 'Game Of Thrones Season 5 (2015)', '2', '[\"6\"]', '[\"123\"]', '[\"4\"]', 2015, '00:00:00', 9.5, '', '', 'Game_Of_Thrones_Season_5_(2015).jpg', 1, 3, 'Phần 5 tiếp tục câu truyện về 7 gia tộc chiến đấu để làm chủ vùng đất thần thoại Westeros. Những gia tộc thống trị là Stark, Lannister, và Baratheon. Vị vua của Westeros, Robert Baratheon, yêu cầu người bạn cũ của ông là Eddard – lãnh chúa Stark giữ chức vụ cao nhất (Cánh tay mặt của Nhà vua) và ngầm cảnh báo Cánh tay trước đây đã chết vì bị ám sát; Eddard chấp nhận mệnh lệnh để tìm ra sự thật đằng sau. ', 1, '', NULL),
(55, 'Trò Chươi Vương Quyền 6 (2016)', 'Game of Thrones Season 6 (2016)', '', '', '', '', 2016, '00:00:00', 9.5, '', '', 'Game of Thrones  s06.jpg', 0, 3, 'Phần 6 của series phim truyền hình ăn khách hàng đầu HBO Game of Thrones sẽ quay lại vào tháng 4/2016 ', 0, NULL, NULL),
(56, 'Trò Chươi Vương Quyền 7 (2017)', 'Game of Thrones Season 7 (2017)', '', '', '', '', 2017, '00:00:00', 9.5, '', '', 'Game of Thrones  s07.jpg', 0, 10, 'Trong Game of Thrones phần 7, một cái kết thật sự của Trò chơi vương quyền đang đến gần hơn bao giờ hết. Cuộc chiến giữa các nữ chúa, cuộc chiến của các vị vua phương Bắc, sự đoàn tụ của nhà Stark, tiếng gầm của sư tử nhà Lannister, sự trỗi dậy của gia tộc rồng Targaryen, sự sụp đổ của tường thành, sự trỗi dậy của dòng máu rồng…?', 0, NULL, NULL),
(57, 'Biệt Đội Siêu Anh Hùng 2: Đế Chế Ultron (2015)', 'Avengers: Age of Ultron (2015)', '14', '[\"20\",\"4\"]', '[\"148\",\"149\",\"150\"]', '[\"4\",\"5\",\"6\"]', 2015, '02:21:00', 7.4, 'https://drive.google.com/file/d/0Bz7FgiHfhIxqUDFfcFVDV1htZnM/preview', '', 'Avengers.Age.of.Ultron.2015.jpg', 1, 2, 'Trong phần này, biệt đội siêu anh hùng của chúng ta sẽ phải chiến đấu với binh đoàn robot được biết đến với cái tên là Ultron.', 0, '', NULL),
(58, 'Cô Gái Và Gã Khổng Lồ (2016)', 'Colossal (2016)', '', '', '', '', 2017, '00:00:00', 6.3, 'https://drive.google.com/file/d/0Bz7FgiHfhIxqLTNzcTZmQlhVcGs/preview', '', 'Colossal.2016.jpg', 1, 3, 'Vừa thất nghiệp lại vừa thất tình, cô nàng tuổi 30 - Gloria rời New York phồn hoa để trở về thị trấn nơi mình lớn lên. Cuộc sống đang ở đỉnh điểm của suy sụp chán nản thì Gloria gặp lại Oscar – cậu bạn cũ từng học chung tiểu học. Và đặc biệt hơn nữa, cô phát hiện ra mối liên hệ kỳ lạ giữa mình và con quái vật khổng lồ đang tàn phá thế giới... ', 0, NULL, NULL),
(61, 'Chiến Binh Báo Đen (2018) 44', 'Black Panther (2018)', '1', '[\"1\"]', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\"]', '[\"1\"]', 2018, '00:01:34', 7.6, 'link phụ đề', 'link thuyết minh', 'Black_Panther_(2018)1.jpg', 0, 0, 'phim hay quá', 1, 'http://www.youtube.com/watch?v=xjDjIWPwcPU', '2018-06-19 22:10:06'),
(62, 'Chiến Binh Báo Đen (2018)', 'Black Panther (2018)', '1', '[\"1\",\"2\",\"3\",\"4\",\"5\"]', '', '', 2018, '00:01:34', 7.6, '', '', '', 0, 0, '', 0, 'http://www.youtube.com/watch?v=xjDjIWPwcPU', '2018-06-06 23:06:02'),
(63, 'asdfa', 'Black Panther', '1', '[\"1\",\"2\",\"3\",\"4\",\"5\",1,\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\"]', '', '', 2018, '00:01:34', 7.6, '', '', '', 0, 0, '', 0, 'http://www.youtube.com/watch?v=xjDjIWPwcPU', '2018-06-17 18:33:38'),
(64, 'asdfa', 'Black Panther', '1', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"1\",2,3,4,5,6,7,8,9,10,11,12]', '', '', 2018, '00:01:34', 7.6, '', '', '', 0, 0, '', 0, 'http://www.youtube.com/watch?v=xjDjIWPwcPU', '2018-06-17 18:33:55'),
(65, 'asdfa', 'Black Panther', '1', '[\"1\",\"2\",\"3\",\"4\",\"5\"]', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\"]', '[1,2,3]', 2018, '00:01:34', 7.6, '', '', '', 0, 0, '', 0, 'http://www.youtube.com/watch?v=xjDjIWPwcPU', '2018-06-17 18:39:40'),
(66, 'aldlfladf', 'Black Panther', '1', '[\"1\",\"2\",\"3\",\"4\",\"5\"]', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\"]', '[4,5,6]', 2018, '00:01:34', 7.6, '', '', '', 0, 0, '', 0, 'http://www.youtube.com/watch?v=xjDjIWPwcPU', '2018-06-17 18:41:05'),
(67, 'aldlfladf', 'Black Panther', '1', '[\"1\",\"2\",\"3\",\"4\",\"5\"]', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\"]', '[\"4\",\"5\",\"6\"]', 2018, '00:01:34', 7.6, '', '', '', 0, 0, '', 0, 'http://www.youtube.com/watch?v=xjDjIWPwcPU', '2018-06-17 18:41:27'),
(68, 'sdfasdfdsaf', 'Black Panther', '1', '[\"1\",\"2\",\"3\",\"4\",\"5\"]', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\"]', '[\"4\",\"5\",\"6\"]', 2018, '00:01:34', 7.6, '', '', 'img/poster/Black_Panther1.jpg', 0, 0, '', 0, 'http://www.youtube.com/watch?v=xjDjIWPwcPU', '2018-06-17 18:48:22'),
(69, 'adfadf', 'Black Panther', '1', '[\"1\",\"2\",\"3\",\"4\",\"5\"]', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\"]', '[\"4\",\"5\",\"6\"]', 2018, '00:01:34', 7.6, '', '', 'Black_Panther2.jpg', 0, 0, '', 0, 'http://www.youtube.com/watch?v=xjDjIWPwcPU', '2018-06-17 18:50:42'),
(70, 'Chiến Binh Báo Đen (2018)', 'Black Panther (2018)', '5', '[\"1\",\"2\",\"3\",\"4\",\"5\"]', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\"]', '[\"4\",\"5\",\"6\"]', 2018, '02:14:00', 7.6, 'https://drive.google.com/file/d/1w2f-_KQKQQTNQ3gBmX1UiulzfVDALFHj/preview', '', 'Black_Panther_(2018).jpg', 1, 0, 'Black Panther 2018 sẽ lấy bội cảnh hậu Nội chiến Siêu anh hùng. Sau khi phụ thân qua đời, T’Chala gánh lên vai trọng trách bảo vệ quê nhà khỏi những kẻ thù độc địa đang dần bành trướng thế lực. Tạo hình hai ác nhân của phim cũng được “nhá hàng”, gồm có Erik Killmonger - kẻ phản bội từng bị trục xuất khỏi Wakanda và M’Baku/ Man-Ape - thủ lĩnh của bộ tộc đối địch.', 0, 'http://www.youtube.com/watch?v=xjDjIWPwcPU', '2018-06-28 23:44:47'),
(71, 'Đảo Hải Tặc: Gold (2016)', 'One Piece Film Gold (2016)', '8', '[\"7\",\"8\",\"9\",\"10\",\"11\"]', '[\"124\",\"125\",\"126\",\"127\",\"128\",\"129\",\"130\",\"131\",\"132\",\"133\",\"134\",\"135\"]', '[\"11\",\"5\",\"12\"]', 2016, '02:00:00', 7.8, '', 'https://drive.google.com/file/d/0Bz7FgiHfhIxqamNXeERHS0NIdmM/preview', 'One_Piece_Film_Gold_(2016).jpg', 1, 0, 'One Piece Film Gold là bộ phim điện ảnh thứ 13 của thương hiệu One Piece\r\nTrong bộ phim lần này, băng hải tặc Mũ Rơm sẽ phải đối đầu với Guild Tesoro, kẻ sở hữu trái ác quỷ Gold - Gold và là chủ nhân của Gran Tesoro - Thành phố giải trí nổi bằng vàng lớn nhất thế giới. Gran Tesoro là một thành phố độc lập, quy tụ hàng trăm tay chơi và hải tặc trên khắp thế giới; một nơi mà đến chính phủ cũng không thể kiểm soát. Guild Tesoro thống trị tất cả mọi thứ, thậm chí là hải tặc hay chính phủ bằng Vàng và tham vọng của hắn ngày càng lớn dần. Cán cân quyền lực của Tân thế giới bắt đầu thay đổi từ đây… ', 0, 'http://www.youtube.com/watch?v=kcMqZY3xbs0', '2018-07-11 18:29:53'),
(72, 'Thế Giới Khủng Long: Vương Quốc Sụp Đổ (2018)', 'Jurassic World: Fallen Kingdom (2018)', '15', '[21,22,23]', '[151,152,153,154,155,156,157,158,159,160,161,162]', '[\"4\",\"5\",\"6\"]', 2018, '02:08:00', 6.4, '', 'https://drive.google.com/file/d/1-pvE7mVjAjvUPcnODsKFMeaiVig4Nm3T/preview', 'Jurassic_World:_Fallen_Kingdom_(2018).jpg', 1, 0, 'Bốn năm sau thảm họa Công Viên kỷ Jura bị hủy diệt. Một vài con khủng long vẫn còn sống sót trong rừng trong khi Isla Nublar bị con người bỏ hoang. Owen và Claire quyết định tiến hành chiến dịch giải cứu những con khủng long còn sống sót khỏi sự tuyệt chủng khi ngọn núi lửa tại khu vực này bắt đầu hoạt động trở lại. Họ vô tình khám phá ra một âm mưu có thể khiến toàn bộ hành tinh đối mặt với một hiểm họa to lớn chưa từng thấy kể từ thời tiền sử.', 0, 'http://www.youtube.com/watch?v=vn9mMeWcgoM', '2018-09-09 19:39:18'),
(73, 'Băng Cướp Thế Kỷ: Đẳng Cấp Quý Cô (2018)', 'Ocean\'s Eight (2018)', '17', '[\"24\",\"25\",\"24\",\"26\",\"27\"]', '[\"163\",\"164\",\"165\",\"166\",\"167\",\"168\",\"169\",\"170\",\"171\",\"172\",\"173\",\"174\"]', '[\"4\",\"12\",\"13\"]', 2018, '01:50:00', 6.3, '', 'https://drive.google.com/file/d/1UdnRXR8kW4RqvWh2QluxZjXQfyO9SGvn/preview', 'Oceans_Eight_(2018).jpg', 1, 0, '17 năm trước, Hội 11 tên cướp thế kỷ của Ocean đã ghi dấu ấn trong thể loại heist film lẫn trong lòng khán giả. Với những tài tử hot số 1 khi đó như George Clooney và Brad Pitt, Ocean’s Eleven giành được những lời tán thưởng như “thông minh”, “phong cách”, “cool ngầu”... và kéo theo 2 phần sequel thành công. Bẵng đi 11 năm thì phần tiếp theo Ocean\'s 8 (tên Việt là Băng Cướp Thế Kỷ: Đẳng Cấp Quý Cô) được vẻ lịch lãm quyến rũ, óc hài hước và tiết tấu nhanh của trilogy đàn anh.', 0, 'https://www.youtube.com/embed/MFWF9dU5Zc0', '2018-09-10 20:40:58'),
(74, 'Deadpool 2 (2018)', 'Deadpool 2 (2018)', '19', '[\"28\",\"29\",\"30\",\"31\",\"32\"]', '[\"175\",\"176\",\"177\",\"178\",\"179\",\"180\",\"181\",\"182\",\"183\",\"184\",\"185\",\"186\"]', '[\"4\",\"5\",\"6\"]', 2018, '01:59:00', 7.9, '', 'https://drive.google.com/file/d/17YzDo6VK_kaWMV4i8--XBGn1dLqKAZbY/preview', 'Deadpool_2_(2018).jpg', 1, 0, 'Deadpool là nhân vật phản anh hùng (anti-hero) cực kỳ được yêu thích trong vũ trụ Marvel. Bộ phim solo của \"anh khả ái dọn dẹp ngang trái\" vào năm 2016 đã thành công rực rỡ với doanh thu lên đến 783 triệu USD.', 0, 'https://www.youtube.com/embed/Z5ezsReZcxU', '2018-09-10 20:57:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloai`
--

CREATE TABLE `theloai` (
  `id_theloai` int(11) NOT NULL,
  `tentheloai` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tentheloai_kd` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `theloai`
--

INSERT INTO `theloai` (`id_theloai`, `tentheloai`, `tentheloai_kd`, `status`) VALUES
(4, 'Hành động', 'Hanh-dong', 1),
(5, 'Phưu lưu', 'Phuu-luu', 1),
(6, 'Viễn tưởng', 'Vien-tuong', 1),
(11, 'Hoạt hình', 'Hoat-hinh', 1),
(12, 'Hài hước', 'Hai-huoc', 1),
(13, 'Tội phạm', 'Toi-pham', 1),
(14, 'Võ thuật', 'Vo-thuat', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `daodien`
--
ALTER TABLE `daodien`
  ADD PRIMARY KEY (`id_daodien`);

--
-- Chỉ mục cho bảng `dienvien`
--
ALTER TABLE `dienvien`
  ADD PRIMARY KEY (`id_dienvien`);

--
-- Chỉ mục cho bảng `kichban`
--
ALTER TABLE `kichban`
  ADD PRIMARY KEY (`id_kichban`);

--
-- Chỉ mục cho bảng `phim`
--
ALTER TABLE `phim`
  ADD PRIMARY KEY (`id_phim`);

--
-- Chỉ mục cho bảng `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`id_theloai`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `daodien`
--
ALTER TABLE `daodien`
  MODIFY `id_daodien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `dienvien`
--
ALTER TABLE `dienvien`
  MODIFY `id_dienvien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT cho bảng `kichban`
--
ALTER TABLE `kichban`
  MODIFY `id_kichban` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `phim`
--
ALTER TABLE `phim`
  MODIFY `id_phim` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT cho bảng `theloai`
--
ALTER TABLE `theloai`
  MODIFY `id_theloai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
