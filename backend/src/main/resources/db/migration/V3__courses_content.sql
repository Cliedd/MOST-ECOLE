-- ============================================================
-- MOST ÉCOLE – Contenu des cours (V3)
-- V3__courses_content.sql
-- Contenu basé sur les documents pédagogiques FWB fournis :
--   - #écosoc De Boeck UAA1, UAA2, UAA3 (FSE)
--   - Cours TIC (informatique générale + TC)
--   - CQFD Mathématiques 1ère (De Boeck)
-- ============================================================

-- ============================================================
-- HELPERS : fonctions de résolution des IDs
-- level_id() et subject_id() résolus par sous-requêtes
-- ============================================================

-- ============================================================
-- NIVEAU 1 – MATHÉMATIQUES
-- Source : CQFD Maths 1ère – Van Dieren & Bianchi, De Boeck
-- ============================================================

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Situer les nombres sur la droite graduée',
  'Comprendre les différents ensembles de nombres et les placer sur la droite numérique.',
  'TEXT',
  'Dans ce cours, nous allons explorer les différents types de nombres que tu rencontres en mathématiques et apprendre à les situer correctement sur la droite graduée.

## Les ensembles de nombres

En mathématiques, on distingue plusieurs familles de nombres :

**Les entiers naturels (ℕ)** : Ce sont les nombres que tu utilises pour compter : 0, 1, 2, 3, 4, 5… Ils ne sont jamais négatifs et n''ont pas de virgule.

**Les entiers relatifs (ℤ)** : Ils incluent les entiers naturels et leurs opposés négatifs : …, -3, -2, -1, 0, 1, 2, 3… On les utilise par exemple pour exprimer des températures sous zéro ou des dettes.

**Les nombres décimaux** : Ce sont des nombres qui peuvent avoir une partie après la virgule, comme 3,14 ou -2,5. Les entiers sont des cas particuliers des décimaux (3 = 3,0).

**Les fractions** : Une fraction comme 3/4 représente 3 parties d''un tout divisé en 4. On peut toujours convertir une fraction en nombre décimal : 3/4 = 0,75.

## La droite numérique

La droite numérique est un outil fondamental en mathématiques. C''est une droite sur laquelle :
- On choisit un point origine (0)
- On fixe une unité de longueur
- Les nombres positifs se placent à droite du 0
- Les nombres négatifs se placent à gauche du 0

Pour situer un nombre sur la droite, on divise l''intervalle entre deux entiers en autant de parties que le dénominateur le demande. Par exemple, pour placer 1/3, on divise l''intervalle [0 ; 1] en 3 parties égales et on prend la première graduation.

## Comparer des nombres

Pour comparer deux nombres :
- Sur la droite numérique, le nombre le plus grand est toujours à droite.
- -2 < -1 car -1 est à droite de -2 sur la droite
- 1/2 < 3/4 car 2/4 < 3/4

## La valeur absolue

La valeur absolue d''un nombre, notée |x|, représente sa distance à zéro sur la droite numérique, sans tenir compte du signe.
- |5| = 5
- |-5| = 5
- |-3,7| = 3,7

La valeur absolue est toujours positive ou nulle.

## Exercices types

1. Place les nombres suivants sur la droite graduée : -3, 1/2, 2,5, -1,5, 7/4
2. Range ces nombres du plus petit au plus grand : -4 ; 3 ; -1/2 ; 0 ; 2,3
3. Calcule : |-7| + |3| = ?

Maîtriser la position des nombres sur la droite graduée est essentiel pour aborder l''algèbre, les inéquations et les fonctions dans les années suivantes.',
  (SELECT id FROM subjects WHERE name = 'Mathématiques' AND level_id = (SELECT id FROM levels WHERE level_number = 1)),
  (SELECT id FROM levels WHERE level_number = 1),
  true
),

(
  'Diviseurs, multiples et règles de divisibilité',
  'Identifier les diviseurs et multiples d''un nombre, appliquer les critères de divisibilité et découvrir les nombres premiers.',
  'TEXT',
  'Ce cours te permettra de comprendre les relations entre les nombres à travers les notions de diviseurs, multiples et nombres premiers.

## Diviseurs d''un nombre

Un nombre entier a est un **diviseur** de b si la division de b par a donne un résultat entier (sans reste).

**Exemple** : Les diviseurs de 12 sont : 1, 2, 3, 4, 6 et 12, car :
- 12 ÷ 1 = 12 ✓
- 12 ÷ 2 = 6 ✓
- 12 ÷ 3 = 4 ✓
- 12 ÷ 4 = 3 ✓
- 12 ÷ 6 = 2 ✓
- 12 ÷ 12 = 1 ✓

## Multiples d''un nombre

Un nombre m est un **multiple** de a s''il existe un entier k tel que m = a × k.

**Exemple** : Les multiples de 7 sont : 0, 7, 14, 21, 28, 35… car 7×0=0, 7×1=7, 7×2=14, etc.

## Critères de divisibilité

Ces règles rapides te permettent de vérifier si un nombre est divisible sans faire la division complète :

| Diviseur | Critère |
|----------|---------|
| 2 | Le dernier chiffre est 0, 2, 4, 6 ou 8 (nombre pair) |
| 3 | La somme des chiffres est divisible par 3 |
| 4 | Les deux derniers chiffres forment un nombre divisible par 4 |
| 5 | Le dernier chiffre est 0 ou 5 |
| 9 | La somme des chiffres est divisible par 9 |
| 10 | Le dernier chiffre est 0 |

**Exemple** : Est-ce que 1 236 est divisible par 3 ?
Somme des chiffres : 1 + 2 + 3 + 6 = 12, et 12 ÷ 3 = 4 → OUI, 1 236 est divisible par 3.

## Les nombres premiers

Un **nombre premier** est un entier naturel supérieur à 1 qui n''a que deux diviseurs : 1 et lui-même.

Les premiers nombres premiers : 2, 3, 5, 7, 11, 13, 17, 19, 23, 29…

Attention : 1 n''est PAS un nombre premier (il n''a qu''un seul diviseur : lui-même).

## La décomposition en facteurs premiers

Tout entier naturel supérieur à 1 peut s''écrire comme un produit de nombres premiers.

**Exemple** : 60 = 2 × 2 × 3 × 5 = 2² × 3 × 5

Cette décomposition est unique (théorème fondamental de l''arithmétique).

## PGCD et PPCM

**Le PGCD** (Plus Grand Commun Diviseur) de deux nombres est le plus grand entier qui divise les deux nombres.
PGCD(12, 18) = 6

**Le PPCM** (Plus Petit Commun Multiple) est le plus petit entier positif multiple des deux nombres.
PPCM(4, 6) = 12

Ces notions sont utiles pour simplifier les fractions et trouver un dénominateur commun.',
  (SELECT id FROM subjects WHERE name = 'Mathématiques' AND level_id = (SELECT id FROM levels WHERE level_number = 1)),
  (SELECT id FROM levels WHERE level_number = 1),
  true
),

