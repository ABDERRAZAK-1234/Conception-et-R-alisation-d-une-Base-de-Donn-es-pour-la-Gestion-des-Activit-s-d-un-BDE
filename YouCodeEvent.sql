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

-- INSERTION SUR LA TABLE DE MEMBRES_bde
INSERT INTO membresbde(`nom`,`prenom`,`email`,`role`,`dateAdhesion`) VALUES
("Elhaj","Youssef","youssef.elhaj@gmail.com","Président","2025-02-10"),
("Mansouri","Sara","sara.mansouri@gmail.com","Vice-présidente","2025-02-10"),
("Bouzid","Anass","anass.bouzid@gmail.com","Secrétaire","2025-02-11"),
("Cherfi","Imane","imane.cherfi@gmail.com","Trésorière","2025-02-11"),
("Haddad","Ayoub","ayoub.haddad@gmail.com","Responsable Communication","2025-02-12"),
("Ziani","Rania","rania.ziani@gmail.com","Responsable Événements","2025-02-12"),
("Fahmi","Othmane","othmane.fahmi@gmail.com","Responsable Clubs","2025-02-13"),
("Berkani","Nada","nada.berkani@gmail.com","Responsable Logistique","2025-02-13"),
("Idrissi","Khalid","khalid.idrissi@gmail.com","Responsable Sponsoring","2025-02-14"),
("Elmostafa","Meriem","meriem.elmostafa@gmail.com","Chargée des Partenariats","2025-02-14"),
("Bourki","Hamza","hamza.bourki@gmail.com","Media Manager","2025-02-15"),
("Saidi","Lina","lina.saidi@gmail.com","Designer","2025-02-15"),
("Karroumi","Yassin","yassin.karroumi@gmail.com","Photographe","2025-02-16"),
("Bouziane","Kawtar","kawtar.bouziane@gmail.com","Community Manager","2025-02-16"),
("Chafai","Mohamed","mohamed.chafai@gmail.com","Animateur","2025-02-17"),
("Elalami","Hiba","hiba.elalami@gmail.com","Coordinatrice Événements","2025-02-17"),
("Belarbi","Imad","imad.belarbi@gmail.com","Responsable Technique","2025-02-18"),
("Ouahidi","Aya","aya.ouahidi@gmail.com","Chargée Relations Étudiants","2025-02-18"),
("Amzil","Said","said.amzil@gmail.com","Gestion Logistique","2025-02-19"),
("Ghazali","Salma","salma.ghazali@gmail.com","Assistante BDE","2025-02-19");

-- INSERTION SUR LA TABLE DE ACTIVITE
INSERT INTO activite(`nom_Activite`,`description`) VALUES
("Journée Sportive","Organisation d’activités sportives pour les étudiants"),
("Soirée Culturelle","Événement artistique et musical pour promouvoir la culture"),
("Tournoi Gaming","Compétition de jeux vidéo entre étudiants"),
("Atelier Design","Formation sur le design graphique et UX/UI"),
("Workshop Développement","Atelier de programmation et développement web"),
("Conférence Motivation","Séance inspirante avec intervenants externes"),
("Compétition Échecs","Tournoi d’échecs pour amateurs et confirmés"),
("Film Night","Projection de films pour les étudiants"),
("Campagne Environnement","Sensibilisation concernant l’écologie et le recyclage"),
("Sortie Randonnée","Sortie randonnée dans un site naturel"),
("Journée Talents","Scène ouverte pour révéler les talents étudiants"),
("Club Expo","Présentation des clubs étudiants du campus"),
("Foire des Livres","Événement dédié à l’échange et vente de livres"),
("Atelier Photoshop","Initiation à l’édition d’images et retouches"),
("Séance Yoga","Activité bien-être et relaxation pour étudiants"),
("Challenge Innovation","Concours de projets innovants"),
("Soirée Quiz","Jeu quiz intergroupes avec récompenses"),
("Atelier Communication","Formation sur la communication et le leadership"),
("Tournoi Football","Matchs de football entre équipes étudiantes"),
("Journée Porte Ouverte","Présentation de l’établissement aux nouveaux venus");

-- INSERTION SUR LA TABLE DE SPONSORS

INSERT INTO sponsors(`nomEntreprise`,`email`,`telephone`) VALUES
("TechVision","contact@techvision.com","+212600112233"),
("MarocPrint","info@marocprint.ma","+212611223344"),
("SoftCloud","support@softcloud.io","+212622334455"),
("GreenEnergy","contact@greenenergy.ma","+212633445566"),
("AlphaMedia","hello@alphamedia.ma","+212644556677"),
("FoodBox","service@foodbox.ma","+212655667788"),
("QuickNet","contact@quicknet.ma","+212666778899"),
("SmartDev","info@smartdev.io","+212677889900"),
("FreshMarket","contact@freshmarket.ma","+212688990011"),
("NovaSolutions","support@novasolutions.com","+212699001122"),
("EasyPrint","contact@easyprint.ma","+212612345678"),
("BlueSpace","info@bluespace.io","+212623456789"),
("EcoPartners","contact@ecopartners.ma","+212634567890"),
("GoldenTech","support@goldentech.com","+212645678901"),
("MarocDigital","info@marocdigital.ma","+212656789012"),
("RedLine","contact@redline.ma","+212667890123"),
("WebPlus","support@webplus.io","+212678901234"),
("MegaMarket","info@megamarket.ma","+212689012345"),
("ProEvents","contact@proevents.com","+212690123456"),
("CyberWorld","support@cyberworld.io","+212601234567");

-- INSERTION SUR LA TBALE DE TYPE_ACTIVITE

INSERT INTO types_activites(`nomType`) VALUES
("Sport"),
("Culture"),
("Musique"),
("Conférence"),
("Workshop"),
("Formation"),
("Gaming"),
("Randonnée"),
("Théâtre"),
("Cinéma"),
("Innovation"),
("Technologie"),
("Art"),
("Écologie"),
("Leadership"),
("Communication"),
("Santé & Bien-être"),
("Compétition"),
("Événement Social"),
("Orientation");
