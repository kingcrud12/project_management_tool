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
