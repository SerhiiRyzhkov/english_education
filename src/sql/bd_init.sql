DROP TABLE IF exists authorities;
DROP TABLE IF exists users;
DROP TABLE IF exists roles;

CREATE TABLE users
(
  email character varying(100) NOT NULL,
  name character varying(100) NOT NULL,
  surname character varying(100) NOT NULL,	
  password character varying(100) NOT NULL,
  enabled boolean DEFAULT true,
  mobile character varying(100) NOT NULL,
  level varchar(2) default NULL,
  locked boolean DEFAULT false,
  failed_logins integer DEFAULT 0,
  CONSTRAINT email PRIMARY KEY (email)
);

CREATE TABLE roles
(
  role_id integer NOT NULL,
  role_name character varying(50) NOT NULL,
  CONSTRAINT role_id PRIMARY KEY (role_id)
);



CREATE TABLE authorities (
email character varying(100) NOT NULL,
role_id integer NOT NULL,
PRIMARY KEY (email,role_id),
KEY FK_user_role (role_id),
CONSTRAINT FK_users FOREIGN KEY (email) REFERENCES users (email),
CONSTRAINT FK_authorities FOREIGN KEY (role_id) REFERENCES roles (role_id)
);




INSERT INTO roles VALUES (1, 'ROLE_USER');
INSERT INTO roles VALUES (2, 'ROLE_ADMIN');

INSERT INTO users VALUES ('user@ukr.net',  'user', 'user', 'user', true, '+380663790304', 'A2', false,0);
INSERT INTO users VALUES ('admin@ukr.net',  'admin', 'admin', 'admin', true, '+380663790304', 'A2', false,0);


INSERT INTO authorities VALUES ('user@ukr.net', 1);
INSERT INTO authorities VALUES ('admin@ukr.net', 1);
INSERT INTO authorities VALUES ('admin@ukr.net', 2);