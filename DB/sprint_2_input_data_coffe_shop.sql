INSERT INTO `product_type` (`id`, `name`) VALUES ('1', 'Cafe Rang Tươi');
INSERT INTO `product_type` (`id`, `name`) VALUES ('2', 'Cafe Phin Giấy');
INSERT INTO `product_type` (`id`, `name`) VALUES ('3', 'Cafe Xay Bột');
INSERT INTO `product_type` (`id`, `name`) VALUES ('4', 'Cafe Hòa Tan');

-- add customer 
insert into customers (id, name, phone_number, day_of_birth, email, gender, address, is_delete) values (1, 'Daffi Janny', '0993795355', '1994-01-31', 'djanny0@cyberchimps.com', 1, '55606 Eagle Crest Parkway', 0);
insert into customers (id, name, phone_number, day_of_birth, email, gender, address, is_delete) values (2, 'Chev Lamberto', '0992002391', '1990-10-19', 'clamberto1@si.edu', 1, '6 Rowland Pass', 0);
insert into customers (id, name, phone_number, day_of_birth, email, gender, address, is_delete) values (3, 'Manda Kilshall', '0948089982', '1991-10-26', 'mkilshall2@clickbank.net', 0, '14328 Lien Alley', 0);
insert into customers (id, name, phone_number, day_of_birth, email, gender, address, is_delete) values (4, 'Zebedee Hellings', '0962650670', '1991-03-15', 'zhellings3@ucoz.com', 0, '12 Tennessee Alley', 0);
insert into customers (id, name, phone_number, day_of_birth, email, gender, address, is_delete) values (5, 'Sadye Magnar', '0940391670', '1992-04-04', 'smagnar4@histats.com', 0, '16 Springview Way', 0);
insert into customers (id, name, phone_number, day_of_birth, email, gender, address, is_delete) values (6, 'Yves Ojeda', '0945954847', '1993-02-25', 'yojeda5@flickr.com', 0, '91646 Melody Lane',0);
insert into customers (id, name, phone_number, day_of_birth, email, gender, address, is_delete) values (7, 'Querida Pesik', '0909875910', '1994-07-10', 'qpesik6@51.la', 0, '1 Arrowood Hill', 0);
insert into customers (id, name, phone_number, day_of_birth, email, gender, address, is_delete) values (8, 'Ray Folca', '0913999702', '1992-01-26', 'rfolca7@barnesandnoble.com', 1, '4 Judy Point', 0);
insert into customers (id, name, phone_number, day_of_birth, email, gender, address, is_delete) values (9, 'Lauren Adriaens', '0949066788', '1993-04-21', 'ladriaens8@nyu.edu', 0, '474 Lunder Circle', 0);
insert into customers (id, name, phone_number, day_of_birth, email, gender, address, is_delete) values (10, 'Tim Brixey', '0986698357', '1990-11-14', 'tbrixey9@acquirethisname.com', 1, '632 Heath Hill',0);
insert into customers (id, name, phone_number, day_of_birth, email, gender, address, is_delete) values (11, 'Ivory Varcoe', '0995435601', '1992-11-24', 'ivarcoea@constantcontact.com', 0, '6885 Dorton Drive', 0);
insert into customers (id, name, phone_number, day_of_birth, email, gender, address, is_delete) values (12, 'Carmelia Ommundsen', '0955091152', '1992-07-31', 'commundsenb@hhs.gov', 0, '19040 Dottie Point',0);
insert into customers (id, name, phone_number, day_of_birth, email, gender, address, is_delete) values (13, 'Evered Pinsent', '0943681524', '1992-09-25', 'epinsentc@amazonaws.com', 1, '17581 Mitchell Court',0);
insert into customers (id, name, phone_number, day_of_birth, email, gender, address, is_delete) values (14, 'Roger DeSousa', '0971836560', '1993-10-21', 'rdesousad@google.es', 0, '506 Myrtle Road',0);
insert into customers (id, name, phone_number, day_of_birth, email, gender, address, is_delete) values (15, 'Marmaduke Northwood', '0974756367', '1993-07-25', 'mnorthwoode@wikimedia.org', 0, '0344 Caliangt Pass', 0);
insert into customers (id, name, phone_number, day_of_birth, email, gender, address, is_delete) values (16, 'Colman Wingeat', '0911646250', '1994-07-26', 'cwingeatf@prnewswire.com', 1, '6952 Darwin Way',0);
insert into customers (id, name, phone_number, day_of_birth, email, gender, address, is_delete) values (17, 'Patten Richly', '0963375549', '1994-01-16', 'prichlyg@reddit.com', 1, '70626 Armistice Terrace',0);
insert into customers (id, name, phone_number, day_of_birth, email, gender, address, is_delete) values (18, 'Ceil Spaducci', '0903814995', '1991-08-22', 'cspaduccih@delicious.com', 1, '2920 Mcbride Way', 0);
insert into customers (id, name, phone_number, day_of_birth, email, gender, address, is_delete) values (19, 'Margie Sommerly', '0957076600', '1991-11-30', 'msommerlyi@usgs.gov', 0, '94003 Kings Way', 0);
insert into customers (id, name, phone_number, day_of_birth, email, gender, address, is_delete) values (20, 'Elysha Marl', '0905061204', '1994-10-19', 'emarlj@smugmug.com', 1, '148 Scott Drive', 0);

