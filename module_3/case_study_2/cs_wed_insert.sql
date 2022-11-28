-- dịch vụ đi kèm v
INSERT INTO `furama_resort_web_C08`.`attach_facility` (`id`, `name`, `cost`, `unit`, `status`) VALUES ('1', 'Karaoke', '10000', 'giờ', 'tiện nghi, hiện tại');
INSERT INTO `furama_resort_web_C08`.`attach_facility` (`id`, `name`, `cost`, `unit`, `status`) VALUES ('2', 'Thuê xe máy', '10000', 'chiếc', 'hỏng 1 xe');
INSERT INTO `furama_resort_web_C08`.`attach_facility` (`id`, `name`, `cost`, `unit`, `status`) VALUES ('3', 'Thuê xe đạp', '20000', 'chiếc', 'tốt');
INSERT INTO `furama_resort_web_C08`.`attach_facility` (`id`, `name`, `cost`, `unit`, `status`) VALUES ('4', 'Buffet buổi sáng', '15000', 'suất', 'đầy đủ đồ ăn, tráng miệng');
INSERT INTO `furama_resort_web_C08`.`attach_facility` (`id`, `name`, `cost`, `unit`, `status`) VALUES ('5', 'Buffet buổi trưa', '90000', 'suất', 'đầy đủ đồ ăn, tráng miệng');
INSERT INTO `furama_resort_web_C08`.`attach_facility` (`id`, `name`, `cost`, `unit`, `status`) VALUES ('6', 'Buffet buổi tối', '16000', 'suất', 'đầy đủ đồ ăn, tráng miệng');

-- hợp đồng
INSERT INTO `furama_resort_web_C08`.`contract` (`id`, `start_date`, `end_date`, `deposit`, `employee_id`, `customer_id`, `facility_id`) VALUES ('1', '2020-12-08', '2020-12-08', '0', '3', '1', '3');
INSERT INTO `furama_resort_web_C08`.`contract` (`id`, `start_date`, `end_date`, `deposit`, `employee_id`, `customer_id`, `facility_id`) VALUES ('2', '2020-07-14', '2020-07-21', '200000', '7', '3', '1');
INSERT INTO `furama_resort_web_C08`.`contract` (`id`, `start_date`, `end_date`, `deposit`, `employee_id`, `customer_id`, `facility_id`) VALUES ('3', '2021-03-15', '2021-03-17', '50000', '3', '4', '2');
INSERT INTO `furama_resort_web_C08`.`contract` (`id`, `start_date`, `end_date`, `deposit`, `employee_id`, `customer_id`, `facility_id`) VALUES ('4', '2021-01-14', '2021-01-18', '100000', '7', '5', '5');
INSERT INTO `furama_resort_web_C08`.`contract` (`id`, `start_date`, `end_date`, `deposit`, `employee_id`, `customer_id`, `facility_id`) VALUES ('5', '2021-07-14', '2021-07-15', '0', '7', '2', '6');
INSERT INTO `furama_resort_web_C08`.`contract` (`id`, `start_date`, `end_date`, `deposit`, `employee_id`, `customer_id`, `facility_id`) VALUES ('6', '2021-06-01', '2021-06-03', '0', '7', '7', '6');
INSERT INTO `furama_resort_web_C08`.`contract` (`id`, `start_date`, `end_date`, `deposit`, `employee_id`, `customer_id`, `facility_id`) VALUES ('7', '2021-09-02', '2021-09-05', '100000', '7', '4', '4');
INSERT INTO `furama_resort_web_C08`.`contract` (`id`, `start_date`, `end_date`, `deposit`, `employee_id`, `customer_id`, `facility_id`) VALUES ('8', '2021-06-17', '2021-06-18', '150000', '3', '4', '1');
INSERT INTO `furama_resort_web_C08`.`contract` (`id`, `start_date`, `end_date`, `deposit`, `employee_id`, `customer_id`, `facility_id`) VALUES ('9', '2020-11-19', '2020-11-19', '0', '3', '4', '3');
INSERT INTO `furama_resort_web_C08`.`contract` (`id`, `start_date`, `end_date`, `deposit`, `employee_id`, `customer_id`, `facility_id`) VALUES ('10', '2021-04-12', '2021-04-14', '0', '10', '3', '5');
INSERT INTO `furama_resort_web_C08`.`contract` (`id`, `start_date`, `end_date`, `deposit`, `employee_id`, `customer_id`, `facility_id`) VALUES ('11', '2021-04-25', '2021-04-25', '0', '2', '2', '1');
INSERT INTO `furama_resort_web_C08`.`contract` (`id`, `start_date`, `end_date`, `deposit`, `employee_id`, `customer_id`, `facility_id`) VALUES ('12', '2021-05-25', '2021-05-27', '0', '7', '10', '1');



