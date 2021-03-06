--Ximan Liu
--CSC 452
--prog1b.sql


--STUDENT(student_id, std_name, home_phone, total_credits, gpa, advisor_id);
INSERT INTO STUDENT VALUES('11111', 'ANDREA', '111-111-1111', 20, 3.2, '12345');
INSERT INTO STUDENT VALUES('22222', 'BEN', '222-222-2222', 20, 3.7, '12345');
INSERT INTO STUDENT VALUES('33333', 'CONOR', '333-333-3333', 15, 3.2, '12345');
INSERT INTO STUDENT VALUES('44444', 'DAVID', '444-444-4444', 15, 3.7, '12345');
INSERT INTO STUDENT VALUES('55555', 'EVAN', '555-555-5555', 20, 3.2, '12345');
INSERT INTO STUDENT VALUES('66666', 'FIONA', '666-666-6666', 20, 3.7, '23456');
INSERT INTO STUDENT VALUES('77777', 'GINA', '777-777-7777', 15, 3.2, '23456');
INSERT INTO STUDENT VALUES('88888', 'HEATHER', '888-888-8888', 15, 3.7, '23456');
INSERT INTO STUDENT VALUES('99999', 'IRIN', '999-999-9999', 20, 3.2, '23456');
INSERT INTO STUDENT VALUES('00000', 'JACK', '000-000-0000', 20, 3.7, '23456');
INSERT INTO STUDENT VALUES('12121', 'KEVIN', '121-121-1211', 15, 3.2, '34567');
INSERT INTO STUDENT VALUES('23232', 'LORIN', '232-232-2322', 15, 3.7, '34567');
INSERT INTO STUDENT VALUES('34343', 'MIA', '343-343-3433', 20, 3.2, '34567');
INSERT INTO STUDENT VALUES('45454', 'NICOLE', '454-454-4544', 15, 3.7, '34567');
INSERT INTO STUDENT VALUES('56565', 'OLIVIA', '565-565-5655', 15, 3.2, '34567');

INSERT INTO STUDENT VALUES('98989', 'POLA', '131-131-1311', 10, 3.0, '34567');
INSERT INTO STUDENT VALUES('87878', 'QUEENIE', '242-242-2422', 10, 3.0, '34567');
INSERT INTO STUDENT VALUES('76767', 'RACHEL', '353-353-3533', 15, 3.0, '34567');
INSERT INTO STUDENT VALUES('65656', 'STELLA', '464-464-4644', 15, 3.0, '34567');
INSERT INTO STUDENT VALUES('54545', 'TERRA', '575-575-5755', 20, 3.0, '34567');


