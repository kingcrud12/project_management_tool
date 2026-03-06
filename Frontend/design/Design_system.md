# Design System - PMT (Gestion de Projet)

Ce document définit les règles visuelles et les composants d'interface pour l'application PMT afin d'assurer une cohérence entre le design et le développement.

---

## 🎨 Palette de Couleurs

### Couleurs Primaires (Identité)

| Élément           | Hexadécimal | Usage                                                   |
| :---------------- | :---------- | :------------------------------------------------------ |
| **Deep Navy**     | `#1E293B`   | Fond de la barre latérale, états actifs, textes titres. |
| **Primary White** | `#FFFFFF`   | Fond des cartes, conteneurs et zone de contenu.         |
| **Soft Gray**     | `#F8FAFC`   | Fond général de l'application (Background).             |
| **Sidebar Light** | `#F1F5F9`   | Fond de la sidebar (état repos).                        |

### Couleurs Sémantiques (Statuts & Badges)

- **Success (Vert) :** `#22C55E` — Tickets complétés, taux de complétion positif.
- **Warning (Orange) :** `#F59E0B` — Tâches en cours, priorité moyenne.
- **Danger (Rouge) :** `#EF4444` — Éléments bloqués, priorité haute.
- **Info (Bleu) :** `#3B82F6` — Projets actifs, métriques globales.

---

## 🔡 Typographie

- **Police de caractère :** Sans-serif moderne (_Inter_, _Roboto_ ou _Plus Jakarta Sans_).
- **Titres de section :** `Bold`, `#1E293B`, ~`20px`.
- **Titres de cartes :** `Semibold`, `#1E293B`, ~`16px`.
- **Labels & Métadonnées :** `Regular`, `#64748B`, ~`14px`.

---

## 🧱 Composants UI

### 1. Barre Latérale (Sidebar)

- **Style :** Fond `#F1F5F9` avec une bordure droite légère.
- **Items :** Alignement horizontal (Icône à gauche + texte).
- **État Actif :** \* Fond : `#1E293B`
  - Texte : `#FFFFFF`
  - Arrondi : `8px`

### 2. Cartes (Cards)

- **Border Radius :** `12px`.
- **Shadow :** `shadow-sm` (ombre légère et diffuse).
- **Padding interne :** \* `24px` pour les blocs de métriques.
  - `16px` pour les listes de tickets.

### 3. Badges (Status Pills)

- **Structure :** Fond coloré à faible opacité (10-15%) avec texte en couleur pleine.
- **Border Radius :** `20px` (style pilule).
- **Exemple (Priorité Haute) :** Fond rouge très clair, texte `#EF4444`.

### 4. Icônes

- **Style :** Tracé fin (Outline / Line icons).
- **Conteneurs (Métriques) :** Carré arrondi ou cercle avec fond pastel assorti à la couleur sémantique.

---

## 📐 Mise en Page (Grid & Spacing)

- **Grille :** Système de cartes flexibles (Flexbox ou CSS Grid).
- **Espacement (Gap) :** `16px` ou `24px` entre les composants.
- **Marges de page :** `32px` de padding autour du contenu principal.
- **Hauteur d'en-tête (Header) :** Environ `80px`.