-- position vị trí vd
INSERT INTO `furama_resort_web_C08`.`position` (`id`, `name`) VALUES ('1', 'Quản Lý');
INSERT INTO `furama_resort_web_C08`.`position` (`id`, `name`) VALUES ('2', 'Nhân Viên');

-- trình độ vd
INSERT INTO `furama_resort_web_C08`.`education_degree` (`id`, `name`) VALUES ('1', 'Trung Cấp');
INSERT INTO `furama_resort_web_C08`.`education_degree` (`id`, `name`) VALUES ('2', 'Cao Đẳng');
INSERT INTO `furama_resort_web_C08`.`education_degree` (`id`, `name`) VALUES ('3', 'Đại Học');
INSERT INTO `furama_resort_web_C08`.`education_degree` (`id`, `name`) VALUES ('4', 'Sau Đại Học');

-- bộ phận vd
INSERT INTO `furama_resort_web_C08`.`devision` (`id`, `name`) VALUES ('1', 'Sale-Marketing');
INSERT INTO `furama_resort_web_C08`.`devision` (`id`, `name`) VALUES ('2', 'Hành chính');
INSERT INTO `furama_resort_web_C08`.`devision` (`id`, `name`) VALUES ('3', 'Phục vụ');
INSERT INTO `furama_resort_web_C08`.`devision` (`id`, `name`) VALUES ('4', 'Quản lý');

-- nhân viên vd
INSERT INTO `furama_resort_web_C08`.`employee`
 (`id`, `name`, `date_of_birth`, `id_card`, `salary`, `phone_number`, `email`, `address`, `position_id`, `education_degree_id`, `devision_id`) 
 VALUES ('1', 'Nguyễn Văn An', '1970-11-07', '456231786', '10000000', '0901234121', 'annguyen@gmail.com', '295 Nguyễn Tất Thành, Đà Nẵng', '1', '3', '1');
INSERT INTO `furama_resort_web_C08`.`employee`
 (`id`, `name`, `date_of_birth`, `id_card`, `salary`, `phone_number`, `email`, `address`, `position_id`, `education_degree_id`, `devision_id`) 
 VALUES ('2', 'Lê Văn Bình', '1997-04-09', '654231234', '7000000', '0934212314', 'binhlv@gmail.com', '22 Yên Bái, Đà Nẵng', '1', '2', '2');
