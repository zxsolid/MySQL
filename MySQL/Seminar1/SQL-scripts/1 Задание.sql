/*создаем базу данных*/
CREATE DATABASE  `education-db`

/*создаем таблицу для хранения названий фирм изготовителей*/
CREATE TABLE `manufactore` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*заполняем таблицу*/
INSERT INTO `manufactore` VALUES (1,'Samsung'),(2,'Honor'),(3,'POCO'),(4,'Xiaomi'),(5,'Huawei'),(6,'Apple');

/*создаем таблицу моделей телефонов*/
CREATE TABLE `phones` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `model` varchar(128) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `specifications` text,
  `price` decimal(11,2) DEFAULT NULL,
  `manufacturer-id` int unsigned NOT NULL,
  `year-manufacture` int DEFAULT NULL,
  `count` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*заполняем таблицу моделей телефонов*/
INSERT INTO `phones`
VALUES (1,'iPhone 12','дер - 6x(2.99 ГГц), 4 Гб, 1 SIM, OLED, 2532x1170, камера 12+12 Мп, NFC, 5G, GPS, 2815 мА*ч',66199.00,6,2020,1),
(3,'iPhone 13','128 ГБ черный [ядер - 6x(1.8 ГГц, 3.2 ГГц), 2 SIM, OLED, 2532x1170, камера 12+12 Мп, NFC, 5G, GPS]',70799.00,6,2021,5),
(4,'iPhone 14 Pro Max','256 ГБ фиолетовый [ядер - 6, 2 SIM, OLED, 2796x1290, камера 48+12+12 Мп, NFC, 5G, GPS]',124999.00,6,2022,1),
(5,'Honor 50','ядер - 8x(1.9 ГГц, 2.3 ГГц, 2.4 ГГц), 6 Гб, 2 SIM, OLED, 2340x1080, камера 108+8+2+2 Мп, NFC, 5G, GPS, 4300 мА*ч',34999.00,2,2021,5),
(6,'Honor X5','32 ГБ оранжевый [ядер - 8x(2 ГГц), 2 Гб, 2 SIM, IPS, 1600x720, камера 8 Мп, 4G, GPS, 5000 мА*ч]',8899.00,2,2022,6),
(7,'HONOR X7a',' 128 ГБ серебристый [ядер - 8x(1.8 ГГц, 2.3 ГГц), 4 Гб, 2 SIM, IPS, 1600x720, камера 50+5+2+2 Мп, NFC, 4G, GPS, 5330 ',12999.00,2,2023,1),
(8,'Galaxy A14',' 64 ГБ зеленый [ядер - 8x(2 ГГц), 4 Гб, 2 SIM, PLS, 2408x1080, камера 50+5+2 Мп, NFC, 4G, GPS, 5000 мА*ч]',15999.00,1,2023,1),
(9,'Galaxy A13','ядер - 8x(2 ГГц), 3 Гб, 2 SIM, PLS, 2408x1080, камера 50+5+2+2 Мп, NFC, 4G, GPS, 5000 мА*ч',10999.00,1,2022,4),
(10,'Galaxy A03','32 ГБ красный [ядер - 8x(1.6 ГГц), 3 Гб, 2 SIM, PLS, 1600x720, камера 48+2 Мп, 4G, GPS, 5000 мА*ч]',8499.00,1,2021,2),
(11,'Galaxy S20 FE','256 ГБ синий [ядер - 8x(1.8 ГГц, 2.42 ГГц, 2.84 ГГц), 8 Гб, 2 SIM, Super AMOLED, 2400x1080, камера 12+12+8 Мп, NFC, 4G, GPS, 4500 мА*ч]',39999.00,1,2020,1),
(12,'Redmi 9A','32 ГБ зеленый [ядер - 8x(2 ГГц), 2 Гб, 2 SIM, IPS, 1600x720, камера 13 Мп, 4G, GPS, 5000 мА*ч]',5499.00,4,2022,9),
(13,'Redmi Note10T','128 ГБ серый [ядер - 8x(2.2 ГГц), 4 Гб, 2 SIM, IPS, 2400x1080, камера 48+2+2 Мп, NFC, 5G, GPS, 5000 мА*ч]',13999.00,4,2021,1),
(14,'Nova Y61 ','64 ГБ зеленый [ядер - 8x(1.7 ГГц, 2 ГГц), 4 Гб, 2 SIM, IPS, 1600x720, камера 50+2+2 Мп, NFC, 4G, GPS, 5000 мА*ч]',11999.00,5,2022,8),
(15,'Mate X3','512 ГБ зеленый [ядер - 8x(3.2 ГГц), 12 Гб, 2 SIM, OLED, 2496х2224, камера 50+13+12 Мп, NFC, 4G, GPS, 4800 мА*ч]',149999.00,5,2023,2),
(16,'X5','5G 128 ГБ голубой [ядер - 8x(1.7 ГГц, 2.2 ГГц), 6 Гб, 2 SIM, AMOLED, 2400x1080, камера 48+8+2 Мп, NFC, 5G, GPS, 5000 мА*ч]',20999.00,3,2023,9),
(17,'C40','32 ГБ бирюзовый [ядер - 8x(2 ГГц), 3 Гб, 2 SIM, IPS, 1650x720, камера 13+2 Мп, 4G, GPS, FM, 6000 мА*ч]',6499.00,3,2022,6),
(18,'M3 Pro','64 ГБ черный [ядер - 8x(2.2 ГГц, 2 ГГц), 4 Гб, 2 SIM, IPS, 2400x1080, камера 48+2+2 Мп, NFC, 4G, GPS, 5000 мА*ч]',14499.00,3,2021,2);
