#Story-1
CREATE DATABASE tayj CHARACTER SET 'utf8'; #Créer la base de données

CREATE TABLE personal_user ( #Créer une table
    user_id INT UNSIGNED NOT NULL AUTO_INCREMENT, #id du tableau (s'auto incrémente)
    user_mail VARCHAR(50) UNIQUE NOT NULL,
    user_password VARCHAR(20) NOT NULL,
    user_nickname VARCHAR(12) UNIQUE NOT NULL,
    user_adress TEXT,
    user_ZIP_code INT,
    user_city TEXT,
    user_country TEXT,
    user_portable_phone_number INT,
    user_phone_number INT,
    user_sign_in_date DATE,
    PRIMARY KEY (user_id)
);

CREATE TABLE service (
  service_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  service_id_user INT UNSIGNED NOT NULL,
  service_name VARCHAR(20) NOT NULL,
  service_description TEXT NOT NULL,
  service_adress TEXT NOT NULL,
  service_ZIP INT NOT NULL,
  service_city TEXT NOT NULL,
  service_country TEXT NOT NULL,
  service_time DATETIME NOT NULL,
  service_add_information TEXT,
  PRIMARY KEY (service_id)
);

CREATE TABLE user_service (
  userv_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  userv_id_service INT UNSIGNED NOT NULL,
  userv_id_user INT UNSIGNED NOT NULL,
  userv_datetime DATETIME NOT NULL,
  PRIMARY KEY (userv_id)
);

CREATE TABLE message (
  mes_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  mes_id_send INT UNSIGNED NOT NULL,
  mes_id_receiv INT UNSIGNED NOT NULL,
  mes_content TEXT NOT NULL,
  mes_datetime DATETIME NOT NULL,
  PRIMARY KEY (mes_id)
);

#Story-3
INSERT INTO personal_user (user_mail, user_password, user_nickname, user_sign_in_date)
VALUES ('test1@tajy.com', 'azerty', 'MOI', '2019-11-12'),
       ('test2@tajy.com', 'password', 'TOI', '2019-11-07'),
       ('test3@tajy.com', 'qwerty', 'LUI', '2019-11-10'),
       ('test4@tajy.com', '1234567890', 'ELLE', '2019-11-12'),
       ('test5@tajy.com', 'password123', 'NOUS', '2019-11-15'),
       ('test6@tajy.com', 'motdepasse', 'VOUS', '2019-11-14'),
       ('test7@tajy.com', 'passwordazerty', 'BEUH', '2019-11-13'),
       ('test8@tajy.com', 'passwordqwe', 'MEUH', '2019-11-11'),
       ('test9@tajy.com', 'password234', 'NYAA', '2019-11-13'),
       ('test10@tajy.com', 'ceciestunmotdepasse', 'BOUH', '2019-11-10')

#Story-4
UPDATE personal_user
SET user_adress = '1 rue tajy', user_ZIP_code = '00001', user_city = 'Tajy City', user_country = 'Tajy-Land', user_portable_phone_number = '0600000000', user_phone_number = '0100000000'

#story-5
INSERT INTO service
VALUES (1, '4', 'resell', 'service revendeur', '1 rue sav tajy', '00012', 'Tajy City', 'Tajy-Land', '2019-11-20 10:00:00', 'Revendeur ? Bienvenue'),
      (2, '2', 'tech', 'dépannage technique', '1 rue sav tajy', '00012', 'Tajy City', 'Tajy-Land', '2019-11-17 10:23:45', 'contacter le SAV'),
      (3, '3', 'com', 'service communication', '1 rue sav tajy', '00012', 'Tajy City', 'Tajy-Land', '2019-11-15 05:45:33', 'PUB'),
      (4, '4', 'sell', 'service vente', '1 rue sav tajy', '00012', 'Tajy City', 'Tajy-Land', '2019-11-13 18:42:25', 'information vente produit'),
      (5, '4', 'buy', 'service achat', '1 rue sav tajy', '00012', 'Tajy City', 'Tajy-Land', '2019-11-16 04:13:45', 'information produit'),
      (6, '2', 'web', 'aide website', '1 rue sav tajy', '00012', 'Tajy City', 'Tajy-Land', '2019-11-19 00:20:00', 'info website et debug'),
      (7, '3', 'ship', 'service livraison', '1 rue sav tajy', '00012', 'Tajy City', 'Tajy-Land', '2019-11-21 00:00:00', 'patience'),
      (8, '3', 'stock', 'info stockage', '1 rue sav tajy', '00012', 'Tajy City', 'Tajy-Land', '2019-11-20 23:06:00', 'visualisez les stocks'),
      (9, '6', 'sav1', 'sav le plus inutile', '1 rue sav tajy', '00012', 'Tajy City', 'Tajy-Land', '2019-11-15 14:56:23', 'Conseil : débrouillez-vous'),
      (10, '7', 'sav2', 'sav basique', '1 rue sav tajy', '00012', 'Tajy City', 'Tajy-Land', '2019-12-21 17:59:59', 'Conseil : contactez nous')