(
  'Utiliser et écrire une formule algébrique',
  'Exprimer des régularités mathématiques à travers des formules et appliquer la priorité des opérations.',
  'TEXT',
  'Ce cours t''apprend à lire, écrire et utiliser des formules mathématiques, outil fondamental pour modéliser des situations réelles.

## Des suites de figures aux formules

Observons une suite de figures construites avec des allumettes :
- Figure 1 : 4 allumettes (un carré)
- Figure 2 : 7 allumettes (deux carrés partageant un côté)
- Figure 3 : 10 allumettes
- Figure n : ?

En observant le motif : on commence avec 4 allumettes, puis on ajoute 3 allumettes pour chaque nouveau carré.

**Formule** : Nombre d''allumettes = 3 × n + 1, où n est le numéro de la figure.

Vérifions : Pour n = 1 : 3×1 + 1 = 4 ✓ Pour n = 3 : 3×3 + 1 = 10 ✓

## Lire et utiliser une formule

Une formule est une expression mathématique qui utilise des lettres (variables) pour représenter des quantités qui peuvent varier.

**Exemple concret** : Le prix d''une course en taxi est calculé par :
Prix = 2,50 + 1,20 × d, où d représente la distance en kilomètres.

Pour une course de 8 km : Prix = 2,50 + 1,20 × 8 = 2,50 + 9,60 = 12,10 €

## Priorité des opérations

Lorsqu''une expression contient plusieurs opérations, il faut respecter un ordre précis :

1. **P** – Parenthèses d''abord (calcule ce qui est entre parenthèses)
2. **E** – Exposants (puissances et racines)
3. **MD** – Multiplication et Division (de gauche à droite)
4. **AS** – Addition et Soustraction (de gauche à droite)

**Exemples** :
- 3 + 4 × 2 = 3 + 8 = 11 (et non 14 !)
- (3 + 4) × 2 = 7 × 2 = 14
- 24 ÷ 4 + 2 × 3 = 6 + 6 = 12
- 2³ + 5 × (10 - 7) = 8 + 5 × 3 = 8 + 15 = 23

## Écrire une formule à partir d''une situation

**Situation** : Un plombier facture 50 € de déplacement + 35 € par heure de travail.

Variable : h = nombre d''heures de travail
Formule : Facture = 50 + 35 × h

Pour 3 heures : Facture = 50 + 35 × 3 = 50 + 105 = 155 €

## Les puissances

Une puissance note une multiplication répétée :
- 2³ = 2 × 2 × 2 = 8
- 10² = 10 × 10 = 100
- a⁰ = 1 (pour tout a ≠ 0)

Les puissances de 10 sont particulièrement utiles pour les grands nombres et les unités de mesure.',
  (SELECT id FROM subjects WHERE name = 'Mathématiques' AND level_id = (SELECT id FROM levels WHERE level_number = 1)),
  (SELECT id FROM levels WHERE level_number = 1),
  true
),

(
  'Proportionnalité et pourcentages',
  'Comprendre et utiliser les situations de proportionnalité, calculer des pourcentages dans des contextes réels.',
  'TEXT',
  'La proportionnalité est omniprésente dans la vie quotidienne : recettes de cuisine, réductions en magasin, vitesses, cartes géographiques…

## La proportionnalité directe

Deux grandeurs sont **directement proportionnelles** si, quand l''une est multipliée par un nombre, l''autre l''est aussi par le même nombre.

**Exemple** : Le prix à payer est proportionnel au nombre de kg achetés.
- 1 kg de pommes → 2,50 €
- 3 kg de pommes → 7,50 € (× 3)
- 0,5 kg de pommes → 1,25 € (× 0,5)

Le **coefficient de proportionnalité** est le rapport constant : Prix ÷ Masse = 2,50 €/kg

## Le tableau de proportionnalité

| Masse (kg) | 1 | 2 | 3 | 5 |
|------------|---|---|---|---|
| Prix (€) | 2,50 | 5,00 | 7,50 | 12,50 |

Dans un tableau de proportionnalité, tous les rapports ligne/ligne sont égaux.

## La règle de trois

La règle de trois permet de calculer une valeur inconnue dans une situation proportionnelle.

**Exemple** : Si 4 cahiers coûtent 6 €, combien coûtent 7 cahiers ?

4 cahiers → 6 €
7 cahiers → x €

x = 7 × 6 ÷ 4 = 42 ÷ 4 = 10,50 €

## Les pourcentages

Un pourcentage exprime une proportion sur 100.

**Calculer un pourcentage d''un nombre** :
35% de 200 = 200 × 35 ÷ 100 = 200 × 0,35 = 70

**Trouver le pourcentage** :
Quelle proportion représente 15 sur 60 ?
15 ÷ 60 × 100 = 25%

**Applications réelles** :
- Une veste à 80 € avec 20% de réduction → réduction = 80 × 0,20 = 16 € → prix final = 64 €
- La TVA belge standard est de 21% → sur un article à 100 €, la TVA = 21 €
- Un score de 34/40 en contrôle → 34 ÷ 40 × 100 = 85%

## Grandeurs inversement proportionnelles

Deux grandeurs sont **inversement proportionnelles** si leur produit est constant.

**Exemple** : La vitesse et le temps pour parcourir une distance fixe.
- À 60 km/h → 2 heures pour 120 km
- À 120 km/h → 1 heure pour 120 km (vitesse × 2, temps ÷ 2)',
  (SELECT id FROM subjects WHERE name = 'Mathématiques' AND level_id = (SELECT id FROM levels WHERE level_number = 1)),
  (SELECT id FROM levels WHERE level_number = 1),
  true
);

-- ============================================================
-- NIVEAU 1 – SCIENCES (Informatique de base)
-- Source : tic_cours-informatique-tc.pdf (Module 1 & 2)
-- ============================================================

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Introduction à l''informatique et aux systèmes informatiques',
  'Découvrir les concepts fondamentaux de l''informatique : définitions, traitement de l''information et composants d''un système informatique.',
  'TEXT',
  'Ce cours t''introduit au monde de l''informatique, science qui est au cœur de notre société moderne.

## Définition de l''informatique

Le mot **informatique** est formé de deux mots : **infor**mation + auto**matique**.

L''informatique est la **science du traitement automatique de l''information par ordinateur**. Elle englobe toutes les techniques permettant de collecter, stocker, traiter et communiquer de l''information à l''aide de machines numériques.

## Qu''est-ce que l''information ?

Une **information** est un élément conceptuel qui permet le traitement de connaissance. Elle peut prendre plusieurs formes :
- Texte (lettres, chiffres, symboles)
- Images (photos, graphiques, vidéos)
- Sons (musique, voix)
- Données numériques (mesures, statistiques)

## Le traitement de l''information

Un **traitement** est l''ensemble des opérations effectuées sur des informations suivant un ensemble de règles finies.

Le schéma de traitement comprend trois étapes :
1. **Entrée** : saisie des données (clavier, souris, capteurs…)
2. **Traitement** : opérations effectuées par le processeur
3. **Sortie** : affichage ou transmission du résultat (écran, imprimante…)

Un **traitement automatique** est un traitement effectué sans intervention humaine directe, par un système informatique.

## Le système informatique

Un **système informatique** est un ensemble de moyens matériels (hardware) et logiciels (software) permettant d''assurer le traitement automatique de l''information.

Il comprend :
- **Le matériel (Hardware)** : l''ensemble des éléments physiques qu''on peut voir et toucher (ordinateur, clavier, souris, écran…)
- **Le logiciel (Software)** : l''ensemble des programmes, des procédés et des règles relatifs au fonctionnement d''un ensemble de traitement de l''information

