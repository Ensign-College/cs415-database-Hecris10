\c cs415

-- WebUser
INSERT INTO
    WebUser(web_user_id,first_name,last_name,email,password,created_date,is_active,last_login)
VALUES
    (1,'Main','User','muser@email.com','12345',CURRENT_TIMESTAMP,'1',CURRENT_TIMESTAMP),
    (2,'Willie','Nelson','willie.nelson@email.com','12345',CURRENT_TIMESTAMP,'1',CURRENT_TIMESTAMP);
ALTER SEQUENCE WebUser_web_user_id_seq RESTART WITH 100;

-- AddressType
INSERT INTO AddressType(address_type_id,address_type)
VALUES
    (1,'Home'),
    (2,'Work'),
    (3,'Billing'),
    (4,'Shipping');
ALTER SEQUENCE AddressType_address_type_id_seq RESTART WITH 6;

-- UserAddress
INSERT INTO UserAddress(user_address_id,web_user_id,street_1,street_2,city,st,zip,country,address_type_id,created_date)
VALUES
    (1,1,'100 Fake St','','Fake City','UT','84032','United States',1,CURRENT_TIMESTAMP),
    (2,1,'200 Fake Ave','','Faker City','UT','84033','United States',3,CURRENT_TIMESTAMP),
    (3,2,'200 Fake Ave','','Fakie City','UT','84033','United States',1,CURRENT_TIMESTAMP);
ALTER SEQUENCE UserAddress_user_address_id_seq RESTART WITH 4;

-- PhoneType
INSERT INTO PhoneType(phone_type_id,phone_type)
VALUES
    (1,'Mobile'),
    (2,'Home'),
    (3,'Work'),
    (4,'Emergency');
ALTER SEQUENCE PhoneType_phone_type_id_seq RESTART WITH 5;

-- UserPhone (2 phones per WebUser)
INSERT INTO UserPhone(user_phone_id,web_user_id,phone_number,phone_type_id,created_date)
VALUES
    (1,1,'801-555-0001',1,CURRENT_TIMESTAMP),
    (2,1,'801-555-0002',2,CURRENT_TIMESTAMP),
    (3,2,'512-555-0003',1,CURRENT_TIMESTAMP),
    (4,2,'512-555-0004',3,CURRENT_TIMESTAMP);
ALTER SEQUENCE UserPhone_user_phone_id_seq RESTART WITH 5;

-- UserInfo (1 record per WebUser)
INSERT INTO UserInfo(user_info_id,web_user_id,profile_bio,profile_picture,created_date)
VALUES
    (1,1,'Main user of the cs415 demo application.','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTYZ4AiSTOD6IbZ-zuTTghcjbMr15XMj1XSQ&s',CURRENT_TIMESTAMP),
    (2,2,'Country music legend and proud webuser #2.','https://is1-ssl.mzstatic.com/image/thumb/Features125/v4/b4/c2/9a/b4c29a1e-3b45-2b60-be65-dbb96d21e42a/mza_1383128222591135178.png/375x375bb.jpg',CURRENT_TIMESTAMP);
ALTER SEQUENCE UserInfo_user_info_id_seq RESTART WITH 3;

-- PageData
INSERT INTO PageData(page_data_id,week_label,title,description,image_url,alt_text)
VALUES
    (1,'Week 1','Overview and Setup','Create the GitHub repositories.  Discuss AWS Academy, databases, containers, schemas.  Docker Compose Assignment','https://yt3.googleusercontent.com/vtckU0sW8j7MgqC6SnO4Ed3yaG0t-fFwhUEir-9SMTOuYBIXPkfSx3fzD3YrwUj8PI46fw1Le9o=s160-c-k-c0x00ffffff-no-rj','Week 1 - Overview and Setup'),
    (2,'Week 2','Database Container and API','Install PostgreSQL in a container and access the data.  Install and setup Django Rest Framework for API - create GET endpoints','https://miro.medium.com/v2/resize:fit:720/format:webp/0*prut14lFoArZnPK5.jpg','Week 2 - Postres DB, Django API'),
    (3,'Week 3','API Endpoints and Documentation','Discuss documentation and Swagger.  Implement filtered GET endpoint as well as POST and PATCH endpoints','https://static1.smartbear.co/swagger/media/assets/images/swagger_logo.svg','Week 3 - API Endpoints and Documentation'),
    (4,'Week 4','AWS Remote DB, API Container and Mid-Term','Deploy Postgres to an AWS EC2 instance.  Connect Django to the remote database and run the API in a local Docker container.  Discuss Mid-Term assignment','https://thehawkeye.org/wp-content/uploads/2019/04/Midterm-exams-857x900.png','Week 4 - API Container and Midterm'),
    (5,'Week 5','AWS Elastic Container Service','Discuss ECR, ECS and Fargate.  Deploy the Docker API image to AWS and run it through a Network Load Balancer.  Assignment - validate API is running in Faragate','https://miro.medium.com/v2/resize:fit:720/format:webp/1*bEOOOxnCV2nXpGvXkOErRg.png','Week 5 - AWS ECS'),
    (6,'Week 6','CI/CD and GitHub Actions','Discuss Continuous Integration / Continuous Delivery (CI/CD).  Implement GitHub Actions to deploy latest image when code is pushed to repo for API.','https://miro.medium.com/v2/resize:fit:750/format:webp/1*_7mJjD1resPodxT7agk16w.png','Week 6 - CI/CD Pipeline'),
    (7,'Week 7','Bringing it all Together - Front-end and Final','Attach the front-end (website) to the API and deploy it to AWS S3.  Summary of all activities in the class - instructions for Final.','https://www.devopsschool.com/blog/wp-content/uploads/2022/03/reactjs-benefits-1024x512.jpg','Week 7 - Front-end and Final');
ALTER SEQUENCE PageData_page_data_id_seq RESTART WITH 8;
