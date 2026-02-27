
INSERT INTO User_Donor VALUES (1, 'Riyadh', 'Maha', 'maha@mail.com');
INSERT INTO User_Donor VALUES (2, 'Jeddah', 'Sara', 'sara@mail.com');
INSERT INTO User_Donor VALUES (3, 'Dammam', 'Norah', 'Norah@mail.com');
INSERT INTO User_Donor VALUES (4, 'Abha', 'Jana', 'Jana@mail.com');
INSERT INTO User_Donor VALUES (5, 'Tabuk', 'Taraf', 'Taraf@mail.com');

SELECT * FROM User_Donor;

INSERT INTO User_Donor_PhoneNo VALUES (0546738292, 1); 
INSERT INTO User_Donor_PhoneNo VALUES (0554321575, 2);
INSERT INTO User_Donor_PhoneNo VALUES (0543267899, 3);
INSERT INTO User_Donor_PhoneNo VALUES (0512754297, 4);
INSERT INTO User_Donor_PhoneNo VALUES (0513983695, 5);

SELECT * FROM User_Donor_PhoneNo;

INSERT INTO User_Recipient VALUES (10, 'Dammam', 'Fatima', 4);
INSERT INTO User_Recipient VALUES (11, 'Mecca', 'Ahmed', 6);
INSERT INTO User_Recipient VALUES (12, 'Riyadh', 'Fahad', 7);
INSERT INTO User_Recipient VALUES (13, 'Hail', 'Leena', 2);
INSERT INTO User_Recipient VALUES (14, 'Jubail', 'Haya', 9);

SELECT * FROM User_Recipient;

INSERT INTO User_Recipient_PhoneNo VALUES (0537428281, 10); 
INSERT INTO User_Recipient_PhoneNo VALUES (0555647382, 11);
INSERT INTO User_Recipient_PhoneNo VALUES (0532489671, 12);
INSERT INTO User_Recipient_PhoneNo VALUES (0538382728, 13);
INSERT INTO User_Recipient_PhoneNo VALUES (0534909876, 14);

SELECT * FROM User_Recipient_PhoneNo;

INSERT INTO User_Volunteer VALUES (100, 'Medina', 'Khalid', 'Weekend Mornings', 15.50);
INSERT INTO User_Volunteer VALUES (101, 'Abha', 'Noura', 'Weekdays Afternoons', 22.75);
INSERT INTO User_Volunteer VALUES (102, 'Jubail', 'Salman', 'Weekdays Mornings', 10.25);
INSERT INTO User_Volunteer VALUES (103, 'Mecca', 'Hour', 'Weekend Afternoons', 15.75);
INSERT INTO User_Volunteer VALUES (104, 'Jizan', 'Hessah', 'Weekdays evenings', 17.75);

SELECT * FROM User_Volunteer;

INSERT INTO User_Volunteer_PhoneNo VALUES (0567483932, 100);
INSERT INTO User_Volunteer_PhoneNo VALUES (0546321688, 101);
INSERT INTO User_Volunteer_PhoneNo VALUES (0587776324, 102);
INSERT INTO User_Volunteer_PhoneNo VALUES (0598887223, 103);
INSERT INTO User_Volunteer_PhoneNo VALUES (0566443290, 104);

SELECT * FROM User_Volunteer_PhoneNo;

INSERT INTO Furntiture_item VALUES (500, 'Chair', 'chair.jpg', 'Good', 'Medium', 1);
INSERT INTO Furntiture_item VALUES (501, 'Table', 'table.jpg', 'Excellent', 'Large', 2);
INSERT INTO Furntiture_item VALUES (502, 'Sofa', 'Sofa.jpg', 'Fair', 'Large', 3);
INSERT INTO Furntiture_item VALUES (503, 'Bed', 'Bed.jpg', 'New', 'Small', 4);
INSERT INTO Furntiture_item VALUES (504, 'Wardrobe', 'Wardrobe.jpg', 'Needs Repair', 'Medium', 5);

SELECT * FROM Furntiture_item;

INSERT INTO Furniture_Recipient VALUES (500, 10, 'Pending');
INSERT INTO Furniture_Recipient VALUES (501, 11, 'Assigned');
INSERT INTO Furniture_Recipient VALUES (502, 12, 'Assigned');
INSERT INTO Furniture_Recipient VALUES (503, 13, 'Deliverd');
INSERT INTO Furniture_Recipient VALUES (504, 14, 'Rejected');

SELECT * FROM Furniture_Recipient;

INSERT INTO Donation_Transaction VALUES (1000, DATE '2025-11-18', DATE '2025-11-19', 500, 100);
INSERT INTO Donation_Transaction VALUES (1001, DATE '2025-11-20', NULL, 501, 101);
INSERT INTO Donation_Transaction VALUES (1002, DATE '2025-11-25', DATE '2025-11-28', 502, 102);
INSERT INTO Donation_Transaction VALUES (1003, DATE '2025-12-3', DATE '2025-12-15', 503, 103);
INSERT INTO Donation_Transaction VALUES (1004, DATE '2025-12-15', DATE '2025-12-20', 504, 104);

SELECT * FROM Donation_Transaction;

commit;