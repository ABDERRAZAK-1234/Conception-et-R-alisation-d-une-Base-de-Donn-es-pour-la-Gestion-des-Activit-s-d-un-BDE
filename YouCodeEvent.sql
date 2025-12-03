CREATE TABLE participants(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(20),
    prenom VARCHAR(20),
    email VARCHAR(100),
    status_Par Text,
	event_Id INT ,
    FOREIGN KEY(event_Id) REFERENCES evenements(id)
);
-- -------------------------------
CREATE TABLE evenements (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nomEvent VARCHAR(30) NOT NULL,
    description TEXT ,
    dateEvenement DATE ,
    heure TIME ,
    lieu VARCHAR(20),
    budget DECIMAL ,
    activite_id int,
    FOREIGN KEY(activite_id) REFERENCES participants(id)
    FOREIGN KEY(activite_id) REFERENCES activite(id)

);
-- ---------------------

CREATE TABLE types_activites(
	id int PRIMARY KEY AUTO_INCREMENT,
    nomType VARCHAR(40) NOT NULL
    
);
-- --------------------

CREATE TABLE activite (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nom_Activite VARCHAR(25) NOT NULL,
    description TEXT ,
    id_TypeActivite int ,
    FOREIGN KEY(id_TypeActivite) REFERENCES types_activites(id)
);
-- ------------------------------------
CREATE TABLE sponsors (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nomEntreprise VARCHAR(25) NOT NULL,
    email VARCHAR(100) ,
    telephone VARCHAR(25) ,
	event_Id INT ,
    FOREIGN KEY(event_Id) REFERENCES evenements(id)
);
-- --------------
CREATE TABLE membresBDE (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(25) NOT NULL,
    prenom VARCHAR(25) NOT NULL,
    email VARCHAR(100) ,
    role VARCHAR(25),
    dateAdhesion DATE,
	event_Id INT ,
    FOREIGN KEY(event_Id) REFERENCES evenements(id)
);


-- INSERTION SUR LA TABLE DE PARTICAPANTS
INSERT INTO participants(nom,prenom,email,status_Par)VALUES
	("Aamaich","Abderrazak","aamaichabderrazak2004@gmail.com"," diplome"),
    ("Elhassani","Youssef","youssef.elhassani@gmail.com","etudiant actif"),
    ("Mouline","Ikram","ikram.mouline@gmail.com","diplome"),
    ("Fassi","Othmane","othmane.fassi@gmail.com","invité"),
    ("Benzakour","Nour","nour.benzakour@gmail.com","diplome"),
    ("El Amrani","Hamza","hamza.elamrani@gmail.com","etudiant actif"),
    ("Rahmouni","Salma","salma.rahmouni@gmail.com","invité"),
    ("Bouhouch","Khalid","khalid.bouhouch@gmail.com","invité"),
    ("Cherkaoui","Meriem","meriem.cherkaoui@gmail.com","diplome"),
    ("Aarab","Anas","anas.aarab@gmail.com","diplome"),
    ("El Idrissi","Hiba","hiba.elidrissi@gmail.com","etudiant actif"),
    ("Kabbaj","Said","said.kabbaj@gmail.com","diplome"),
    ("Lahrichi","Manal","manal.lahrichi@gmail.com","etudiant actif"),
    ("Tahiri","Mohamed","mohamed.tahiri@gmail.com","etudiant actif"),
    ("Chakir","Rania","rania.chakir@gmail.com","diplome"),
    ("Jabri","Yassin","yassin.jabri@gmail.com","invité"),
    ("Ait Taleb","Aya","aya.aittaleb@gmail.com","diplome"),
    ("Zerhouni","Imad","imad.zerhouni@gmail.com","invité"),
    ("Berrada","Sara","sara.berrada@gmail.com","etudiant actif"),
    ("Karimi","Ayoub","ayoub.karimi@gmail.com","invité");

-- INSERTION SUR LA TABLE DE EVENEMENT
INSERT INTO evenements(`nomEvent`,`description`,`dateEvenement`,`heure`,`lieu`,`budget`) VALUES
("Jour d'intégration","Journée d’accueil des nouveaux étudiants","2025-09-15","09:00","Agoura","5000"),
("Conférence IA","Conférence sur l’intelligence artificielle","2025-03-10","14:00","Salle 12","3000"),
("Workshop Web","Atelier de développement web moderne","2025-04-05","10:00","Lab Informatique","2500"),
("Hackathon 24h","Compétition de programmation en équipe","2025-05-20","08:00","Salle Polyvalente","8000"),
("Forum des métiers","Rencontre avec des professionnels","2025-06-12","09:00","Salle 2","6000"),
("Séminaire Cybersécurité","Séminaire sur la sécurité informatique","2025-04-22","15:00","Salle B1","4000"),
("Journée Sportive","Compétitions et activités sportives","2025-05-02","08:00","Terrain Sportif","7000"),
("Club Expo","Exposition des clubs et associations","2025-03-28","10:00","Patio Central","2000"),
("Formation Design","Formation sur les bases du design graphique","2025-04-18","13:30","Salle Créative","1800"),
("Conférence Big Data","Événement dédié au Big Data et Data Science","2025-06-01","11:00","Amphi B","4500"),
("Journée Culturelle","Animations, théâtre et musique","2025-05-11","09:00","Scène Extérieure","5500"),
("Atelier Python","Formation pratique sur Python","2025-03-25","14:00","Lab 2","2200"),
("Rencontre Alumni","Discussion avec anciens étudiants","2025-04-14","17:00","Salle Réunion","1500"),
("Salon Innovation","Présentation de projets innovants","2025-05-30","10:00","Hall Expo","9000"),
("Tournoi Gaming","Compétition e-sport locale","2025-04-27","12:00","Salle Informatique","3500"),
("Journée Environnement","Activités pour la sensibilisation écologique","2025-06-08","09:00","Cour Centrale","2800"),
("Atelier Soft Skills","Développement de compétences personnelles","2025-05-06","16:00","Salle 3","1700"),
("Conférence Finance","Conférence sur la gestion financière","2025-06-15","10:00","Amphi C","3200"),
("Expo Art Étudiant","Exposition artistique des étudiants","2025-04-09","11:00","Galerie Campus","2400"),
("Session Orientation","Séance d’orientation académique","2025-03-20","09:30","Salle Orientation","1300");
