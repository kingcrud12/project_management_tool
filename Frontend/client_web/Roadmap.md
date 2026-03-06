# Roadmap de Développement : PMT (Frontend)

L'objectif est de donner vie à la maquette en implémentant le **Design System** et en consommant l'API Spring Boot via une architecture **Angular** moderne et performante.

---

## 💻 Volet Frontend : Angular 17+ & Tailwind CSS

### Étape 1 : Setup & UI Foundation

_Mise en place de l'environnement visuel et des structures de base._

- **Initialisation** : Création du projet avec `ng new pmt-frontend` et intégration de **Tailwind CSS**.
- **Theming & Configuration** : Personnalisation du fichier `tailwind.config.js` pour inclure la palette de couleurs (`deep-navy`, `soft-gray`, `success`, etc.) et les arrondis (`12px`, `20px`) définis dans le Design System.
- **Architecture des Layouts** :
  - **SidebarComponent** : Navigation latérale avec gestion des états actifs (fond sombre, texte blanc).
  - **HeaderComponent** : Barre supérieure incluant le titre de la section et le menu de profil utilisateur.

### Étape 2 : Core Logic (Services & RxJS)

_Le moteur de l'application et la gestion des données._

- **API Service** : Création d'un service centralisé pour gérer les requêtes HTTP vers le backend Spring Boot (utilisation de `HttpClient`).
- **Sécurité (Auth Guard)** : Implémentation de gardes de navigation pour protéger les routes et rediriger les utilisateurs non authentifiés.
- **State Management** :
  - Utilisation des **Signals** (nouveauté Angular 17) pour une gestion réactive et simplifiée des données.
  - Utilisation de **RxJS** pour les flux de données complexes et les mises à jour en temps réel des métriques.

### Étape 3 : Features & Dashboard

_Développement des fonctionnalités métier et des écrans principaux._

- **Dashboard Component** :
  - **Métriques globales** : Intégration des 4 cartes d'indicateurs (Projets actifs, Tickets complétés, etc.).
  - **Listes dynamiques** : Affichage de la section "Mes tickets en cours" avec rendu conditionnel des badges de priorité.
- **Project Management** :
  - Développement des formulaires de création de projet.
  - Interface de gestion des membres et attribution des rôles (`UserRole`).

---

## 🛠️ Prochaines étapes suggérées

1.  Configurer l'**Intercepteur HTTP** pour joindre automatiquement le token JWT aux requêtes.
2.  Créer une bibliothèque de composants réutilisables (Boutons, Badges, Cards) pour gagner en productivité.
3.  Mettre en place le **Lazy Loading** des modules pour optimiser le temps de chargement initial.
