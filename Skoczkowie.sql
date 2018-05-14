-- --------------------------------------------------------

# MS1 Utwórz nową bazę danych o dowolnej nazwie.

#CREATE DATABASE Skoczkowie;

-- --------------------------------------------------------

# MS2 Usuń nowo utworzoną bazę danych.

# DROP DATABASE Skoczkowie;

-- --------------------------------------------------------

/* MS3 Utwórz jeszcze raz nową bazę danych o nazwie Skoczkowie.
Ustaw nowo utworzoną bazę danych jako domyślną. */

CREATE DATABASE Skoczkowie;
USE skoczkowie;

-- --------------------------------------------------------

/* MS4 Dodaj do bazy tabelę o nazwie skocznie zawierającą następujące dane:
id_skoczni integer,
miasto text,
kraj_s text,
nazwa text,
k integer,
sedz integer
*/

CREATE TABLE skocznie (
id_skoczni INT,
miasto TEXT,
kraj_s TEXT,
nazwa TEXT,
k INT,
sedz INT
);

-- --------------------------------------------------------

/* MS5 Dodaj do bazy tabelę o nazwie trenerzy zawierającą następujące dane:
kraj text,
imie_t text,
nazwisko_t text,
data_ur_t date
*/

-- --------------------------------------------------------

CREATE TABLE trenerzy (
kraj TEXT,
imie_t TEXT,
nazwisko_t TEXT,
data_ur_t TEXT
);

-- --------------------------------------------------------

/*MS6 Dodaj do bazy tabelę o nazwie zawodnicy zawierającą następujące dane:
id_skoczka integer,
imie text,
nazwisko text,
kraj varchar(3),
data_ur date,
wzrost integer,
waga integer
*/

CREATE TABLE zawodnicy (
id_skoczka INT,
imie TEXT,
nazwisko TEXT,
kraj VARCHAR(3),
data_ur DATE,
wzrost INT,
waga INT
);

-- --------------------------------------------------------
 
 /* MS7 Dodaj do bazy tabelę o nazwie zawody zawierającą następujące dane:
id_zawodow integer,
id_skoczni integer,
data date
 */
 
CREATE TABLE zawody (
id_zawodow INT,
id_skoczni INT,
data_z DATE
);

-- --------------------------------------------------------

/* MS8 Stwórz tabelę o nazwie kibice zawierającą kolumny: imie_k, nazwisko_k, data_ur_k, kraj, wzrost. */
 
CREATE TABLE kibice (
imie_k TEXT,
nazwisko_k TEXT,
data_ur_k date,
wzrost INT,
pesel VARCHAR(11) UNIQUE NOT NULL,
kraj TEXT
);

-- --------------------------------------------------------

/* MS9 Stwórz tabelę skladki z czterema kolumnami: id_skladki, kwota_skladki, data_skladki, id_kibica.
Z tabelki kibice usuń kolumnę kraj.
Do tabelki kibice dodaj kolumnę pesel .
Do tabelki kibice dodaj ponownie kolumnę kraj.
*/
  
CREATE TABLE skladki (
id_skladki INT,
kwota_skladki FLOAT(7,2) DEFAULT 10000.00,
data_skladki date,
id_kibica INT
);
  
SHOW TABLES;
DESCRIBE kibice;

ALTER TABLE kibice DROP kraj;
ALTER TABLE kibice ADD pesel VARCHAR(11) UNIQUE NOT NULL;
ALTER TABLE kibice ADD kraj TEXT;
  
-- --------------------------------------------------------  
  
# MS10 Uzupełnij tabelę skocznie danymi.

INSERT INTO skocznie VALUES (1, 'Zakopane', 'POL', 'Wielka Krokiew', 120, 134);
INSERT INTO skocznie VALUES (2, 'Garmisch-Partenkirchen', 'GER', 'Wielka Skocznia Olimpijska', 115, 125);
INSERT INTO skocznie VALUES (4, 'Oberstdorf', 'GER', 'Skocznia Heiniego Klopfera', 185, 211);
INSERT INTO skocznie VALUES (3, 'Oberstdorf', 'GER', 'Grosse Schattenberg', 120, 134);
INSERT INTO skocznie VALUES (5, 'Willingen', 'GER', 'Grosse Muhlenkopfschanze', 130, 145);
INSERT INTO skocznie VALUES (6, 'Kuopio', 'FIN', 'Puijo', 120, 131);
INSERT INTO skocznie VALUES (7, 'Lahti', 'FIN', 'Salpausselka', 116, 128);
INSERT INTO skocznie VALUES (8, 'Trondheim', 'NOR', 'Granasen', 120, 132);
SELECT * FROM skocznie;

-- --------------------------------------------------------  

# MS11 Uzupełnij tabelę trenerzy danymi.

INSERT INTO trenerzy VALUES ('AUT', 'Alexander', 'Pointner', NULL);
INSERT INTO trenerzy VALUES ('FIN', 'Tommi', 'Nikunen', NULL);
INSERT INTO trenerzy VALUES ('NOR', 'Mika', 'Kojonkoski', '1963-04-19');
INSERT INTO trenerzy VALUES ('POL', 'Heinz', 'Kuttin', '1971-01-05');
INSERT INTO trenerzy VALUES ('GER', 'Wolfang', 'Steiert', '1963-04-19');
INSERT INTO trenerzy VALUES ('JPN', 'Hirokazu', 'Yagi', NULL);
SELECT * FROM  trenerzy;

-- --------------------------------------------------------  

# MS12 Uzupełnij tabelę zawodnicy danymi.

