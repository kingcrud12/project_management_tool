CREATE DATABASE IF NOT EXISTS pmt_db;
USE pmt_db;

-- ==========================================
-- 1. STRUCTURE DES TABLES
-- ==========================================

CREATE TABLE User (
    id INT AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(100) NOT NULL,
    lastName VARCHAR(100) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    isActive BOOLEAN DEFAULT FALSE,
    password VARCHAR(255) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE Project (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    description TEXT,
    date_debut TIMESTAMP NULL,
    date_fin TIMESTAMP NULL
) ENGINE=InnoDB;

CREATE TABLE UserRole (
    UserId INT NOT NULL,
    ProjectId INT NOT NULL,
    RoleEnum ENUM('Admin', 'projectMember', 'observer') NOT NULL,
    PRIMARY KEY (UserId, ProjectId),
    CONSTRAINT fk_role_user FOREIGN KEY (UserId) REFERENCES User(id) ON DELETE CASCADE,
    CONSTRAINT fk_role_project FOREIGN KEY (ProjectId) REFERENCES Project(id) ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE Task (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ProjectId INT NOT NULL,
    UserId INT NOT NULL, 
    title VARCHAR(255) NOT NULL,
    StatusEnum ENUM('blocked', 'in_progress', 'cancelled', 'closed') NOT NULL,
    PriorityEnum ENUM('high', 'low', 'lowest', 'highest') NOT NULL,
    description TEXT NOT NULL,
    CONSTRAINT fk_task_project FOREIGN KEY (ProjectId) REFERENCES Project(id) ON DELETE CASCADE,
    CONSTRAINT fk_task_user FOREIGN KEY (UserId) REFERENCES User(id) ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE History (
    id INT AUTO_INCREMENT PRIMARY KEY,
    taskId INT NOT NULL,
    UserId INT NOT NULL,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_history_task FOREIGN KEY (taskId) REFERENCES Task(id) ON DELETE CASCADE,
    CONSTRAINT fk_history_user FOREIGN KEY (UserId) REFERENCES User(id) ON DELETE CASCADE
) ENGINE=InnoDB;

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
('Développement App Mobile', 'Création d''une app de gestion de tâches', NOW(), '2026-12-31 23:59:59');

SET @last_project_id = LAST_INSERT_ID();

-- Attribution des Rôles
INSERT INTO UserRole (UserId, ProjectId, RoleEnum)
SELECT id, @last_project_id, 'Admin' FROM User WHERE email = 'jean.dupont@email.com'
UNION
SELECT id, @last_project_id, 'projectMember' FROM User WHERE email = 'marie.curie@email.com'
UNION
SELECT id, @last_project_id, 'observer' FROM User WHERE email = 'luc.s@email.com';

-- Création d'une Tâche
-- CORRECTION : Les constantes sont dans le SELECT, le FROM et WHERE sont à la fin.
INSERT INTO Task (ProjectId, UserId, title, StatusEnum, PriorityEnum, description) 
SELECT @last_project_id, id, 'Schéma de Base de Données', 'in_progress', 'low', 'Mettez en place le MPD final avec des INT.' 
FROM User 
WHERE email = 'jean.dupont@email.com';

SET @last_task_id = LAST_INSERT_ID();

-- Ajout d'un Historique
INSERT INTO History (taskId, UserId)
SELECT @last_task_id, id FROM User WHERE email = 'marie.curie@email.com';