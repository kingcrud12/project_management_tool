# PMT - Analyse du besoin

Ce document traite de l'analyse du besoin qui sert à la réalisation du projet PMT.

---

## Roadmap

A l'occasion de cette analyse , nous :

- Découvrons le domaine
- Identifions les acteurs ainsi que leurs besoins
- Et pour finir, nous identifions les solutions qui répondent à ces besoins avant de les reporter sous forme d'exigences fonctionnelles et non fonctionnelles

## 1- Découverte du domaine des logiciels de gestion de projet :

Cette découverte se décline deux phases : la découverte de la notion LGP (LGP) et ensuite la découverte du marché des LGP.

### A. Découverte de la notion des LGP :

C'est quoi , un LGP ?

C'est une plateforme numérique qui permet à une équipe d'organiser, de planifier et de suivre l'exécution d'un travail pour atteindre un objectif précis dans un délai imparti.

Si l'on devait résumer, c'est le chef d'orchestre numérique de votre activité. Il remplace les emails éparpillés, les fichiers Excel complexes et les post-its collés sur les écrans.

Voici les quatre piliers qui définissent ce type d'outil:

#### 1. La Planification (Le "Quand") :

C’est la capacité de définir la chronologie du projet.

- Découpage : On casse un gros projet en petites tâches digestes.

- Échéances : On fixe des dates limites.

- Dépendances : On indique que la tâche B ne peut pas commencer avant que la tâche A soit finie (souvent via un Diagramme de Gantt).

#### 2. L'Organisation et l'Assignation (Le "Qui fait quoi") :

L'outil centralise les responsabilités.

- Responsable : Chaque tâche est attribuée à une personne précise pour éviter le "je pensais que c'était toi qui le faisais".

- Priorisation : On indique ce qui est urgent (P0, P1) et ce qui peut attendre.

- Statut : On suit l'avancement en temps réel (À faire, En cours, Bloqué, Terminé).

#### 3. La Collaboration (Le "Comment") :

C'est l'espace d'échange autour du travail.

- Centralisation : Au lieu de chercher un document dans ses mails, on le joint directement à la tâche concernée

- Communication : On commente les tâches, on mentionne les collègues (@associé) pour poser des questions.

#### 4. Le Suivi et le Reporting (Le "Où en est-on") :

Pour les managers et les associés, l'outil génère une vue d'ensemble.

- Tableaux de bord : Graphiques montrant le retard éventuel, la charge de travail de chaque membre ou le budget consommé.

* Quel est l'état du Marché des LGP ?

### B - La découverte du marché des LGP

La découverte de ce marché se décline à son tour en deux phases : Un focus sur la santé économique de ce marché ainsi qu'un focus sur la réglémentation (Européenne, Américaine , internationale) autour des LGP.

### A - Santé Économique du Marché (2026)

Le marché des LGP, intégré au secteur plus large du Collaborative Work Management (CWM), traverse une phase de maturité technologique et de croissance résiliente.

#### 1. Statistiques et Parts de Marché

En 2026, le marché mondial des logiciels de gestion de projet est estimé à environ 11,27 milliards de dollars, avec une projection de croissance robuste.

| Région               | Part de Marché (2026) | Taux de Croissance (CAGR) |
| :------------------- | :-------------------: | :-----------------------: |
| **Amérique du Nord** |          38%          |          ~12.5%           |
| **Europe (EMEA)**    |          25%          |          ~11.1%           |
| **Asie-Pacifique**   |          28%          |  **15.4% (Plus rapide)**  |
| **Reste du monde**   |          9%           |           ~10%            |

- Leader Européen : L'Allemagne domine le marché européen (18,5%), suivie par le Royaume-Uni et la France.

- Tendance : Le modèle SaaS Cloud-Native représente désormais plus de 74% des déploiements.

#### 2. Métriques de Performance (Benchmarks 2026)

Pour qu'un outil comme PMT soit jugé "sain" économiquement, il doit viser les standards actuels du secteur :

NRR (Net Revenue Retention) : La cible est de 106%. Les meilleurs outils atteignent 120%, prouvant que les clients existants augmentent leur usage au fil du temps.

Churn Rate (Attrition) : Le taux de désabonnement "acceptable" en B2B se situe sous les 5% par an.

ROI Utilisateur : Un logiciel de gestion de projet moderne permet d'économiser en moyenne 28 $ pour chaque dollar investi grâce à la réduction du gaspillage de ressources.

### B - Les "Arbitres" : Cadre Réglementaire et Souveraineté

Le succès de PMT reposera sur sa capacité à naviguer dans un environnement législatif de plus en plus strict, particulièrement en Europe. Entre :

