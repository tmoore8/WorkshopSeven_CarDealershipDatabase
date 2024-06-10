-- Get all dealerships
-- SELECT * FROM Dealership;
-- Find all vehicles for a specific dealership
-- SELECT * FROM Vehicles v JOIN Inventory i ON v.VIN = i.VIN WHERE i.Dealership_ID = 2;
-- Find a car by VIN
-- SELECT * FROM Vehicles WHERE VIN = '1HGCM82633A123460';
-- Find the dealership where a certain car is located, by VIN
-- SELECT * FROM Dealership d JOIN Inventory i ON d.Dealership_ID = i.Dealership_ID WHERE i.VIN = '1HGCM82633A123458';
-- Find all Dealerships that have a certain car type
-- SELECT DISTINCT * FROM Dealership d JOIN Inventory i ON d.Dealership_ID = i.Dealership_ID JOIN Vehicles v ON i.VIN = v.VIN WHERE v.Make = 'Ford' AND v.Model = 'Mustang' AND v.Color = 'Red';
-- Get all sales information for a specific dealer for a specific date range
-- SELECT * FROM sales_contracts sc JOIN inventory i ON sc.VIN = i.VIN WHERE i.dealership_id = 1 AND sc.sales_date BETWEEN '2023-06-01' AND '2023-12-31';
-- Get all lease information for a specific dealer for a specific end date range
-- SELECT * FROM lease_contracts lc JOIN inventory i ON lc.VIN = i.VIN WHERE i.dealership_id = 1 AND lc.lease_end_date BETWEEN '2025-01-01' AND '2025-12-31';



