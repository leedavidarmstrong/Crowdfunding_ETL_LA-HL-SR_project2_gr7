campaign
-----
cf_id int PK
contact_id int FK >- contacts.contact_id
company_name varchar(100)
description varchar(200)
goal varchar(15)
pledged varchar(15)
outcome text
backers_count int
country text
currency text
launch_date date
end_date date
category_id varchar(5) FK >- category.category_id
subcategory_id varchar(8) FK >- subcategory.subcategory_id


category
-----
category_id varchar(5) PK
category varchar(25)

subcategory
-----
subcategory_id varchar(10) PK
subcategory varchar(25)

contacts
-----
contact_id int PK
first_name varchar(747)
last_name varchar(747)
email varchar(345)