INSERT INTO zawodnicy VALUES (2, 'Marcin', 'BACHLEDA', 'POL', '1982-09-04', 166, 56);
INSERT INTO zawodnicy VALUES (3, 'Robert', 'MATEJA', 'POL', '1974-10-05', 180, 63);
INSERT INTO zawodnicy VALUES (4, 'Alexander', 'HERR', 'GER', '1978-10-04', 173, 65);
INSERT INTO zawodnicy VALUES (5, 'Stephan', 'HOCKE', 'GER', '1983-10-20', 178, 59);
INSERT INTO zawodnicy VALUES (6, 'Martin', 'SCHMITT', 'GER', '1978-01-29', 181, 64);
INSERT INTO zawodnicy VALUES (7, 'Michael', 'UHRMANN', 'GER', '1978-09-09', 184, 64);
INSERT INTO zawodnicy VALUES (8, 'Georg', 'SPAETH', 'GER', '1981-02-24', 187, 68);
INSERT INTO zawodnicy VALUES (9, 'Matti', 'HAUTAMAEKI', 'FIN', '1981-07-14', 174, 57);
INSERT INTO zawodnicy VALUES (10, 'Tami', 'KIURU', 'FIN', '1976-09-13', 183, 59);
INSERT INTO zawodnicy VALUES (11, 'Janne', 'AHONEN', 'FIN', '1977-05-11', 184, 67);
INSERT INTO zawodnicy VALUES (12, 'Martin', 'HOELLWARTH', 'AUT', '1974-04-13', 182, 67);
INSERT INTO zawodnicy VALUES (13, 'Thomas', 'MORGENSTERN', 'AUT', '1986-10-30', 174, 57);
INSERT INTO zawodnicy VALUES (15, 'Tommy', 'INGEBRIGTSEN', 'NOR', '1977-08-08', 179, 56);
INSERT INTO zawodnicy VALUES (16, 'Bjoern-Einar', 'ROMOEREN', 'NOR', '1981-04-01', 182, 63);
INSERT INTO zawodnicy VALUES (17, 'Roar', 'LJOEKELSOEY', 'NOR', '1976-05-31', 175, 62);
INSERT INTO zawodnicy VALUES (14, 'Alan', 'ALBORN', 'USA', '1980-12-13', 177, 57);
INSERT INTO zawodnicy VALUES (1, 'Adam', 'MALYSZ', 'POL', '1977-12-03', 169, 60);
INSERT INTO zawodnicy VALUES (20, 'A', 'A', 'POL', '1977-12-03', 169, 60);
DELETE FROM zawodnicy WHERE id_skoczka = 20;
SELECT * FROM zawodnicy;

-- --------------------------------------------------------  

# MS13 Uzupełnij tabelę zawody danymi.

INSERT INTO zawody VALUES (1, 1, '2017-01-23');
INSERT INTO zawody VALUES (2, 7, '2016-11-15');
INSERT INTO zawody VALUES (3, 3, '2016-12-26');
SELECT * FROM zawody;

-- --------------------------------------------------------  

/* MS14 Do tabeli kibice wpisz trzech kibiców:
Jan Kowalski z Polski,
John Smith, wzrost 172 cm
Anna Zawadzka, ur. 23.12.1977
*/

INSERT INTO kibice (imie_k, nazwisko_k, kraj, pesel) VALUES ('Jan', 'Kowalski', 'POL','87012313333');
INSERT INTO kibice (imie_k, nazwisko_k, wzrost, pesel) VALUES ('John', 'Smith', 172, '92122343543');
INSERT INTO kibice (imie_k, nazwisko_k, data_ur_k, pesel) VALUES ('Anna', 'Zawadzka', '1977-12-23', '91122343543');

-- --------------------------------------------------------  

# MS15 Z tabeli kibice usuń Johna Smitha.

DELETE FROM kibice WHERE imie_k= 'John' AND nazwisko_k= 'Smith';

-- --------------------------------------------------------  

# MS16 Zmień datę urodzenia kibica Jana Kowalskiego na 8 grudnia 1974.

UPDATE kibice
SET data_ur_k = '1974-12-08'
WHERE imie_k = 'jan'
AND nazwisko_k = 'kowalski';

DESCRIBE kibice;
SELECT * FROM kibice;

# MS16*

UPDATE kibice 
SET data_ur_k = (SELECT data_ur FROM zawodnicy WHERE nazwisko = 'malysz')
WHERE imie_k = 'jan'
AND nazwisko_k ='kowalski';

SELECT * FROM zawodnicy;
SELECT * FROMtrenerzy;

-- --------------------------------------------------------  

# MS17 Zmień na Krzysztof imię kibica pochodzącego z tego kraju, z którym związany jest trener Kuttin.

# skąd jest Kuttin?
SELECT kraj FROM trenerzy WHERE nazwisko_t = 'kuttin';

# zmieniamy Krzysztofa
UPDATE kibice
SET
imie_k = 'Krzysztof'
WHERE kraj = (SELECT
kraj
FROM
trenerzy
WHERE
nazwisko_t = 'kuttin');

-- --------------------------------------------------------  

/* MS18 Zwiększ o 2 cm wzrost wszystkich zawodników.
Następnie zmniejsz o 2 cm wzrost wszystkich zawodników.
*/

UPDATE zawodnicy SET wzrost = wzrost + 2;
UPDATE zawodnicy SET wzrost = wzrost -2;

-- --------------------------------------------------------  

# MS19 Wypisz zawartość tabel.


SELECT * FROM kibice;
SELECT * FROM skladki;
SELECT * FROM skocznie;
SELECT * FROM trenerzy;
SELECT * FROM zawodnicy;
SELECT * FROM zawody;

-- --------------------------------------------------------  

# MS20 Z tabeli zawodnicy wypisz kolumny kraj, imie, nazwisko.

SELECT imie, nazwisko, kraj FROM zawodnicy;

-- --------------------------------------------------------  

SELECT *,id_skoczka FROM zawodnicy;
SELECT *, upper(imie) AS 'nowe imie', id_skoczka + 2 AS 'id' FROM zawodnicy;
SELECT * FROM zawodnicy WHERE kraj != 'pol';

SELECT DISTINCT kraj FROM zawodnicy;
SELECT DISTINCT kraj, nazwisko FROM zawodnicy;
SELECT * FROM trenerzy;
SELECT * FROM trenerzy WHERE data_ur_t IS NOT NULL;
SELECT upper(kraj) AS KRAJ, upper(imie) AS IMIE, upper(nazwisko) AS NAZWISKO FROM zawodnicy;

-- --------------------------------------------------------  

/* MS21 Narty skoczka narciarskiego nie mogą być dłuższe niż 146% jego wzrostu.
Wypisz listę skoczków z ich maksymalną długością nart.
*/

SELECT imie, nazwisko, kraj, round(1.46 * wzrost,1) AS 'dlugosc_nart' FROM zawodnicy;
SELECT rand();
SELECT round(10 * rand() + 10) AS 'limit';

-- --------------------------------------------------------  

/* MS22 Wskaźnik BMI (Body Mass Index) to iloraz masy człowieka i kwadratu jego wzrostu wyrażonego w metrach.
Wypisz listę skoczków z ich wskaźnikiem BMI.
*/

SELECT imie, nazwisko, round(waga / (SELECT POW(wzrost/100,2)),1) AS bmi FROM zawodnicy;

-- --------------------------------------------------------  

SELECT 8 MOD 3; 

SELECT *, round(waga / POW(wzrost/100,2)),2 AS bmi FROM zawodnicy
WHERE waga / pow(wzrost/100,2) BETWEEN 18 AND 21;

SELECT 11 % 5;
SELECT 8 MOD 3;

SELECT 1<2;
SELECT conv(17,10,2), conv(11,10,16);
SELECT conv(111110,2,10);
SELECT bin(15);

