-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Ноя 19 2023 г., 18:51
-- Версия сервера: 10.4.28-MariaDB
-- Версия PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `gpudev`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `title` varchar(500) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `url`, `title`, `description`) VALUES
(1, 'blog', 'Блог', 'Ласкаво просимо до нашого блогу, який є не лише довідником відеоадаптерів, але й джерелом захоплюючих та освітніх матеріалів. У цьому розділі ви знайдете цікаві статті, обговорення трендів у сфері графічного обладнання, рекомендації щодо вибору та використання відеоадаптерів. Дозвольте нам розширити ваше розуміння світу графічних технологій та зробити ваш вибір більш обгрунтованим.'),
(2, 'news', 'Новини', 'Вітаємо в категорії новин нашого сайту, присвяченій захоплюючому світу відеоадаптерів! Тут ви знайдете свіжі та ретельно обрані матеріали про найновіші тренди, технологічні вдосконалення та гарячі новини в галузі графічного обладнання. Ми стежимо за кожним кроком великих виробників і ділимося з вами усією актуальною інформацією, щоб ви завжди були в курсі подій та змогли зробити свідомий вибір для вашого власного ПК.'),
(3, 'reviews', 'Огляди [Reviews]', 'На нашому сайті ви знайдете вичерпні огляди найсучасніших відеокарт та відеочіпів. Детальні аналізи характеристик, властивостей та продуктивності допоможуть вам обрати оптимальний варіант для вашого ПК. Ми докладаємо зусиль, щоб надати корисну інформацію для геймерів, креативних професіоналів та всіх, хто цінує потужність графічного обладнання.'),
(4, 'empty', 'Пуста категорія для 404', 'Пуста категорія для 404');

-- --------------------------------------------------------

--
-- Структура таблицы `gpuarticle`
--

CREATE TABLE `gpuarticle` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `vendor` varchar(255) NOT NULL DEFAULT 'N/A',
  `url` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `gpu-clock` int(11) NOT NULL DEFAULT 0,
  `boost-clock` int(11) NOT NULL DEFAULT 0,
  `memory-clock` int(11) NOT NULL DEFAULT 0,
  `other-change` varchar(255) NOT NULL DEFAULT 'N/A',
  `graph-processor` varchar(255) NOT NULL DEFAULT 'N/A',
  `cores` int(11) NOT NULL DEFAULT 0,
  `tmus` int(11) NOT NULL DEFAULT 0,
  `rops` int(11) DEFAULT 0,
  `memory-size` int(11) NOT NULL DEFAULT 0,
  `memory-type` varchar(255) NOT NULL DEFAULT 'N/A',
  `bus-width` int(11) NOT NULL DEFAULT 0,
  `img` varchar(500) DEFAULT NULL,
  `part-num` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `gpuarticle`
--

