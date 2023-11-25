CREATE TABLE IF NOT EXISTS specialties
(
    id   BIGSERIAL PRIMARY KEY,
    name VARCHAR(128) NOT NULL
    );

CREATE TABLE IF NOT EXISTS developers
(
    id           BIGSERIAL PRIMARY KEY,
    first_name   VARCHAR(64)  NOT NULL,
    last_name    VARCHAR(128) NOT NULL,
    status       VARCHAR(64)
    );

CREATE TABLE IF NOT EXISTS skills
(
    id   BIGSERIAL PRIMARY KEY,
    name VARCHAR(128) NOT NULL
    );

CREATE TABLE IF NOT EXISTS developer_skills
(
developer_id BIGSERIAL PRIMARY KEY,
    skill_id BIGSERIAL,

FOREIGN KEY (developer_id) REFERENCES developers(id),
    FOREIGN KEY (skill_id) REFERENCES skills(id),
    UNIQUE (developer_id,skill_id)
);




INSERT INTO specialties (name)
VALUES ('developer');

INSERT INTO developers (first_name, last_name)
VALUES ('Petr', 'Petrov');