SELECT imie, nazwisko, kraj, YEAR(current_date()) - YEAR(data_ur) AS rocznikowo,
timestampdiff(YEAR,data_ur, current_date()) AS dokladnie  
FROM zawodnicy;

SELECT UNIX_TIMESTAMP(NOW());

SELECT YEAR(NOW())+10, MONTH(NOW()), DAY(NOW()), HOUR(NOW()), MINUTE(NOW()), SECOND(NOW());

SELECT imie, nazwisko, kraj, DATE_FORMAT(data_ur, '%d.%m.%Yr.') AS data_pl FROM zawodnicy;
SELECT DAYOFYEAR(current_date());
SELECT DAY( LAST_DAY(current_date())) AS 'last day';
SELECT weekday( LAST_DAY(current_date())) AS 'last day';

SELECT DATEDIFF('2000-02-02','2000-01-01');
SELECT DATE_SUB(current_date(), interval 10 YEAR) AS subb;
SELECT GET_FORMAT(DATE, 'EUR'), GET_FORMAT(DATE, 'USA');
SELECT *,DATE_FORMAT(data_ur, GET_FORMAT(DATE,'USA')) AS 'data_ur_USA_format' FROM zawodnicy;

-- --------------------------------------------------------  

/* MS23 Obok imion i nazwisk skoczków wypisz ich daty urodzenia w formacie typowym dla języka polskiego, czyli np. “07.02.2006 r.”
Jak wyżej, tylko datę wypisz w postaci “038 dnia 2006 roku”.
*/

SELECT imie, nazwisko, date_format(data_ur, '%j dzień roku %y') AS 'data'
#dayofyear(data_ur) 'dnia' year(data_ur) 'roku' as dzien_roku 
FROM zawodnicy;

-- --------------------------------------------------------  

SELECT imie, concat(SUBSTR(nazwisko,1,1), REPEAT('*',length(nazwisko)-2), SUBSTR(nazwisko, length(nazwisko))) AS nazwisko FROM zawodnicy;

SELECT length('  naazwa   '),length(TRIM('  naazwa   '));
SELECT concat(imie,space(5), nazwisko) FROM zawodnicy;

SELECT CONCAT_WS(';',imie,nazwisko,kraj,data_ur,wzrost,waga) AS csv FROM zawodnicy;

SELECT LPAD(id_skoczka, 3, 0) AS fill FROM zawodnicy;

SELECT INSERT(nazwisko, 2, length(nazwisko)-2, REPEAT('*',length(nazwisko)-2)) FROM zawodnicy;

SELECT concat(LEFT(data_ur, 4),'-01-01') AS rok_start FROM zawodnicy;
SELECT date_format(concat(YEAR(data_ur),'-01-01'), GET_FORMAT(DATE,'EUR')) AS rok_start FROM zawodnicy;


SELECT imie, nazwisko, LEFT(data_ur, 4) AS rok_ur FROM zawodnicy;
SELECT imie, nazwisko, ELT((MONTH(data_ur)), 'Pierwszy', 'Drugi', 'Trzeci') AS kwartał_ur FROM zawodnicy;
SELECT *,DATE_FORMAT(data_ur, GET_FORMAT(DATE,'USA')) AS 'data_ur_USA_format' FROM zawodnicy;

SELECT DISTINCT imie, nazwisko FROM zawodnicy;

LOAD DATA LOCAL INFILE "C:/Users/Nataliaw/Desktop/Back-end Developer PWN/pliczek.txt" INTO TABLE kibice
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

SELECT * FROM kibice;

# DROP TABLE kibice; 

SELECT id_skoczka, imie, nazwisko, kraj FROM zawodnicy WHERE kraj = 'GER';

SELECT DATEDIFF(MAX(data_ur), MIN(data_ur)) AS diff FROM zawodnicy;
SELECT TO_DAYS(MAX(data_ur)) - TO_DAYS(MIN(data_ur)) AS diff FROM zawodnicy;

SELECT STRCMP('alaalaala','b'), STRCMP('b','b'), STRCMP('b','a');
SELECT 'a'>'b', 'b' >= 'a', 'ala' = 'Ala';

SELECT data_ur REGEXP '[1-2][0-9][0-9][0-9]-[0-1][0-9]-[0-3][0-9]' AS valid FROM zawodnicy;

SELECT nazwisko, nazwisko REGEXP '^he' FROM zawodnicy;

SELECT
	nazwisko, 
	(nazwisko REGEXP '^he') 
		OR nazwisko REGEXP 'nn$' AS 'h or nn' 
FROM 
	zawodnicy;
    
SELECT nazwisko FROM zawodnicy WHERE nazwisko REGEXP '^h.*r$';
SELECT nazwisko FROM zawodnicy WHERE nazwisko REGEXP '^[h,m].*[r,n]$';

SELECT * FROM zawodnicy;

SELECT "I'm M", '"Bardzo \' ważny \" cytat"', QUOTE('jakiś \' tekst');

SET @slowo = 'kajak';
SELECT 'kajak' = REVERSE('kajak');
SELECT @slowo = REVERSE(@slowo);

SELECT CHAR(72);
SELECT ORD('N'); #tylko dla jednego znaku
SELECT ASCII('D');
SELECT BIN(17);
SELECT HEX('Tekst');
SELECT HEX(46548);
SELECT UNHEX('54656B7374');
#w dokumentacji: string funcions = funkcje tekstowe

SELECT CONCAT(imie,' ',UPPER(nazwisko),' ','(',kraj,')') AS repr FROM zawodnicy;

-- --------------------------------------------------------  

/* MS29 FIS dba, aby skoczkowie narciarscy nie byli zbyt szczupli i wymaga, aby ich BMI wynosiło co najmniej 20.
Wypisz listę zawodników wraz z informacją czy mają odpowiednią wagę w stosunku do swojego wzrostu 
(informacja powinna być osobnym polem o wartości typu boolean).
*/

SELECT
	imie, 
	nazwisko, 
	ROUND(waga/POW(wzrost/100,2)) AS bmi,
	ELT((waga/POW(wzrost/100,2) between 18 and 21) +1,
		ELT((waga/POW(wzrost/100,2) < 18) +1, 
        'zbyt wysoki',
        'zbyt niski'),
		'w normie') 
        AS decyzja 
FROM 
zawodnicy;

-- --------------------------------------------------------  

/* MS30 Wypisz listę trenerów, wraz z informacją czy dla danego trenera znana jest data jego urodzenia 
(informacja powinna być osobnym polem o wartości typu boolean).
*/

SELECT *, ELT((data_ur_t is not null) +1,
'nie jest znana',
data_ur_t) AS info
FROM 
trenerzy;

-- --------------------------------------------------------  

