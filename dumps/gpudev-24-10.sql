-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Окт 23 2023 г., 22:37
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
(1, 'blog', 'Блог', 'Блогова частина сайту'),
(2, 'news', 'Новини', 'Новини з світу відеоадаптерів'),
(3, 'reviews', 'Огляди Reviews', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tincidunt, erat in malesuada aliquam, est erat faucibus purus, eget viverra nulla sem vitae neque. Quisque id sodales libero. In nec enim nisi, in ultricies quam. Sed lacinia feugiat velit, cursus molestie lectus.'),
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
(28, 1, 'asus', 'asus-rtx-3070-noctua-oc-lhr', 'ASUS RTX 3070 Noctua OC LHR', 'Ray Tracing Cores: 2nd Gen\r\nTensor Cores: 3rd Gen\r\nNVENC: 7th Gen\r\nNVDEC: 5th Gen\r\nPureVideo HD: VP11\r\nVDPAU: Feature Set new', 1500, 1815, 1750, '310 mm/12.2 inches, Quad-slot, 2x HDMI 3x DisplayPort', 'ga104', 588, 184, 96, 8, 'gddr6', 256, 'asus-3070-noctua.jpg', 'RTX3070-O8G-NOCTUA');

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
(24, 2, 'Новини від Nvidia', 'news-for-nvidia', 'Дізнайтеся, як новий DLSS 3.5 покращує трасування променів за допомогою ШІ', '<p>Нова технологія реконструкції променів підвищує якість зображення на всіх відеокартах GeForce RTX за рахунок використання алгоритмів ШІ для створення додаткових пікселів.</p>', 'geforce-ada-dlss.jpg'),
(25, 1, 'Robot Wars – Now Closed', 'robot-wars-now-closed', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tincidunt, erat in malesuada aliquam, est erat faucibus purus, eget viverra nulla sem vitae neque. Quisque id sodales libero. In nec enim nisi, in ultricies quam. Sed lacinia feugiat velit, cursus molestie lectus mollis et.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tincidunt, erat in malesuada aliquam, est erat faucibus purus, eget viverra nulla sem vitae neque. Quisque id sodales libero. In nec enim nisi, in ultricies quam. Sed lacinia feugiat velit, cursus molestie lectus mollis et.</p>', 'robots-war.jpg'),
(26, 3, 'Post with Audio', 'ppost-with-audio', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tincidunt, erat in malesuada aliquam, est erat faucibus purus, eget viverra nulla sem vitae neque. Quisque id sodales libero. In nec enim nisi, in ultricies quam. Sed lacinia feugiat velit, cursus molestie lectus.', 'Mauris tempus erat laoreet turpis lobortis, eu tincidunt erat fermentum. Aliquam non tincidunt urna. Integer tincidunt nec nisl vitae ullamcorper. Proin sed ultrices erat. Praesent varius ultrices massa at faucibus. Aenean dignissim, orci sed faucibus pharetra, dui mi dignissim tortor, sit amet condimentum mi ligula sit amet augue. Pellentesque vitae eros eget enim mollis placerat.', 'reviews-1.jpg');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `gpuarticle`
--
ALTER TABLE `gpuarticle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `gpucategory`
--
ALTER TABLE `gpucategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