INSERT INTO `furama_resort_web_C08`.`employee` 
(`id`, `name`, `date_of_birth`, `id_card`, `salary`, `phone_number`, `email`, `address`, `position_id`, `education_degree_id`, `devision_id`) 
VALUES ('3', 'Hồ Thị Yến', '1995-12-12', '999231723', '14000000', '0412352315', 'thiyen@gmail.com', 'K234/11 Điện Biên Phủ, Gia Lai', '1', '3', '2');
INSERT INTO `furama_resort_web_C08`.`employee` 
(`id`, `name`, `date_of_birth`, `id_card`, `salary`, `phone_number`, `email`, `address`, `position_id`, `education_degree_id`, `devision_id`) 
VALUES ('4', 'Võ Công Toản', '1980-04-04', '123231365', '17000000', '0374443232', 'toan0404@gmail.com', '77 Hoàng Diệu, Quảng Trị', '1', '4', '4');
INSERT INTO `furama_resort_web_C08`.`employee` 
(`id`, `name`, `date_of_birth`, `id_card`, `salary`, `phone_number`, `email`, `address`, `position_id`, `education_degree_id`, `devision_id`) 
VALUES ('5', 'Nguyễn Bỉnh Phát', '1999-12-09', '454363232', '6000000', '0902341231', 'phatphat@gmail.com', '43 Yên Bái, Đà Nẵng', '2', '1', '1');
INSERT INTO `furama_resort_web_C08`.`employee` 
(`id`, `name`, `date_of_birth`, `id_card`, `salary`, `phone_number`, `email`, `address`, `position_id`, `education_degree_id`, `devision_id`) 
VALUES ('6', 'Khúc Nguyễn An Nghi', '2000-11-08', '964542311', '7000000', '0978653213', 'annghi20@gmail.com', '294 Nguyễn Tất Thành, Đà Nẵng', '2', '2', '3');
INSERT INTO `furama_resort_web_C08`.`employee` 
(`id`, `name`, `date_of_birth`, `id_card`, `salary`, `phone_number`, `email`, `address`, `position_id`, `education_degree_id`, `devision_id`) 
VALUES ('7', 'Nguyễn Hữu Hà', '1993-01-01', '534323231', '8000000', '0941234553', 'nhh0101@gmail.com', '4 Nguyễn Chí Thanh, Huế', '2', '3', '2');
INSERT INTO `furama_resort_web_C08`.`employee` 
(`id`, `name`, `date_of_birth`, `id_card`, `salary`, `phone_number`, `email`, `address`, `position_id`, `education_degree_id`, `devision_id`) 
VALUES ('8', 'Nguyễn Hà Đông', '1989-09-03', '234414123', '9000000', '0642123111', 'donghanguyen@gmail.com', '111 Hùng Vương, Hà Nội', '2', '4', '4');
INSERT INTO `furama_resort_web_C08`.`employee` 
(`id`, `name`, `date_of_birth`, `id_card`, `salary`, `phone_number`, `email`, `address`, `position_id`, `education_degree_id`, `devision_id`) 
VALUES ('9', 'Tòng Hoang', '1982-09-03', '256781231', '6000000', '0245144444', 'hoangtong@gmail.com', '213 Hàm Nghi, Đà Nẵng', '2', '4', '4');
INSERT INTO `furama_resort_web_C08`.`employee` 
(`id`, `name`, `date_of_birth`, `id_card`, `salary`, `phone_number`, `email`, `address`, `position_id`, `education_degree_id`, `devision_id`) 
VALUES ('10', 'Nguyễn Công Đạo', '1994-01-08', '755434343', '8000000', '0988767111', 'nguyencongdao12@gmail.com', '6 Hoà Khánh, Đồng Nai', '2', '3', '2');

-- loại khách 
INSERT INTO `furama_resort_web_C08`.`customer_type` (`id`, `name`) VALUES ('1', 'Diamond');
INSERT INTO `furama_resort_web_C08`.`customer_type` (`id`, `name`) VALUES ('2', 'Platinium');
INSERT INTO `furama_resort_web_C08`.`customer_type` (`id`, `name`) VALUES ('3', 'Gold');
INSERT INTO `furama_resort_web_C08`.`customer_type` (`id`, `name`) VALUES ('4', 'Silver');
INSERT INTO `furama_resort_web_C08`.`customer_type` (`id`, `name`) VALUES ('5', 'Member');

-- khách hàng
INSERT INTO `furama_resort_web_C08`.`customer` (`id`, `name`, `date_of_birth`, `gender`, `id_card`, `phone_number`, `address`, `email`, `customer_type_id`) 
VALUES ('1', 'Nguyễn Thị Hào', '1970-11-07', 0 , '643431213', '0945423362', '23 Nguyễn Hoàng, Đà Nẵng', 'thihao07@gmail.com', '5');
INSERT INTO `furama_resort_web_C08`.`customer` (`id`, `name`, `date_of_birth`, `gender`, `id_card`, `phone_number`, `address`, `email`, `customer_type_id`)
 VALUES ('2', 'Phạm Xuân Diệu', '1992-08-08', 1, '865342123', '0954333333', 'K77/22 Thái Phiên, Quảng Trị', 'xuandieu92@gmail.com', '3');
