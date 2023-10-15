-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Окт 15 2023 г., 23:00
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
(1, 'nvidia', 'Nvidia', 'Відеоадаптери з GPU NVIDIA'),
(2, 'amd', 'AMD', 'Відеоадаптери з GPU AMD'),
(3, 'intel', 'Intel', 'Відеоадаптери з GPU INTEL');

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
(6, 1, 'Inno 3D', 'inno3d-ichill-rtx3070-x3-lhr', 'Inno3D iChill RTX 3070 X3 LHR', '<ul>\r\n<li>Ray Tracing Cores: <b>2nd Gen</b></li>\r\n<li>Tensor Cores: 3rd Gen</li>\r\n<li>NVENC: 7th Gen</li>\r\n<li>NVDEC: 5th Gen</li>\r\n<li>PureVideo HD: VP11</li>\r\n<li>VDPAU: Feature Set K</li>\r\n</ul>', 1500, 1785, 1750, '300 mm/11.8 inches', 'GA 104', 5888, 184, 96, 8, 'gddr6', 256, 'ichill-3070-fr.jpg', 'C30703-08D6X-1710VA38H');

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
(3, 'intel', 'intel-arc-a310', 'Intel Arc A310', 'DG2-128', 768, 32, 16, 4, 'GDDR6', 64, '<p>Arc A310 — це відеокарта від Intel, випущена 12 жовтня 2022 року. Створена за 6-нм техпроцесом і базується на графічному процесорі DG2-128 у варіанті ACM-G11, карта підтримує DirectX 12 Ultimate. Це гарантує, що всі сучасні ігри працюватимуть на Arc A310. Крім того, функція DirectX 12 Ultimate гарантує підтримку апаратної трасування променів, затінення зі змінною швидкістю тощо в майбутніх відеоіграх. Графічний процесор DG2-128 — це мікросхема середнього розміру з площею кристала 157 мм² і 7200 мільйонами транзисторів. На відміну від повністю розблокованого Arc A380, який використовує той самий графічний процесор, але має ввімкнені всі 1024 шейдери, Intel вимкнула деякі блоки затінення на Arc A310, щоб досягти цільової кількості шейдерів продукту. Він містить 768 блоків затінення, 32 блоки відображення текстури та 16 ROP. Також включено 96 тензорних ядер, які допомагають підвищити швидкість програм машинного навчання. Карта також має 6 ядер прискорення трасування променів. Intel об\'єднала 4 ГБ пам\'яті GDDR6 з Arc A310, які підключені за допомогою 64-розрядного інтерфейсу пам\'яті. GPU працює на частоті 1750 МГц, яка може бути розширена до 1750 МГц, пам\'ять працює на частоті 1937 МГц (15,5 Гбіт/с ефективно).</p>\n<p>Будучи картою з одним слотом, Intel Arc A310 не потребує додаткового роз’єму живлення, її споживана потужність становить максимум 30 Вт. Виходи дисплея включають: 4x mini-DisplayPort 2.0. Arc A310 підключається до решти системи за допомогою інтерфейсу PCI-Express 4.0 x8.</p>', 'intel-arc-a310.jpg');

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
(1, 1, 'NVIDIA GeForce RTX 3060 Ti', 'rtx-3060ti', 'The GeForce RTX 3060 Ti is a high-end graphics card by NVIDIA, launched on December 1st, 2020. Built on the 8 nm process, and based on the GA104 graphics processor, in its GA104-200-A1 variant, the card supports DirectX 12 Ultimate.', '<p>Це гарантує, що всі сучасні ігри працюватимуть на GeForce RTX 3060 Ti. Крім того, функція DirectX 12 Ultimate гарантує підтримку апаратної трасування променів, затінення зі змінною швидкістю тощо в майбутніх відеоіграх. Графічний процесор GA104 — це великий чіп із площею кристала 392 мм² і 17400 мільйонами транзисторів. На відміну від повністю розблокованої GeForce RTX 3070 Ti, яка використовує той самий графічний процесор, але має ввімкнені всі 6144 шейдери, NVIDIA вимкнула деякі блоки затінення на GeForce RTX 3060 Ti, щоб досягти цільової кількості шейдерів продукту. Він містить 4864 блоки затінення, 152 блоки відображення текстур і 80 ROP. Також включено 152 тензорних ядра, які допомагають підвищити швидкість програм машинного навчання. Карта також має 38 ядер прискорення трасування променів. NVIDIA об\'єднала 8 ГБ пам\'яті GDDR6 з GeForce RTX 3060 Ti, які підключені за допомогою 256-бітного інтерфейсу пам\'яті. Графічний процесор працює на частоті 1410 МГц, яка може бути розширена до 1665 МГц, пам\'ять працює на частоті 1750 МГц (14 Гбіт/с ефективно).</p>\n<p>Оскільки NVIDIA GeForce RTX 3060 Ti має подвійний слот, вона отримує живлення від 1 12-контактного роз’єму живлення з максимальною потужністю 200 Вт. Виходи дисплея включають: 1x HDMI 2.1, 3x DisplayPort 1.4a. GeForce RTX 3060 Ti підключається до решти системи за допомогою інтерфейсу PCI-Express 4.0 x16. Карта має 242 мм у довжину, 112 мм у ширину та оснащена системою охолодження з двома слотами. Його ціна на момент запуску становила 399 доларів США.</p>', '3060ti-front.jpg'),
(2, 2, 'AMD Radeon RX 7600', 'rx7600', 'The Radeon RX 7600 is a performance-segment graphics card by AMD, launched on May 24th, 2023.', '<p>Створена за 6-нм техпроцесом і базується на графічному процесорі Navi 33 у варіанті Navi 33 XL карта підтримує\r\n  DirectX 12 Ultimate. Це гарантує, що всі сучасні ігри працюватимуть на Radeon RX 7600. Крім того, функція DirectX 12\r\n  Ultimate гарантує підтримку апаратної трасування променів, затінення зі змінною швидкістю тощо в майбутніх відеоіграх.\r\n  Графічний процесор Navi 33 — це мікросхема середнього розміру з площею кристала 204 мм² і 13300 мільйонами\r\n  транзисторів. Він містить 2048 блоків затінення, 128 блоків відображення текстур і 64 ROP. Карта також має 32 ядра\r\n  прискорення трасування променів. AMD об\'єднала 8 ГБ пам\'яті GDDR6 з Radeon RX 7600, які підключені за допомогою\r\n  128-бітного інтерфейсу пам\'яті. Графічний процесор працює на частоті 1720 МГц, яка може бути розширена до 2655 МГц,\r\n  пам\'ять працює на частоті 2250 МГц (18 Гбіт/с ефективно).</p>\r\n<p>Оскільки AMD Radeon RX 7600 має подвійний слот, вона споживає живлення від 1x 8-контактного роз’єму живлення з\r\n  максимальною потужністю 165 Вт. Виходи дисплея включають: 1x HDMI 2.1a, 3x DisplayPort 2.1. Radeon RX 7600\r\n  підключається до решти системи за допомогою інтерфейсу PCI-Express 4.0 x8. Карта має 204 мм у довжину, 115 мм у ширину\r\n  та оснащена системою охолодження з двома слотами. Його ціна на момент запуску становила 269 доларів США.</p>', 'rx7600-front.jpg'),
(3, 3, 'Intel Arc A310', 'arc-a310', 'The Arc A310 is a graphics card by Intel, launched on October 12th, 2022.', '<p>Створена за 6-нм техпроцесом і базується на графічному процесорі DG2-128 у варіанті ACM-G11, карта підтримує DirectX\r\n  12 Ultimate. Це гарантує, що всі сучасні ігри працюватимуть на Arc A310. Крім того, функція DirectX 12 Ultimate\r\n  гарантує підтримку апаратної трасування променів, затінення зі змінною швидкістю тощо в майбутніх відеоіграх.\r\n  Графічний процесор DG2-128 — це мікросхема середнього розміру з площею кристала 157 мм² і 7200 мільйонами\r\n  транзисторів. На відміну від повністю розблокованого Arc A380, який використовує той самий графічний процесор, але має\r\n  ввімкнені всі 1024 шейдери, Intel вимкнула деякі блоки затінення на Arc A310, щоб досягти цільової кількості шейдерів\r\n  продукту. Він містить 768 блоків затінення, 32 блоки відображення текстури та 16 ROP. Також включено 96 тензорних\r\n  ядер, які допомагають підвищити швидкість програм машинного навчання. Карта також має 6 ядер прискорення трасування\r\n  променів. Intel об\'єднала 4 ГБ пам\'яті GDDR6 з Arc A310, які підключені за допомогою 64-розрядного інтерфейсу пам\'яті.\r\n  GPU працює на частоті 1750 МГц, яка може бути розширена до 1750 МГц, пам\'ять працює на частоті 1937 МГц (15,5 Гбіт/с\r\n  ефективно). Будучи картою з одним слотом, Intel Arc A310 не потребує додаткового роз’єму живлення, її споживана\r\n  потужність становить максимум 30 Вт. Виходи дисплея включають: 4x mini-DisplayPort 2.0. Arc A310 підключається до\r\n  решти системи за допомогою інтерфейсу PCI-Express 4.0 x8.</p>', 'arca310-front.jpg'),
(4, 1, 'NVIDIA GeForce RTX 4060', 'rtx-4060', 'The GeForce RTX 4060 is a performance-segment graphics card by NVIDIA, launched on May 18th, 2023.', '<p>Створена за 5-нм техпроцесом і базується на графічному процесорі AD107 у варіанті AD107-400-A1, карта підтримує\r\n  DirectX 12 Ultimate. Це гарантує, що всі сучасні ігри працюватимуть на GeForce RTX 4060. Крім того, функція DirectX 12\r\n  Ultimate гарантує підтримку апаратної трасування променів, затінення зі змінною швидкістю тощо в майбутніх відеоіграх.\r\n  Графічний процесор AD107 — це чіп середнього розміру з площею кристала 159 мм² і 18 900 мільйонами транзисторів. Він\r\n  містить 3072 блоки затінення, 96 блоків відображення текстур і 48 ROP. Також включено 96 тензорних ядер, які\r\n  допомагають підвищити швидкість програм машинного навчання. Карта також має 24 ядра прискорення трасування променів.\r\n  NVIDIA об\'єднала 8 ГБ пам\'яті GDDR6 з GeForce RTX 4060, які підключаються за допомогою 128-бітного інтерфейсу пам\'яті.\r\n  Графічний процесор працює на частоті 1830 МГц, яка може бути розширена до 2460 МГц, пам\'ять працює на частоті 2125 МГц\r\n  (17 Гбіт/с ефективно).</p>\r\n<p>Being a dual-slot card, the NVIDIA GeForce RTX 4060 draws power from 1x 12-pin power connector, with power draw rated at 115 W maximum. Display outputs include: 1x HDMI 2.1, 3x DisplayPort 1.4a. GeForce RTX 4060 is connected to the rest of the system using a PCI-Express 4.0 x8 interface. The card\'s dimensions are 240 mm x 111 mm x 40 mm, and it features a dual-slot cooling solution. Its price at launch was 299 US Dollars.</p>', '4060-front.jpg'),
(5, 2, 'AMD Radeon RX 6700 XT', 'rx7600xt', 'The <b>Radeon RX 6700 XT</b> is a high-end graphics card by AMD, launched on March 3rd, 2021.', '<p>Створена за 7-нм техпроцесом і базується на графічному процесорі Navi 22 у варіанті Navi 22 XT карта підтримує\r\n  DirectX 12 Ultimate. Це гарантує, що всі сучасні ігри працюватимуть на Radeon RX 6700 XT. Крім того, функція DirectX\r\n  12 Ultimate гарантує підтримку апаратної трасування променів, затінення зі змінною швидкістю тощо в майбутніх\r\n  відеоіграх. Графічний процесор Navi 22 — це велика мікросхема з площею кристала 335 мм² і 17 200 мільйонів\r\n  транзисторів. Він містить 2560 блоків затінення, 160 блоків відображення текстур і 64 ROP. Карта також має 40 ядер\r\n  прискорення трасування променів. AMD об\'єднала 12 ГБ пам\'яті GDDR6 з Radeon RX 6700 XT, які підключені за допомогою\r\n  192-бітного інтерфейсу пам\'яті. Графічний процесор працює на частоті 2321 МГц, яка може бути розширена до 2581 МГц,\r\n  пам\'ять працює на частоті 2000 МГц (16 Гбіт/с ефективно).</p>\r\n<p>\r\n  Оскільки AMD Radeon RX 6700 XT має подвійний слот, вона споживає живлення від 1x 6-pin 1x 8-pin роз\'єму живлення з\r\n  максимальною потужністю 230 Вт. Виходи дисплея включають: 1x HDMI 2.1, 3x DisplayPort 1.4a. Radeon RX 6700 XT\r\n  підключається до решти системи за допомогою інтерфейсу PCI-Express 4.0 x16. Розміри карти становлять 267 мм x 110 мм x\r\n  40 мм, і вона оснащена системою охолодження з двома слотами. Його ціна на момент запуску становила 479 доларів США.\r\n</p>', '7600xt-front.jpg'),
(6, 3, 'Intel Arc Pro A60', 'arc-proa60', 'The Arc Pro A60 is a professional graphics card by Intel, launched on June 6th, 2023.', 'y', 'proa60-front.jpg');

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
(1, 'admin', '6f37db8b89aaaccbf74767e563faee5f', '3f7be135765c006b21e8da8b788b4d84', 2130706433),
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `gpuarticle`
--
ALTER TABLE `gpuarticle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблицы `gpucategory`
--
ALTER TABLE `gpucategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