/* MS31 Wypisz listę skoczków wraz z informacją o ich wadze. Jeżeli ich BMI jest za niskie obok skoczka powinna pojawić się informacja 
“zawodnik za lekki”, w przeciwnym przypadku - “waga zawodnika w normie”.
*/

SELECT
	imie, 
	nazwisko, 
	round(waga/POW(wzrost/100,2)) AS bmi,
	CASE WHEN waga/POW(wzrost/100,2) BETWEEN 18 AND 21 THEN 'w normie'
		WHEN waga/POW(wzrost/100,2) >21 THEN 'zbyt wysoki'
        ELSE'zbyt niski'

END AS decyzja
FROM 
zawodnicy;

#if(warunek,wartość jeśli 1, wartość jeśli 0);

-- --------------------------------------------------------  

SELECT *,
	IF(kraj = 'POL','Polak',null)
    AS decyzja
FROM
zawodnicy;

#jeśli wzrost zawodnika parzysty = wypisujemy wzrost, jeśli nieparzysty = to zaokrąglamy do wartości parzystej, czyli wzrost +1
SELECT *,
	IF((wzrost % 2),wzrost +1, wzrost) AS 'wzrost parzysty'
FROM
zawodnicy;

-- --------------------------------------------------------

/* MS32 Wypisz listę trenerów. Jeżeli data urodzenia trenera nie jest znana, zamiast niej powinna pojawić się informacja “brak danych”. */

SELECT *,
COALESCE (data_ur_t,'b/d')
AS info
FROM
trenerzy;

-- --------------------------------------------------------

/* MS33 Wypisz listę wszystkich zawodników oprócz niemieckich zawodników posortowaną po nazwisku od A-Z. */

SELECT *
FROM zawodnicy
WHERE kraj !='GER'
ORDER BY kraj DESC, nazwisko ASC;

-- --------------------------------------------------------

SELECT *
FROM zawodnicy
ORDER BY data_ur ASC;

SELECT *,
ROUND(waga/POW(wzrost/100,2)) AS bmi
FROM zawodnicy
ORDER BY bmi;

SELECT imie, nazwisko, kraj FROM zawodnicy ORDER BY kraj;
SELECT imie, nazwisko, kraj FROM zawodnicy ORDER BY 2;
SELECT 
imie, 
nazwisko, 
kraj, 
ROUND(waga/POW(wzrost/100,2)) AS bmi
FROM zawodnicy 
ORDER BY 4,2,1;

#wypisz 3 zawodnika co do wzrostu
SELECT
imie, 
nazwisko, 
kraj,
wzrost
FROM zawodnicy
ORDER BY wzrost DESC
LIMIT 1
OFFSET 2;

#wypisz wszystkich o tym samym wzroście

SET @pos = 2;
SELECT @pos;

SET @pp = (SELECT wzrost FROM zawodnicy ORDER BY wzrost DESC LIMIT 1 OFFSET @pos);

SELECT *
FROM zawodnicy
WHERE 
wzrost = @pp
ORDER BY id_skoczka;

SELECT *
FROM zawodnicy
ORDER BY nazwisko ASC;

-- --------------------------------------------------------

# MS34 Wypisz listę wszystkich zawodników z krajów niemieckojęzycznych zebranych w ekipy narodowe posortowanie po nazwisku od A-Z.

SELECT *
FROM zawodnicy
WHERE kraj = 'GER' OR kraj = 'AUT'
ORDER BY kraj ASC, nazwisko ASC; 

-- --------------------------------------------------------

# MS36 Wypisz listę zawodników starszych niż 40 lat.
SELECT *,
timestampdiff(YEAR,data_ur,current_date()) AS wiek 
FROM 
zawodnicy 
WHERE 
timestampdiff(YEAR,data_ur,current_date()) >=40 
ORDER BY nazwisko
; 

-- --------------------------------------------------------

# MS38 Wypisz listę zawodników urodzonych w sezonie od listopada do marca uporządkowaną po nazwisku.
SELECT *
FROM zawodnicy
WHERE MONTH(data_ur) IN (11,12,01,02,03)
ORDER BY nazwisko
;

# LUB

SELECT *
FROM zawodnicy
WHERE MONTH(data_ur) >=11 OR MONTH(data_ur) <=3
ORDER BY nazwisko
;

-- --------------------------------------------------------

# MS45 Wypisz listę trenerów uporządkowaną według daty urodzenia.

SELECT *
FROM trenerzy
ORDER BY data_ur_t ASC
;

-- --------------------------------------------------------

/* MS46 Wypisz listę trenerów uporządkowaną według daty urodzenia – od najstarszych do najmłodszych.
Ci, którzy nie mają podanej daty urodzenia, niech będą na początku.
*/

SELECT *
FROM trenerzy
ORDER BY data_ur_t IS NOT NULL DESC, data_ur_t, 
nazwisko_t
;

-- --------------------------------------------------------

# MS50 Wypisz listę zawodników w kolejności losowej.
SELECT *
FROM zawodnicy ORDER BY rand();

#losowanie krajów na igrzyska
SELECT DISTINCT kraj 
FROM zawodnicy ORDER BY rand();

#losowanie krajów na igrzyska, Pol wchodzi pierwsza
SELECT DISTINCT kraj 
FROM zawodnicy ORDER BY kraj = 'pol' DESC, rand();

-- --------------------------------------------------------

# MS52 Wypisz wspólną listę zawodników i trenerów wraz z informacją o kraju.
SELECT imie AS bbb, nazwisko, kraj FROM zawodnicy WHERE kraj !='GER'
UNION
SELECT imie_t AS aaa, nazwisko_t, kraj FROM trenerzy WHERE kraj !='POL'
ORDER BY kraj
;

-- --------------------------------------------------------

# MS53 Do poprzedniego zapytania dodaj kolumnę rola, w której przy zawodnikach będzie słowo zawodnik, a przy trenerach – trener.

SELECT imie, nazwisko, kraj, 'zawodnik' AS rola FROM zawodnicy WHERE kraj !='GER' 
UNION
SELECT imie_t, nazwisko_t, kraj, 'trener' AS rola FROM trenerzy WHERE kraj !='POL'
ORDER BY kraj, rola = 'trener' DESC #lub: order by kraj, 4
;

# Lub

SELECT imie, nazwisko, kraj, 'zawodnik' AS rola FROM zawodnicy WHERE kraj !='GER' 
UNION
SELECT imie_t, nazwisko_t, kraj, 'trener' AS rola FROM trenerzy WHERE kraj !='POL'
ORDER BY kraj, 4
;

-- --------------------------------------------------------

#iloczyn kertezjański
SELECT 
z.imie,
z.nazwisko, 
z.kraj, 
t.imie_t, 
t.nazwisko_t 
FROM 
zawodnicy AS z
JOIN
trenerzy AS t;
SELECT (SELECT COUNT(*) FROM zawodnicy)*(SELECT COUNT(*) FROM trenerzy) AS 'il kart';

