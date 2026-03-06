# Roadmap de Développement : PMT (Backend)

L'objectif principal est de transformer Notre schéma SQL en une API REST robuste, sécurisée et performante en utilisant **Spring Boot**.

---

## 🏗️ Volet Backend : Spring Boot

### Étape 1 : Initialisation & Persistance

_L'assise technique et le lien avec la base de données MySQL._

- **Configuration du projet** : Utilisation de **Spring Initializr** (Java 17+, Maven/Gradle).
  - _Dépendances clés_ : Spring Web, Spring Data JPA, MySQL Driver, Validation.
- **Modélisation (Entities & Repositories)** : Création des modèles Java mappés sur les tables existantes :
  - `User`, `Project`, `Task`, `UserRole`, `History`.
- **Optimisation** : Utilisation de **Lombok** (`@Data`, `@Builder`) pour réduire le code boilerplate (getters/setters).
- **Gestion des types** : Implémentation de `RoleEnum` côté Java pour assurer la cohérence avec le type `ENUM` de la base de données.

### Étape 2 : Logique Métier & Services

_Le cerveau de l'application où les règles de gestion sont appliquées._

- **Mapping DTO** : Mise en place de **MapStruct** pour transformer les entités JPA en objets de transfert (DTO).
  - _Objectif_ : Ne jamais exposer la structure brute de la base de données au Frontend.
- **Services de Gestion** :
  - **CRUD complet** : Gestion des cycles de vie des Projets et des Tâches.
  - **Gestion des Rôles** : Logique de vérification (ex: s'assurer qu'un projet possède au moins un Admin).
  - **Système d'Audit (History)** : Déclenchement automatique d'un enregistrement dans la table `History` à chaque modification de statut d'une tâche.

### Étape 3 : Sécurité & API REST

_La couche d'accès et la protection des données._

- **Spring Security** : Configuration d'une authentification **JWT (JSON Web Token)**.
  - _Approche_ : Stateless (pas de session côté serveur).
- **Développement des Endpoints** :
  - `POST /api/auth/**` : Inscription et connexion des utilisateurs.
  - `GET /api/projects/**` : Récupération des projets (filtrage automatique selon les droits de l'utilisateur connecté).
  - `GET /api/dashboard/metrics` : Endpoint agrégé pour alimenter la maquette (calcul du nombre de tickets complétés, en cours et bloqués).
- **Documentation** : Intégration de **SpringDoc OpenAPI (Swagger UI)** pour tester les routes en temps réel.

---

## 🛠️ Prochaines étapes suggérées

1.  Générer les classes **Entities** JPA à partir de ton script SQL final.
2.  Configurer le fichier `application.properties` pour la connexion MySQL.
3.  Initialiser le projet Frontend avec **Angular** et **Tailwind CSS**.
