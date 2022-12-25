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
                               'RockClimbing Clinic'); 

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

INSERT INTO dietitian_account (name, gender, phone_number, introduction, work_unit)
                       VALUES ('王十一', 'MALE', '0912345678',
                               '為了展示精美表格換頁而存在的營養師',
                               '表格換頁很棒診所');

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
INSERT INTO dietitian_domain (dietitian_id, domain_id) VALUES (11, 1); 
INSERT INTO dietitian_domain (dietitian_id, domain_id) VALUES (11, 4); 
INSERT INTO dietitian_domain (dietitian_id, domain_id) VALUES (11, 6); 

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

INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (11, 1, '09:00:00', '10:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (11, 2, '10:00:00', '11:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (11, 3, '11:00:00', '12:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (11, 4, '12:00:00', '13:00:00'); 
INSERT INTO dietitian_available_time (dietitian_id, available_day, start_time, end_time) VALUES (11, 5, '13:00:00', '14:00:00'); 

INSERT INTO session (user_id, dietitian_id, domain_id, session_status, link, start_time, end_time) 
             VALUES (1, 1, 5, 'COMPLETE', 'https://meet.google.com/vhf-ujur-jgu', '2022-12-24 09:00:00', '2022-12-24 10:00:00'); 

INSERT INTO article (advertiser_id, post_time, title, context) 
             VALUES (1, '2022-12-24 09:00:00', '方便、好吃但超級不健康！最新研究：超加工食品推升失智風險', '<p>12月5日發表在《美國醫學會神經學期刊（JAMA Neurology）》的一項研究指出，如果一個人一天所攝取的熱量有20%以上是來自超加工食品的話，可能加速認知能力減退。
這項研究是在2008～2017年這十年當中，分3個不同時間段進行，研究對象總計有10,755位巴西人，年齡介於35歲～74歲，平均51歲。約55%（5,880人）是女性，53%是白人，半數受過大學教育。
受試者中，無論男女，吃最多超加工食物的人，與吃最少的人相比，大腦執行功能（executive function）衰退的程度快了25%，整體認知能力減損程度快了28%。</p>

<h3>中年是培養健康飲食習慣的重要階段</h3>

<p>研究報告領銜作者、巴西聖保羅大學醫學院博士康加福斯（Natalia Gomes Goncalves）說：「飲食選擇對於保養腦部健康，影響很強大。中年是改變生活型態、採取預防措施的重要人生階段，我們在中年所做的選擇，將影響老後狀況。」</p>
<p>他解釋，對於已經出現認知減損者，現階段還不能說吃超加工食物加速他們的認知減損。他們發表的研究，是支持認知能力還健康的人，如果保持良好的飲食習慣，可以延緩失智發生。</p>

<h3>什麼是超加工食品？</h3>

<p>聯合國糧食及農業組織（FAO）訂定的NOVA食物分類系統，將食物和飲料依加工性質、程度和目的，分為四個層級，分別是：</p>

<ul>
	<li><b>未經加工或極少加工食物</b>，例如：鮮奶、蛋、魚肉、蔬菜、水果。</li>
	<li><b>經加工的烹飪材料</b>，例如：油、鹽、糖、蜂蜜、奶油。這群食物的加工過程多半是壓榨、研磨</li>
	<li><b>加工食物</b>，例如：麵包、煙燻肉類、魚罐頭、蔬菜罐頭。這群食物的加工過程有煮熟、發酵等。</li>
	<li><b>超加工食物</b>，例如：汽水、可樂、泡麵、各種零食、巧克力、冰淇淋、冷凍食品、微波即食食品。這個層級的食物經工業化制式處理，會使用安定劑、防腐劑。</li>
</ul>

<h3>中年是培養健康飲食習慣的重要階段</h3>
<p>研究報告領銜作者、巴西聖保羅大學醫學院博士康加福斯（Natalia Gomes Goncalves）說：「飲食選擇對於保養腦部健康，影響很強大。中年是改變生活型態、採取預防措施的重要人生階段，我們在中年所做的選擇，將影響老後狀況。」</p>
<p>他解釋，對於已經出現認知減損者，現階段還不能說吃超加工食物加速他們的認知減損。他們發表的研究，是支持認知能力還健康的人，如果保持良好的飲食習慣，可以延緩失智發生。</p>

<h3>少碰超加工食物，多吃蔬果平衡</h3>

<p>常吃超加工食物，除了對認知能力有不良影響，也早被認定增加肥胖、心血管疾病、糖尿病、癌症等風險。</p>
<p>凱茲說，超加工食物對我們身上的每個部位，整體來說，都是很不好的。沒有參與這項研究的哈佛醫學院神經學教授譚智（Rudy Tanzi）也表示，「超加工食物大多高糖、高鹽、高脂，在全身促進炎症反應。這可能正是身體與頭腦要能健康老化的最重大威脅。」</p>'); 

INSERT INTO article (advertiser_id, post_time, title, context) 
             VALUES (2, '2022-12-24 11:00:00', '吃飽睡好是世界和平的關鍵', '<h3>你吃飽了嗎？</h3>'); 

INSERT INTO article (advertiser_id, post_time, title, context) 
             VALUES (2, '2022-12-24 13:00:00', '貓熊眼疑為最新時尚趨勢', '<h3>你睡飽了嗎？</h3>'); 
             
INSERT INTO article (advertiser_id, post_time, title, context) 
             VALUES (3, '2022-12-25 09:00:00', '沒事多喝水，多喝水卻沒廁所', '<h3>你喝水了嗎？</h3>'); 

INSERT INTO article (advertiser_id, post_time, title, context) 
             VALUES (1, '2022-12-25 13:00:00', '幾天不睡覺會死？--淺談生命韌性', '<h3>一針說的，我好擔心</h3>'); 

INSERT INTO article (advertiser_id, post_time, title, context) 
             VALUES (2, '2022-12-25 15:00:00', '麻辣鍋加辣，方為辣妹', '<h3>小的敬佩不已</h3>');

INSERT INTO article (advertiser_id, post_time, title, context) 
             VALUES (3, '2022-12-26 13:00:00', '我想放假了', '<h3>但還要寫報告</h3>'); 

INSERT INTO article (advertiser_id, post_time, title, context) 
             VALUES (3, '2022-12-26 17:00:00', '劉郎才盡', '<h3>88!</h3>');              