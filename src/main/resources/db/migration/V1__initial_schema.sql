CREATE TABLE Manager
(
    id    VARCHAR(50) NOT NULL PRIMARY KEY,
    label VARCHAR(50)
);

CREATE TABLE client
(
    id           BIGINT      NOT NULL AUTO_INCREMENT PRIMARY KEY,
    order_column INT         NOT NULL,
    name         VARCHAR(50) NOT NULL,
    manager_id   VARCHAR(50) NOT NULL,
    CONSTRAINT fk_manager FOREIGN KEY (manager_id) REFERENCES Manager (id)
);

CREATE INDEX idx_client_manager_id ON client (manager_id);

CREATE TABLE client_details
(
    client_id BIGINT      NOT NULL,
    info      VARCHAR(50) NOT NULL,
    CONSTRAINT fk_client FOREIGN KEY (client_id) REFERENCES client (id)
);

CREATE TABLE table_with_pk
(
    id_part1 VARCHAR(10),
    id_part2 VARCHAR(100),
    value    VARCHAR(100),
    PRIMARY KEY (id_part1, id_part2)
);