## Exemples de systèmes informatiques

- Un ordinateur personnel (PC, laptop, tablette)
- Un smartphone
- Une caisse enregistreuse automatique
- Un distributeur automatique de billets (DAB)
- Un robot industriel
- Une calculatrice programmable

## Les domaines d''application de l''informatique

L''informatique est présente dans presque tous les secteurs de la société :
- **Éducation** : plateformes d''apprentissage en ligne, logiciels éducatifs
- **Santé** : dossiers médicaux électroniques, imagerie médicale, télémédecine
- **Commerce** : e-commerce, gestion des stocks, systèmes de paiement
- **Transport** : GPS, pilote automatique, gestion du trafic
- **Communication** : internet, messagerie, réseaux sociaux
- **Industrie** : automatisation, robots, contrôle qualité',
  (SELECT id FROM subjects WHERE name = 'Sciences' AND level_id = (SELECT id FROM levels WHERE level_number = 1)),
  (SELECT id FROM levels WHERE level_number = 1),
  true
),

(
  'La structure d''un ordinateur : matériel et composants',
  'Identifier et comprendre le rôle de chaque composant matériel d''un ordinateur : processeur, mémoires, stockage et périphériques.',
  'TEXT',
  'Pour utiliser efficacement un ordinateur, il est important de comprendre son architecture interne et le rôle de chaque composant.

## L''unité centrale de traitement (CPU)

Le **processeur** (CPU – Central Processing Unit) est le cerveau de l''ordinateur. Il :
- Décode et exécute les instructions des programmes
- Effectue toutes les opérations de calcul arithmétique et logique
- Assure le transfert des informations entre les composants via les bus

Le processeur est caractérisé par :
- Sa **marque** : Intel (Core i3, i5, i7…), AMD, ARM…
- Sa **fréquence** : mesurée en GHz (gigahertz), indique le nombre d''opérations par seconde

Il est composé de :
- **UAL** (Unité Arithmétique et Logique) : effectue les calculs (+, -, ×, ÷) et les opérations logiques (ET, OU, NON)
- **UC** (Unité de Commande) : interprète et exécute les instructions
- **Registres** : petites mémoires ultra-rapides internes au processeur

## La mémoire centrale

La mémoire centrale stocke temporairement les données en cours de traitement. Elle est divisée en deux types :

**La RAM (Random Access Memory – mémoire vive)** :
- Stocke les données des programmes en cours d''exécution
- Accessible en lecture et en écriture
- **Volatile** : son contenu est effacé quand l''ordinateur s''éteint
- Exemple : 8 Go, 16 Go de RAM

**La ROM (Read Only Memory – mémoire morte)** :
- Stocke les instructions de démarrage (BIOS)
- Accessible en lecture seulement
- **Non volatile** : garde ses données même sans courant

## Les unités de stockage (mémoire de masse)

Permettent de conserver les données de façon permanente :
- **Disque dur (HDD)** : principal organe de stockage (de quelques dizaines à plusieurs centaines de Go)
- **SSD** (Solid State Drive) : plus rapide que le HDD, sans pièces mécaniques
- **Clé USB** : petit accessoire amovible (de quelques Go à plusieurs To)
- **CD-ROM** : 700 Mo – musique, logiciels
- **DVD** : 4,7 Go simple couche – films, données
- **Blu-Ray** : 25 Go – haute définition

## Les unités d''entrée et de sortie

**Périphériques d''entrée** (envoient des données vers l''ordinateur) :
- Clavier (AZERTY en Belgique et France)
- Souris (optique laser, LED, TrackBall)
- Scanner, webcam, microphone, tablette graphique

**Périphériques de sortie** (affichent les résultats) :
- Écran (LCD, OLED)
- Imprimante (jet d''encre, laser)
- Haut-parleurs, vidéoprojecteur

## Les unités de mesure de l''information

| Unité | Abréviation | Équivalence |
|-------|-------------|-------------|
| Bit | b | 0 ou 1 |
| Octet | o | 8 bits |
| Kilo-octet | Ko | ≈ 1 000 octets |
| Méga-octet | Mo | ≈ 1 000 Ko |
| Giga-octet | Go | ≈ 1 000 Mo |
| Téra-octet | To | ≈ 1 000 Go |',
  (SELECT id FROM subjects WHERE name = 'Sciences' AND level_id = (SELECT id FROM levels WHERE level_number = 1)),
  (SELECT id FROM levels WHERE level_number = 1),
  true
),

(
  'Les logiciels : systèmes d''exploitation et logiciels d''application',
  'Distinguer les logiciels de base des logiciels d''application, comprendre le rôle d''un système d''exploitation.',
  'TEXT',
  'Les logiciels sont indispensables pour faire fonctionner un ordinateur. Sans eux, le matériel serait inutilisable.

## Qu''est-ce qu''un logiciel ?

Un **logiciel (Software)** est un ensemble de programmes, de procédés et de règles relatifs au fonctionnement d''un ensemble de traitement de l''information.

On distingue deux grandes catégories de logiciels :

## Les logiciels de base

Ce sont les logiciels **indispensables** au fonctionnement de l''ordinateur.

### Le système d''exploitation (OS)

Un **système d''exploitation** est un logiciel de base qui permet la gestion de toutes les ressources matérielles et logicielles d''un ordinateur.

**Rôle du système d''exploitation** :
- Démarrer l''ordinateur
- Gérer l''allocation du processeur entre les programmes
- Installer et lancer les logiciels d''application
- Utiliser les périphériques (imprimante, clavier, souris…)
- Gérer un réseau informatique
- Assurer la sécurité et les droits d''accès

**Exemples de systèmes d''exploitation** :
- **Windows** (Microsoft) : le plus répandu sur PC – versions : XP, 7, 8, 10, 11
- **Mac OS** (Apple) : utilisé sur les ordinateurs Apple (iMac, MacBook)
- **Linux/Unix** : système libre et gratuit, très utilisé sur les serveurs
- **Android** (Google) : système pour smartphones et tablettes
- **iOS** (Apple) : système pour iPhone et iPad

**Caractéristiques importantes** :
- **Multitâche** : permet d''exécuter plusieurs programmes simultanément
- **Multi-utilisateurs** : gère plusieurs comptes utilisateurs sur la même machine

## Les logiciels d''application

Ce sont des programmes destinés à réaliser des tâches spécifiques pour l''utilisateur.

**Exemples par catégorie** :
- **Traitement de texte** : Microsoft Word, LibreOffice Writer, Google Docs
- **Tableur** : Microsoft Excel, LibreOffice Calc – pour les calculs et graphiques
- **Présentation assistée (PAO)** : PowerPoint, LibreOffice Impress
- **Navigateur internet** : Chrome, Firefox, Edge, Safari
- **Antivirus** : Windows Defender, Avast, Norton – protection contre les malwares
- **Messagerie** : Outlook, Gmail, Thunderbird
- **Lecteur multimédia** : VLC, Windows Media Player

## L''environnement Windows

Quand Windows démarre, il affiche le **bureau** avec :
- Les **icônes** : symboles graphiques représentant des fichiers, dossiers ou applications
- La **barre des tâches** : bande en bas de l''écran avec le bouton Démarrer et la zone de notification
- Les **fenêtres** : zones rectangulaires affichant une application ou un document

**L''Explorateur Windows** permet de naviguer dans les dossiers et fichiers : copier, déplacer, supprimer, renommer des fichiers.',
  (SELECT id FROM subjects WHERE name = 'Sciences' AND level_id = (SELECT id FROM levels WHERE level_number = 1)),
  (SELECT id FROM levels WHERE level_number = 1),
  true
);

