
CREATE DATABASE IF NOT EXISTS scratch DEFAULT CHARSET = utf8;
USE scratch;

DROP TABLE IF EXISTS customer;
CREATE TABLE customer (
    id              INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    fullname            VARCHAR(255),
    Email               charset(255),
    Dateofbirth         DATE;
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS item;
CREATE TABLE item (
    id              INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name            VARCHAR(255),
    description     TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS sale;
CREATE TABLE sale (
    id              INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    item_id         INTEGER,
    customer_id     INTEGER,
    date            DATE,
    quantity        INTEGER,
    price           DECIMAL(9,2)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO customer ( id, name, address, city, state, zip ) VALUES ( 1, 'Bill Smith', '123 Main Street', 'Hope', 'CA', '98765' );
INSERT INTO customer ( id, name, address, city, state, zip ) VALUES ( 2, 'Mary Smith', '123 Dorian Street', 'Harmony', 'AZ', '98765' );
INSERT INTO customer ( id, name, address, city, state, zip ) VALUES ( 3, 'Bob Smith', '123 Laugh Street', 'Humor', 'CA', '98765' );

INSERT INTO item ( id, name, description ) VALUES ( 1, 'Box of 64 Pixels', '64 RGB pixels in a decorative box' );
INSERT INTO item ( id, name, description ) VALUES ( 2, 'Sense of Humor', 'Especially dry. Imported from England.' );
INSERT INTO item ( id, name, description ) VALUES ( 3, 'Beauty', 'Inner beauty. No cosmetic surgery required!' );
INSERT INTO item ( id, name, description ) VALUES ( 4, 'Bar Code', 'Unused. In original packaging.' );

DROP TABLE IF EXISTS numerics;
CREATE TABLE numerics (
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    da DECIMAL(10, 2),
    db DECIMAL(10, 2),
    fa FLOAT,
    fb FLOAT
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
