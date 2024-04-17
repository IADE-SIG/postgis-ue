CREATE TABLE poi (
    id serial PRIMARY KEY,
    geom geography(Point, 4326),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);

CREATE TABLE schools (
    id serial PRIMARY KEY,
    name text,
    poi_id integer REFERENCES poi(id),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);

INSERT INTO poi (geom, created_at, updated_at)
VALUES (ST_GeographyFromText('SRID=4326;POINT(-9.152386 38.707195)'), now(), now());

INSERT INTO poi (geom, created_at, updated_at)
VALUES (ST_GeographyFromText('SRID=4326;POINT(-9.193510239369486 38.76014824109689)'), now(), now());

INSERT INTO poi (geom, created_at, updated_at)
VALUES (ST_GeographyFromText('SRID=4326;POINT(-9.18361605041617 38.76506072265825)'), now(), now());

INSERT INTO schools (name, poi_id, created_at, updated_at)
VALUES ('IADE', 1, now(), now());

INSERT INTO schools (name, poi_id, created_at, updated_at)
VALUES ('Quinta do Bom Nome', 2, now(), now());

INSERT INTO schools (name, poi_id, created_at, updated_at)
VALUES ('Lispolis', 3, now(), now());

