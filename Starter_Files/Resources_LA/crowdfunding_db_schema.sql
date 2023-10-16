CREATE TABLE campaign (
    cf_id INT   NOT NULL,
    contact_id INT  NOT NULL,
    company_name VARCHAR(100)   NOT NULL,
    description VARCHAR(200)    NOT NULL,
    goal VARCHAR(15)    NOT NULL,
    pledged VARCHAR(15) NOT NULL,
    outcome TEXT    NOT NULL,
    backers_count INT   NOT NULL,
    country TEXT    NOT NULL,
    currency TEXT   NOT NULL,
    launch_date DATE    NOT NULL,
    end_date DATE   NOT NULL,
    category_id VARCHAR(5)  NOT NULL,
    subcategory_id VARCHAR(8)   NOT NULL,
    CONSTRAINT pk_campaign PRIMARY KEY (
        cf_id
     )
);

CREATE TABLE category(
    category_id VARCHAR(5)  NOT NULL,
    category    VARCHAR(25) NOT NULL,
    CONSTRAINT pk_category PRIMARY KEY (
        category_id
     )
);

CREATE TABLE subcategory(
    subcategory_id  VARCHAR(10)  NOT NULL,
    subcategory VARCHAR(25)  NOT NULL,
    CONSTRAINT pk_subcategory PRIMARY KEY (
        subcategory_id
     )   
);

CREATE TABLE contacts(
    contact_id  INT NOT NULL,
    first_name  VARCHAR(747) NOT NULL,
    last_name   VARCHAR(747) NOT NULL,
    email  VARCHAR(345)    NOT NULL,
    CONSTRAINT pk_contacts PRIMARY KEY (
        contact_id
     )       
);

ALTER TABLE campaign ADD CONSTRAINT fk_campaign_contact_id FOREIGN KEY(contact_id)
REFERENCES contacts (contact_id);

ALTER TABLE campaign ADD CONSTRAINT fk_campaign_category_id FOREIGN KEY(category_id)
REFERENCES category (category_id);

ALTER TABLE campaign ADD CONSTRAINT fk_campaign_subcategory_id FOREIGN KEY(subcategory_id)
REFERENCES subcategory (subcategory_id);