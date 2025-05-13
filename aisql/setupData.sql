INSERT INTO Person (first_name, last_name, phone_number, address_id) VALUES
('John', 'Doe', '123-456-7890', 1),
('Jane', 'Smith', '234-567-8901', 2),
('Alice', 'Johnson', '345-678-9012', 3),
('Bob', 'Brown', '456-789-0123', 4),
('Charlie', 'Davis', '567-890-1234', 5),
('Eve', 'Wilson', '678-901-2345', 6),
('Jason', 'Nolan', '464-544-5102', 12),
('Andrew', 'Jenkins', '708-378-2081', 6),
('Daniel', 'Williams', '410-202-8828', 10),
('Felicia', 'Anderson', '923-584-5408', 8),
('Kara', 'Rodriguez', '754-675-0711', 10),
('Scott', 'Turner', '370-316-0263', 7),
('Kyle', 'Lee', '670-436-9735', 14),
('Joseph', 'Williams', '732-933-4899', 9),
('Dawn', 'Garrett', '238-575-3782', 14),
('James', 'Cox', '828-290-0406', 12),
('Elizabeth', 'Gonzalez', '258-792-0819', 6),
('Jessica', 'Davis', '528-308-2228', 13),
('Stacy', 'Hutchinson', '591-979-6105', 10),
('Thomas', 'Brown', '568-216-8040', 12),
('Heather', 'Garrett', '809-879-2036', 14),
('David', 'Horton', '613-452-3878', 12),
('Frances', 'Oliver', '356-745-240', 11),
('Brian', 'Ayers', '919-207-7313', 12),
('Steven', 'Bradshaw', '542-591-4147', 15),
('Elijah', 'Norris', '651-722-6325', 6),
('Robert', 'Phillips', '440-767-6078', 1),
('Pamela', 'Cox', '291-721-2341', 14),
('Mark', 'Hudson', '641-933-2868', 15),
('Jessica', 'Hunter', '766-665-7065', 2);

INSERT INTO NonMember (nonMember_id, status, finding_source) VALUES
(1, 'Active', 'Referral'),
(2, 'Inactive', 'Online'),
(3, 'Active', 'Street-contacting'),
(4, 'Inactive', 'Referral'),
(5, 'Active', 'Online'),
(6, 'Inactive', 'Tracting'),
(7, 'Active', 'Referral'),
(8, 'Inactive', 'Online'),
(9, 'Active', 'Street-contacting'),
(10, 'Inactive', 'Referral'),
(11, 'Active', 'Service'),
(12, 'Inactive', 'Visitor Center'),
(13, 'Active', 'Referral'),
(14, 'Inactive', 'Tracting'),
(15, 'Active', 'Tracting');

INSERT INTO Member (member_id, status, calling) VALUES
(16, 'Active', 'Ward Mission Leader'),
(17, 'Active', 'Bishop'),
(18, 'Active', 'Primary Leader'),
(19, 'Inactive', 'Bishop'),
(20, 'Active', 'Relief Society President'),
(21, 'Active', 'Ward Missionary'),
(22, 'Active', 'Ward Missionary'),
(23, 'Inactive', 'Sunday School Teacher'),
(24, 'Active', 'Ward Mission Leader');

INSERT INTO MissionaryCompanionship (missionary1_id, missionary2_id) VALUES
(25, 30),
(26, 28),
(27, 29);

INSERT INTO Address (address_id, street, city, state, zip, teachingArea_id) VALUES
(1, '123 Main Dr', 'Springfield', 'UT', 62701, 1),
(2, '456 Elm Dr', 'Kaysville', 'AZ', 62702, 2),
(3, '789 Oak St', 'Springfield', 'IL', 62703, 3),
(4, '101 Maple St', 'Springfield', 'ID', 62704, 3),
(5, '202 Pine Ln', 'Midvale', 'IL', 62705, 2),
(6, '303 Birch St', 'Springfield', 'OR', 62706, 3),
(7, '404 Cedar Ave', 'Provo', 'UT', 62707, 2),
(8, '505 Walnut Dr', 'Provo', 'UT', 62708, 1),
(9, '606 Cherry Ln', 'Springfield', 'IL', 62709, 2),
(10, '707 Ash St', 'Springfield', 'IL', 62710, 1),
(11, '808 Fir St', 'Orem', 'UT', 62711, 1),
(12, '909 Spruce Dr', 'Saratoga Springs', 'IL', 62712, 1),
(13, '1010 Poplar Cr', 'Springfield', 'AZ', 62713, 3),
(14, '1111 Willow St', 'Springfield', 'ID', 62714, 2),
(15, '1212 Chestnut Ave', 'Springfield', 'OR', 62715, 1);