-- add roles
INSERT INTO `role` (`id`, `is_delete`, `name`) VALUES ('1', 0, 'ROLE_ADMIN');
INSERT INTO `role` (`id`, `is_delete`, `name`) VALUES ('2', 0, 'ROLE_EMPLOYEE');
INSERT INTO `role` (`id`, `is_delete`, `name`) VALUES ('3', 0, 'ROLE_CUSTOMER');
-- add user
insert into user (id, customer_id, username, password, is_delete) values (1,1,'admin', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (id, customer_id, username, password, is_delete) values (2,2,'customer', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (id, customer_id, username, password, is_delete) values (3,3,'employee', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (id, customer_id, username, password, is_delete) values (4,4,'idoick3', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (id, customer_id, username, password, is_delete) values (5,5,'rpalin4', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (id, customer_id, username, password, is_delete) values (6,6,'lgillebride5', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (id, customer_id, username, password, is_delete) values (7,7,'rskylett6', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (id, customer_id, username, password, is_delete) values (8,8,'lgrossman7', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (id, customer_id, username, password, is_delete) values (9,9,'ralbro8', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (id, customer_id, username, password, is_delete) values (10,10,'jtwyford9', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (id, customer_id, username, password, is_delete) values (11,11,'groberdsa', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (id, customer_id, username, password, is_delete) values (12,12,'zolliffb', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (id, customer_id, username, password, is_delete) values (13,13,'ldaykinc', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (id, customer_id, username, password, is_delete) values (14,14,'cstanyardd', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (id, customer_id, username, password, is_delete) values (15,15,'scoatene', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (id, customer_id, username, password, is_delete) values (16,16,'dbretonf', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (id, customer_id, username, password, is_delete) values (17,17,'abristog', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (id, customer_id, username, password, is_delete) values (18,18,'kmacallisterh', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (id, customer_id, username, password, is_delete) values (19,19,'wforthi', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);
insert into user (id, customer_id, username, password, is_delete) values (20,20,'jpitcaithlyj', '$2a$10$pZNW3zOtmMXwvWeWmRZYxeSbhRKvZE20dxWKQIX2SGlOTXKCBGfJC', 0);

-- add user_role
INSERT INTO `user_role` (`user_id`, `role_id`) VALUES ('1', '1');
INSERT INTO `user_role` (`user_id`, `role_id`) VALUES ('1', '2');
INSERT INTO `user_role` (`user_id`, `role_id`) VALUES ('1', '3');
INSERT INTO `user_role` (`user_id`, `role_id`) VALUES ('3', '2');
INSERT INTO `user_role` (`user_id`, `role_id`) VALUES ('3', '3');
INSERT INTO `user_role` (`user_id`, `role_id`) VALUES ('2', '3');


-- add shipping 
INSERT INTO `shipping` (`id`, `method`, `price`) VALUES ('1', 'Giao hàng tiêu chuẩn', '30000');
INSERT INTO `shipping` (`id`, `method`, `price`) VALUES ('2', 'Giao hàng nhanh', '50000');
INSERT INTO `shipping` (`id`, `method`, `price`) VALUES ('3', 'Giao hàng hỏa tốc', '70000');
INSERT INTO `shipping` (`id`, `method`, `price`) VALUES ('4', 'Giao hàng hàng không', '75000');

-- add to product
insert into product (id, image, ingredient, name, price, stock, taste, unit, product_type, weight, is_delete) values (1, 'https://firebasestorage.googleapis.com/v0/b/sprint-2-coffe-sh.appspot.com/o/coffe_3.jpg?alt=media&token=c9241731-08db-4e3d-a067-b445f5f58844', 'Cà phê(90%), Bơ/Đậu nành(10%)','Cà Phê Rang Tươi - Tươi Vui 250g',100000,30,'đậm, đắng nhẹ','túi',1,250,b'0'); 
insert into product (id, image, ingredient, name, price, stock, taste, unit, product_type, weight, is_delete) values (2, 'https://firebasestorage.googleapis.com/v0/b/sprint-2-coffe-sh.appspot.com/o/coffe_1.jpg?alt=media&token=6f14981b-184c-4677-aa8d-2a56b3e1d47c', 'Cà phê(80%), Bơ/Đậu nành(10%)','Cà Phê Rang Tươi - Tươi Đậm 250g ',120000,30,'đậm, đắng gắt','túi',1,250,b'0'); 
insert into product (id, image, ingredient, name, price, stock, taste, unit, product_type, weight, is_delete) values (3, 'https://firebasestorage.googleapis.com/v0/b/sprint-2-coffe-sh.appspot.com/o/coffe_2.jpg?alt=media&token=c18948fd-696f-49d9-86d2-b7fcf1fd5208', 'Cà phê(85%), Bơ/Đậu nành(10%)','Cà Phê Rang Tươi - Tươi Thơm 250g',150000,30,'đậm vừa, đắng nhẹ','túi',1,250,b'0'); 
insert into product (id, image, ingredient, name, price, stock, taste, unit, product_type, weight, is_delete) values (4, 'https://firebasestorage.googleapis.com/v0/b/sprint-2-coffe-sh.appspot.com/o/coffe_10.jpg?alt=media&token=1690cbeb-08cd-4eea-aaf7-86e388a134a0', 'Cà phê(90%), Bơ/Đậu nành(10%)','Cà Phê Love Coffee 500g (Bột) - Phương Vy Coffee',80000,30,'đậm vừa, thơm','túi',2,500,b'0'); 
insert into product (id, image, ingredient, name, price, stock, taste, unit, product_type, weight, is_delete) values (5, 'https://firebasestorage.googleapis.com/v0/b/sprint-2-coffe-sh.appspot.com/o/coffe_4.jpg?alt=media&token=5e6e5c92-6dd1-4c6d-b680-c01339fb6064', 'Cà phê(100%), Bơ/Đậu nành(0%)','Cà Phê Phin Đậm 500g - Phương Vy Coffee (bột)',100000,30,'đậm, đắng gắt','túi',2,500,b'0'); 
insert into product (id, image, ingredient, name, price, stock, taste, unit, product_type, weight, is_delete) values (6, 'https://firebasestorage.googleapis.com/v0/b/sprint-2-coffe-sh.appspot.com/o/coffe_4.jpg?alt=media&token=5e6e5c92-6dd1-4c6d-b680-c01339fb6064', 'Cà phê(90%), Hương Liệu(10%)','Cà Phê Culi Chồn 500g - Phương Vy Coffee (bột)',200000,30,'đắng nhẹ, chua nhẹ','túi',3,500,b'0'); 
insert into product (id, image, ingredient, name, price, stock, taste, unit, product_type, weight, is_delete) values (7, 'https://firebasestorage.googleapis.com/v0/b/sprint-2-coffe-sh.appspot.com/o/coffe_5.jpg?alt=media&token=b6e1af3a-08b4-4558-9c1f-96cc8684511c', 'Cà phê(80%), Bơ/Đậu nành(10%)','Cà Phê Moka Chồn 500g - Phương Vy Coffee (bột)',230000,30,'đắng nhẹ, chua nhẹ, thơm caramen','túi',3,500,b'0'); 
insert into product (id, image, ingredient, name, price, stock, taste, unit, product_type, weight, is_delete) values (8, 'https://firebasestorage.googleapis.com/v0/b/sprint-2-coffe-sh.appspot.com/o/coffe_7.jpg?alt=media&token=d26df72b-bba8-465d-ac5f-f41011f12d30', 'Cà phê(75%), Bơ/Đậu nành(10%)','Cà Phê Healthy Coffee 500g - Phương Vy Coffee (bột)',240000,30,'đắng đậm, thơm','túi',3,500,b'0'); 
insert into product (id, image, ingredient, name, price, stock, taste, unit, product_type, weight, is_delete) values (9, 'https://firebasestorage.googleapis.com/v0/b/sprint-2-coffe-sh.appspot.com/o/coffe_8.jpg?alt=media&token=e50b6096-db93-4d6d-b3ba-a3503cda4edc', 'Cà phê(80%), Bơ/Đậu nành(10%)','Cà Phê Passion Coffee 500g - Phương Vy Coffee (bột)',200000,30,'đậm, đắng gắt, thơm nồng','túi',3,500,b'0'); 
insert into product (id, image, ingredient, name, price, stock, taste, unit, product_type, weight, is_delete) values (10, 'https://firebasestorage.googleapis.com/v0/b/sprint-2-coffe-sh.appspot.com/o/coffe_10.jpg?alt=media&token=1690cbeb-08cd-4eea-aaf7-86e388a134a0', 'Cà phê(90%), Bơ/Đậu nành(10%)','Cà Phê Robusta 500g - Phương Vy Coffee (bột)',120000,30,'đậm vừa, thơm, mạnh','túi',3,500,b'0'); 