INSERT INTO `furama_resort_web_C08`.`customer` (`id`, `name`, `date_of_birth`, `gender`, `id_card`, `phone_number`, `address`, `email`, `customer_type_id`) 
VALUES ('3', 'Trương Đình Nghệ', '1990-02-27', 1, '488645199', '0373213122', 'K323/12 Ông Ích Khiêm, Vinh', 'nghenhan2702@gmail.com', '1');
INSERT INTO `furama_resort_web_C08`.`customer` (`id`, `name`, `date_of_birth`, `gender`, `id_card`, `phone_number`, `address`, `email`, `customer_type_id`) 
VALUES ('4', 'Dương Văn Quan', '1981-07-08', 1, '543432111', '0490039241', 'K453/12 Lê Lợi, Đà Nẵng', 'duongquan@gmail.com', '1');
INSERT INTO `furama_resort_web_C08`.`customer` (`id`, `name`, `date_of_birth`, `gender`, `id_card`, `phone_number`, `address`, `email`, `customer_type_id`) 
VALUES ('5', 'Hoàng Trần Nhi Nhi', '1995-12-09', 0, '795453345', '0312345678', '224 Lý Thái Tổ, Gia Lai', 'nhinhi123@gmail.com', '4');
INSERT INTO `furama_resort_web_C08`.`customer` (`id`, `name`, `date_of_birth`, `gender`, `id_card`, `phone_number`, `address`, `email`, `customer_type_id`)
 VALUES ('6', 'Tôn Nữ Mộc Châu', '2005-12-06', 0, '732434215', '0988888844', '37 Yên Thế, Đà Nẵng', 'tonnuchau@gmail.com', '4');
INSERT INTO `furama_resort_web_C08`.`customer` (`id`, `name`, `date_of_birth`, `gender`, `id_card`, `phone_number`, `address`, `email`, `customer_type_id`) 
VALUES ('7', 'Nguyễn Mỹ Kim', '1984-04-08', 0, '856453123', '0912345698', 'K123/45 Lê Lợi, Hồ Chí Minh', 'kimcuong84@gmail.com', '1');
INSERT INTO `furama_resort_web_C08`.`customer` (`id`, `name`, `date_of_birth`, `gender`, `id_card`, `phone_number`, `address`, `email`, `customer_type_id`) 
VALUES ('8', 'Nguyễn Thị Hào', '1999-04-08', 0, '965656433', '0763212345', '55 Nguyễn Văn Linh, Kon Tum', 'haohao99@gmail.com', '3');
INSERT INTO `furama_resort_web_C08`.`customer` (`id`, `name`, `date_of_birth`, `gender`, `id_card`, `phone_number`, `address`, `email`, `customer_type_id`) 
VALUES ('9', 'Trần Đại Danh', '1994-07-01', 1, '432341235', '0643343433', '24 Lý Thường Kiệt, Quảng Ngãi', 'danhhai99@gmail.com', '1');
INSERT INTO `furama_resort_web_C08`.`customer` (`id`, `name`, `date_of_birth`, `gender`, `id_card`, `phone_number`, `address`, `email`, `customer_type_id`) 
VALUES ('10', 'Nguyễn Tâm Đắc', '1989-07-01', 1, '344343432', '0987654321', '22 Ngô Quyền, Đà Nẵng', 'dactam@gmail.com', '2');
INSERT INTO `furama_resort_web_C08`.`customer` (`id`, `name`, `date_of_birth`, `gender`, `id_card`, `phone_number`, `address`, `email`, `customer_type_id`) 
VALUES ('11', 'Nguyễn Văn Tâm', '1989-02-01', 1, '34434382', '0984530121', '23 Ngô Quyền, Đà Nẵng', 'tam@gmail.com', '3');

-- kiểu thuê 
INSERT INTO `furama_resort_web_C08`.`rent_type` (`id`, `name`) VALUES ('1', 'year');
INSERT INTO `furama_resort_web_C08`.`rent_type` (`id`, `name`) VALUES ('2', 'month');
INSERT INTO `furama_resort_web_C08`.`rent_type` (`id`, `name`) VALUES ('3', 'day');
INSERT INTO `furama_resort_web_C08`.`rent_type` (`id`, `name`) VALUES ('4', 'hour');

-- loại dịch vụ v
INSERT INTO `furama_resort_web_C08`.`facility_type` (`id`, `name`) VALUES ('1', 'Villa');
INSERT INTO `furama_resort_web_C08`.`facility_type` (`id`, `name`) VALUES ('2', 'House');
INSERT INTO `furama_resort_web_C08`.`facility_type` (`id`, `name`) VALUES ('3', 'Room');