INSERT INTO LessonTaught (nonMember_id, lesson_id, member_id, date_taught, commitment_id, summary, return_date) VALUES
(1, 2, 16, '2023-01-01', 2, 'Discussed the Plan of Salvation', '2023-01-15'),
(2, 1, 17, '2023-02-01', 1, 'Discussed the Restoration', '2023-02-15'),
(3, 3, 18, '2023-03-01', 3, 'Discussed the Gospel of Jesus Christ', '2023-03-15'),
(4, 1, 19, '2023-04-01', 1, 'Discussed the Book of Mormon', '2023-04-15'),
(5, 4, 20, '2023-05-01', 2, 'Discussed Prayer and Scripture Study', '2023-05-15'),
(6, 4, 21, '2023-06-01', 5, 'Discussed the Law of Chastity', '2023-06-15'),
(7, 4, 22, '2023-07-01', 6, 'Discussed the Word of Wisdom', '2023-07-15'),
(8, 4, 23, '2023-08-01', 8, 'Discussed Service and Charity', '2023-08-15'),
(9, 3, 24, '2023-09-01', 9, 'Discussed Faith and Repentance', '2023-09-15'),
(10, 3, 16, '2023-10-01', 12,'Discussed Enduring to the End','2023-10-15'),
(10, 2, 16, '2023-01-01', 2, 'Discussed the Plan of Salvation', '2023-01-15'),
(12, 1, 17, '2023-02-01', 1, 'Discussed the Restoration', '2023-02-15'),
(3, 3, 24, '2023-13-01', 8, 'Discussed the Gospel of Jesus Christ', '2023-03-15'),
(3, 1, 19, '2023-04-01', 1, 'Discussed the Book of Mormon', '2023-04-15'),
(3, 4, 18, '2023-05-01', 4, 'Discussed Prayer and Scripture Study', '2023-05-15'),
(3, 4, 18, '2023-06-01', 5, 'Discussed the Law of Chastity', '2023-06-15'),
(4, 4, 22, '2023-07-01', 6, 'Discussed the Word of Wisdom', '2023-07-15'),
(5, 4, 23, '2023-08-01', 8, 'Discussed Service and Charity', '2023-08-15'),
(11, 3, 17, '2023-09-01', 2, 'Discussed Faith and Repentance', '2023-09-15'),
(4, 3, 16, '2023-10-01', 10,'Discussed Enduring to the End','2023-10-15');

INSERT INTO Lesson (lesson_name) VALUES
('Restoration'),
('Plan of Salvation'),
('Gospel of Jesus Christ'),
('Becoming Lifelong Disciples of Christ');

INSERT INTO Commitment (commitment_name) VALUES
('Read the Book of Mormon'),
('Pray Daily'),
('Attend Church'),
('Share the Gospel with Friends'),
('Follow the Word of Wisdom'),
('Live the Law of Chastity'),
('Serve Others'),
('Endure to the End'), 
('Be Baptized'),
('Attend the Temple'),
('Share Your Testimony'),
('Participate in Family History');

INSERT INTO CommitmentStatus (nonMember_id, commitment_id, commitment_status) VALUES
(1, 12, 'In Progress'),
(2, 2, 'Completed'),
(3, 7, 'Not Kept'),
(4, 8, 'In Progress'),
(7, 6, 'In Progress'),
(6, 9, 'Not Kept'),
(7, 9, 'In Progress'),
(8, 3, 'Completed'),
(1, 2, 'Not Kept'),
(10, 1, 'In Progress'),
(11, 11, 'Completed'),
(13, 12, 'Not Started'),
(13, 4, 'In Progress'),
(14, 4, 'Completed'),
(2, 5, 'Completed');

INSERT INTO Contact (person_id, contact_date, summary, contact_type, success_status) VALUES
(1, '2023-01-01 10:00:00', 'Initial contact made', 'Phone', 'Success'),
(2, '2023-02-01 11:00:00', 'Follow-up meeting scheduled', 'In-person', 'Success'),
(7, '2023-03-01 12:00:00', 'Contact made', 'In-person', 'Success'),
(4, '2023-04-01 13:00:00', 'No response from non-member', 'Phone', 'Failure'),
(5, '2023-05-01 14:00:00', 'Offered service', 'In-person', 'Success'),
(16, '2023-06-01 15:00:00', 'Follow-up meeting scheduled', 'In-person', 'Success'),
(7, '2023-07-01 16:00:00', 'Initial contact made', 'Phone', 'Success'),
(18, '2023-08-01 17:00:00', 'Lesson taught', 'In-person', 'Success'),
(9, '2023-09-01 18:00:00', 'No response from non-member', 'Phone', 'Failure'),
(10, '2023-10-01 19:00:00', 'Follow-up meeting scheduled', 'In-person', 'Success');

INSERT INTO Ward (ward_name, start_time, address_id, phone_number, bishop_id) VALUES
('Springfield Ward', '09:00:00', 1, '123-456-7890', 17),
('Kaysville Ward', '10:30:00', 2, '234-567-8901', 18),
('Provo Ward', '11:00:00', 7, '345-678-9012', 19),
('Orem Ward', '09:30:00', 11, '456-789-0123', 20),
('Midvale Ward', '10:00:00', 5, '567-890-1234', 21),
('Saratoga Springs Ward', '11:30:00', 12, '678-901-2345', 22);

INSERT INTO ChurchAttendance (person_id, attendance_date, ward_id) VALUES
(1, '2023-01-01', 1),
(19, '2023-02-01', 2),
(3, '2023-03-01', 3),
(4, '2023-04-01', 3),
(5, '2023-05-01', 5),
(7, '2023-06-01', 6),
(7, '2023-07-01', 2),
(7, '2023-08-01', 6),
(7, '2023-09-01', 1),
(10, '2023-10-01', 6),
(11, '2023-01-01', 1),
(11, '2023-02-01', 2),
(13, '2023-03-01', 1),
(14, '2023-04-01', 4),
(13, '2023-05-01', 5),
(16, '2023-06-01', 6),
(17, '2023-07-01', 4),
(11, '2023-08-01', 3),
(19, '2023-09-01', 2),
(24, '2023-10-01', 1);