--COURSE(course#, credit_hours, time, location, faculty_id);
INSERT INTO COURSE VALUES('10101', 4, 1800, 'LOOP', '12345');
INSERT INTO COURSE VALUES('20202', 4, 1800, 'PARK', '23456');
INSERT INTO COURSE VALUES('30303', 4, 1800, 'LOOP', '34567');

INSERT INTO COURSE VALUES('40404', 4, 1800, 'PARK', '12221');
INSERT INTO COURSE VALUES('50505', 4, 1800, 'LOOP', '23332');
INSERT INTO COURSE VALUES('60606', 4, 1800, 'PARK', '34443');
INSERT INTO COURSE VALUES('70707', 4, 1800, 'LOOP', '45554');
INSERT INTO COURSE VALUES('80808', 4, 1800, 'PARK', '56665');
INSERT INTO COURSE VALUES('90909', 4, 1800, 'LOOP', '67776');
INSERT INTO COURSE VALUES('14141', 4, 1800, 'PARK', '78887');
INSERT INTO COURSE VALUES('25252', 4, 1800, 'LOOP', '89998');
INSERT INTO COURSE VALUES('36363', 4, 1800, 'PARK', '90009');
INSERT INTO COURSE VALUES('47474', 4, 1800, 'LOOP', '09990');
INSERT INTO COURSE VALUES('58585', 4, 1800, 'PARK', '98889');
INSERT INTO COURSE VALUES('69696', 4, 1800, 'LOOP', '87778');


--ENROLLMENT(student_id, course#, grade);
INSERT INTO ENROLLMENT VALUES('11111', '10101', 80.00);
INSERT INTO ENROLLMENT VALUES('22222', '10101', 90.00);
INSERT INTO ENROLLMENT VALUES('33333', '10101', 80.00);
INSERT INTO ENROLLMENT VALUES('44444', '10101', 90.00);
INSERT INTO ENROLLMENT VALUES('55555', '10101', 80.00);
INSERT INTO ENROLLMENT VALUES('66666', '20202', 90.00);
INSERT INTO ENROLLMENT VALUES('77777', '20202', 80.00);
INSERT INTO ENROLLMENT VALUES('88888', '20202', 90.00);
INSERT INTO ENROLLMENT VALUES('99999', '20202', 80.00);
INSERT INTO ENROLLMENT VALUES('00000', '20202', 90.00);
INSERT INTO ENROLLMENT VALUES('12121', '30303', 80.00);
INSERT INTO ENROLLMENT VALUES('23232', '30303', 90.00);
INSERT INTO ENROLLMENT VALUES('34343', '30303', 80.00);
INSERT INTO ENROLLMENT VALUES('45454', '30303', 90.00);
INSERT INTO ENROLLMENT VALUES('56565', '30303', 80.00);

INSERT INTO ENROLLMENT VALUES('67676', '10101', 60.00);
INSERT INTO ENROLLMENT VALUES('78787', '10101', 70.00);
INSERT INTO ENROLLMENT VALUES('89898', '10101', 75.00);
INSERT INTO ENROLLMENT VALUES('90909', '10101', 60.00);
INSERT INTO ENROLLMENT VALUES('11112', '10101', 70.00);
INSERT INTO ENROLLMENT VALUES('22223', '20202', 75.00);
INSERT INTO ENROLLMENT VALUES('33334', '20202', 60.00);
INSERT INTO ENROLLMENT VALUES('44445', '20202', 70.00);
INSERT INTO ENROLLMENT VALUES('55556', '20202', 75.00);
INSERT INTO ENROLLMENT VALUES('66667', '20202', 60.00);
INSERT INTO ENROLLMENT VALUES('77778', '30303', 70.00);
INSERT INTO ENROLLMENT VALUES('88889', '30303', 75.00);
INSERT INTO ENROLLMENT VALUES('99990', '30303', 60.00);
INSERT INTO ENROLLMENT VALUES('12222', '30303', 70.00);
INSERT INTO ENROLLMENT VALUES('23333', '30303', 75.00);


--FACULTY(faculty_id, fac_name, office, salary);
INSERT INTO FACULTY VALUES('12345', 'XAVIER', 'LOOP123', 100000.00);
INSERT INTO FACULTY VALUES('23456', 'YOLANDA', 'LOOP234', 100000.00);
INSERT INTO FACULTY VALUES('34567', 'ZACK', 'LOOP345', 100000.00);
INSERT INTO FACULTY VALUES('87778', 'MARK', 'LOOP456', 100000.00);

INSERT INTO FACULTY VALUES('12221', 'NATHAN', 'LOOP567', 100000.00);
INSERT INTO FACULTY VALUES('23332', 'OLIVER', 'LOOP567', 100000.00);
INSERT INTO FACULTY VALUES('34443', 'PETER', 'LOOP678', 100000.00);
INSERT INTO FACULTY VALUES('45554', 'QUENCY', 'LOOP678', 100000.00);
INSERT INTO FACULTY VALUES('56665', 'RAXANNE', 'LOOP789', 100000.00);
INSERT INTO FACULTY VALUES('67776', 'SAMANTHA', 'LOOP789', 100000.00);
INSERT INTO FACULTY VALUES('78887', 'TAYLOR', 'LOOP124', 100000.00);
INSERT INTO FACULTY VALUES('89998', 'VICTORIA', 'LOOP124', 100000.00);
INSERT INTO FACULTY VALUES('90009', 'WALTER', 'LOOP235', 100000.00);
INSERT INTO FACULTY VALUES('09990', 'VICTOR', 'LOOP235', 100000.00);
INSERT INTO FACULTY VALUES('98889', 'VALORIE', 'LOOP346', 100000.00);