- RGPD (Europe) : Le socle de la confiance. PMT doit garantir la protection des données personnelles dès la conception (Privacy by Design).

- Data Act (2026) : Nouveau règlement européen facilitant le partage de données et interdisant les clauses abusives qui "enferment" le client chez un fournisseur (interdiction du Vendor Lock-in).

- Cloud Act (USA) vs Souveraineté Européenne : Les entreprises européennes privilégient de plus en plus des solutions non-soumises au Cloud Act américain, offrant une opportunité majeure pour PMT s'il est hébergé sur un Cloud souverain.

- ISO/IEC 27001 : La certification de sécurité indispensable pour rassurer les DSI et les grands comptes.

- Les Tendances de "L'Arbitrage" Technologique : (WCAG 2.1) : Les gouvernements imposent désormais que les outils collaboratifs soient utilisables par tous (handicaps visuels/moteurs), IA Act : Toute fonctionnalité d'IA dans PMT (ex: prédiction de date de fin) doit être transparente et explicable selon les nouvelles normes européennes.

## 2- Identification des acteurs :

Pour comprendre les enjeux de PMT, il est nécessaire d'identifier les forces en présence et les attentes spécifiques de chaque groupe d'acteurs.

### A. Les Offreurs (Le paysage concurrentiel)

Le marché est actuellement dominé par trois types d'offreurs :

- Les Géants Historiques (ex: Jira, SAP) : Puissants et structurés, mais souvent perçus comme des "usines à gaz" complexes et coûteuses.

- Les Visuels Agiles (ex: Monday, Trello) : Très intuitifs pour des tâches simples, mais atteignent vite leurs limites sur des projets complexes ou hautement réglementés.

- Les Spécialistes Niche (ex: Linear) : Excellents pour les développeurs, mais excluent les autres départements (RH, Marketing, Sales).

### B. Les Clients : Une pyramide de besoins

Un client "entreprise" n'est pas un bloc monolithique. Ses besoins se divisent selon trois profils types :

- **1. L'Acheteur (Le Décideur - DSI/CEO) :**

- Ses besoins : Retour sur investissement (ROI) clair, sécurité des données (Souveraineté), conformité légale (RGPD) et maîtrise des coûts.

- Sa frustration : Les factures imprévisibles basées sur des options cachées et la dépendance aux serveurs américains (Cloud Act).

- **2. L'Administrateur (Le PMO/Chef de projet) :**

- Ses besoins : Pouvoir configurer l'outil sans coder, créer des rapports automatisés et structurer des workflows complexes.

- Sa frustration : Devoir faire appel à un consultant externe dès qu'il veut ajouter un champ personnalisé ou modifier un processus.

- **3. L'Utilisateur Final (L'Employé) :**

- Ses besoins : Une interface rapide, moins de clics pour remplir une tâche, et une application mobile efficace.

- Sa frustration : La "fatigue numérique" face à des outils trop denses qui ralentissent son travail quotidien au lieu de l'aider

### La Problématique : Pourquoi l'offre actuelle échoue ?

Malgré la pléthore d'outils , un fossé demeure :

- Rigidité vs Simplicité : Les outils capables de gérer la complexité (comme Jira) sont trop difficiles à prendre en main pour les non-techniciens.

- Le manque de personnalisation réelle : La plupart des outils imposent leur propre logique de travail. L'entreprise doit s'adapter au logiciel, et non l'inverse.

- Le dilemme de la donnée : En 2026, la méfiance envers l'hébergement hors Europe devient un frein majeur à l'achat pour les entreprises stratégiques.

## 3 - Identification des solutions (Proposition de valeur de PMT) :

PMT ne cherche pas à être "un outil de plus", mais à résoudre le paradoxe de la "Puissance Simple".

Comment PMT répond aux besoins non satisfaits :

| Défi du marché            | Réponse de PMT                                                                                                  | Impact pour l'acteur                    |
| :------------------------ | :-------------------------------------------------------------------------------------------------------------- | :-------------------------------------- |
| **Complexité excessive**  | Interface épurée (Angular 17) avec **"Simplicité Progressive"** (on n'affiche que ce qui est utile).            | **Utilisateur :** Adoption immédiate.   |
| **Coût de configuration** | Moteur **No-Code** permettant de créer des champs et des processus via un éditeur visuel.                       | **Administrateur :** Autonomie totale.  |
| **Souveraineté & Lois**   | Hébergement sur **Cloud Souverain** et conformité native au **Data Act 2026**.                                  | **Acheteur/DSI :** Sécurité juridique.  |
| **Silos métiers**         | Système de **"Briques LEGO"** : le même outil devient un Kanban pour le Dev et un Calendrier pour le Marketing. | **Entreprise :** Collaboration globale. |