SELECT
z1.imie,
z1.nazwisko, 
z2.imie, 
z2.nazwisko
FROM 
zawodnicy AS z1
JOIN 
zawodnicy AS z2
WHERE z1.nazwisko != z2.nazwisko
;

#Join - część wspólna
SELECT 
z.imie,
z.nazwisko,
z.kraj,
t.imie_t,
t.nazwisko_t
FROM zawodnicy AS z JOIN trenerzy AS t ON z.kraj=t.kraj;

#Left join
SELECT 
z.imie,
z.nazwisko,
z.kraj,
t.imie_t,
t.nazwisko_t
FROM zawodnicy AS z LEFT JOIN trenerzy AS t ON z.kraj=t.kraj;

#right join
SELECT 
z.imie,
z.nazwisko,
z.kraj,
t.imie_t,
t.nazwisko_t
FROM zawodnicy AS z RIGHT JOIN trenerzy AS t ON z.kraj=t.kraj;

#różne join
CREATE TABLE faktury(
id_f INT PRIMARY KEY AUTO_INCREMENT,
nr VARCHAR(10) NOT NULL
);

CREATE TABLE kontrahenci(
id_k INT PRIMARY KEY AUTO_INCREMENT,
nazwa VARCHAR(50) NOT NULL
);
CREATE TABLE relacje(
id_f INT,
id_k INT
);

#pokaż kontrahentów wraz z fakturami do opłacenia
INSERT INTO faktury VALUES (1, '0001-2018');
INSERT INTO faktury VALUES (2, '0002-2018');
INSERT INTO faktury VALUES (3, '0003-2018');
INSERT INTO kontrahenci VALUES (1, 'A');
INSERT INTO kontrahenci VALUES (2, 'B');
INSERT INTO kontrahenci VALUES (3, 'C');
INSERT INTO kontrahenci VALUES (4, 'D');
INSERT INTO relacje VALUES (1, 1);
INSERT INTO relacje VALUES (2, 3);
INSERT INTO relacje VALUES (3, 3);
SELECT * FROM relacje;
#delete from relacje where id_f = 2;

SELECT
	k.nazwa,
	f.nr
FROM
	kontrahenci AS k 
		LEFT JOIN
	relacje AS r 
		ON (k.id_k = r.id_k)
		LEFT JOIN
    faktury AS f
		ON (f.id_f = r.id_f);
        
        #lub to samo w inny sposób
SELECT
	k.nazwa,
	f.nr
FROM 
	kontrahenci AS k 
		NATURAL LEFT JOIN 
	relacje AS r 
		NATURAL LEFT JOIN 
    faktury AS f;


#pokaż tych kontrahentów, którym wystawiono faktury

SELECT
	k.nazwa,
	f.nr
FROM 
	kontrahenci AS k 
		NATURAL JOIN 
	relacje AS r 
		NATURAL JOIN
    faktury AS f;
    
-- --------------------------------------------------------
    
/* MS54 Wypisz imiona i nazwiska zawodników wraz ich trenerami (na podstawie kraju).
Uporządkuj wyniki w ekipy narodowe i po nazwisku zawodników A-Z.
*/

SELECT
	z.imie,
    z.nazwisko,
    z.kraj,
    t.imie_t,
    t.nazwisko_t
FROM
	zawodnicy AS z
 JOIN
 trenerzy AS t
 ON (z.kraj = t.kraj) WHERE z.kraj !='aut'
 ORDER BY z.kraj, z.nazwisko;
 
SELECT * FROM zawody;
SELECT * FROM skocznie;

-- --------------------------------------------------------
 
# MS55 Wypisz listę zawodów wraz z nazwami skoczni i miastami, w których się mieszczą.
SELECT
	z.id_zawodow,
    z.id_skoczni,
	z.data_z,
    s.miasto,
    s.nazwa
FROM
	zawody AS z
 RIGHT JOIN
	skocznie AS s
 ON (z.id_skoczni = s.id_skoczni) # lub natural
 ORDER BY z.data_z DESC;
 
-- --------------------------------------------------------
 
/* MS56 Wypisz imiona i nazwiska zawodników wraz ich trenerami (na podstawie kraju).
Jeśli jakiś zawodnik nie ma trenera, niech nie będzie go na tej liście.
*/
 
SELECT 
	z.imie,
    z.nazwisko,
    t.kraj,
    t.imie_t,
    t.nazwisko_t
FROM
	zawodnicy AS z
 RIGHT JOIN
 trenerzy AS t
 ON (z.kraj = t.kraj)
 ORDER BY z.kraj, z.nazwisko;

-- --------------------------------------------------------
 
# MS57 Przerób zapytanie z poprzedniego punktu tak, żeby na liście byli również ci zawodnicy, którzy nie mają trenerów.

SELECT
	z.imie,
    z.nazwisko,
    t.kraj,
    t.imie_t,
    t.nazwisko_t
FROM
	zawodnicy AS z
 RIGHT JOIN
 trenerzy AS t
 ON (z.kraj = t.kraj)
 UNION
 SELECT 
	z.imie,
    z.nazwisko,
    t.kraj,
    t.imie_t,
    t.nazwisko_t
FROM
	zawodnicy AS z
LEFT JOIN
 trenerzy AS t
 ON (z.kraj = t.kraj);
 
 -- -------------------------------------------------------- 
 
# MS59 Znajdź trenerów, którzy nie trenują żadnych zawodników.

SELECT
	z.imie,
    z.nazwisko,
    z.kraj,
    t.imie_t,
    t.nazwisko_t
FROM
	zawodnicy AS z
 RIGHT JOIN
 trenerzy AS t
 ON (z.kraj = t.kraj) WHERE z.nazwisko IS NULL;

-- --------------------------------------------------------
 
# MS63 Dla każdego zawodnika pokaż wszystkie zawody, które odbywają się w jego kraju.
 
SELECT
 z.imie,
 z.nazwisko,
 z.kraj,
 s.nazwa,
 s.miasto,
 zaw.data_z
 
 FROM 
 zawodnicy AS z
 LEFT JOIN
 skocznie AS s
 ON (z.kraj = s.kraj_s)
 NATURAL LEFT JOIN zawody zaw #lub join = jedynie zawody, które się już odbyły
ORDER BY z.kraj;

-- --------------------------------------------------------

# MD64 Znajdź takich zawodników, którzy są starsi od swoich trenerów. Znajdź takich zawodników, którzy są młodsi od swoich trenerów.

SELECT
	z.imie,
    z.nazwisko,
    z.data_ur,
    z.kraj,
    t.imie_t,
    t.nazwisko_t,
    t.data_ur_t
