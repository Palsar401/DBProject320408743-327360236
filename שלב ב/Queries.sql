
1


SELECT r.RepairID, r.RepairDescription, r.RepairDate, m.MechanicName, m.Specialization
FROM Repair r
JOIN Mechanic m ON r.MechanicID = m.MechanicID
ORDER BY r.RepairDate DESC;

2

SELECT EXTRACT(YEAR FROM r.RepairDate) AS RepairYear, COUNT(*) AS RepairCount
FROM Repair r
GROUP BY EXTRACT(YEAR FROM r.RepairDate)
ORDER BY RepairYear;

3

SELECT v.VehicleModel, r.RepairDescription, m.MechanicName, r.RepairDate
FROM Repair r
JOIN Vehicle v ON r.VehicleID = v.VehicleID
JOIN Mechanic m ON r.MechanicID = m.MechanicID
ORDER BY v.VehicleModel, r.RepairDate;

4
SELECT pir.RepairID, pir.PartID, p.PartName, pir.Quantity
FROM PartInRepair pir
JOIN Part p ON pir.PartID = p.PartID
ORDER BY pir.RepairID, pir.PartID;


1
DELETE FROM Repair
WHERE RepairDate < TO_DATE('01-01-2023', 'DD-MM-YYYY');


2

DELETE FROM Part
WHERE PartID NOT IN (SELECT DISTINCT PartID FROM PartInRepair);



1

UPDATE Repair
SET RepairDescription = 'GUS'
WHERE MechanicID = 1;


2

UPDATE PartInRepair
SET Quantity = Quantity + 1
WHERE PartID = 14;

1


SELECT v.VehicleModel, r.RepairDescription, m.MechanicName, r.RepairDate
FROM Repair r
JOIN Vehicle v ON r.VehicleID = v.VehicleID
JOIN Mechanic m ON r.MechanicID = m.MechanicID
WHERE EXTRACT(YEAR FROM r.RepairDate) = 2023
ORDER BY v.VehicleModel, r.RepairDate;

2

SELECT m.MechanicName, EXTRACT(YEAR FROM r.RepairDate) AS RepairYear, COUNT(*) AS RepairCount
FROM Repair r
JOIN Mechanic m ON r.MechanicID = m.MechanicID
GROUP BY m.MechanicName, EXTRACT(YEAR FROM r.RepairDate)
ORDER BY m.MechanicName, RepairYear;

3


SELECT p.PartName, r.RepairDescription, r.RepairDate
FROM PartInRepair pir
JOIN Part p ON pir.PartID = p.PartID
JOIN Repair r ON pir.RepairID = r.RepairID
WHERE r.RepairDate BETWEEN TO_DATE('01-01-2023', 'DD-MM-YYYY') AND TO_DATE('31-12-2024', 'DD-MM-YYYY')
ORDER BY p.PartName, r.RepairDate;

4
SELECT v.VehicleModel, COUNT(r.RepairID) AS RepairCount
FROM Repair r
JOIN Vehicle v ON r.VehicleID = v.VehicleID
GROUP BY v.VehicleModel
ORDER BY RepairCount DESC;
