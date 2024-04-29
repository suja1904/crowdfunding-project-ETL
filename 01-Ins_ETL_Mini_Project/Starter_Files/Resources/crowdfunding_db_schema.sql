CREATE TABLE category (
    category_id	 		VARCHAR NOT NULL,
    category 			VARCHAR(25)  NOT NULL,
    PRIMARY KEY(category_id)
);

CREATE TABLE subcategory (
    subcategory_id 		VARCHAR NOT NULL,
    subcategory 		VARCHAR(25) NOT NULL,
    PRIMARY KEY(subcategory_id)
    
);

CREATE TABLE contacts (
    contact_id 			INT NOT NULL,
	first_name 			VARCHAR(25)   NOT NULL,
    last_name 			VARCHAR(50)   NOT NULL,
	email 				VARCHAR(50) 	NOT NULL,
    PRIMARY KEY (contact_id)
    
);


CREATE TABLE campaign (
    cf_id 				INT NOT NULL,
    contact_id 			INT NOT NULL,
	company_name 		VARCHAR(50) NOT NULL,
   	description 		VARCHAR(200),
	goal 				NUMERIC,
	pledged 			NUMERIC,
	outcome 			VARCHAR (20),
    backers_count 		INT,
	country 			VARCHAR(2),
	currency 			VARCHAR(3),
	launch_date 		DATE,
	end_date 			DATE,
	category_id 		VARCHAR NOT NULL,
	subcategory_id 		VARCHAR NOT NULL,
    PRIMARY KEY(cf_id),
	FOREIGN KEY(contact_id) REFERENCES contacts (contact_id),
	FOREIGN KEY(category_id) REFERENCES category (category_id),
	FOREIGN KEY(subcategory_id) REFERENCES subcategory (subcategory_id)
);