INSERT INTO users VALUES (0, 'Ungoliant', 'guest'), (1, 'Melkor', 'host'), (2, 'Shelob', 'guest');
--Additional values for test
--INSERT INTO users VALUES (3, 'some1', 'guest'), (4, 'some2', 'host'), (5, 'some3', 'host');

INSERT INTO rooms VALUES (0, 1, 2, TRUE, 4200.0), (1, 1, 1, FALSE, 195.4), (2, 0, 1, TRUE, 197.7);
--Additional values for test
--INSERT INTO rooms VALUES (3, 4, 2, TRUE, 120.0), (4, 4, 1, FALSE, 46.0), (5, 5, 1, TRUE, 47.0);

INSERT INTO reservations VALUES (2, 0, '1495-04-28', '1495-04-29', 4200), (2, 0, '1495-04-29', '1495-04-30', 4200), (2, 2, '1495-04-28', '1495-04-29', 198);
--Additional values for test
--INSERT INTO reservations VALUES (2, 0, '2023-06-23', '2023-06-24', 4200), (2, 0, '2023-06-27', '2023-06-28', 4200), (2, 2, '2023-07-28', '2023-07-10', 198);
--INSERT INTO reservations VALUES (2, 3, '2023-06-23', '2023-06-24', 120), (3, 5, '2023-06-27', '2023-06-28', 47);

INSERT INTO reviews VALUES (1, 2, 4.9, 'Loves animals'), (1, 2, 4.5, NULL), (1, 0, 2.4, 'Not exactly a straightforward person');