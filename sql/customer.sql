CREATE TABLE customer.customer (
	id BIGINT auto_increment NOT NULL,
	regdate DATE  NULL,
	engi_name varchar(1000) NULL,
	cust_name varchar(1000) NULL,
	system_info varchar(1000) NULL,
	manufacture varchar(1000) NULL,
	model varchar(1000) NULL,
	serial varchar(1000) NULL,
	`usage` varchar(1000) NULL,
	reg_date varchar(1000) NULL,
	svc_start_date DATE NULL,
	svc_end_date DATE NULL,
	CONSTRAINT customer_pk PRIMARY KEY (id)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci;
