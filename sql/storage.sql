CREATE TABLE storage.person (
	id BIGINT auto_increment NOT NULL,
	age INT NULL,
	name varchar(100) NULL,
	gender VARCHAR(1) NULL,
	social_id varchar(100) NULL,
	email varchar(100) NULL,
	address varchar(100) NULL,
	phone_number varchar(100) NULL,
	CONSTRAINT person_pk PRIMARY KEY (id)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci;
