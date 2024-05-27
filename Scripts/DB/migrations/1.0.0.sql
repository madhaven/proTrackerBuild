-- INIT DIFFS

CREATE TABLE habit (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    name VARCHAR NOT NULL,
    removed BOOLEAN,
    start_time INTEGER NOT NULL,
    end_time INTEGER,
    days INTEGER NOT NULL
);

CREATE TABLE habit_log (
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    habit_id INTEGER REFERENCES habit(id),
    date_time INTEGER NOT NULL
);

-- DATA UPDATES

UPDATE master SET version = '2.0.0';