FROM
	zawodnicy AS z
JOIN
 trenerzy AS t
 ON (z.kraj = t.kraj) WHERE z.data_ur < t.data_ur_t
 ORDER BY z.kraj, z.nazwisko;
 
SELECT
	z.imie,
    z.nazwisko,
    z.data_ur,
    z.kraj,
    t.imie_t,
    t.nazwisko_t,
    t.data_ur_t
FROM
	zawodnicy AS z
JOIN
 trenerzy AS t
 ON (z.kraj = t.kraj) WHERE z.data_ur > t.data_ur_t
 ORDER BY z.kraj, z.nazwisko;
 
-- --------------------------------------------------------
 
#MS65 Wypisz listę wszystkich par zawodników tej samej narodowości takich, że pierwszy z zawodników jest wyższy od drugiego.

SELECT 
	z1.imie,
    z1.nazwisko,
    z1.wzrost,
    z1.kraj,
    z2.imie,
    z2.nazwisko,
    z2.wzrost,
    z2.kraj
FROM
	zawodnicy AS z1
JOIN
	zawodnicy AS z2
 ON (z1.kraj = z2.kraj) WHERE z1.wzrost > z2.wzrost
 ORDER BY z1.kraj, z1.nazwisko
 ;
 
# drugi sposób

SELECT
	z1.imie,
    z1.nazwisko,
    z1.wzrost,
    z1.kraj,
    z2.imie,
    z2.nazwisko,
    z2.wzrost,
    z2.kraj
FROM
	zawodnicy AS z1
JOIN
	zawodnicy AS z2
 ON (z1.kraj = z2.kraj AND z1.wzrost > z2.wzrost)
 ORDER BY z1.kraj, z1.nazwisko
 ; 
 
-- -------------------------------------------------------- 
 
#Grupowanie / agregacja

SELECT kraj, COUNT(*)
FROM zawodnicy
GROUP BY kraj;

SELECT
kraj, ROUND(AVG(waga /POW(wzrost/100,2)),2) AS sr_bmi 
FROM 
zawodnicy
GROUP BY kraj
ORDER BY sr_bmi DESC;

#średni wiek w ramach ekipy narodowej

SELECT
kraj, ROUND(AVG(TIMESTAMPDIFF(YEAR,data_ur,CURRENT_DATE())),0) AS sr_wiek
FROM 
zawodnicy
GROUP BY kraj
ORDER BY  sr_wiek DESC;

#średni wiek wszystkich zawodników

SELECT
ROUND(AVG(TIMESTAMPDIFF(YEAR,data_ur,CURRENT_DATE())),2) AS sr_wiek_all
from 
zawodnicy;

#średni wiek ekipy narodowej większy od średniej całej populacji skoczków niezależnie od kraju

SELECT
kraj, ROUND(AVG(TIMESTAMPDIFF(YEAR,data_ur,CURRENT_DATE())),0) AS sr_wiek
FROM 
zawodnicy
GROUP BY kraj
HAVING sr_wiek >= (SELECT 
AVG(TIMESTAMPDIFF(YEAR,data_ur,CURRENT_DATE())) AS sr_wiek_all
FROM zawodnicy)
ORDER BY sr_wiek DESC;

#średnia liczebność reprezentacji po kraju (wynik ok. 2.8333 przy zdeduplikowanej bazie)

SELECT
COUNT(*)/COUNT(DISTINCT kraj)
FROM 
zawodnicy
;

/*
1. SELECT
	alias tabeli, kolumna AS nazwaKolumny
    IF(VAR,1,0),
    CASE WHEN VAR THEN wynik
		[WHEN...]
        [ELSE]
	END
    
f(AGR)  COUNT(8)		funkcje agregujące
		COUNT(kolumna)
        AVG(kolumna)
        MIN(...)
        MAX(...)
        SUM(...)
        
2. FROM tabela1 
			możliwe:
				NATURAL JOIN				
                LEFT JOIN
                RIGHT JOIN
							tabela2 ON warunek złączenia ...(inne tabele)
3. FROM
	WHERE
		warunek/warunki
4. GROUP BY kolumna1, kolumna2...		[HAVING warunek/warunki ->operatory AND, OR]
		związany z którąś z funkcji agregujących
        
5. ORDER BY kolumna1, kolumna2,...regułalter
			LIMIT x
            OFFSET y
UNION plus nowe zapytanie
;

*/
    
USE skoczkowie;

#DELETE FROM zawodnicy;

SELECT DISTINCT nazwisko FROM zawodnicy;
SELECT * FROM zawodnicy;
SELECT * FROM kibice;
#DELETE FROM  kibice;

-- --------------------------------------------------------

#usuwanie duplikatów

/*
SELECT * FROM zawodnicy;
DELETE z1 FROM zawodnicy z1 JOIN zawodnicy z2 ON (z1.nazwisko=z2.nazwisko)
WHERE z1.imie = z2.imie, z1.nazwisko = z2.nazwisko;
*/

-- --------------------------------------------------------

# MS66 Podaj wielkości drużyn narodowych.

SELECT kraj, COUNT(*) AS liczba FROM zawodnicy GROUP BY kraj;
# lub z jedynką w count
SELECT kraj, COUNT(1) AS liczba FROM zawodnicy GROUP BY kraj;

-- --------------------------------------------------------

# MS67 Policz, ilu jest wszystkich zawodników.

SELECT COUNT(*) FROM zawodnicy;

-- --------------------------------------------------------

# MS68 Podaj ilości zawodników wyższych niż 180 cm w poszczególnych drużynach narodowych.

SELECT kraj, COUNT(*) AS 'wzrost > 180cm' FROM zawodnicy WHERE wzrost > 180 GROUP BY kraj;
SELECT kraj, SUM(wzrost>180) AS wzrost_pow_180cm FROM zawodnicy GROUP BY kraj ORDER BY wzrost_pow_180cm DESC;

-- --------------------------------------------------------

# MS69 Podaj listę ekip uporządkowaną według średniej długości nart zawodników ( 146% wzrostu).

SELECT 
    kraj, ROUND(AVG(1.46 * wzrost), 2) AS dlugosc_nart
FROM
    zawodnicy
GROUP BY kraj
HAVING dlugosc_nart <260
ORDER BY dlugosc_nart DESC;

-- --------------------------------------------------------

# MS70 Sprawdź, jaki jest największy wzrost w poszczególnych krajach.

SELECT kraj, MAX(wzrost) AS max_wzrost FROM zawodnicy GROUP BY kraj ORDER BY max_wzrost;
SELECT * FROM zawodnicy;

-- --------------------------------------------------------

# MS70 z danymi najwyższych zawodników