-- ============================================================
-- NIVEAU 2 – SCIENCES (Informatique – réseaux et internet)
-- Source : tic_cours-informatique-tc.pdf (Modules 3 & 4)
-- ============================================================

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Codage de l''information et représentation binaire',
  'Comprendre comment l''ordinateur représente l''information en binaire et convertir entre les systèmes décimal et binaire.',
  'TEXT',
  'Toute information traitée par un ordinateur est codée sous forme de nombres binaires. Comprendre ce codage est fondamental pour appréhender le fonctionnement des machines numériques.

## Le codage binaire

Les ordinateurs fonctionnent grâce à des signaux électriques qui n''ont que **deux états** :
- **0** → éteint, ouvert, absence de courant
- **1** → allumé, fermé, présence de courant

Ces deux chiffres (0 et 1) sont appelés **chiffres binaires** ou **bits** (de l''anglais *binary digit*).

## Le bit et l''octet

**Le bit** : c''est la plus petite unité d''information. Il vaut 0 ou 1.

**L''octet (Byte)** : c''est la plus petite unité de mesure pratique de l''information. Il est composé de **8 bits**.

Avec 1 octet (8 bits), on peut représenter 2⁸ = **256 valeurs différentes** (de 0 à 255).

## Représentation des nombres en binaire

Chaque position dans un nombre binaire représente une puissance de 2 :

| Position | 7 | 6 | 5 | 4 | 3 | 2 | 1 | 0 |
|----------|---|---|---|---|---|---|---|---|
| Valeur | 128 | 64 | 32 | 16 | 8 | 4 | 2 | 1 |

**Exemple** : Le nombre binaire 1001 en décimal :
1001₂ = 1×2³ + 0×2² + 0×2¹ + 1×2⁰ = 8 + 0 + 0 + 1 = **9₁₀**

## Conversion décimal → binaire

On divise le nombre décimal successivement par 2 et on note les restes :

**Exemple** : Convertir 10₁₀ en binaire
- 10 ÷ 2 = 5 reste **0**
- 5 ÷ 2 = 2 reste **1**
- 2 ÷ 2 = 1 reste **0**
- 1 ÷ 2 = 0 reste **1**

On lit les restes de bas en haut : 10₁₀ = **1010₂**

## Représentation des caractères

Les caractères (lettres, chiffres, symboles) sont également codés en binaire selon des tables de correspondance comme l''**ASCII** :
- "A" = 01000001 en binaire
- "a" = 01100001 en binaire
- "0" = 00110000 en binaire

## Les unités de mesure

| Unité | Valeur |
|-------|--------|
| 1 Ko (kilo-octet) | ≈ 2¹⁰ = 1 024 octets |
| 1 Mo (méga-octet) | ≈ 2¹⁰ Ko = 1 024 Ko |
| 1 Go (giga-octet) | ≈ 2¹⁰ Mo = 1 024 Mo |
| 1 To (téra-octet) | ≈ 2¹⁰ Go = 1 024 Go |

**Exemples pratiques** :
- Une photo = environ 3 à 5 Mo
- Un film HD = environ 4 à 8 Go
- Un disque dur standard = 1 To ou plus',
  (SELECT id FROM subjects WHERE name = 'Sciences' AND level_id = (SELECT id FROM levels WHERE level_number = 2)),
  (SELECT id FROM levels WHERE level_number = 2),
  true
);

-- ============================================================
-- NIVEAU 3 – FORMATION SOCIALE ET ÉCONOMIQUE
-- Source : #écosoc UAA1 – Normes et société (De Boeck + syllabus)
-- ============================================================

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'La prise de décision : mécanismes et processus',
  'Comprendre comment nous prenons nos décisions quotidiennes en analysant les déclencheurs, les émotions et les besoins qui les motivent.',
  'TEXT',
  'Chaque jour, nous prenons des dizaines de décisions. Mais comment fonctionnent réellement ces processus ? Ce cours t''aide à comprendre les mécanismes qui guident tes choix.

## Les déclencheurs de la décision

Toute décision commence par un **déclencheur**, c''est-à-dire un élément qui met en mouvement notre processus de réflexion et d''action.

**Déclencheur externe** : provient de l''environnement extérieur.
- Un ami te propose une sortie
- Tu vois une publicité pour un produit
- Ton professeur te donne une consigne
- Une alarme sonne

**Déclencheur interne** : provient de l''intérieur de toi-même.
- Tu as faim (besoin physiologique)
- Tu te sens seul (besoin d''appartenance)
- Tu es fatigué
- Tu as une idée spontanée

## Le rôle des 5 sens

Nos sens sont les "portes d''entrée" de l''information de l''environnement vers notre cerveau :
- **La vue** : couleurs, formes, expressions faciales
- **L''ouïe** : sons, paroles, musique
- **L''odorat** : odeurs agréables ou désagréables
- **Le goût** : saveurs, alimentation
- **Le toucher** : textures, températures, douleur

Les informations reçues par les sens sont traitées instantanément par notre cerveau, souvent de façon automatique (réflexes).

## Les pensées automatiques

Suite à un déclencheur, notre cerveau génère des **pensées automatiques** : des évaluations rapides et souvent inconscientes de la situation. Ces pensées influencent directement nos émotions.

## Les émotions primaires

Les émotions sont des réactions affectives intenses à une situation. On distingue **6 émotions primaires** (universelles dans toutes les cultures) :

1. **La peur** : réaction face à un danger réel ou imaginé – prépare à fuir ou à se protéger
2. **La colère** : réaction face à une injustice ou un obstacle – prépare à se défendre ou à attaquer
3. **La tristesse** : réaction face à une perte ou une déception – encourage le recueil et le soutien social
4. **La joie** : réaction face à quelque chose d''agréable – renforce les comportements positifs
5. **La surprise** : réaction face à l''inattendu – oriente l''attention vers le nouveau stimulus
6. **Le dégoût** : réaction face à quelque chose de répugnant – pousse à l''évitement

## La frustration

La **frustration** est une émotion particulière qui apparaît quand un **besoin n''est pas satisfait** ou qu''un objectif est bloqué. La frustration peut conduire à deux types de réactions :
- **La fuite** : éviter la situation frustrante, se retirer
- **L''agression** : réagir avec hostilité contre l''obstacle

Comprendre ses frustrations permet de mieux gérer ses réactions et de trouver des solutions constructives.

## La pyramide de Maslow

Abraham Maslow, psychologue américain, a proposé une hiérarchie des besoins humains représentée sous forme de pyramide à 5 niveaux :

**Niveau 1 – Besoins physiologiques** (base) : manger, boire, dormir, respirer, se reproduire. Ce sont les besoins vitaux, à satisfaire en priorité.

**Niveau 2 – Besoins de sécurité** : sécurité du corps, de l''emploi, de la santé, de la propriété, protection contre les agressions.

**Niveau 3 – Besoins d''appartenance sociale** : amour, amitié, appartenance à un groupe, intimité, relations sociales.

