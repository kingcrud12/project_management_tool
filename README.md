# PMT - Project Management Tool

**PMT** est une plateforme moderne de gestion de projet conçue pour offrir une visibilité claire sur les métriques globales, le suivi des tickets et la gestion collaborative des équipes.

---

## 🛠 Stack Technique

L'architecture repose sur une séparation stricte entre le client et le serveur pour garantir scalabilité et performance.

- **Frontend :** Angular 17+ & Tailwind CSS (Design System sur-mesure).
- **Backend :** Spring Boot 3+ (Java 17).
- **Base de données :** MySQL (Optimisée avec indexation sur les clés primaires).
- **Sécurité :** Stateless Auth via JWT (JSON Web Tokens).

---

## 📊 Modèle Physique des Données (MPD)

Le schéma est conçu pour gérer des rôles dynamiques et un historique complet des actions.

### Tables principales :

- **User** : Authentification et profil.
- **Project** : Détails et chronologie des projets.
- **UserRole** : Table de liaison gérant les permissions (`Admin`, `projectMember`, `observer`).
- **Task** : Unité de travail liée à un projet et un responsable.
- **History** : Journal d'audit des modifications sur les tâches.

---

## 🎨 Design System

Le projet utilise une identité visuelle "Deep Navy & Soft Gray" pour un aspect professionnel et reposant.

- **Couleurs Clés :** \* Navy (`#1E293B`)
  - Success (`#22C55E`)
  - Danger (`#EF4444`)
- **Composants :** Cartes à coins arrondis (`12px`), badges de priorité de style "Pill", et sidebar interactive.

---

## 🗺️ Roadmaps de Développement

### 🏗️ Backend (Spring Boot)

1.  **Persistance** : Mise en place des Entités JPA et Repositories.
2.  **Services** : Logique métier, mapping DTO (MapStruct) et gestion de l'historique.
3.  **Sécurité** : Implémentation de Spring Security et des endpoints JWT.

### 🎨 Frontend (Angular)

1.  **UI Foundation** : Configuration de Tailwind et création des Layouts (Sidebar/Header).
2.  **Core** : Services HTTP, AuthGuards et gestion d'état avec les Signals.
3.  **Features** : Dashboard de métriques, listes de tickets et formulaires de création.

---

## 🚀 Installation Rapide

### Backend

```bash
# Configuration de la DB dans application.properties
./mvnw spring-boot:run
```

## 🤝 Contribuer au Projet

Ce projet est **Open Source** ! Nous accueillons avec enthousiasme toutes les contributions, qu'il s'agisse de corrections de bugs, de nouvelles fonctionnalités ou d'améliorations de la documentation.

Pour maintenir la qualité du code, merci de respecter scrupuleusement les règles suivantes :

### 🌳 Gestion des Branches

Toute contribution doit se faire via une **branche temporaire** isolée. Le nommage doit suivre ces conventions :

- **Correction de bug :** `nom_du_fix/nom_du_bug/plateforme`
  - \_Ex: `fix-auth-error/authentication/api`
  - `fix-sidebar-mobile/sidebar-menu-mobile/client-web`

- **Nouvelle fonctionnalité :** `nom_de_la_fonctionnalité/plateforme`
  - \_Ex: `kanban-view/client-web`
  - `email-notification/api`
- **Sous-fonctionnalité :** `nom_de_la_sous_fonctionnalité/nom_fonctionnalité/plateforme`
  - _Ex: `drag-drop/kanban-view/client-web`_

> **Note sur la plateforme :** Précisez toujours `client-web` pour Angular ou `api` pour Spring Boot.

### 🔄 Flux de Travail (Workflow)

1.  **Pull Request (PR) :** Toutes les PR doivent être dirigées vers la branche **`develop_v1`** pour le moment.
2.  **Commits :** Vos messages de commit doivent être explicites (ex: `feat(api): add history tracking logic` ou `fix(web): correct badge alignment`).
3.  **Validation :** Une relecture de code est nécessaire avant toute fusion.

### 📌 Structure du Dépôt

Nous utilisons un système de branches à deux niveaux :

| Type de Branche      | Nom des Branches                      | Description                                                    |
| :------------------- | :------------------------------------ | :------------------------------------------------------------- |
| **En cours (v1)**    | `develop_v1`, `staging_v1`, `main_v1` | Branches actives pour le développement de la version actuelle. |
| **Versions Stables** | `develop`, `staging`, `main`          | Représentent les versions finales et stables du code.          |

---

## 🛠️ Comment soumettre votre modification ?

1. **Forkez** le projet.
2. Créez votre branche selon les conventions ci-dessus.
3. Commitez vos changements avec des messages clairs.
4. Poussez votre branche et ouvrez une **Pull Request** vers `develop_v1`.
