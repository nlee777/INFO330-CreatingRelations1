CREATE TABLE buildings (
  name VARCHAR(80) NOT NULL,
  shortname VARCHAR(10) UNIQUE,
  id INTEGER PRIMARY KEY AUTOINCREMENT
);

CREATE TABLE rooms (
  number INTEGER,
  buildingid INTEGER REFERENCES buildings(id),
  seating INTEGER
);