**Niveau 4 – Besoins d''estime** : confiance en soi, respect des autres, estime personnelle, reconnaissance.

**Niveau 5 – Besoins d''accomplissement personnel** (sommet) : réalisation de son potentiel, créativité, développement personnel.

Selon Maslow, on cherche généralement à satisfaire les besoins des niveaux inférieurs avant ceux des niveaux supérieurs.',
  (SELECT id FROM subjects WHERE name = 'Formation sociale et économique' AND level_id = (SELECT id FROM levels WHERE level_number = 3)),
  (SELECT id FROM levels WHERE level_number = 3),
  true
),

(
  'Normes, valeurs et socialisation',
  'Comprendre ce que sont les normes et valeurs sociales, et comment la socialisation nous permet de les intérioriser.',
  'TEXT',
  'Vivre en société implique de partager des règles communes. Ce cours explore les concepts de norme, valeur et socialisation qui structurent notre vie sociale.

## Les normes sociales

Une **norme sociale** est une règle de conduite, explicite ou implicite, qui définit ce qui est considéré comme acceptable ou inacceptable dans un groupe social donné.

Les normes peuvent être :
- **Formelles (juridiques)** : codifiées dans des lois et règlements (ex. : interdiction de voler, obligation de porter la ceinture en voiture)
- **Informelles (sociales)** : non écrites mais intériorisées par les membres d''un groupe (ex. : saluer quand on entre dans une pièce, laisser sa place à une personne âgée)

Les normes varient selon :
- La **culture** : ce qui est normal dans un pays peut être étrange dans un autre
- Le **groupe** : les normes d''un groupe de jeunes différent de celles des adultes
- L''**époque** : les normes évoluent avec le temps

## Les valeurs

Les **valeurs** sont des principes moraux, des idéaux qui guident nos comportements et sur lesquels reposent les normes.

Exemples de valeurs : la liberté, la solidarité, l''égalité, l''honnêteté, le respect, la famille, la réussite, la paix…

Les normes découlent des valeurs. Par exemple :
- Valeur : **respect d''autrui** → Norme : ne pas insulter les gens
- Valeur : **honnêteté** → Norme : ne pas copier lors des examens

## La socialisation

La **socialisation** est le processus par lequel un individu apprend et intériorise les normes, valeurs et comportements de la société dans laquelle il vit. C''est grâce à ce processus que nous devenons des membres à part entière de notre société.

### La socialisation primaire

Elle se déroule **durant l''enfance** et est assurée principalement par la **famille**. C''est la période la plus intense d''apprentissage des normes fondamentales : la langue, les bonnes manières, les croyances religieuses ou philosophiques, les valeurs familiales.

### La socialisation secondaire

Elle se produit **tout au long de la vie** et est assurée par d''autres agents de socialisation :
- **L''école** : transmet des savoirs, des valeurs civiques, la discipline
- **Les pairs (amis)** : influencent les goûts, les comportements, le langage
- **Les médias** : télévision, internet, réseaux sociaux diffusent des normes culturelles
- **Le monde du travail** : socialise aux normes professionnelles
- **Les associations, clubs sportifs** : transmettent leurs propres valeurs et règles

## L''identité sociale

À travers la socialisation, chacun construit son **identité sociale** : la façon dont on se perçoit soi-même et dont on est perçu par les autres en tant que membre de groupes sociaux (famille, nation, classe sociale, genre, religion…).',
  (SELECT id FROM subjects WHERE name = 'Formation sociale et économique' AND level_id = (SELECT id FROM levels WHERE level_number = 3)),
  (SELECT id FROM levels WHERE level_number = 3),
  true
),

(
  'Transgression, responsabilité et sanctions',
  'Analyser les conséquences de la transgression des normes sociales et comprendre les différentes formes de responsabilité et de sanctions.',
  'TEXT',
  'Lorsqu''une norme est enfreinte, cela entraîne des conséquences pour l''individu et pour la société. Ce cours explore les concepts de transgression, responsabilité et sanctions.

## La transgression

La **transgression** est le fait de violer une norme sociale, quelle que soit son origine (légale, morale, sociale).

### Types de transgressions

**Transgression des normes formelles (juridiques)** :
- Infraction pénale : vol, agression, trafic de drogue, fraude → poursuites pénales
- Infraction civile : non-respect d''un contrat, dommages causés à autrui → réparation civile
- Infraction administrative : stationnement interdit, non-paiement d''amendes → sanction administrative

**Transgression des normes informelles** :
- Comportement jugé irrespectueux : parler fort dans un endroit calme
- Non-respect des usages : ne pas saluer ses voisins
- Ces transgressions entraînent des sanctions sociales (regard désapprobateur, exclusion du groupe)

## Les formes de responsabilité

La **responsabilité** est l''obligation de répondre de ses actes et d''en assumer les conséquences.

### Responsabilité pénale

Elle s''applique quand l''acte est qualifié d''**infraction pénale** (crime, délit ou contravention) par la loi.
- L''auteur est poursuivi par le **Parquet** (ministère public) au nom de la société
- La sanction peut être une peine d''emprisonnement, une amende, une peine de travail…
- En Belgique, la responsabilité pénale commence à **18 ans** (mesures spéciales pour les mineurs)

### Responsabilité civile

Elle s''applique quand un acte cause un **dommage** à une autre personne.
- La victime peut demander réparation (remboursement, indemnisation)
- Exemple : un conducteur qui renverse un cycliste doit réparer son vélo et payer les soins médicaux
- La responsabilité civile peut être couverte par une assurance

### Responsabilité morale

Elle relève de la conscience individuelle et des valeurs personnelles.
- On se sent coupable envers soi-même ou envers un groupe
- Elle n''entraîne pas de sanction légale mais peut peser sur la personne

## Les sanctions

Une **sanction** est la conséquence imposée suite à une transgression. Elle peut être :

**Formelles** :
- Pénales : prison, amende, travaux d''intérêt général, probation
- Civiles : indemnisation, remboursement
- Administratives : retrait de permis, amende, avertissement

**Informelles** :
- Réprimande, exclusion du groupe, rumeur, boycott

## Les institutions judiciaires en Belgique

La **Justice** est rendue au nom de l''État par des tribunaux indépendants.

Principaux tribunaux :
- **Tribunal de police** : infractions de roulage, contraventions
- **Tribunal correctionnel** : délits (peines jusqu''à 5 ans)
- **Cour d''assises** : crimes graves (meurtre, viol…)
- **Tribunal civil** : litiges entre particuliers (divorces, dommages-intérêts)
- **Conseil d''État** : contrôle des actes des autorités administratives',
  (SELECT id FROM subjects WHERE name = 'Formation sociale et économique' AND level_id = (SELECT id FROM levels WHERE level_number = 3)),
  (SELECT id FROM levels WHERE level_number = 3),
  true
);

-- ============================================================
-- NIVEAU 4 – FORMATION SOCIALE ET ÉCONOMIQUE
-- Source : #écosoc UAA2 – Budget et droit (De Boeck)
-- ============================================================

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Établir un budget personnel : dépenses et revenus',
  'Apprendre à classifier les dépenses et les revenus pour établir un budget personnel équilibré.',
  'TEXT',
  'Gérer son argent est une compétence essentielle pour l''autonomie. Ce cours t''apprend à construire un budget personnel rigoureux en classifiant tes dépenses et tes revenus.