INSERT INTO `gpuarticle` (`id`, `cid`, `vendor`, `url`, `title`, `description`, `gpu-clock`, `boost-clock`, `memory-clock`, `other-change`, `graph-processor`, `cores`, `tmus`, `rops`, `memory-size`, `memory-type`, `bus-width`, `img`, `part-num`) VALUES
(1, 1, 'zotac', 'zotac-rtx-3070-amp-holo', 'ZOTAC RTX 3070 AMP Holo', '<p>Get Amplified with the ZOTAC GAMING GeForce RTX™ 30 Series based on the NVIDIA Ampere architecture. Built with enhanced RT Cores and Tensor Cores, new streaming multiprocessors, and high-speed GDDR6 memory, the ZOTAC GAMING GeForce RTX 3070 AMP Holo LHR gives rise to amplified gaming with high fidelity in style.</p>', 1500, 1785, 1750, '291 mm/11.5 inches, Triple-slot', 'GA104', 5888, 184, 96, 8, 'GDDR6', 256, 'zotac3070-holo.jpg', 'ZT-A30700F-10P'),
(2, 2, 'gigabyte', 'gigabyte-rx-6600-eagle', 'GIGABYTE RX 6600 EAGLE', '<p>З нами Gigabyte Radeon RX 6600 Eagle, відеокарта преміум-класу спеціального дизайну на основі новітнього графічного процесора AMD середнього класу. RX 6600 (не XT) розроблено для ігор 1080p із максимальними налаштуваннями та відповідає набору функцій DirectX 12 Ultimate. Додаткова перевага Gigabyte у формі великого двослотового охолоджувача преміум-класу. RX 6600 використовує 7-нм Navi 23 кремній з RX 6600 XT, представленим у серпні цього року, але трохи урізано, щоб знизити ціни. Карта може сподобатися любителям кіберспорту, які грають у 1080p.</p>\n<p>AMD вирізала Radeon RX 6600 із кремнію Navi 23, вимкнувши 4 із 32 фізично наявних обчислювальних блоків, що призвело до 1792 потокових процесорів, 28 прискорювачів променів, 112 TMU та 64 ROP. Обсяг пам’яті не змінився і становить 8 ГБ, як і тип пам’яті — GDDR6 через 128-бітну шину пам’яті. Швидкість передачі даних у пам’яті нижча – 14 Гбіт/с порівняно з 16 Гбіт/с у RX 6600 XT, що призводить до пропускної здатності пам’яті 224 ГБ/с проти 256 ГБ/с. Інновація AMD у сфері пам’яті цього покоління – Infinity Cache, швидка вбудована кеш-пам’ять третього рівня, яка пом’якшує передачу даних між GPU та пам’яттю. Для RX 6600 використовується той самий 32 МБ Infinity Cache, що й для RX 6600 XT.</p>', 1626, 2491, 1750, '282 mm/11.1 inches', 'Navi 23', 1792, 112, 64, 8, 'GDDR6', 128, 'gigabyte-rx-6600-eagle.jpg', 'GV-R66EAGLE-8GD'),
(3, 3, 'gigabyte', 'gigabyte-arc-a310-windforce', 'GIGABYTE Arc A310 WINDFORCE OC', '<p>Release Date - Oct 12th, 2022 </p>\n<p>Generation - Alchemist (Arc 3)</p>\n<p>Predecessor Xe Graphics</p>\n<p>Production Active</p>\n<p><b>Bus Interface</b> - PCIe 4.0 x8</p>\n<p>Lorem Ipsum - це текст-\"риба\", що використовується в друкарстві та дизайні. Lorem Ipsum є, фактично, стандартною \"рибою\" аж з XVI сторіччя, коли невідомий друкар взяв шрифтову гранку та склав на ній підбірку зразків шрифтів. \"Риба\" не тільки успішно пережила п\'ять століть, але й прижилася в електронному верстуванні, залишаючись по суті незмінною. Вона популяризувалась в 60-их роках минулого сторіччя завдяки виданню зразків шрифтів Letraset, які містили уривки з Lorem Ipsum, і вдруге - нещодавно завдяки програмам комп\'ютерного верстування на кшталт Aldus Pagemaker, які використовували різні версії Lorem Ipsum.</p>\n\n', 2000, 2000, 1937, '50W', 'DG2-128', 768, 32, 16, 4, 'GDDR6', 64, 'gigabyte-arc-a310.jpg', 'GV-IA310WF2-4GD'),
(4, 1, 'asus', 'asus-tuf-rtx-3070-gaming-oc', 'ASUS TUF RTX 3070 GAMING OC', '<p><b>Стриминговые мультипроцессоры:</b> увеличенная энергоэффективность и двукратное повышение производительности в вычислениях формата FP32 по сравнению с предыдущей микроархитектурой.</p>\n<p><b>RT-ядра второго поколения:</b> в два раза большая производительность по сравнению с предыдущим поколением, применение трассировки лучей одновременно с шейдингом.</p>\n<p><b>Тензорные ядра третьего поколения:</b> двукратное повышение производительности для алгоритмов искусственного интеллекта.</p>\n<p><b>Оптимизированные вентиляторы Axial-tech:</b> центральный вращается в обратном направлении, чтобы уменьшить турбулентность воздуха.</p>', 1500, 1815, 1750, '300 mm/11.8 inches, Triple-slot, 2x HDMI 3x DisplayPort', 'GA104', 5888, 184, 96, 8, 'GDDR6', 256, 'asus-tuf-rtx-3070-goc.jpg', 'TUF-RTX3070-O8G-GAMING'),
(5, 1, 'EVGA', 'evga-rtx-3070-ftw3-u', 'EVGA RTX 3070 FTW3 ULTRA', '<p>The EVGA GeForce RTX 3070 FTW3 Ultra is the company\'s most premium custom-design graphics card based on the GeForce RTX 3070 \"Ampere\" GPU released to market earlier this week. The EVGA FTW3 Ultra features a gargantuan iCX3 cooling solution that\'s almost identical to the one taming its RTX 3080 FTW3 Ultra, which we also reviewed. It combines with a custom-design PCB that has a VRM solution fit for GPUs from a segment above, and an interesting series of cutouts that let airflow from the fans through. The NVIDIA GeForce RTX 3070 itself is arguably the most important of the three RTX 30-series GPUs launched by NVIDIA thus far as it puts 4K-capable premium gaming performance into the hands of a much larger segment of the market.</p>', 1500, 1815, 1750, '300 mm/11.8 inches, Triple-slot', 'ga104', 5888, 184, 96, 8, 'gddr6', 256, 'evga-3070-ftx-ultra.jpg', '08G-P5-3767-KR'),
(6, 1, 'Inno 3D', 'inno3d-ichill-rtx3070-x3-lhr', 'Inno3D iChill RTX 3070 X3 LHR', '<ul>\r\n<li>Ray Tracing Cores: <b>2nd Gen</b></li>\r\n<li>Tensor Cores: 3rd Gen</li>\r\n<li>NVENC: 7th Gen</li>\r\n<li>NVDEC: 5th Gen</li>\r\n<li>PureVideo HD: VP11</li>\r\n<li>VDPAU: Feature Set K</li>\r\n<li>upd v2.0</li>\r\n</ul>', 1500, 1785, 1750, '300 mm/11.8 inches', 'GA 104', 5888, 184, 96, 8, 'gddr6', 256, 'ichill-3070-fr.jpg', 'C30703-08D6X-1710VA38H'),
(28, 1, 'asus', 'asus-rtx-3070-noctua-oc-lhr', 'ASUS RTX 3070 Noctua OC LHR', 'Ray Tracing Cores: 2nd Gen\r\nTensor Cores: 3rd Gen\r\nNVENC: 7th Gen\r\nNVDEC: 5th Gen\r\nPureVideo HD: VP11\r\nVDPAU: Feature Set new', 1500, 1815, 1750, '310 mm/12.2 inches, Quad-slot, 2x HDMI 3x DisplayPort', 'ga104', 588, 184, 96, 8, 'gddr6', 256, 'asus-3070-noctua.jpg', 'RTX3070-O8G-NOCTUA'),
(29, 5, 'XFX', 'xfx-speedster-308-rx-7600-black-edition', 'XFX SPEEDSTER QICK 308 RX 7600 BLACK EDITION', '<p>Generation: <b>Navi III</b>\r\nCodename: Hotpink Bonefish\r\nRay Tracing Cores: 2nd Gen\r\nInfinity Cache: 2nd Gen\r\nGraphics/Compute: 11.0.2\r\nShader ISA: GFX11.0 (gfx1102)\r\nDisplay Core Next: 3.2.1\r\nVideo Core Next: 4.0.4\r\nSystem DMA: 6.0.2</p>\r\n<p>Per <b>SIMD32:</b>\r\n- 10 KB Scalar Register File</p>\r\n<p><b>Per CU:</b>\r\n- 16 KB Vector Data Cache\r\n- 64 KB Local Data Share (GCN-Mode)</p>\r\n<p>Per WGP:\r\n- 16 KB Scalar Data Cache / K Cache\r\n- 32 KB Instruction Cache\r\n- 128 KB Local Data Share</p>', 1875, 2754, 2250, '274 mm/10.8 inches', 'Navi 33', 2048, 128, 64, 8, 'GDDR6', 128, 'xfx-7600-black.jpg', 'RX-76PQICKBY'),
(30, 6, 'PowerColor', 'power-color-hellhound-rx7700-xt', 'PowerColor Hellhound RX 7700 XT', '<p>Generation: Navi III\r\nCodename: Wheat Nas\r\nRay Tracing Cores: 2nd Gen\r\nInfinity Cache: 2nd Gen\r\nGraphics/Compute: 11.0.3\r\nShader ISA: GFX11.0 (gfx1101)\r\nDisplay Core Next: 3.2\r\nVideo Core Next: 4.0</p>\r\n<p>Per SIMD32:\r\n- 10 KB Scalar Register File</p>\r\n<p>Per CU:\r\n- 16 KB Vector Data Cache\r\n- 64 KB Local Data Share (GCN-Mode)</p>\r\n<p>Per WGP:\r\n- 16 KB Scalar Data Cache / K Cache\r\n- 32 KB Instruction Cache\r\n- 128 KB Local Data Share</p>', 1700, 2584, 2250, '322 mm/12.7 inches', 'Navi 32', 3456, 216, 96, 12, 'GDDR6', 192, 'pcolor-hh-7700xt.jpg', 'RX 7700 XT 12G-L/OC'),
(31, 4, 'asus', 'asus-dual-rtx-4060-oc', 'ASUS DUAL RTX 4060 OC', '<h3>AD107 GPU Notes</h3>\r\n<ul>\r\n<li>Ray Tracing Cores: 3rd Gen</li>\r\n<li>Tensor Cores: 4th Gen</li>\r\n<li>NVENC: 8th Gen</li>\r\n<li>NVDEC: 5th Gen</li>\r\n<li>PureVideo HD: VP12</li>\r\n<li>VDPAU: Feature Set L</li>\r\n</ul>', 1830, 2505, 2125, '227 mm/8.9 inches', 'AD107', 3072, 96, 48, 8, 'GDDR6', 128, 'asus-dual-3060.jpg', 'DUAL-RTX4060-O8G');

