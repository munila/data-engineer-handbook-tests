CREATE TYPE film_rating AS (
    Film TEXT,
    Votes INTEGER,
    Rating REAL,
    FilmID TEXT
);

CREATE TYPE quality_class AS
    ENUM ('bad', 'average', 'good', 'star');

CREATE TABLE actors (
    Actor TEXT,
    ActorID TEXT,
    Films film_rating[],
    Quality_Class quality_class,
    Is_Active BOOLEAN,
    PRIMARY KEY (ActorID)
);