## Les types de dépenses

Les dépenses peuvent être classées en trois catégories :

### Dépenses fixes

Ce sont des dépenses dont le **montant est identique** chaque mois, indépendamment de ton activité ou de tes choix.
- Loyer ou remboursement de crédit immobilier
- Abonnement GSM (forfait mensuel)
- Abonnement aux transports en commun (STIB, TEC, De Lijn)
- Assurances (voiture, habitation, santé)
- Abonnements (Netflix, Spotify…)

**Caractéristique** : tu peux les anticiper avec précision, mais il est difficile de les réduire à court terme.

### Dépenses variables

Ce sont des dépenses qui reviennent **chaque mois** mais dont le **montant varie** selon tes choix ou ta consommation.
- Alimentation (supermarché, restaurants)
- Carburant ou recharges de carte de transport
- Vêtements et chaussures
- Loisirs (cinéma, sorties…)
- Produits d''hygiène et d''entretien

**Caractéristique** : tu peux les contrôler et les réduire en changeant tes habitudes.

### Dépenses exceptionnelles

Ce sont des dépenses qui apparaissent **environ une fois par an** et qui ne sont pas toujours prévisibles.
- Réparations (voiture, électroménager)
- Factures médicales imprévues
- Cadeaux d''anniversaire ou de Noël
- Vacances
- Frais scolaires annuels (manuels, inscriptions)

**Conseil** : prévoir une réserve mensuelle pour faire face aux dépenses exceptionnelles (technique de l''enveloppe).

## Les types de revenus

Les revenus se classifient en quatre catégories :

### Revenus du travail

Rémunération directe de l''activité professionnelle :
- Salaire d''un employé (après déduction des cotisations sociales = **salaire net**)
- Bénéfices d''un indépendant ou d''un agriculteur
- Revenus d''un job étudiant

### Revenus du patrimoine

Issus de biens possédés :
- Loyers perçus sur un bien immobilier
- Intérêts bancaires (sur un compte d''épargne)
- Dividendes d''actions

### Revenus de transfert

Versements de la collectivité (État, sécurité sociale) :
- Allocations de chômage
- Allocations familiales
- Pensions de retraite
- Revenus d''intégration sociale (RIS)
- Allocations d''invalidité

### Revenus exceptionnels

Rentrées non régulières :
- Héritage
- Gain à la loterie
- Vente d''un bien personnel

## L''épargne et l''équilibre budgétaire

Un **budget** est un tableau comparatif des dépenses et des revenus pour une période donnée (mois, trimestre, année).

**Épargne = Total des revenus − Total des dépenses**

- Si revenus > dépenses → **budget excédentaire** → possibilité d''épargner
- Si revenus = dépenses → **budget équilibré**
- Si revenus < dépenses → **budget déficitaire** → risque de surendettement

L''**épargne** peut être :
- Placée sur un compte d''épargne (rémunérée par des intérêts)
- Investie (actions, obligations, immobilier)
- Conservée en liquide (pour les dépenses courantes)

**Important** : "épargne" et "compte d''épargne" sont deux choses différentes. L''épargne est la partie non consommée du revenu ; un compte d''épargne est le support bancaire où on peut la placer.',
  (SELECT id FROM subjects WHERE name = 'Formation sociale et économique' AND level_id = (SELECT id FROM levels WHERE level_number = 4)),
  (SELECT id FROM levels WHERE level_number = 4),
  true
),

(
  'Le contrat : conditions de validité et implications',
  'Identifier les éléments constitutifs d''un contrat valide, comprendre les droits et obligations des parties contractantes.',
  'TEXT',
  'Un contrat est un accord qui lie deux ou plusieurs personnes. Comprendre les contrats est essentiel pour ne pas se retrouver dans une situation défavorable.

## Définition du contrat

Un **contrat** est un accord de volonté entre deux ou plusieurs parties (personnes physiques ou morales) qui crée des **obligations** juridiquement contraignantes.

Exemples courants : contrat de travail, contrat de location, contrat de vente, abonnement GSM, contrat d''assurance, contrat de crédit.

## Les conditions de validité d''un contrat

En droit belge (Code civil), un contrat est valide s''il remplit quatre conditions :

### 1. Le consentement

Les parties doivent **accepter librement** de signer le contrat. Le consentement est vicié (invalide) en cas de :
- **Erreur** : on a mal compris l''objet du contrat
- **Dol** (tromperie) : on a été induit en erreur volontairement
- **Violence** : on a signé sous contrainte physique ou psychologique

### 2. La capacité juridique

Les parties doivent avoir la **capacité légale** de contracter.
- Les **majeurs** (18 ans et plus) ont en principe la pleine capacité
- Les **mineurs** ne peuvent contracter seuls que pour des actes de la vie courante
- Les personnes placées sous tutelle ont une capacité limitée

### 3. L''objet du contrat

Le contrat doit porter sur quelque chose de **précis et licite** (légal).
- La prestation ou le bien échangé doit être clairement défini
- Il ne peut pas porter sur quelque chose d''illégal (vente de drogues, etc.)

### 4. La cause licite

Le **motif** du contrat doit être légal et moral.
- Un contrat pour assassiner quelqu''un est nul même si toutes les autres conditions sont remplies

## Les mentions légales d''un contrat écrit

Un contrat écrit doit généralement contenir :
- L''identité des parties (nom, prénom, adresse, numéro national)
- L''objet du contrat (ce qui est vendu, loué, réalisé)
- Le prix ou la contrepartie
- La durée et les modalités d''exécution
- Les conditions de résiliation
- La date et la signature des parties

## Les implications financières d''un contrat

Avant de signer un contrat, il faut toujours mesurer son **impact sur le budget** :

**Exemple d''un abonnement GSM** :
- Abonnement mensuel : 35 €/mois
- Sur 24 mois (durée du contrat) : 35 × 24 = 840 €
- En cas de résiliation anticipée : pénalités de rupture (souvent 3 mois de frais)

**Conseils pratiques** :
- Lire entièrement un contrat avant de signer (y compris les petites lignes)
- Vérifier la durée d''engagement et les conditions de résiliation
- Comparer plusieurs offres avant de s''engager
- En cas de doute, demander conseil à un juriste ou au Centre d''Information et de Conseil (CIC)',
  (SELECT id FROM subjects WHERE name = 'Formation sociale et économique' AND level_id = (SELECT id FROM levels WHERE level_number = 4)),
  (SELECT id FROM levels WHERE level_number = 4),
  true
),