#story-6
INSERT INTO user_service
VALUES (1, '2', '5', '2019-11-14 00:00:00'),
      (2, '3', '6', '2019-11-17 00:21:34'),
      (3, '7', '9', '2019-11-24 00:13:42'),
      (4, '7', '6', '2019-11-21 10:43:00'),
      (5, '1', '6', '2019-11-20 03:56:33'),
      (6, '6', '1', '2019-11-20 10:05:26'),
      (7, '3', '7', '2019-11-22 17:52:56'),
      (8, '3', '10', '2019-11-24 19:52:00'),
      (9, '4', '10', '2019-11-23 09:42:42'),
      (10, '1', '5', '2019-11-18 20:53:53'),
      (11, '5', '3', '2019-11-21 23:23:23'),
      (12, '9', '8', '2019-11-21 13:34:56')

#story-7
INSERT INTO message
VALUES (1, '3', '6', 'Bienvenue','2019-11-18 06:43:23'),
      (2, '6', '3', 'Bonjours','2019-11-18 16:49:56'),
      (3, '9', '8', 'Meuuh !','2019-11-14 23:57:12'),
      (4, '8', '9', 'Nyaa ?','2019-11-14 23:58:04'),
      (5, '9', '8', 'Meuh ?','2019-11-14 23:59:46'),
      (6, '8', '9', 'Nyaa Nyaa ?','2019-11-15 00:03:33'),
      (7, '2', '5', 'Bienvenue, besoins d\'aide','2019-11-15 06:03:42'),
      (8, '5', '2', 'Non merci','2019-11-16 19:23:56'),
      (9, '3', '6', 'Bonjours','2019-11-19 14:45:52'),
      (10, '3', '6', 'Bonjours','2019-11-19 14:45:58'),
      (11, '3', '6', 'Bonjours','2019-11-19 14:46:02'),
      (12, '3', '6', 'Bonjours','2019-11-19 14:46:13'),
      (13, '6', '3', '"Utilisateur bloqué"','2019-11-19 14:46:42'),
      (14, '3', '6', 'Bonjours (message non envoyé)','2019-11-19 15:45:03'),
      (15, '3', '6', 'Bonjours (message non envoyé)','2019-11-19 15:45:13'),
      (16, '3', '6', 'Bonjours (message non envoyé)','2019-11-19 15:45:33'),
      (17, '3', '6', 'Bonjours (message non envoyé)','2019-11-19 15:45:43'),
      (18, '3', '6', 'Bonjours (message non envoyé)','2019-11-19 15:45:55'),
      (19, '3', '6', 'Bonjours (message non envoyé)','2019-11-19 15:46:09'),
      (20, '7', '9', 'Bienvenue dans mon service','2019-11-23 14:20:43'),
      (21, '9', '7', 'Merci','2019-11-23 15:13:23'),
      (22, '3', '6', 'Bonjours (message non envoyé)','2019-11-25 15:46:09'),
      (23, '3', '6', 'Bonjours (message non envoyé)','2019-11-25 15:46:20'),
      (24, '3', '7', 'Je ne parvient pas à envoyer mes messages','2019-11-26 10:23:45'),
      (25, '7', '3', 'Vous avez été bloquer par le service pour spam','2019-11-27 16:45:00')

#story-8 non fini
SELECT mes_id_send, mes_content
FROM message
WHERE mes_id IN (
 SELECT MAX(mes_id) FROM message GROUP BY mes_id_send
);

#story-9
SELECT mes_id_send, mes_id_receiv, mes_content
FROM message
WHERE (mes_id_send = 3 AND mes_id_receiv = 7) OR (mes_id_send = 7 AND mes_id_receiv = 3)
ORDER BY mes_datetime DESC;

#story-10
SELECT S.service_name, S.service_ZIP, S.service_city, S.service_country, S.service_time
FROM service AS S
LEFT JOIN user_service AS U
  ON U.userv_id_service = S.service_id
WHERE S.service_time <= '2019-11-21'
AND S.service_id NOT IN (SELECT userv_id_service FROM user_service)
ORDER BY S.service_time DESC, S.service_city ASC;

#story-11 non fini
SELECT S.service_add_information, P.user_nickname, P.user_portable_phone_number, P.user_phone_number
FROM service AS S
RIGHT JOIN personal_user AS P
LEFT JOIN user_service AS U
WHERE S.service_id = 9 AND S.service_id_user = P.user_id;

#story-12
ALTER TABLE personal_user
ADD FOREIGN KEY (user_id) REFERENCES service(service_id) ON DELETE CASCADE;

DELETE S FROM service AS S
WHERE S.service_id = 3;

#story-13
ALTER TABLE personal_user
ADD FOREIGN KEY (user_id) REFERENCES user_service(userv_id_user) ON DELETE CASCADE;

DELETE U FROM user_service as U
WHERE U.userv_id_service = 3 AND U.userv_id_user = 7;

#story-14
ALTER TABLE personal_user
ADD FOREIGN KEY (user_id) REFERENCES service(service_id_user) ON DELETE CASCADE;

ALTER TABLE service
ADD FOREIGN KEY (service_id) REFERENCES user_service(userv_id_service) ON DELETE CASCADE;

ALTER TABLE personal_user
ADD FOREIGN KEY (personal_user) REFERENCES user_service(userv_id_user) ON DELETE CASCADE;

ALTER TABLE personal_user
ADD FOREIGN KEY (user_id) REFERENCES message(mes_id_send) ON DELETE CASCADE;

DELETE P FROM personal_user AS P
WHERE P.user_id = 6;

#story-15
DELETE M FROM message AS M
WHERE M.mes_id = 6;

#story-16
