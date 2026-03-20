-- ==========================================
-- 1. STRUCTURE DES TABLES (SQLite Version)
-- ==========================================

CREATE TABLE User (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    firstName VARCHAR(100) NOT NULL,
    lastName VARCHAR(100) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    isActive BOOLEAN DEFAULT 0,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE Project (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(150) NOT NULL,
    description TEXT,
    date_debut DATETIME DEFAULT CURRENT_TIMESTAMP,
    date_fin DATETIME
);

CREATE TABLE UserRole (
    UserId INTEGER NOT NULL,
    ProjectId INTEGER NOT NULL,
    RoleEnum TEXT CHECK(RoleEnum IN ('Admin', 'projectMember', 'observer')) NOT NULL,
    PRIMARY KEY (UserId, ProjectId),
    FOREIGN KEY (UserId) REFERENCES User(id) ON DELETE CASCADE,
    FOREIGN KEY (ProjectId) REFERENCES Project(id) ON DELETE CASCADE
);

CREATE TABLE Task (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    ProjectId INTEGER NOT NULL,
    UserId INTEGER NOT NULL, 
    title VARCHAR(255) NOT NULL,
    StatusEnum TEXT CHECK(StatusEnum IN ('blocked', 'in_progress', 'cancelled', 'closed')) NOT NULL,
    PriorityEnum TEXT CHECK(PriorityEnum IN ('high', 'low', 'lowest', 'highest')) NOT NULL,
    description TEXT NOT NULL,
    FOREIGN KEY (ProjectId) REFERENCES Project(id) ON DELETE CASCADE,
    FOREIGN KEY (UserId) REFERENCES User(id) ON DELETE CASCADE
);

CREATE TABLE History (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    taskId INTEGER NOT NULL,
    UserId INTEGER NOT NULL,
    timestamp DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (taskId) REFERENCES Task(id) ON DELETE CASCADE,
    FOREIGN KEY (UserId) REFERENCES User(id) ON DELETE CASCADE
);

-- ==========================================
-- 2. INSERTION DES DONNÉES DE TEST
-- ==========================================

-- Insertion des Utilisateurs
INSERT INTO User (firstName, lastName, email, password) VALUES
('Jean', 'Dupont', 'jean.dupont@email.com', '$2y$10$hash1'),
('Marie', 'Curie', 'marie.curie@email.com', '$2y$10$hash2'),
('Luc', 'Skywalker', 'luc.s@email.com', '$2y$10$hash3');

-- Insertion d'un Projet
INSERT INTO Project (name, description, date_debut, date_fin) VALUES
('Développement App Mobile', 'Création d''une app de gestion de tâches', CURRENT_TIMESTAMP, '2026-12-31 23:59:59');

-- Attribution des Rôles
-- On utilise last_insert_rowid() car c'est le dernier projet inséré
INSERT INTO UserRole (UserId, ProjectId, RoleEnum)
SELECT id, (SELECT MAX(id) FROM Project), 'Admin' FROM User WHERE email = 'jean.dupont@email.com'
UNION
SELECT id, (SELECT MAX(id) FROM Project), 'projectMember' FROM User WHERE email = 'marie.curie@email.com'
UNION
SELECT id, (SELECT MAX(id) FROM Project), 'observer' FROM User WHERE email = 'luc.s@email.com';

-- Création d'une Tâche
INSERT INTO Task (ProjectId, UserId, title, StatusEnum, PriorityEnum, description) 
SELECT (SELECT MAX(id) FROM Project), id, 'Schéma de Base de Données', 'in_progress', 'low', 'Mettez en place le MPD final avec des INT.' 
FROM User 
WHERE email = 'jean.dupont@email.com';

-- Ajout d'un Historique
INSERT INTO History (taskId, UserId)
SELECT (SELECT MAX(id) FROM Task), id FROM User WHERE email = 'marie.curie@email.com';
