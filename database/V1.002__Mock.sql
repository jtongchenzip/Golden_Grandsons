INSERT INTO user_account (name, gender, birthday) VALUES ('國民金孫', 'FEMALE', '2001-02-11 00:00:00');
INSERT INTO user_account (name, gender, birthday) VALUES ('國民爺爺', 'MALE', '1950-01-24 00:00:00');  

INSERT INTO dietitian_account (name, gender, phone_number, introduction, work_unit)
                       VALUES ('Amber Liu', 'FEMALE', '0988422531',
                               '接生過 1000 名嬰兒',
                               'Amber Clinic'); 

INSERT INTO dietitian_account (name, gender, phone_number, introduction, work_unit)
                       VALUES ('Erica Cheng', 'FEMALE', '0988422531',
                               '10 年臨床營養經驗',
                               'Cornelia Clinic'); 

INSERT INTO dietitian_account (name, gender, phone_number, introduction, work_unit)
                       VALUES ('Chieh-Tung Chen', 'FEMALE', '0907344689',
                               '提供專業攀岩選手的最佳營養計畫',
                               'RockClimbing Clinic"'); 

INSERT INTO dietitian_account (name, gender, phone_number, introduction, work_unit)
                       VALUES ('YC Lai', 'FEMALE', '0976193645',
                               '提供專業棒球選手的最佳營養計畫',
                               'Baseball Clinic'); 

INSERT INTO dietitian_account (name, gender, phone_number, introduction, work_unit)
                       VALUES ('Lichi Lin', 'FEMALE', '0936812998',
                               '提供 K-Pop 男明星最佳營養計畫',
                               'Idol Clinic'); 

INSERT INTO dietitian_account (name, gender, phone_number, introduction, work_unit)
                       VALUES ('李昀宸', 'MALE', '0927153777',
                               '提供宮中嬪妃最佳營養計畫',
                               'Concubine Clinic'); 

INSERT INTO dietitian_account (name, gender, phone_number, introduction, work_unit)
                       VALUES ('Fan of Messi', 'MALE', '0923491234',
                               '提供專業足球選手的最佳營養計畫',
                               'Soccer Clinic'); 

INSERT INTO dietitian_account (name, gender, phone_number, introduction, work_unit)
                       VALUES ('王義雄', 'MALE', '0919389261',
                               '畢業於國立臺灣大學藥學系、臺灣大學公共衛生研究所碩士。曾擔任中興診所臨床營養師及個人營養顧問',
                               '臺北榮民總醫院'); 

INSERT INTO dietitian_account (name, gender, phone_number, introduction, work_unit)
                       VALUES ('陳怡蓉', 'FEMALE', '0956183617',
                               '畢業於國立臺灣海洋大學食品科學系、國防醫學院公共衛生研究所碩士。曾擔任前三軍總醫院臨床營養師及生醫產業營養師且在提供營養諮詢方面經驗豐富',
                               '三軍總醫院松山分院');

INSERT INTO dietitian_account (name, gender, phone_number, introduction, work_unit)
                       VALUES ('黃庭繼', 'MALE', '0926481666',
                               '十分 666 的營養師',
                               '臺北市立六六六總醫院');

INSERT INTO advertiser_account (name, introduction)
                        VALUES ('保麗淨', '保麗淨致力於保護所有人民牙齒，口腔健康是保麗淨唯一追求！'); 
INSERT INTO advertiser_account (name, introduction)
                        VALUES ('舒立效', '舒立效，一次見效。'); 
INSERT INTO advertiser_account (name, introduction)
                        VALUES ('黑人牙膏', '黑人牙膏致力研製各種不同類型的口腔護理產品，為您解決各種口腔問題和協助您可以自信展露笑容！馬上瀏覽好來網站，選購合適的產品！');   

INSERT INTO domain (name) VALUES ('孕期營養'); 
INSERT INTO domain (name) VALUES ('臨床營養學'); 
INSERT INTO domain (name) VALUES ('體重管理');
INSERT INTO domain (name) VALUES ('減脂期營養'); 
INSERT INTO domain (name) VALUES ('保健產品營養課程'); 
INSERT INTO domain (name) VALUES ('一般營養諮詢'); 