-- dịch vụ
INSERT INTO `furama_resort_web_C08`.`facility` 
(`id`, `name`, `area`, `cost`, `max_peolpe`, `standard_room`, `description_other_convenience`, `pool_area`, `number_of_floors`, `facility_free`, `rent_type_id`, `facility_type_id`)
 VALUES ('1', 'Villa Beach Front', '25000', '1000000', '10', 'vip', 'Có hồ bơi', 500, '4', null, '3', '1');
INSERT INTO `furama_resort_web_C08`.`facility` 
(`id`, `name`, `area`, `cost`, `max_peolpe`, `standard_room`, `description_other_convenience`, `pool_area`, `number_of_floors`, `facility_free`, `rent_type_id`, `facility_type_id`) 
VALUES ('2', 'House Princess 01', '14000', '5000000', '7', 'vip', 'Có thêm bếp nướng', null, '3', null, '2', '2');
INSERT INTO `furama_resort_web_C08`.`facility` 
(`id`, `name`, `area`, `cost`, `max_peolpe`, `standard_room`, `description_other_convenience`, `pool_area`, `number_of_floors`, `facility_free`, `rent_type_id`, `facility_type_id`) 
VALUES ('3', 'Room Twin 01', '5000', '1000000', '2', 'normal', 'Có tivi', null, null, '1 Xe máy, 1 Xe đạp', '4', '3');
INSERT INTO `furama_resort_web_C08`.`facility` 
(`id`, `name`, `area`, `cost`, `max_peolpe`, `standard_room`, `description_other_convenience`, `pool_area`, `number_of_floors`, `facility_free`, `rent_type_id`, `facility_type_id`) 
VALUES ('4', 'Villa No Beach Front', '22000', '9000000', '8', 'normal', 'Có hồ bơi', '300', '3', null, '3', '1');
INSERT INTO `furama_resort_web_C08`.`facility` 
(`id`, `name`, `area`, `cost`, `max_peolpe`, `standard_room`, `description_other_convenience`, `pool_area`, `number_of_floors`, `facility_free`, `rent_type_id`, `facility_type_id`) 
VALUES ('5', 'House Princess 02', '10000', '4000000', '5', 'normal', 'Có thêm bếp nướng', null, '2', null, '3', '2');
INSERT INTO `furama_resort_web_C08`.`facility` 
(`id`, `name`, `area`, `cost`, `max_peolpe`, `standard_room`, `description_other_convenience`, `pool_area`, `number_of_floors`, `facility_free`, `rent_type_id`, `facility_type_id`) 
VALUES ('6', 'Room Twin 02', '3000', '900000', '2', 'normal', 'Có tivi', null, null, '1 Xe máy', '4', '3');




-- hợp đồng chi tiết
INSERT INTO `furama_resort_web_C08`.`contract_detail` (`id`, `contract_id`, `attach_facility_id`, `quantity`) VALUES ('1', '5', '2', '4');
INSERT INTO `furama_resort_web_C08`.`contract_detail` (`id`, `contract_id`, `attach_facility_id`, `quantity`) VALUES ('2', '8', '2', '5');
INSERT INTO `furama_resort_web_C08`.`contract_detail` (`id`, `contract_id`, `attach_facility_id`, `quantity`) VALUES ('3', '12', '2', '6');
INSERT INTO `furama_resort_web_C08`.`contract_detail` (`id`, `contract_id`, `attach_facility_id`, `quantity`) VALUES ('4', '1', '3', '1');
INSERT INTO `furama_resort_web_C08`.`contract_detail` (`id`, `contract_id`, `attach_facility_id`, `quantity`) VALUES ('5', '11', '3', '2');
INSERT INTO `furama_resort_web_C08`.`contract_detail` (`id`, `contract_id`, `attach_facility_id`, `quantity`) VALUES ('6', '1', '1', '3');
INSERT INTO `furama_resort_web_C08`.`contract_detail` (`id`, `contract_id`, `attach_facility_id`, `quantity`) VALUES ('7', '2', '1', '2');
INSERT INTO `furama_resort_web_C08`.`contract_detail` (`id`, `contract_id`, `attach_facility_id`, `quantity`) VALUES ('8', '2', '5', '2');