(
  'Les crédits à la consommation et le surendettement',
  'Comprendre les différents types de crédits, calculer leur coût réel et identifier les risques de surendettement.',
  'TEXT',
  'Le crédit permet d''accéder à des biens ou services avant d''en avoir les moyens. Mais mal géré, il peut mener au surendettement. Ce cours t''aide à comprendre les enjeux.

## Qu''est-ce qu''un crédit ?

Un **crédit** est un prêt d''argent accordé par un établissement financier (banque) à un particulier ou une entreprise, en échange du remboursement de cette somme plus des **intérêts** à une date ultérieure.

Le **taux d''intérêt** représente le "prix" du crédit, exprimé en pourcentage annuel (TAEG – Taux Annuel Effectif Global).

## Les types de crédits à la consommation

### Le crédit à tempérament

- Montant fixe emprunté pour l''achat d''un bien précis (voiture, électroménager…)
- Remboursement en **mensualités fixes** sur une durée déterminée
- Taux fixe ou variable
- Exemple : 10 000 € sur 48 mois à 5% TAEG → mensualité d''environ 230 €

### L''ouverture de crédit (crédit revolving)

- Une réserve d''argent disponible (ex. : 5 000 €) que tu utilises selon tes besoins
- Remboursement progressif, la réserve se reconstitue au fur et à mesure
- **Taux généralement très élevé** (jusqu''à 20-25%) → très coûteux sur le long terme
- Lié souvent à une carte de crédit

### Le prêt hypothécaire

- Destiné à l''achat d''un bien immobilier
- Montant très élevé, durée longue (15 à 30 ans)
- La maison sert de **garantie** (hypothèque) : en cas de non-paiement, la banque peut la saisir

### Le crédit à la consommation simple

- Petit crédit personnel pour n''importe quel besoin
- Généralement sans justificatif d''utilisation

## Calculer le coût réel d''un crédit

**Exemple** : Tu empruntes 1 200 € sur 12 mois à un TAEG de 12%.
- Mensualité : environ 106 €
- Total remboursé : 12 × 106 = 1 272 €
- **Coût du crédit** : 1 272 - 1 200 = **72 €** (ce que le crédit te coûte en plus)

Plus la durée est longue, plus le coût total est élevé, même si la mensualité est plus faible.

## Le surendettement

Le **surendettement** survient quand une personne ou un ménage **ne peut plus faire face** à ses obligations de remboursement.

**Causes fréquentes** :
- Accumulation de crédits (multi-endettement)
- Perte d''emploi ou baisse de revenus
- Événement imprévu (maladie, séparation)
- Mauvaise gestion du budget

**Signes d''alerte** :
- Rembourser des crédits avec d''autres crédits
- Ne plus pouvoir payer les factures courantes
- Recevoir des rappels de paiement réguliers

**Solutions légales en Belgique** :
- **Médiation de dettes** : un médiateur négocie avec les créanciers
- **Règlement collectif de dettes (RCD)** : procédure judiciaire devant le Tribunal du travail
- L''**indyScore** (anciennement Centrale des Crédits) : base de données des crédits accordés aux particuliers belges',
  (SELECT id FROM subjects WHERE name = 'Formation sociale et économique' AND level_id = (SELECT id FROM levels WHERE level_number = 4)),
  (SELECT id FROM levels WHERE level_number = 4),
  true
);

-- ============================================================
-- NIVEAU 5 – FORMATION SOCIALE ET ÉCONOMIQUE
-- Source : FSE UAA3 – La consommation (Saint-Luc Mons)
-- ============================================================

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Besoins, désirs et composantes de la consommation',
  'Distinguer besoin et désir, classifier les biens et services, comprendre les notions de produit marchand et non-marchand.',
  'TEXT',
  'La consommation est au cœur de notre vie quotidienne. Ce cours t''aide à analyser ses composantes fondamentales pour devenir un consommateur éclairé.

## Les 7 types de consommateurs

Les experts en marketing identifient différents profils de consommateurs :

1. **Celui qui achète le meilleur** : Il achète ce qui lui accorde un statut social, même si c''est cher.
2. **L''impulsif** : Il fait beaucoup de shopping et achète souvent sans réfléchir, sous le coup de l''émotion.
3. **L''optimiste équilibré** : Il analyse ses achats, compare les offres et n''achète que s''il trouve un réel bénéfice (rapport qualité/prix).
4. **Le lutteur en herbe** : Il pense que sa vie serait meilleure s''il possédait plus. Il achète selon son humeur.
5. **Le casanier conservateur** : Il est attentif et n''achète que ce dont il a besoin, quand il en a besoin.
6. **Le sceptique indépendant** : Il préfère déléguer ses achats à d''autres. Il n''achète que l''essentiel.
7. **Le traditionaliste sécuritaire** : Il déteste le shopping, c''est un problème pour lui. Il n''est pas intéressé par les nouvelles acquisitions.

## Besoin vs désir

Un **besoin** est une nécessité universelle, une obligation ressentie suite à un manque. Il est fondamental et objectif.

Un **désir** est un manque subjectif et singulier. Ce qui est un désir pour une personne peut être un besoin pour une autre (selon sa situation).

*Exemple* : L''eau est un besoin. Une eau minérale de luxe est un désir.

**La pyramide de Maslow** classe les besoins en 5 niveaux :
1. Besoins physiologiques (manger, boire, dormir)
2. Sécurité (logement, santé, emploi)
3. Besoins sociaux (amour, appartenance, amitié)
4. Estime de soi (respect, reconnaissance, confiance)
5. Accomplissement personnel (créativité, réalisation)

## Les biens et les services

**Un bien** est un produit matériel et concret qu''on peut toucher.
- **Bien durable** : il se détruit progressivement dans le temps (maison, voiture, réfrigérateur)
- **Bien non durable** : il est détruit immédiatement ou rapidement après sa consommation (sandwich, essence)

**Un service** est une prestation immatérielle, une action accomplie par un vendeur pour un acheteur.
- Exemples : consultation médicale, coupe de cheveux, transport en bus, abonnement Spotify

**La consommation** au sens large est l''utilisation d''un bien ou d''un service entraînant sa destruction à plus ou moins long terme.

## Produit marchand vs non-marchand

**Produit marchand** : produit ou fourni par le secteur privé, échangé sur un marché à un prix couvrant au moins son coût de production. Le prix est fixé par la loi de l''offre et de la demande.

**Produit non-marchand** : financé par les services publics, obtenu gratuitement ou à un prix inférieur au coût de revient. Leur but est de satisfaire un besoin d''intérêt général. Chacun y contribue via les impôts et les cotisations sociales.
- Exemples : enseignement public, soins de santé remboursés, bibliothèques communales, transports en commun subventionnés

## Consommation privée vs collective

**Consommation privée** : le bien ou service n''est consommé que par un seul individu ou ménage (manger une pomme, aller au cinéma, écouter Spotify).

**Consommation collective** : plusieurs individus peuvent consommer en même temps le même bien ou service sans que la consommation de l''un ne réduise celle de l''autre (utiliser une route, aller à l''école, utiliser les toilettes publiques).',
  (SELECT id FROM subjects WHERE name = 'Formation sociale et économique' AND level_id = (SELECT id FROM levels WHERE level_number = 5)),
  (SELECT id FROM levels WHERE level_number = 5),
  true
),

