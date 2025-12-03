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