INSERT INTO dietitian_domain (dietitian_id, domain_id) VALUES (1, 1); 
INSERT INTO dietitian_domain (dietitian_id, domain_id) VALUES (1, 5); 
INSERT INTO dietitian_domain (dietitian_id, domain_id) VALUES (2, 2); 
INSERT INTO dietitian_domain (dietitian_id, domain_id) VALUES (2, 6);
INSERT INTO dietitian_domain (dietitian_id, domain_id) VALUES (3, 3); 
INSERT INTO dietitian_domain (dietitian_id, domain_id) VALUES (4, 4); 
INSERT INTO dietitian_domain (dietitian_id, domain_id) VALUES (5, 3); 
INSERT INTO dietitian_domain (dietitian_id, domain_id) VALUES (6, 4); 
INSERT INTO dietitian_domain (dietitian_id, domain_id) VALUES (7, 5); 
INSERT INTO dietitian_domain (dietitian_id, domain_id) VALUES (8, 6); 
INSERT INTO dietitian_domain (dietitian_id, domain_id) VALUES (9, 1); 
INSERT INTO dietitian_domain (dietitian_id, domain_id) VALUES (10, 2); 

INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (1, 1, '09:00:00', '10:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (1, 1, '10:00:00', '11:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (1, 1, '11:00:00', '12:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (1, 1, '12:00:00', '13:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (1, 1, '13:00:00', '14:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (1, 1, '14:00:00', '15:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (1, 1, '15:00:00', '16:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (1, 1, '16:00:00', '17:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (1, 1, '17:00:00', '18:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (1, 1, '18:00:00', '19:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (1, 1, '19:00:00', '20:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (1, 1, '20:00:00', '21:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (1, 2, '09:00:00', '10:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (1, 2, '10:00:00', '11:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (1, 2, '11:00:00', '12:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (1, 2, '12:00:00', '13:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (1, 2, '13:00:00', '14:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (1, 2, '14:00:00', '15:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (1, 2, '15:00:00', '16:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (1, 2, '16:00:00', '17:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (1, 2, '17:00:00', '18:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (1, 2, '18:00:00', '19:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (1, 2, '19:00:00', '20:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (1, 2, '20:00:00', '21:00:00'); 

INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (2, 3, '09:00:00', '10:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (2, 3, '10:00:00', '11:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (2, 3, '11:00:00', '12:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (2, 3, '12:00:00', '13:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (2, 3, '13:00:00', '14:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (2, 3, '14:00:00', '15:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (2, 3, '15:00:00', '16:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (2, 3, '16:00:00', '17:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (2, 3, '17:00:00', '18:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (2, 3, '18:00:00', '19:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (2, 3, '19:00:00', '20:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (2, 3, '20:00:00', '21:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (2, 4, '09:00:00', '10:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (2, 4, '10:00:00', '11:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (2, 4, '11:00:00', '12:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (2, 4, '12:00:00', '13:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (2, 4, '13:00:00', '14:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (2, 4, '14:00:00', '15:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (2, 4, '15:00:00', '16:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (2, 4, '16:00:00', '17:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (2, 4, '17:00:00', '18:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (2, 4, '18:00:00', '19:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (2, 4, '19:00:00', '20:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (2, 4, '20:00:00', '21:00:00'); 

INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (3, 5, '09:00:00', '10:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (3, 5, '10:00:00', '11:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (3, 5, '11:00:00', '12:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (3, 5, '12:00:00', '13:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (3, 5, '13:00:00', '14:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (3, 5, '14:00:00', '15:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (3, 5, '15:00:00', '16:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (3, 5, '16:00:00', '17:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (3, 5, '17:00:00', '18:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (3, 5, '18:00:00', '19:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (3, 5, '19:00:00', '20:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (3, 5, '20:00:00', '21:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (3, 6, '09:00:00', '10:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (3, 6, '10:00:00', '11:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (3, 6, '11:00:00', '12:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (3, 6, '12:00:00', '13:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (3, 6, '13:00:00', '14:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (3, 6, '14:00:00', '15:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (3, 6, '15:00:00', '16:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (3, 6, '16:00:00', '17:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (3, 6, '17:00:00', '18:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (3, 6, '18:00:00', '19:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (3, 6, '19:00:00', '20:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (3, 6, '20:00:00', '21:00:00'); 

INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (4, 7, '09:00:00', '10:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (4, 7, '10:00:00', '11:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (4, 7, '11:00:00', '12:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (4, 7, '12:00:00', '13:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (4, 7, '13:00:00', '14:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (4, 7, '14:00:00', '15:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (4, 7, '15:00:00', '16:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (4, 7, '16:00:00', '17:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (4, 7, '17:00:00', '18:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (4, 7, '18:00:00', '19:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (4, 7, '19:00:00', '20:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (4, 7, '20:00:00', '21:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (4, 1, '09:00:00', '10:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (4, 1, '10:00:00', '11:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (4, 1, '11:00:00', '12:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (4, 1, '12:00:00', '13:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (4, 1, '13:00:00', '14:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (4, 1, '14:00:00', '15:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (4, 1, '15:00:00', '16:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (4, 1, '16:00:00', '17:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (4, 1, '17:00:00', '18:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (4, 1, '18:00:00', '19:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (4, 1, '19:00:00', '20:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (4, 1, '20:00:00', '21:00:00'); 

INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (5, 2, '09:00:00', '10:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (5, 2, '10:00:00', '11:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (5, 2, '11:00:00', '12:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (5, 2, '12:00:00', '13:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (5, 2, '13:00:00', '14:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (5, 2, '14:00:00', '15:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (5, 2, '15:00:00', '16:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (5, 2, '16:00:00', '17:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (5, 2, '17:00:00', '18:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (5, 2, '18:00:00', '19:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (5, 2, '19:00:00', '20:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (5, 2, '20:00:00', '21:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (5, 3, '09:00:00', '10:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (5, 3, '10:00:00', '11:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (5, 3, '11:00:00', '12:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (5, 3, '12:00:00', '13:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (5, 3, '13:00:00', '14:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (5, 3, '14:00:00', '15:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (5, 3, '15:00:00', '16:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (5, 3, '16:00:00', '17:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (5, 3, '17:00:00', '18:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (5, 3, '18:00:00', '19:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (5, 3, '19:00:00', '20:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (5, 3, '20:00:00', '21:00:00'); 

INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (6, 4, '09:00:00', '10:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (6, 4, '10:00:00', '11:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (6, 4, '11:00:00', '12:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (6, 4, '12:00:00', '13:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (6, 4, '13:00:00', '14:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (6, 4, '14:00:00', '15:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (6, 4, '15:00:00', '16:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (6, 4, '16:00:00', '17:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (6, 4, '17:00:00', '18:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (6, 4, '18:00:00', '19:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (6, 4, '19:00:00', '20:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (6, 4, '20:00:00', '21:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (6, 5, '09:00:00', '10:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (6, 5, '10:00:00', '11:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (6, 5, '11:00:00', '12:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (6, 5, '12:00:00', '13:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (6, 5, '13:00:00', '14:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (6, 5, '14:00:00', '15:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (6, 5, '15:00:00', '16:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (6, 5, '16:00:00', '17:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (6, 5, '17:00:00', '18:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (6, 5, '18:00:00', '19:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (6, 5, '19:00:00', '20:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (6, 5, '20:00:00', '21:00:00'); 

INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (7, 6, '09:00:00', '10:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (7, 6, '10:00:00', '11:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (7, 6, '11:00:00', '12:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (7, 6, '12:00:00', '13:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (7, 6, '13:00:00', '14:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (7, 6, '14:00:00', '15:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (7, 6, '15:00:00', '16:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (7, 6, '16:00:00', '17:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (7, 6, '17:00:00', '18:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (7, 6, '18:00:00', '19:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (7, 6, '19:00:00', '20:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (7, 6, '20:00:00', '21:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (7, 7, '09:00:00', '10:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (7, 7, '10:00:00', '11:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (7, 7, '11:00:00', '12:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (7, 7, '12:00:00', '13:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (7, 7, '13:00:00', '14:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (7, 7, '14:00:00', '15:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (7, 7, '15:00:00', '16:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (7, 7, '16:00:00', '17:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (7, 7, '17:00:00', '18:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (7, 7, '18:00:00', '19:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (7, 7, '19:00:00', '20:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (7, 7, '20:00:00', '21:00:00'); 

INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (8, 1, '09:00:00', '10:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (8, 1, '10:00:00', '11:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (8, 1, '11:00:00', '12:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (8, 1, '12:00:00', '13:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (8, 1, '13:00:00', '14:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (8, 1, '14:00:00', '15:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (8, 1, '15:00:00', '16:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (8, 1, '16:00:00', '17:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (8, 1, '17:00:00', '18:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (8, 1, '18:00:00', '19:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (8, 1, '19:00:00', '20:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (8, 1, '20:00:00', '21:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (8, 2, '09:00:00', '10:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (8, 2, '10:00:00', '11:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (8, 2, '11:00:00', '12:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (8, 2, '12:00:00', '13:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (8, 2, '13:00:00', '14:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (8, 2, '14:00:00', '15:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (8, 2, '15:00:00', '16:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (8, 2, '16:00:00', '17:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (8, 2, '17:00:00', '18:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (8, 2, '18:00:00', '19:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (8, 2, '19:00:00', '20:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (8, 2, '20:00:00', '21:00:00'); 

INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (9, 3, '09:00:00', '10:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (9, 3, '10:00:00', '11:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (9, 3, '11:00:00', '12:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (9, 3, '12:00:00', '13:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (9, 3, '13:00:00', '14:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (9, 3, '14:00:00', '15:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (9, 3, '15:00:00', '16:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (9, 3, '16:00:00', '17:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (9, 3, '17:00:00', '18:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (9, 3, '18:00:00', '19:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (9, 3, '19:00:00', '20:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (9, 3, '20:00:00', '21:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (9, 4, '09:00:00', '10:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (9, 4, '10:00:00', '11:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (9, 4, '11:00:00', '12:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (9, 4, '12:00:00', '13:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (9, 4, '13:00:00', '14:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (9, 4, '14:00:00', '15:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (9, 4, '15:00:00', '16:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (9, 4, '16:00:00', '17:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (9, 4, '17:00:00', '18:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (9, 4, '18:00:00', '19:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (9, 4, '19:00:00', '20:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (9, 4, '20:00:00', '21:00:00'); 

INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (10, 5, '09:00:00', '10:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (10, 5, '10:00:00', '11:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (10, 5, '11:00:00', '12:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (10, 5, '12:00:00', '13:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (10, 5, '13:00:00', '14:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (10, 5, '14:00:00', '15:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (10, 5, '15:00:00', '16:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (10, 5, '16:00:00', '17:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (10, 5, '17:00:00', '18:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (10, 5, '18:00:00', '19:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (10, 5, '19:00:00', '20:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (10, 5, '20:00:00', '21:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (10, 6, '09:00:00', '10:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (10, 6, '10:00:00', '11:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (10, 6, '11:00:00', '12:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (10, 6, '12:00:00', '13:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (10, 6, '13:00:00', '14:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (10, 6, '14:00:00', '15:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (10, 6, '15:00:00', '16:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (10, 6, '16:00:00', '17:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (10, 6, '17:00:00', '18:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (10, 6, '18:00:00', '19:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (10, 6, '19:00:00', '20:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (10, 6, '20:00:00', '21:00:00'); 

INSERT INTO session (user_id, dietitian_id, domain_id, session_status, link, start_time, end_time) 
             VALUES (1, 1, 5, 'COMPLETE', 'https://meet.google.com/vhf-ujur-jgu', '2022-12-24 09:00:00', '2022-12-24 10:00:00'); 

INSERT INTO article (advertiser_id, post_time, title, context) 
             VALUES (1, '2022-12-24 09:00:00', '文章標題', '文章內容'); 