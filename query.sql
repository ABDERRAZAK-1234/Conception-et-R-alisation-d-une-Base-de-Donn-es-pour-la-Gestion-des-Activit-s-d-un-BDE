-- SELECT 
SELECT * FROM participants;
SELECT nomEvent, dateEvenement FROM evenements;
SELECT nom,prenom,role FROM membresbde;
SELECT nomEntreprise FROM sponsors;
SELECT FROM participants WHERE nom = "Youssef"
SELECT nom,prenom FROM participants WHERE prenom = "Abderrazak";

-- Update
UPDATE participants SET status_Par = "absent" WHERE prenom = "Nour";
UPDATE evenements SET budget = 10000 WHERE nomEvent = "Jour d'intégration";
UPDATE membresbde SET role="Vice-président" WHERE role ="Vice-présidente" ;
UPDATE membresbde SET nom="Loubati", prenom="Chouaib" WHERE role="Vice-président";
UPDATE membresbde SET email ="choubbati@gmail.com" WHERE role="Vice-président"

--Delete 
DELETE FROM sponsors WHERE nomEntreprise = "AlphaMedia";
DELETE FROM participants WHERE nom = "Chakir";
DELETE FROM evenements WHERE dateEvenement = "2025-03-28";