CREATE VIEW max_wzrost_repr AS
SELECT kraj, MAX(wzrost) AS max_wzrost FROM zawodnicy GROUP BY kraj ORDER BY max_wzrost;

SELECT 
z1.imie,
z1.nazwisko,
z1.wzrost,
z2.kraj,
z2.max_wzrost
FROM zawodnicy z1
JOIN max_wzrost_repr z2 ON z1.kraj = z2.kraj AND z1.wzrost = z2.max_wzrost;

#w razie dwóch zawodników o tym samym najwyższym wzroście
SELECT 
z1.imie,
z1.nazwisko,
z1.wzrost,
z2.kraj,
z2.max_wzrost
FROM zawodnicy z1
LEFT JOIN max_wzrost_repr z2 ON z1.kraj = z2.kraj 
AND z1.wzrost = z2.max_wzrost
WHERE z2.max_wzrost IS NOT NULL
ORDER BY kraj
;

-- --------------------------------------------------------

# MS73 Policz, ilu zawodników urodziło się w poszczególnych latach w poszczególnych kwartałach.

SELECT 
    YEAR(data_ur) AS rok,
    ELT(QUARTER(data_ur), 'I', 'II', 'III', 'IV') AS kwartal,
    COUNT(*) AS zlicz
FROM
    zawodnicy
GROUP BY rok DESC , kwartal ASC; 

-- --------------------------------------------------------

/* MS75 Wypisz listę ekip. Dla każdej podaj, ilu jest w niej zawodników mających powyżej 180 cm wzrostu. 
W liście nie uwzględniaj tych ekip, w których takich zawodników jest mniej niż dwóch.
*/

SELECT 
    kraj, 
    SUM(wzrost > 180) AS liczebnosc
FROM
    zawodnicy
GROUP BY kraj
HAVING liczebnosc >= 2
ORDER BY liczebnosc DESC
;

-- --------------------------------------------------------

# MS76 Wypisz tylko te ekipy, w których średnia wzrostu jest równa co najmniej 180 cm.

SELECT 
    kraj, 
    ROUND(AVG(wzrost),2) AS srednia
FROM
    zawodnicy
GROUP BY kraj
HAVING  (AVG(wzrost) >= 180)
ORDER BY srednia
;
#śr wzrostu większa od reprezentacji aut

SELECT 
    kraj, 
    round(AVG(wzrost),2) AS srednia
FROM
    zawodnicy
GROUP BY kraj
HAVING  srednia > (SELECT 
    AVG(wzrost)
FROM
    zawodnicy
WHERE
    kraj = 'aut'
    );
    
-- --------------------------------------------------------    

#PODZAPYTANIA
SELECT (SELECT COUNT(*) FROM zawodnicy) - (SELECT COUNT(*) FROM trenerzy);

-- --------------------------------------------------------

# MS77 Znajdź zawodników wyższych od Małysza i Ahonena.

SELECT imie, nazwisko, wzrost FROM zawodnicy WHERE nazwisko = 'malysz';
SELECT imie, nazwisko, wzrost FROM zawodnicy WHERE nazwisko = 'ahonen';

SELECT
* 
FROM zawodnicy
WHERE
wzrost > (SELECT wzrost FROM zawodnicy WHERE nazwisko = 'malysz')
AND
wzrost > (SELECT wzrost FROM zawodnicy WHERE nazwisko = 'ahonen');
SELECT * FROM zawodnicy;

-- --------------------------------------------------------

# MS78 Znajdź zawodników cięższych od Małysza, ale nie cięższych niż 65kg.

SELECT 
    *
FROM
    zawodnicy
WHERE
    (waga BETWEEN (SELECT 
            waga
        FROM
            zawodnicy
        WHERE
            nazwisko = 'malysz') AND 65)
            AND
				nazwisko != 'malysz'
;

#podobne jak MS78 lecz obojętna kolejność przy warunkach
SELECT 
    *,
    if((SELECT 
            waga
        FROM
            zawodnicy
        WHERE
            nazwisko = 'malysz')
            < 65, 
            waga BETWEEN (SELECT 
            waga
        FROM
            zawodnicy
        WHERE
            nazwisko = 'malysz') AND 65, waga BETWEEN 65 AND (SELECT 
            waga
        FROM
            zawodnicy
        WHERE
            nazwisko = 'malysz')) AS
    decyzja
FROM
    zawodnicy;
    
#same jedynki

SELECT 
    *
    FROM zawodnicy
		WHERE IF((SELECT 
            waga
        FROM
            zawodnicy
        WHERE
            nazwisko = 'ahonen')
            < 65, 
            waga BETWEEN (SELECT 
            waga
        FROM
            zawodnicy
        WHERE
            nazwisko = 'ahonen') AND 65, waga BETWEEN 65 AND (SELECT 
            waga
        FROM
            zawodnicy
        WHERE
            nazwisko = 'ahonen'));
            
-- --------------------------------------------------------

# MS79 Znajdź zawodnika wyższego niż najcięższy.

SELECT wzrost FROM zawodnicy WHERE waga = (SELECT MAX(waga) FROM zawodnicy);
SELECT * FROM zawodnicy WHERE wzrost >= (SELECT wzrost FROM zawodnicy WHERE waga = (SELECT MAX(waga) FROM zawodnicy));

-- --------------------------------------------------------

# MS80 Znajdź zawodników starszych niż Heinz Kuttin.

SELECT *,
TIMESTAMPDIFF(YEAR,data_ur_t,CURRENT_DATE()) AS wiek_kuttin FROM trenerzy WHERE nazwisko_t = 'kuttin';

SELECT *, TIMESTAMPDIFF(YEAR,data_ur,CURRENT_DATE()) AS wiek FROM zawodnicy;
SELECT TIMESTAMPDIFF(YEAR,data_ur_t,CURRENT_DATE()) AS wiek_kuttin FROM trenerzy WHERE nazwisko_t = 'kuttin';

SELECT * FROM zawodnicy WHERE TIMESTAMPDIFF(YEAR,data_ur,CURRENT_DATE()) > (SELECT
TIMESTAMPDIFF(YEAR,data_ur_t,CURRENT_DATE()) FROM trenerzy WHERE nazwisko_t = 'kuttin');

SELECT * FROM zawodnicy WHERE data_ur < (SELECT data_ur_t FROM trenerzy WHERE nazwisko_t = 'kuttin');

-- --------------------------------------------------------

# MS82 Znajdź imię i nazwisko najwyższego zawodnika.

SELECT imie, nazwisko, wzrost FROM zawodnicy WHERE wzrost = (SELECT MAX(wzrost) FROM zawodnicy);
# LUB
SELECT imie, nazwisko, wzrost FROM zawodnicy WHERE wzrost = (SELECT wzrost FROM zawodnicy ORDER BY wzrost DESC LIMIT 1);