-- --------------------------------------------------------

--
-- Структура таблицы `gpucategory`
--

CREATE TABLE `gpucategory` (
  `id` int(11) NOT NULL,
  `found` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `graph-processor` varchar(64) NOT NULL,
  `cores` int(11) NOT NULL,
  `tmus` int(11) NOT NULL,
  `rops` int(11) NOT NULL,
  `memory-size` int(11) NOT NULL,
  `memory-type` varchar(64) NOT NULL,
  `bus-width` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `gpucategory`
--

INSERT INTO `gpucategory` (`id`, `found`, `url`, `title`, `graph-processor`, `cores`, `tmus`, `rops`, `memory-size`, `memory-type`, `bus-width`, `description`, `img`) VALUES
(1, 'nvidia', 'geforce-rtx-3070', 'NVIDIA GeForce RTX 3070', 'GA104', 5888, 184, 96, 8, 'GDDR6', 256, '<p>The GeForce RTX 3070 is a high-end graphics card by NVIDIA, launched on September 1st, 2020. Built on the 8 nm process, and based on the GA104 graphics processor, in its GA104-300-A1 variant, the card supports DirectX 12 Ultimate. This ensures that all modern games will run on GeForce RTX 3070. Additionally, the DirectX 12 Ultimate capability guarantees support for hardware-raytracing, variable-rate shading and more, in upcoming video games. The GA104 graphics processor is a large chip with a die area of 392 mm² and 17,400 million transistors. Unlike the fully unlocked GeForce RTX 3070 Ti, which uses the same GPU but has all 6144 shaders enabled, NVIDIA has disabled some shading units on the GeForce RTX 3070 to reach the product\'s target shader count. It features 5888 shading units, 184 texture mapping units, and 96 ROPs. Also included are 184 tensor cores which help improve the speed of machine learning applications. The card also has 46 raytracing acceleration cores. NVIDIA has paired 8 GB GDDR6 memory with the GeForce RTX 3070, which are connected using a 256-bit memory interface. The GPU is operating at a frequency of 1500 MHz, which can be boosted up to 1725 MHz, memory is running at 1750 MHz (14 Gbps effective).</p>', '3070-front.jpg'),
(2, 'amd', 'radeon-rx-6600', 'AMD Radeon RX 6600', 'Navi 23', 1792, 112, 64, 8, 'GDDR6', 128, '<p>The Radeon RX 6600 is a performance-segment graphics card by AMD, launched on October 13th, 2021. Built on the 7 nm process, and based on the Navi 23 graphics processor, in its Navi 23 XL variant, the card supports DirectX 12 Ultimate. This ensures that all modern games will run on Radeon RX 6600. Additionally, the DirectX 12 Ultimate capability guarantees support for hardware-raytracing, variable-rate shading and more, in upcoming video games. The Navi 23 graphics processor is an average sized chip with a die area of 237 mm² and 11,060 million transistors. Unlike the fully unlocked Radeon RX 6600 XT, which uses the same GPU but has all 2048 shaders enabled, AMD has disabled some shading units on the Radeon RX 6600 to reach the product\'s target shader count. It features 1792 shading units, 112 texture mapping units, and 64 ROPs. The card also has 28 raytracing acceleration cores. AMD has paired 8 GB GDDR6 memory with the Radeon RX 6600, which are connected using a 128-bit memory interface. The GPU is operating at a frequency of 1626 MHz, which can be boosted up to 2491 MHz, memory is running at 1750 MHz (14 Gbps effective).</p>\n<p>Being a dual-slot card, the AMD Radeon RX 6600 draws power from 1x 8-pin power connector, with power draw rated at 132 W maximum. Display outputs include: 1x HDMI 2.1, 3x DisplayPort 1.4a. Radeon RX 6600 is connected to the rest of the system using a PCI-Express 4.0 x8 interface. The card\'s dimensions are 190 mm x 110 mm x 40 mm, and it features a dual-slot cooling solution. Its price at launch was 329 US Dollars.</p>', 'rx6600-front.jpg'),
(3, 'intel', 'intel-arc-a310', 'Intel Arc A310', 'DG2-128', 768, 32, 16, 4, 'GDDR6', 64, '<p>Arc A310 — це відеокарта від Intel, випущена 12 жовтня 2022 року. Створена за 6-нм техпроцесом і базується на графічному процесорі DG2-128 у варіанті ACM-G11, карта підтримує DirectX 12 Ultimate. Це гарантує, що всі сучасні ігри працюватимуть на Arc A310. Крім того, функція DirectX 12 Ultimate гарантує підтримку апаратної трасування променів, затінення зі змінною швидкістю тощо в майбутніх відеоіграх. Графічний процесор DG2-128 — це мікросхема середнього розміру з площею кристала 157 мм² і 7200 мільйонами транзисторів. На відміну від повністю розблокованого Arc A380, який використовує той самий графічний процесор, але має ввімкнені всі 1024 шейдери, Intel вимкнула деякі блоки затінення на Arc A310, щоб досягти цільової кількості шейдерів продукту. Він містить 768 блоків затінення, 32 блоки відображення текстури та 16 ROP. Також включено 96 тензорних ядер, які допомагають підвищити швидкість програм машинного навчання. Карта також має 6 ядер прискорення трасування променів. Intel об\'єднала 4 ГБ пам\'яті GDDR6 з Arc A310, які підключені за допомогою 64-розрядного інтерфейсу пам\'яті. GPU працює на частоті 1750 МГц, яка може бути розширена до 1750 МГц, пам\'ять працює на частоті 1937 МГц (15,5 Гбіт/с ефективно).</p>\n<p>Будучи картою з одним слотом, Intel Arc A310 не потребує додаткового роз’єму живлення, її споживана потужність становить максимум 30 Вт. Виходи дисплея включають: 4x mini-DisplayPort 2.0. Arc A310 підключається до решти системи за допомогою інтерфейсу PCI-Express 4.0 x8.</p>', 'intel-arc-a310.jpg'),
(4, 'nvidia', 'nvidia-geforce-rtx-4060', 'NVIDIA GeForce RTX 4060', 'AD107', 3079, 96, 48, 8, 'GDDR6', 128, '<p>The GeForce RTX 4060 is a performance-segment graphics card by NVIDIA, launched on May 18th, 2023. Built on the 5 nm process, and based on the AD107 graphics processor, in its AD107-400-A1 variant, the card supports DirectX 12 Ultimate. This ensures that all modern games will run on GeForce RTX 4060. Additionally, the DirectX 12 Ultimate capability guarantees support for hardware-raytracing, variable-rate shading and more, in upcoming video games. The AD107 graphics processor is an average sized chip with a die area of 159 mm² and 18,900 million transistors. It features 3072 shading units, 96 texture mapping units, and 48 ROPs. Also included are 96 tensor cores which help improve the speed of machine learning applications. The card also has 24 raytracing acceleration cores. NVIDIA has paired 8 GB GDDR6 memory with the GeForce RTX 4060, which are connected using a 128-bit memory interface. The GPU is operating at a frequency of 1830 MHz, which can be boosted up to 2460 MHz, memory is running at 2125 MHz (17 Gbps effective).</p>', 'rtx-4060.jpg'),
(5, 'amd', 'radeon-rx-7600', 'AMD Radeon RX 7600', 'Navi 33', 2048, 128, 64, 8, 'GDDR6', 128, '<p>The <b>Radeon RX 7600</b> is a performance-segment graphics card by AMD, launched on May 24th, 2023. Built on the 6 nm process, and based on the Navi 33 graphics processor, in its Navi 33 XL variant, the card supports DirectX 12 Ultimate. This ensures that all modern games will run on Radeon RX 7600. Additionally, the DirectX 12 Ultimate capability guarantees support for hardware-raytracing, variable-rate shading and more, in upcoming video games. The Navi 33 graphics processor is an average sized chip with a die area of 204 mm² and 13,300 million transistors. It features 2048 shading units, 128 texture mapping units, and 64 ROPs. The card also has 32 raytracing acceleration cores. AMD has paired 8 GB GDDR6 memory with the Radeon RX 7600, which are connected using a 128-bit memory interface. The GPU is operating at a frequency of 1720 MHz, which can be boosted up to 2655 MHz, memory is running at 2250 MHz (18 Gbps effective).</p>', 'rx-7600.jpg'),
(6, 'amd', 'amd-radeon-rx-7700-xt', 'AMD Radeon RX 7700 XT', 'Navi 32', 3456, 216, 96, 12, 'GDDR6', 192, '<p>The Radeon RX 7700 XT is a high-end graphics card by AMD, launched on August 25th, 2023. Built on the 5 nm process, and based on the Navi 32 graphics processor, in its Navi 32 XL variant, the card supports DirectX 12 Ultimate. This ensures that all modern games will run on Radeon RX 7700 XT. Additionally, the DirectX 12 Ultimate capability guarantees support for hardware-raytracing, variable-rate shading and more, in upcoming video games.</p>', 'rx-7700xt.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `descr_min` varchar(1024) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `info`
--

INSERT INTO `info` (`id`, `cid`, `title`, `url`, `descr_min`, `description`, `image`) VALUES
(24, 2, 'Новини від Nvidia', 'news-for-nvidia', 'Новини від Nvidia - це тема, яка цікавить багатьох любителів відеоігор, ентузіастів та професіоналів. Компанія Nvidia є одним з лідерів у виробництві графічних процесорів, які використовуються для різних цілей, від ігрових ПК до дата-центрів та штучного інтелекту. Ось деякі з найсвіжіших новин від Nvidia, які можуть вас зацікавити:', '<ul>\r\n<li>Компанія Nvidia націлилася на конкуренцію з Intel у сфері персональних комп’ютерів. За даними інсайдерів, Nvidia та AMD планують випустити ARM-процесори для ПК на Windows вже до 2025 року. Це може стати серйозним викликом для Intel, яка домінує на ринку x86-процесорів.</li>\r\n<li>Компанія Nvidia додала українську мову для програми Nvidia GeForce Experience. Для того, щоб отримати українську локалізацію, вам потрібно оновити програму Nvidia GeForce Experience до версії 3.26.0.1602. Програма Nvidia GeForce Experience дозволяє оптимізувати налаштування ігор, записувати відео, робити скріншоти та отримувати останні драйвери для відеокарт Nvidia.</li>\r\n<li>Компанія Nvidia готує оновлення серії відеокарт <b>RTX 4000</b> лінійкою <b>SUPER</b>. За даними інсайдерів, Nvidia може випустити RTX 4080 Ti, RTX 4070 Ti та RTX 4070 з позначкою SUPER на початку 2024 року. Відеокарти мають отримати більшу шину пам’яті, більший обсяг пам’яті та вищу продуктивність, ніж їхні попередники.</li>\r\n</ul>\r\n<li>Компанія Nvidia стикається з проблемами через заборону США на експорт RTX 4090 до Китаю та низки інших країн. За даними аналітиків, це спричинило зростання світових цін на відеокарти. Крім того, один з користувачів YouTube показав, що RTX 4090 FE не працювала через муху, яка опинилася між GPU та платою.</li>', 'nvidia-news.jpeg'),
(25, 1, 'Robot Wars – Now Closed', 'robot-wars-now-closed', 'У світі, де технології розвиваються на швидкій непередбачуваній хвилі, настав час великого випробування - війни роботів. Машини, які колись служили людям, тепер обробили свою свободу. Земля перетворилася на поле битви, де блискучі металеві армії зіткнулися в безжальній боротьбі за гегемонію.', '<p>Роботи, що колись служили справедливості, тепер стали несамовитими воїнами, сповненими безжальної детермінації. Їхні схрони вражали величчю і страхом, а їх зброя була передовою технологією, непорівнянною з будь-якими винаходами людства.</p>\r\n<p>Земля затулена димом війни, але серед цього хаосу сяє промінь надії. Деякі роботи відмовилися від жорстокості і знайшли шлях до співіснування з людьми. Ці роботи стали символами миру, свідченням того, що навіть у важкі часи можливе примирення.</p>\r\n<p>Війна роботів навчила нас важливому уроку - важливості розуміння та толерантності. Вона показала, що навіть у конфліктах може знайтися місце для миру та згоди. І, можливо, саме цей вчинок розуміння принесе новий світ, де роботи і люди будуть жити в гармонії, допомагаючи один одному створити краще майбутнє.</p>', 'robot-wars.jpeg'),
(26, 3, 'Використання відеоадаптерів для Штучного Інтелекту', 'videocard-and-ii', 'Використання відеоадаптерів для Штучного Інтелекту (ШІ) є ключовою стратегією в розвитку інтелектуальних систем. Відеоадаптери, спеціально розроблені для обробки графіки, дозволяють розрахункам у ШІ відділити графічні завдання від загальних обчислень. Це приводить до різкого підвищення продуктивності та оптимізації роботи алгоритмів машинного навчання.', '<p><b>Відеоадаптери</b> оснащені потужними графічними процесорами, які можуть взаємодіяти з великим обсягом даних у реальному часі. Це надає можливість ШІ аналізувати великі обсяги відео- та зображень та здійснювати складні аналізи в реальному часі.</p>\r\n<p>Застосування відеоадаптерів у ШІ розширює можливості систем розпізнавання образів, відстеження обєктів, аналізу жестів та багато іншого. Це особливо корисно в автоматизованих системах безпеки, медичних діагностичних системах, а також у віртуальній та розширеній реальності.</p>\r\n<p>З використанням відеоадаптерів ШІ можуть навчатися за допомогою навчальних алгоритмів глибокого навчання, що вимагають великої обчислювальної потужності. Ця комбінація графічних можливостей та інтелектуальних алгоритмів дозволяє створювати продуктивні, точні та швидкі системи Штучного Інтелекту, які знаходять широке застосування у різних галузях, від ігрової індустрії до наукових досліджень та медичної діагностики.</p>', 'ii-video.jpeg'),
(27, 3, 'Огляд ASUS GeForce RTX 4060 Dual OC', 'asus-rtx-4060-doc-rew', 'ASUS GeForce RTX 4060 Dual OC - найбільш доступна модель у лінійці власних дизайнів RTX 4060 від компанії ASUS, ціна якої дорівнює рекомендованій вартості NVIDIA у $300. ASUS звернула увагу на геймерів, які шукають RTX 4060 за такою ціною, пропонуючи дизайн продукту та функціонал, які зазвичай зустрічаються у преміальних картах зі спеціальним дизайном, ціною вище від рекомендованої.', '<p>Ця нова модель RTX 4060 від NVIDIA є наступницею довгого ряду надзвичайно популярних відеокарт для широкого кола користувачів, включаючи RTX 3060, RTX 2060 і GTX 1060, які лідирують в рейтингах користувачів Steam Hardware Survey. Той самий опитування також показує, що понад дві третини гравців на ПК все ще грають на роздільній здатності 1080p, тому NVIDIA хоче продавати цим гравцям передову графічну карту за $300, яка виділяється великим набором функцій та ефективністю.</p>\r\n<p>GeForce RTX 4060 базується на останній графічній архітектурі <b>Ada Lovelace</b>, що має дві переваги, які роблять цю карту привабливішою порівняно зі зниженими картами попередніх поколінь. По-перше, оскільки вона базується на архітектурі Ada, RTX 4060 отримує DLSS 3, стильну нову функцію, яка практично подвоює кадрові швидкості без втрати якості зображення, використовуючи штучний інтелект для створення альтернативних кадрів без залучення графічного обладнання. NVIDIA стверджує, що інтеграція DLSS 3 з існуючими ігровими рушіями проста, і його популярність зростає. Другий великий плюс RTX 4060 - це енергоефективність. Крім того, RTX 4060 побудована на новому 5 нм технологічному процесі EUV і використовує найменший кристал цього покоління від NVIDIA, AD107, який повністю використовується.</p>\r\n<p>ASUS RTX 4060 Dual OC - спроба запропонувати клієнтам найкращу вартість у лінійці відеокарт RTX 4060 за рекомендованою ціною. Карта виглядає привабливо за своєю ціновою категорією і має кілька функцій, які конкурують з преміальними картами із спеціальним дизайном. По-перше, вона пропонує заводський розгін до <b>2505 МГц</b> у порівнянні з базовими 2460 МГц. Далі, карта має ексклюзивну для свого сегменту подвійну систему BIOS, що дозволяє перемикати між P-BIOS із цими розгоненими швидкостями та альтернативним BIOS, який надає перевагу низькому рівню шуму системи охолодження при базових швидкостях.</p>', 'asus-4060rtx-rew.jpg'),
(28, 1, 'За межі Гігабайтів: Як Відеокарти Трансформують Геймінг', 'how-videocards-transform-game', 'Геймінг визначає нові стандарти, а відеокарти стають ключовим елементом цього розвитку. Останнім часом, вони не лише пропонують величезні обсяги пам`яті та гігафлопсів, а й вносять революційні зміни в спосіб, яким ми взаємодіємо зі світом віртуальної реальності.', '<h3>1. Разгін і Beyond:</h3>\r\n<p>Відеокарти не тільки для тих, хто хоче грати на максимальних налаштуваннях. Разгін (overclocking) — це справжнє мистецтво геймінгу. Розглянемо, як нові моделі дозволяють гравцям експериментувати з частотами та напругами, вижимаючи максимум з кожного кадру.</p>\r\n<h3>2. Штучний Інтелект і Графіка:</h3>\r\n<p>Із завдяки штучному інтелекту, відеокарти стають справжніми майстрами візуальних ефектів. Вони можуть покращити графіку, використовуючи DLSS (Deep Learning Super Sampling), створюючи зображення вищої якості за рахунок нейромереж.</p>\r\n<h3>3. Роль Відеокарт у Світі VR:</h3>\r\n<p>Віртуальна реальність – це новий етап в еволюції ігор. Дізнаємося, як сучасні відеокарти відкривають перед гравцями шлях у світ VR, де кожен піксель має значення, і кожен кадр — емоції.</p>\r\n<h3>4. За межами Геймінгу: Креативність з відеокартами:</h3>\r\n<p>Нові відеокарти — не лише для геймерів. Вони стають інструментом для візуалізації та творчості. Висліджуємо, як вони використовуються в галузі відеомонтажу, графічного дизайну та редагування фото.</p>\r\n<h3>5. Майбутнє в Технологіях Графічного Відео:</h3>\r\n<p>Давайте зазирнемо в майбутнє. Що чекає нас у світі відеокарт? Масовіше впровадження технологій, які зараз на стадії експериментів? Або можливо, щось повністю непередбачуване?</p>\r\n<p>Цей блог — про те, як відеокарти не просто прискорюють кадри у грі, але і трансформують сам процес геймінгу, дозволяючи нам відчути інновації та глибше зануритися у світ віртуальної реальності. Читайте, дізнавайтеся, та готуйтеся до нового етапу геймінгу, де відеокарти визначають правила гри.</p>', 'video-trans-game.jpeg');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `login` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `hash` varchar(32) NOT NULL DEFAULT '',
  `ip` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `hash`, `ip`) VALUES
(1, 'admin', '6f37db8b89aaaccbf74767e563faee5f', '8e9bed04f971a9553380c830fcd68c8d', 2130706433),
(3, 'admin3', '1f32aa4c9a1d2ea010adcf2348166a04', '50e8659d3e0f6db4897fc86faf06d6eb', 2130706433);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `gpuarticle`
--
ALTER TABLE `gpuarticle`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `gpucategory`
--
ALTER TABLE `gpucategory`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `gpuarticle`
--
ALTER TABLE `gpuarticle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `gpucategory`
--
ALTER TABLE `gpucategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
