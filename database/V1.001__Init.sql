CREATE TYPE session_status_type AS ENUM (
    'RESERVED',
    'ONGOING',
    'COMPLETE'
);

CREATE TYPE gender_type AS ENUM (
    'MALE',
    'FEMALE',
    'TRANSGENDER',
    'NON_BINARY',
    'PREFER_NOT_TO_RESPOND'
);

CREATE TABLE user_account (
    id            SERIAL      PRIMARY KEY,
    name          VARCHAR     NOT NULL UNIQUE,
    gender        gender_type NOT NULL,
    birthday      TIMESTAMP   NOT NULL
);

CREATE TABLE dietitian_account (
    id            SERIAL      PRIMARY KEY,
    name          VARCHAR     NOT NULL UNIQUE,
    gender        gender_type NOT NULL,
    phone_number  VARCHAR     NOT NULL,
    introduction  VARCHAR     NOT NULL,
    work_unit     VARCHAR     NOT NULL
);

CREATE TABLE dietitian_available_time (
    id            SERIAL      PRIMARY KEY,
    dietitian_id  INTEGER     NOT NULL REFERENCES dietitian_account(id),
    available_day INTEGER     NOT NULL,
    start_time    TIME        NOT NULL,
    end_time      TIME        NOT NULL
);

CREATE TABLE domain (
    id            SERIAL      PRIMARY KEY,
    name          VARCHAR     NOT NULL UNIQUE
);

CREATE TABLE dietitian_domain (
    dietitian_id  INTEGER     NOT NULL REFERENCES dietitian_account(id),
    domain_id     INTEGER     NOT NULL REFERENCES domain(id)
);

CREATE TABLE session (
    id              SERIAL              PRIMARY KEY,
    user_id         INTEGER             NOT NULL REFERENCES user_account(id),
    dietitian_id    INTEGER             NOT NULL REFERENCES dietitian_account(id),
    domain_id       INTEGER             NOT NULL REFERENCES domain(id),
    session_status  session_status_type NOT NULL,
    link            VARCHAR             NOT NULL,
    start_time      TIMESTAMP            NOT NULL,
    end_time        TIMESTAMP            NOT NULL
);

CREATE TABLE advertiser_account (
    id            SERIAL      PRIMARY KEY,
    name          VARCHAR     NOT NULL UNIQUE,
    introduction  VARCHAR     NOT NULL 
);

CREATE TABLE article (
    id            SERIAL      PRIMARY KEY,
    advertiser_id INTEGER     NOT NULL REFERENCES advertiser_account(id),
    post_time     TIMESTAMP    NOT NULL,
    title         VARCHAR     NOT NULL,
    context       VARCHAR     NOT NULL
);

CREATE TABLE log (
    id             BIGSERIAL   PRIMARY KEY,
    user_id        INTEGER     NOT NULL REFERENCES user_account(id),
    access_time    TIMESTAMP   NOT NULL,
    request_method VARCHAR     NOT NULL,
    resource_path  VARCHAR     NOT NULL,
    ip             VARCHAR     NOT NULL
);