-- --------------------------------------------------------

# MS83 Wypisz zawodników cięższych niż średnia wśród wszystkich.

SELECT AVG(waga) FROM zawodnicy;
SELECT * FROM zawodnicy WHERE waga > (SELECT AVG(waga) FROM zawodnicy);

-- --------------------------------------------------------

# MS84 Wypisz zawodników cięższych niż przeciętny zawodnik z Polski.

SELECT AVG(waga) FROM zawodnicy WHERE kraj = 'pol';
SELECT * FROM zawodnicy WHERE waga > (SELECT AVG(waga) FROM zawodnicy WHERE kraj = 'pol');

-- --------------------------------------------------------

# MS85 Wypisz zawodników cięższych niż średnia w danej ekipie.

SELECT kraj, AVG(waga) FROM zawodnicy GROU BY kraj; # nie można włożyć w podzapytanie - wynik więcej niż jedna wartość
SELECT AVG(waga) FROM zawodnicy WHERE kraj = 'sss';

SELECT 
    *
FROM
    zawodnicy z1
WHERE
    waga > (SELECT 
            AVG(waga)
        FROM
            zawodnicy z2
        WHERE
            kraj = z1.kraj = z2.kraj)
            ;

-- --------------------------------------------------------

/* MS86 
Podaj ilości zawodników wyższych niż 180 cm w poszczególnych drużynach, ale tak, żeby w tabelce istniały wiersze także dla krajów, 
w których nie ma takich zawodników.
W takim wypadku oczywiście w kolumnie oznaczającej liczbę zawodników powyżej 180 cm powinna być wartość 0.
*/

SELECT 
    kraj, 
    SUM(wzrost > 180) AS liczebnosc
FROM
    zawodnicy
GROUP BY kraj
ORDER BY liczebnosc DESC;

-- --------------------------------------------------------

#WIDOKI

CREATE /* or replace */ /*if not exist*/  VIEW bmi_all AS
    SELECT 
        imie,
        nazwisko,
        kraj,
        ROUND(waga / POW(wzrost / 100, 2), 1) AS bmi
    FROM
        zawodnicy
;

SELECT * FROM bmi_all;
SELECT imie, nazwisko, kraj, bmi +5 FROM bmi_all;

# DZIAŁAJĄ POLECENIA DROP VIEW I ALTER VIEW

#view z zawodnikami i trenerami
CREATE OR REPLACE VIEW zaw_tr AS
SELECT 
# można dać wszystkie wartości poprzez z.* lub t.*
	z.imie,
    z.nazwisko,
    t.kraj,
    t.imie_t,
    t.nazwisko_t
FROM
	zawodnicy AS z
 RIGHT JOIN
 trenerzy AS t
 ON (z.kraj = t.kraj)
 UNION
 SELECT 
	z.imie,
    z.nazwisko,
    t.kraj,
    t.imie_t,
    t.nazwisko_t
FROM
	zawodnicy AS z
LEFT JOIN
 trenerzy AS t
 ON (z.kraj = t.kraj)
 ORDER BY kraj
 ;
 
SELECT * FROM zaw_tr WHERE kraj = 'ger';
 
 #zadanie
 /*
 SELECT 
    z1.imie, z1.nazwisko, z1.kraj, z2.imie, z2.nazwisko
FROM
   (select * from zawodnicy order by
        JOIN
    zawodnicy z2 ON z1.id.skoczka < z2.id.skoczka;
    
    */
    
#WYZWALACZE

ALTER TABLE trenerzy ADD l_zawodnikow INT;
SELECT * FROM trenerzy;

UPDATE trenerzy t SET l_zawodnikow = (SELECT COUNT(*) FROM zawodnicy z WHERE z.kraj = t.kraj);

CREATE TRIGGER cyngiel 
AFTER INSERT ON 
zawodnicy 
FOR EACH ROW
UPDATE trenerzy SET l_zawodnikow = l_zawodnikow + 1 WHERE trenerzy.kraj = NEW.kraj;

#drop trigger cyngiel;zawodnicy

INSERT INTO zawodnicy VALUES (30, 'Noriaki', 'KASAI', 'JPN', '1967-12-03', 166, 70);

SELECT * FROM zawodnicy;
SELECT * FROM trenerzy;

CREATE TRIGGER back_cyngiel 
AFTER DELETE ON 
zawodnicy 
FOR EACH ROW
UPDATE trenerzy SET l_zawodnikow = l_zawodnikow - 1 WHERE trenerzy.kraj = old.kraj;

#drop trigger back_cyngiel;

DELETE FROM zawodnicy WHERE id_skoczka = 1;
SELECT * FROM zawodnicy;
SELECT * FROM trenerzy;

SET @liczba_wszystkich = (SELECT COUNT(*) FROM zawodnicy);
SET @liczba_repr = (SELECT COUNT(DISTINCT kraj) FROM zawodnicy);

SELECT @liczba_wszystkich/COUNT(DISTINCT kraj) FROM zawodnicy;

SELECT @liczba_repr;

SELECT @liczba_wszystkich/@liczta_repr AS liczebnosc;

-- --------------------------------------------------------

# MS89 procedura - dla reprezentacji wypisać wszystkich zawodników, itd.

#znaki po delimiter są dowolne
delimiter // 
CREATE PROCEDURE repr_info(IN k VARCHAR(3))
BEGIN
SELECT * FROM zawodnicy WHERE kraj = k;
SELECT COUNT(*) FROM zawodnicy WHERE kraj = k;
SELECT AVG(wzrost) FROM zawodnicy WHERE kraj = k;
SELECT id_skoczka FROM zawodnicy WHERE kraj = k;
SELECT * FROM trenerzy WHERE kraj = k;

END //
delimiter ; 
#spacja po delimiter jest istotna

CALL repr_info('pol');

#tworzenie własnej funkcji

DELIMITER //
CREATE FUNCTION bmi(w INT, h INT) 
RETURNS FLOAT(4,1)
BEGIN
	RETURN (SELECT w/pow(h/100,2));

END //
DELIMITER ;

SELECT imie, nazwisko, bmi(waga,wzrost) AS mybmi FROM zawodnicy;

DELIMITER //
CREATE FUNCTION bmi_dec(w INT, h INT) 
RETURNS VARCHAR(20)
BEGIN
 RETURN (SELECT IF(w/pow(h/100,2) > 21, 'gruby', 
 IF(w/pow(h/100,2) < 17, 'chudy', 'ok')));

END //
DELIMITER ;

DROP FUNCTION bmi_dec;


SELECT imie, nazwisko, bmi(waga,wzrost) AS mybmi, bmi_dec(waga,wzrost) AS decision FROM zawodnicy;

-- --------------------------------------------------------
