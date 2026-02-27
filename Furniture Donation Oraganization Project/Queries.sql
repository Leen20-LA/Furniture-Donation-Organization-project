
--Query 1: Using WHERE with LIKE
--Scenario: Find donors in Riyadh city
SELECT * FROM User_Donor WHERE Address LIKE '%Riyadh%';

-- Query 2: Using JOIN
-- Scenario: Show furniture items with donor names
SELECT f.FurntitureID, f.FurntitureType, d.DonorName
FROM Furntiture_item f
JOIN User_Donor d ON f.DonorID = d.DonorID;

-- Query 3: Using GROUP BY with COUNT
-- Scenario: Count furniture items per donor
SELECT d.DonorName, COUNT(f.FurntitureID) as TotalItems
FROM User_Donor d
LEFT JOIN Furntiture_item f ON d.DonorID = f.DonorID
GROUP BY d.DonorName;

-- Query 4: Using GROUP BY + HAVING
-- Scenario: Show volunteers with more than 20 hours
SELECT VolunteerName, TotalHours
FROM User_Volunteer
GROUP BY VolunteerName, TotalHours
HAVING TotalHours > 20;

-- Query 5: Using nested query
-- Scenario: Show recipients who haven't received any furniture
SELECT RecipientName 
FROM User_Recipient 
WHERE RecipientID NOT IN (
    SELECT DISTINCT RecipientID 
    FROM Furniture_Recipient 
    WHERE Status = 'Deliverd'
);

-- Query 6: Using BETWEEN and UNION ALL
-- Scenario: Nov pickups vs delivered items
SELECT 'Nov Pickups' , COUNT(*) FROM Donation_Transaction
WHERE Pickup_Date BETWEEN DATE '2025-11-01' AND DATE '2025-11-30'

UNION ALL

SELECT 'Delivered', COUNT(*) FROM Furniture_Recipient
WHERE Status = 'Delivered';


-- Query 7: UPDATE query
-- Scenario: Update furniture status to delivered
UPDATE Furniture_Recipient 
SET Status = 'Deliverd' 
WHERE FurntitureID = 500 AND RecipientID = 10;

SELECT * FROM Furniture_Recipient;

-- Query 8: DELETE query
-- Scenario: Delete a donor from the system
DELETE FROM User_Donor 
WHERE DonorID = 2;

SELECT * FROM User_Donor;
