DROP SCHEMA IF EXISTS SpotifyClone;
CREATE SCHEMA SpotifyClone;
USE SpotifyClone;

CREATE TABLE SUBSCRIPTION (
SERVICE_ID INT PRIMARY KEY AUTO_INCREMENT,
SERVICE VARCHAR(50) NOT NULL,
SERVICE_PRICE DECIMAL(5,2) NOT NULL
)ENGINE = InnoDB;

CREATE TABLE SINGERS (
SINGER_ID INT PRIMARY KEY AUTO_INCREMENT,
SINGER VARCHAR(100) NOT NULL
)ENGINE = InnoDB;

CREATE TABLE ALBUMS (
ALBUM_ID INT PRIMARY KEY AUTO_INCREMENT,
SINGER_ID INT NOT NULL,
ALBUM VARCHAR(100) NOT NULL,
FOREIGN KEY (SINGER_ID) REFERENCES SINGERS(SINGER_ID)
)ENGINE = InnoDB;

CREATE TABLE USERS (
USER_ID INT PRIMARY KEY AUTO_INCREMENT,
SERVICE_ID INT NOT NULL,
LOGIN VARCHAR(100) NOT NULL,
AGE INT NOT NULL,
FOREIGN KEY (SERVICE_ID) REFERENCES SUBSCRIPTION(SERVICE_ID)
)ENGINE = InnoDB;

CREATE TABLE SONGS (
SONG_ID INT PRIMARY KEY AUTO_INCREMENT,
ALBUM_ID INT,
SONG VARCHAR(100) NOT NULL,
FOREIGN KEY (ALBUM_ID) REFERENCES ALBUMS(ALBUM_ID)
)ENGINE = InnoDB;

CREATE TABLE SONG_HISTORY (
USER_ID INT NOT NULL,
SONG_ID INT NOT NULL,
CONSTRAINT PRIMARY KEY (USER_ID, SONG_ID),
FOREIGN KEY (USER_ID) REFERENCES USERS(USER_ID),
FOREIGN KEY (SONG_ID) REFERENCES SONGS(SONG_ID)
)ENGINE = InnoDB;

CREATE TABLE FOLLOW (
USER_ID INT NOT NULL,
SINGER_ID INT NOT NULL,
CONSTRAINT PRIMARY KEY (USER_ID, SINGER_ID),
FOREIGN KEY (USER_ID) REFERENCES USERS(USER_ID),
FOREIGN KEY (SINGER_ID) REFERENCES SINGERS(SINGER_ID)
)ENGINE = InnoDB;

INSERT INTO SUBSCRIPTION (SERVICE, SERVICE_PRICE)
VALUES
('gratuito', 0.00),
('familiar', 7.99),
('universitário', 5.99);

INSERT INTO SINGERS (SINGER)
VALUES
('Walter Phoenix'),
('Peter Strong'),
('Lance Day'),
('Freedie Shannon');

INSERT INTO ALBUMS (ALBUM, SINGER_ID)
VALUES
('Envious', 1),
('Exuberant', 1),
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture', 4);

INSERT INTO USERS (LOGIN, AGE, SERVICE_ID)
VALUES
('Thati', 23, 1),
('Cintia', 35, 2),
('Bill', 20, 3),
('Roger', 45, 1);

INSERT INTO SONGS (SONG, ALBUM_ID)
VALUES
('Soul For Us', 1),
('Magic Circus', 3),
('Diamond Power', 4),
('Thang Of Thunder', 5),
('Home Forever', 4),
('Words Of Her Life', 4),
('Reflections Of Magic', 1),
('Honey, Let\'s Be Silly', 4),
('Honey, So Do I', 3),
('Troubles Of My Inner Fire', 2),
('Dance With Her Own', 1),
('Without My Streets', 5),
('Celebration Of More', 4),
('Time Fireworks', 2),
('Sweetie, Let\'s Go Wild', 3),
('She knows', 3),
('Fantasy For Me', 4),
('Rock His Everything', 4);

INSERT INTO SONG_HISTORY (USER_ID, SONG_ID)
VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(3, 10),
(3, 4),
(3, 2),
(4, 11),
(4, 12),
(4, 13);

INSERT INTO FOLLOW (USER_ID, SINGER_ID)
VALUES
(1, 1),
(1, 4),
(1, 3),
(2, 1),
(2, 3),
(3, 1),
(3, 2),
(4, 4);