(
  'Circuits de distribution et structures de marché',
  'Analyser les différents circuits par lesquels un bien parvient au consommateur et comprendre les structures de marché (concurrence, monopole, oligopole).',
  'TEXT',
  'Entre la production d''un bien et sa consommation, il existe différents circuits. Ce cours analyse ces chemins et les structures des marchés sur lesquels les échanges ont lieu.

## Le circuit de distribution

Le **circuit de distribution** est l''ensemble des chemins empruntés par un bien pour rejoindre le consommateur final depuis le producteur.

### Le circuit direct (zéro intermédiaire)

Le producteur vend directement au consommateur, sans intermédiaire :
- Vente à la ferme
- Marchés de producteurs
- AMAP (Association pour le Maintien d''une Agriculture Paysanne)
- Ventes à domicile

**Avantages** : prix plus bas, contact direct, fraîcheur des produits
**Inconvénients** : disponibilité limitée, moins de choix

### Le circuit court (un intermédiaire)

Un seul intermédiaire (détaillant) entre le producteur et le consommateur :
- Épiceries, boucheries, magasins spécialisés
- Ventes par correspondance

### Le circuit long (deux intermédiaires ou plus)

Plusieurs intermédiaires entre le producteur et le consommateur :
- Producteur → Transformateur (industrie agro-alimentaire) → Grossiste → Détaillant → Consommateur
- C''est le circuit des grandes et moyennes surfaces (Carrefour, Lidl, Delhaize…)

**Avantages** : grande disponibilité, large choix, prix compétitifs grâce aux économies d''échelle
**Inconvénients** : prix parfois plus élevé en raison des marges de chaque intermédiaire

## La structure de marché

Un **marché** est un lieu, réel ou fictif, où entrent en relation des **demandeurs** (acheteurs) avec des **offreurs** (vendeurs). Cette interaction aboutit à des échanges à un certain prix, dit « prix du marché ».

### La concurrence parfaite

La **concurrence parfaite** est un modèle théorique dans lequel aucun acteur ne peut influencer seul le prix du marché. Elle nécessite 4 conditions :
1. **Atomicité** : très grand nombre d''offreurs et de demandeurs
2. **Homogénéité** : les produits sont identiques (interchangeables)
3. **Transparence** : information parfaite et gratuite pour tous
4. **Libre entrée et sortie** : pas de barrières pour entrer ou quitter le marché

En pratique, la concurrence parfaite est très rare. On parle alors de **concurrence imparfaite**.

### Le monopole

Un seul offreur face à de nombreux demandeurs. L''offreur fixe le prix seul.
- Exemple : réseau ferroviaire SNCB (seul opérateur sur les voies belges), certains services publics

### L''oligopole

Quelques offreurs seulement face à de nombreux demandeurs.
- Exemple : marché des opérateurs téléphoniques en Belgique (Proximus, Orange, Telenet/Base)
- Les quelques acteurs peuvent s''entendre sur les prix (cartel) → interdit par la loi !

### La part de marché

La **part de marché** est un indicateur clé :
Part de marché = Ventes de la marque ÷ Ventes totales du marché × 100

*Exemple* : Nike représente 63% du marché des équipementiers sportifs chez les athlètes français, Adidas 13%, Asics 13%, Puma 11%.

## La loi de l''offre et de la demande

**La demande** représente la quantité de produits que les consommateurs sont prêts à acheter pour un certain prix. Si le prix augmente, la demande diminue.

**L''offre** représente la quantité de produits que les producteurs souhaitent vendre à un prix donné. Si le prix augmente, l''offre augmente car c''est plus rentable.

Le **prix d''équilibre** est le prix auquel l''offre et la demande se rencontrent. À ce prix, tout ce qui est produit est vendu et tout ce qui est demandé est disponible.

En pratique, environ 80% des prix pratiqués sur le marché sont imposés par de grands groupes, ce qui biaise le fonctionnement théorique de la loi.',
  (SELECT id FROM subjects WHERE name = 'Formation sociale et économique' AND level_id = (SELECT id FROM levels WHERE level_number = 5)),
  (SELECT id FROM levels WHERE level_number = 5),
  true
),

(
  'Les déterminants de la consommation et la consommation responsable',
  'Identifier les facteurs économiques, psychologiques, éthiques et écologiques qui influencent nos comportements de consommation.',
  'TEXT',
  'Nos choix de consommation ne sont pas aléatoires. De nombreux facteurs, conscients et inconscients, les influencent. Ce cours analyse ces déterminants et propose une vision responsable de la consommation.

## Les déterminants économiques

Le facteur le plus direct qui influence la consommation est **le revenu disponible** : plus on gagne, plus on peut dépenser.

- **Le revenu** : salaire, allocations, revenus du patrimoine
- **Le prix des biens et services** : si le prix augmente, la quantité demandée diminue (loi de la demande)
- **L''inflation** : la hausse générale des prix réduit le pouvoir d''achat des ménages
- **Le crédit** : permet d''acheter maintenant et de payer plus tard → augmente la consommation à court terme

## Les déterminants psychosociologiques

Les facteurs psychologiques et sociaux jouent un rôle énorme :
- **Les goûts et préférences** personnels
- **L''imitation sociale** (effet de mode) : on achète ce que les autres ont
- **La publicité** : crée des besoins artificiels et influence les préférences
- **L''appartenance à un groupe** : on consomme pour s''identifier à un groupe
- **L''estime de soi** : certains achats visent à renforcer l''image de soi
- **La consommation ostentatoire** : acheter pour montrer sa position sociale (luxe, voitures de sport…)

## Les déterminants éthiques

- **Les valeurs morales** : certaines personnes refusent d''acheter des produits fabriqués par des enfants
- **Le commerce équitable** : garantit un prix juste aux producteurs des pays en développement
- **La consommation éthique** : choisir des entreprises qui respectent leurs employés et leurs fournisseurs

## Les déterminants écologiques

- **L''empreinte carbone** : préférer des produits locaux pour réduire les émissions de transport
- **L''écolabel** : label garantissant que le produit respecte des critères environnementaux
- **Boycott de certaines marques** : suite à des scandales environnementaux
- **La durabilité** : préférer des produits durables aux produits jetables

## Les déterminants politiques et culturels

- **Les politiques fiscales** : taxes sur le tabac, l''alcool, le carbone influencent la consommation
- **La réglementation** : interdiction de certains produits (amiante, certains plastiques…)
- **La culture** : habitudes alimentaires, fêtes traditionnelles, religion influencent ce qu''on achète et quand

## La consommation responsable et durable

La **consommation responsable** repose sur 3 piliers :

**1er pilier : L''impact économique**
- Acheter local pour soutenir l''économie locale
- Comparer les prix et éviter le gaspillage
- Réparer plutôt que jeter (économie circulaire)

**2e pilier : L''impact social**
- Respecter les droits des travailleurs (conditions de travail équitables)
- Privilégier les entreprises qui respectent leurs employés
- Commerce équitable

**3e pilier : L''impact écologique**
- Réduire sa consommation de plastique
- Préférer les énergies renouvelables
- Acheter des produits durables, réparables, recyclables
- Limiter sa consommation de viande (empreinte carbone élevée)

## Le marketing au service de la consommation

Le **marketing** est l''ensemble des techniques utilisées par les entreprises pour promouvoir leurs produits.

**Marketing stratégique** : analyse du marché, identification de la cible, positionnement

**Marketing mix (4P)** :
- **Produit** : caractéristiques, qualité, emballage
- **Prix** : tarification, promotions, remises
- **Place** (distribution) : circuits de vente, disponibilité
- **Promotion** : publicité, réseaux sociaux, bouche-à-oreille

**Techniques de marketing** : publicité télévisée, influenceurs, promotions limitées dans le temps, fidélisation (points, cartes client), packaging attractif, placement de produit dans les films.',
  (SELECT id FROM subjects WHERE name = 'Formation sociale et économique' AND level_id = (SELECT id FROM levels WHERE level_number = 5)),
  (SELECT id FROM levels WHERE level_number = 5),
  true
);
