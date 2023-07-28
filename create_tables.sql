CREATE TABLE users (
id serial PRIMARY KEY,
nickname VARCHAR(64) NOT NULL,
user_type VARCHAR(10) NOT NULL
);

CREATE TABLE rooms (
id serial PRIMARY KEY,
host_id INT NOT NULL,
beds INT NOT NULL,
air_conditioning BOOL,
price FLOAT NOT NULL
);

ALTER TABLE rooms
ADD FOREIGN KEY (host_id) REFERENCES users(id);

CREATE TABLE reservations (
user_id INT,
room_id INT,
settling DATE NOT NULL,
departure DATE NOT NULL,
paid FLOAT NOT NULL
);

ALTER TABLE reservations
ADD FOREIGN KEY (user_id) REFERENCES users(id);
ALTER TABLE reservations
ADD FOREIGN KEY (room_id) REFERENCES rooms(id);

CREATE TABLE reviews (
host_id INT,
guest_id INT,
rate FLOAT NOT NULL,
review TEXT
);

ALTER TABLE reviews
ADD FOREIGN KEY (host_id) REFERENCES users(id);
ALTER TABLE reviews
ADD FOREIGN KEY (guest_id) REFERENCES users(id);
