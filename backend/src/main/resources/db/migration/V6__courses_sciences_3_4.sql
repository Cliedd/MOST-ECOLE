-- V6: Sciences (Mathématiques, Biologie, Chimie, Physique) — Niveaux 3 et 4
-- Belgian FWB secondary education curriculum

-- ============================================================
-- NIVEAU 3 — Mathématiques
-- ============================================================

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Algèbre : polynômes et factorisation',
  'Manipuler les expressions algébriques, développer et factoriser des polynômes du second degré.',
  'TEXT',
  '# Algèbre : polynômes et factorisation

## Rappels sur les expressions algébriques

Une **expression algébrique** combine des nombres et des variables (lettres) reliés par des opérations.

**Monôme** : expression sans addition ni soustraction → 3x², -5xy, 7
**Polynôme** : somme de monômes → 2x² + 3x - 5

## Degré d''un polynôme

Le **degré** est la plus haute puissance de la variable.
- 3x + 7 → degré 1 (polynôme du 1er degré)
- x² - 4x + 4 → degré 2 (polynôme du 2e degré = trinôme du second degré)

## Développement d''expressions

### Distributivité simple
a(b + c) = ab + ac
→ 3x(2x - 5) = 6x² - 15x

### Produit de deux binômes
(a + b)(c + d) = ac + ad + bc + bd

Exemple : (x + 3)(x - 2) = x² - 2x + 3x - 6 = **x² + x - 6**

### Identités remarquables (à mémoriser !)
- **(a + b)² = a² + 2ab + b²**
- **(a - b)² = a² - 2ab + b²**
- **(a + b)(a - b) = a² - b²**

Exemples :
- (x + 5)² = x² + 10x + 25
- (2x - 3)² = 4x² - 12x + 9
- (x + 4)(x - 4) = x² - 16

## Factorisation

Factoriser = réécrire comme un **produit** de facteurs.

### Mise en évidence d''un facteur commun
6x² + 9x = 3x(2x + 3)

### Factorisation par identités remarquables
- x² + 6x + 9 = (x + 3)² ← carré parfait
- x² - 25 = (x + 5)(x - 5) ← différence de carrés

### Méthode générale pour ax² + bx + c

1. Calculer le **discriminant** : Δ = b² - 4ac
2. Si Δ > 0 : deux racines x₁ = (-b + √Δ)/2a et x₂ = (-b - √Δ)/2a
3. Factorisation : a(x - x₁)(x - x₂)

Exemple : x² - 5x + 6 → Δ = 25 - 24 = 1 → x₁ = 3, x₂ = 2 → **(x-3)(x-2)**',
  (SELECT id FROM subjects WHERE name = 'Mathématiques' AND level_id = (SELECT id FROM levels WHERE level_number = 3)),
  (SELECT id FROM levels WHERE level_number = 3),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Fonctions du second degré et paraboles',
  'Étudier les fonctions quadratiques, leur graphique et leurs applications en résolution de problèmes.',
  'TEXT',
  '# Fonctions du second degré

## Définition

Une **fonction du second degré** est de la forme : f(x) = ax² + bx + c avec a ≠ 0.

Son graphique est une **parabole**.

## La parabole

### Forme et orientation
- Si a > 0 : parabole **ouverte vers le haut** (∪) → minimum
- Si a < 0 : parabole **ouverte vers le bas** (∩) → maximum

### Sommet de la parabole
Le sommet S a pour abscisse : **xₛ = -b / (2a)**
L''ordonnée : yₛ = f(xₛ) = c - b²/(4a)

Forme canonique : f(x) = a(x - xₛ)² + yₛ

### Axe de symétrie
La parabole est symétrique par rapport à la droite verticale x = xₛ.

## Racines (zéros) de la fonction

Les racines sont les valeurs x pour lesquelles f(x) = 0.

**Discriminant :** Δ = b² - 4ac

| Δ | Nombre de racines | Interprétation graphique |
|---|-------------------|------------------------|
| Δ > 0 | 2 racines réelles | Parabole coupe l''axe x en 2 points |
| Δ = 0 | 1 racine double | Parabole tangente à l''axe x |
| Δ < 0 | Aucune racine réelle | Parabole ne coupe pas l''axe x |

**Formule :** x = (-b ± √Δ) / (2a)

## Étude complète d''exemple

f(x) = 2x² - 4x - 6

1. **a = 2 > 0** → parabole ouverte vers le haut
2. **Sommet** : xₛ = -(-4)/(2×2) = 4/4 = 1 ; yₛ = 2(1)² - 4(1) - 6 = -8 → S(1, -8)
3. **Discriminant** : Δ = 16 + 48 = 64 → √Δ = 8
4. **Racines** : x₁ = (4+8)/4 = 3 ; x₂ = (4-8)/4 = -1
5. **Signe** : f(x) < 0 pour x ∈ ]-1; 3[ ; f(x) > 0 sinon

## Application : problème d''optimisation

Un fermier dispose de 100 m de clôture pour délimiter un enclos rectangulaire contre un mur. Quelle est la surface maximale ?

Si la largeur est x, la longueur est (100 - 2x).
S(x) = x(100 - 2x) = -2x² + 100x
Sommet : x = 25 m → Surface max = 25 × 50 = **1 250 m²**',
  (SELECT id FROM subjects WHERE name = 'Mathématiques' AND level_id = (SELECT id FROM levels WHERE level_number = 3)),
  (SELECT id FROM levels WHERE level_number = 3),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Trigonométrie : sin, cos, tan dans le triangle rectangle',
  'Utiliser les rapports trigonométriques pour calculer des angles et des longueurs dans un triangle rectangle.',
  'TEXT',
  '# Trigonométrie de base

## Les rapports trigonométriques

Dans un triangle rectangle, chaque angle aigu est associé à trois rapports trigonométriques fondamentaux.

Pour un angle α dans un triangle rectangle :
- **sinus** : sin(α) = côté opposé / hypoténuse
- **cosinus** : cos(α) = côté adjacent / hypoténuse
- **tangente** : tan(α) = côté opposé / côté adjacent

**Moyen mnémotechnique :** SOH-CAH-TOA

### Valeurs remarquables à connaître

| Angle | sin | cos | tan |
|-------|-----|-----|-----|
| 0° | 0 | 1 | 0 |
| 30° | 1/2 | √3/2 | 1/√3 |
| 45° | √2/2 | √2/2 | 1 |
| 60° | √3/2 | 1/2 | √3 |
| 90° | 1 | 0 | indéfini |

## Calculs dans un triangle rectangle

### Trouver un côté
Si on connaît un angle α et un côté, on peut trouver un autre côté.

Exemple : triangle rectangle, angle α = 35°, hypoténuse = 10 cm.
- Côté opposé = hypoténuse × sin(35°) = 10 × 0,574 ≈ **5,74 cm**
- Côté adjacent = hypoténuse × cos(35°) = 10 × 0,819 ≈ **8,19 cm**

### Trouver un angle
Si on connaît deux côtés, on utilise les fonctions inverses : arcsin, arccos, arctan (sur calculatrice).

Exemple : côté opposé = 4, adjacent = 7 → tan(α) = 4/7 → α = arctan(4/7) ≈ **29,7°**

## Relation de Pythagore et trigonométrie

Dans tout triangle rectangle : sin²(α) + cos²(α) = 1

## Applications réelles

### Calcul d''une hauteur inaccessible
On mesure l''angle d''élévation α d''un sommet à partir d''un point à distance d du pied de l''objet.
**Hauteur h = d × tan(α)**

Exemple : tour vue sous 40° depuis 50 m de distance :
h = 50 × tan(40°) = 50 × 0,839 ≈ **42 m**

### Navigation
Les navigateurs utilisent la trigonométrie pour calculer leur cap et leur distance parcourue.',
  (SELECT id FROM subjects WHERE name = 'Mathématiques' AND level_id = (SELECT id FROM levels WHERE level_number = 3)),
  (SELECT id FROM levels WHERE level_number = 3),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Probabilités et combinatoire : dénombrement',
  'Calculer des probabilités simples et composées à l''aide des principes du dénombrement.',
  'TEXT',
  '# Probabilités et dénombrement

## Les probabilités

La **probabilité** d''un événement mesure sa chance de se réaliser. Elle est comprise entre 0 (impossible) et 1 (certain).

**P(A) = nombre de cas favorables / nombre de cas possibles**

### Exemple classique : dé à 6 faces
- P(obtenir 3) = 1/6 ≈ 16,7%
- P(obtenir un nombre pair) = 3/6 = 1/2 = 50%
- P(obtenir moins de 3) = 2/6 = 1/3 ≈ 33,3%

## Propriétés fondamentales

- **Événement certain** : P = 1
- **Événement impossible** : P = 0
- **Événement contraire** : P(non A) = 1 - P(A)
- **Réunion** (A ou B disjoints) : P(A ∪ B) = P(A) + P(B)

## Probabilités composées

### Événements indépendants
Deux événements sont **indépendants** si l''un n''influence pas l''autre.

P(A et B) = P(A) × P(B)

Exemple : probabilité de tirer pile deux fois de suite :
P(pile) × P(pile) = 1/2 × 1/2 = **1/4**

### Probabilité conditionnelle
P(B|A) = probabilité que B se produise sachant que A s''est déjà produit.

## Le dénombrement

### Principe de multiplication
Si un événement peut se réaliser en n₁ manières, et un autre en n₂ manières, le total est n₁ × n₂.

Exemple : 3 chemises × 4 pantalons = **12 tenues** possibles.

### Les arrangements
Nombre de façons d''ordonner r éléments parmi n : Aⁿᵣ = n!/(n-r)!

Exemple : 3 livres à placer sur une étagère de 5 places :
A⁵₃ = 5!/(5-3)! = 5×4×3 = **60 arrangements**

### Les combinaisons (sans ordre)
Nombre de groupes de r éléments parmi n : Cⁿᵣ = n! / (r! × (n-r)!)

Exemple : choisir 3 élèves parmi 10 pour un jury :
C¹⁰₃ = 10!/(3!×7!) = (10×9×8)/(3×2×1) = **120 combinaisons**',
  (SELECT id FROM subjects WHERE name = 'Mathématiques' AND level_id = (SELECT id FROM levels WHERE level_number = 3)),
  (SELECT id FROM levels WHERE level_number = 3),
  true
);


-- ============================================================
-- NIVEAU 3 — Biologie
-- ============================================================

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'La cellule : unité de base du vivant',
  'Découvrir la structure et les fonctions des cellules eucaryotes animales et végétales.',
  'TEXT',
  '# La cellule : unité de base du vivant

## Qu''est-ce qu''une cellule ?

La **cellule** est la plus petite unité structurale et fonctionnelle du vivant. Tout être vivant est composé d''une ou plusieurs cellules.

### Types de cellules
- **Procaryotes** : sans noyau délimité (bactéries, archées) — les plus anciens
- **Eucaryotes** : avec noyau entouré d''une membrane — animaux, plantes, champignons

## Structure de la cellule eucaryote animale

### La membrane plasmique
- Enveloppe semi-perméable entourant la cellule
- Composée d''une **bicouche phospholipidique** avec des protéines intégrées
- Rôle : protection, échanges avec l''extérieur, reconnaissance cellulaire

### Le noyau
- Centre de contrôle de la cellule
- Contient le matériel génétique : l''**ADN** (acide désoxyribonucléique) organisé en chromosomes
- Entouré de la membrane nucléaire (à double paroi)

### Le cytoplasme
Milieu liquide (cytosol) contenant les organites cellulaires.

### Les organites principaux

| Organite | Fonction |
|---------|---------|
| Mitochondries | Respiration cellulaire, production d''ATP (énergie) |
| Ribosomes | Synthèse des protéines |
| Réticulum endoplasmique | Transport et synthèse de molécules |
| Appareil de Golgi | Emballage et distribution des protéines |
| Lysosomes | Digestion intracellulaire |

## La cellule végétale : différences clés

En plus des organites animaux, la cellule végétale possède :
- **Paroi cellulosique** : rigidité mécanique
- **Chloroplastes** : photosynthèse (contiennent de la chlorophylle)
- **Grande vacuole centrale** : stockage d''eau et turgescence

## La cellule en chiffres

- Diamètre d''une cellule animale : 10-20 µm (micromètres)
- Un être humain contient environ **37 000 milliards** de cellules
- Durée de vie variable : globules rouges (120 jours), neurones (toute la vie), cellules intestinales (3-5 jours)',
  (SELECT id FROM subjects WHERE name = 'Biologie' AND level_id = (SELECT id FROM levels WHERE level_number = 3)),
  (SELECT id FROM levels WHERE level_number = 3),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'La photosynthèse : comment les plantes produisent leur énergie',
  'Comprendre la photosynthèse, ses réactifs, ses produits et son importance pour la vie sur Terre.',
  'TEXT',
  '# La photosynthèse

## Définition

La **photosynthèse** est le processus par lequel les plantes, algues et certaines bactéries convertissent l''énergie lumineuse en énergie chimique stockée dans les glucides.

## L''équation bilan

**6 CO₂ + 6 H₂O + énergie lumineuse → C₆H₁₂O₆ + 6 O₂**

*(6 molécules de dioxyde de carbone + 6 molécules d''eau + lumière → glucose + 6 molécules d''oxygène)*

## Où se passe la photosynthèse ?

La photosynthèse se déroule dans les **chloroplastes**, organites des cellules végétales.

Les chloroplastes contiennent de la **chlorophylle**, un pigment vert qui absorbe la lumière solaire (principalement le rouge et le bleu, mais pas le vert — d''où la couleur verte des plantes !).

## Les deux phases

### Phase lumineuse (dans les thylakoïdes)
1. La lumière est captée par la chlorophylle
2. L''eau est **dissociée** (photolyse) : H₂O → 2H⁺ + ½O₂ + 2e⁻
3. L''oxygène libéré est un **déchet** rejeté dans l''atmosphère
4. L''énergie lumineuse est convertie en **ATP** et **NADPH** (formes d''énergie chimique)

### Phase sombre / Cycle de Calvin (dans le stroma)
1. Le CO₂ atmosphérique est **fixé** (capté)
2. Le CO₂ + ATP + NADPH → **glucose** (C₆H₁₂O₆)
3. Le glucose est utilisé pour la croissance, la respiration ou le stockage (amidon)

## Facteurs influençant la photosynthèse

- **Intensité lumineuse** : plus il y a de lumière → plus de photosynthèse (jusqu''à saturation)
- **Concentration en CO₂** : plus de CO₂ → plus de glucose produit
- **Température** : optimale entre 25 et 35°C pour la plupart des plantes
- **Disponibilité en eau** : si manque d''eau → stomates fermés → moins de CO₂ capté

## Importance de la photosynthèse

1. **Source de nourriture** : base de toutes les chaînes alimentaires
2. **Production d''O₂** : tout l''oxygène de l''atmosphère provient de la photosynthèse
3. **Régulation du climat** : absorption du CO₂ atmosphérique',
  (SELECT id FROM subjects WHERE name = 'Biologie' AND level_id = (SELECT id FROM levels WHERE level_number = 3)),
  (SELECT id FROM levels WHERE level_number = 3),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'La reproduction humaine',
  'Comprendre la reproduction sexuée chez l''humain : de la gamétogenèse à la fécondation.',
  'TEXT',
  '# La reproduction humaine

## La reproduction sexuée

La reproduction sexuée implique la fusion de deux **gamètes** (cellules reproductrices), un mâle et une femelle, pour former un **zygote** qui donnera naissance à un nouvel individu.

## La gamétogenèse

### La spermatogenèse (chez l''homme)
- Lieu : testicules (tubules séminifères)
- Durée : environ 74 jours
- Résultat : spermatozoïdes (haploides : 23 chromosomes)
- Production : ~300 millions de spermatozoïdes par jour

### L''ovogenèse (chez la femme)
- Lieu : ovaires
- Commence avant la naissance (ovocytes primaires formés)
- Cycle : un ovocyte est libéré environ tous les 28 jours (**ovulation**)
- Résultat : un ovocyte II (haploïde : 23 chromosomes)

## Le cycle menstruel

Durée moyenne : **28 jours** (variable selon les femmes)

| Phase | Jours | Événements |
|-------|-------|-----------|
| Menstruations | 1-5 | Desquamation de l''endomètre |
| Folliculaire | 1-13 | Croissance du follicule, ↑ estrogènes |
| Ovulation | 14 | Libération de l''ovocyte |
| Lutéale | 15-28 | Corps jaune, ↑ progestérone |

## La fécondation

La fécondation est la fusion du spermatozoïde et de l''ovocyte.
- Lieu habituel : **trompe de Fallope**
- Le zygote résultant contient **46 chromosomes** (23 + 23)
- Le sexe génétique est déterminé à la fécondation : XX (fille) ou XY (garçon)

## Le développement embryonnaire

1. Zygote → divisions cellulaires → morula → blastocyste
2. **Implantation** dans l''endomètre (7-10 jours après fécondation)
3. Formation du **placenta** : échanges nutritifs et gazeux entre mère et fœtus
4. Développement sur **9 mois** (3 trimestres)
5. **Naissance** = accouchement',
  (SELECT id FROM subjects WHERE name = 'Biologie' AND level_id = (SELECT id FROM levels WHERE level_number = 3)),
  (SELECT id FROM levels WHERE level_number = 3),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'L''écologie : les écosystèmes et les chaînes alimentaires',
  'Analyser les relations entre les organismes et leur milieu dans les écosystèmes belges et mondiaux.',
  'TEXT',
  '# Les écosystèmes

## Définitions

- **Écosystème** : ensemble formé par une communauté d''êtres vivants (biocénose) et son environnement physique (biotope), en interaction.
- **Biocénose** : tous les êtres vivants d''un écosystème (végétaux, animaux, champignons, microorganismes)
- **Biotope** : milieu physique (sol, eau, air, température, lumière)

## Niveaux trophiques et chaînes alimentaires

Les êtres vivants sont organisés en **niveaux trophiques** selon leur alimentation.

### Producteurs (autotrophes)
Les végétaux photosynthétiques produisent de la matière organique à partir d''énergie solaire.
→ herbe, algues, phytoplancton

### Consommateurs (hétérotrophes)
- **1er ordre** (herbivores) : mangent les producteurs → lapins, vaches, sauterelles
- **2ème ordre** (carnivores) : mangent les herbivores → renards, grenouilles
- **3ème ordre** (supercarnivores) : au sommet de la chaîne → aigles, requins

### Décomposeurs
Bactéries et champignons qui dégradent la matière organique morte → recyclage des nutriments.

## Exemple de chaîne alimentaire

Herbe → Lapin → Renard → Aigle royal

Lire : "est mangé par" → chaque flèche représente le transfert d''énergie.

## Le réseau trophique

En réalité, les chaînes alimentaires sont interconnectées en **réseau trophique** : un animal mange souvent plusieurs proies et peut être mangé par plusieurs prédateurs.

## Flux d''énergie

L''énergie diminue à chaque niveau trophique : seulement **10%** de l''énergie passe d''un niveau au suivant (règle des 10%).
→ 1000 kcal végétaux → 100 kcal herbivores → 10 kcal carnivores 1 → 1 kcal supercarnivores

## Perturbations humaines

- **Eutrophisation** : excès de nutriments (engrais) dans les eaux → prolifération d''algues
- **Bioaccumulation** : les pesticides s''accumulent en remontant la chaîne alimentaire
- **Fragmentation des habitats** : routes, urbanisation qui isolent les populations',
  (SELECT id FROM subjects WHERE name = 'Biologie' AND level_id = (SELECT id FROM levels WHERE level_number = 3)),
  (SELECT id FROM levels WHERE level_number = 3),
  true
);


-- ============================================================
-- NIVEAU 3 — Chimie
-- ============================================================

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'La classification périodique des éléments',
  'Comprendre l''organisation du tableau périodique et les propriétés des familles d''éléments.',
  'TEXT',
  '# La classification périodique

## Histoire

En 1869, le chimiste russe **Dmitri Mendeleïev** classe les 63 éléments alors connus par ordre croissant de masse atomique. Il remarque une **répétition périodique** des propriétés chimiques → le tableau périodique.

## Structure du tableau périodique

Le tableau est organisé en :
- **Lignes (périodes)** : 7 périodes, numérotées 1 à 7. Les éléments d''une même période ont le même nombre de couches électroniques.
- **Colonnes (groupes)** : 18 groupes. Les éléments d''un même groupe ont des propriétés chimiques similaires.

## Informations dans une case

Pour chaque élément :
- **Numéro atomique (Z)** : nombre de protons (= nombre d''électrons)
- **Symbole chimique** (ex. Fe, Na, O)
- **Masse atomique (A)** : protons + neutrons
- **Nombre de neutrons** : N = A - Z

## Les principales familles (groupes)

| Groupe | Nom | Propriétés | Exemples |
|--------|-----|-----------|---------|
| 1 | Métaux alcalins | Très réactifs, mous | Li, Na, K |
| 2 | Alcalino-terreux | Réactifs | Mg, Ca |
| 17 | Halogènes | Forment des sels | F, Cl, Br |
| 18 | Gaz nobles | Inertes, stables | He, Ne, Ar |

## Tendances périodiques

### Rayon atomique
- Augmente de droite à gauche dans une période
- Augmente de haut en bas dans un groupe

### Électronégativité
- Augmente de gauche à droite dans une période
- Diminue de haut en bas dans un groupe
- L''élément le plus électronégatif : **Fluor (F)**

## Métaux, métalloïdes et non-métaux

- **Métaux** (gauche) : conducteurs, malléables → Fe, Cu, Al
- **Non-métaux** (droite) : mauvais conducteurs → O, N, C, S
- **Métalloïdes** (frontière) : semi-conducteurs → Si, Ge, As

## Application

Le **sodium (Na)** : Z = 11, A = 23 → 11 protons, 11 électrons, 12 neutrons. Métal alcalin (groupe 1, période 3). Très réactif : réagit violemment avec l''eau.',
  (SELECT id FROM subjects WHERE name = 'Chimie' AND level_id = (SELECT id FROM levels WHERE level_number = 3)),
  (SELECT id FROM levels WHERE level_number = 3),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Les liaisons chimiques : ionique et covalente',
  'Distinguer les types de liaisons entre atomes et prévoir les formules des composés binaires.',
  'TEXT',
  '# Les liaisons chimiques

## Pourquoi les atomes se lient-ils ?

Les atomes cherchent à atteindre une **configuration stable** : 8 électrons sur leur dernière couche (règle de l''octet), comme les gaz nobles.

Ils y parviennent en **partageant** ou en **transférant** des électrons.

## La liaison ionique

### Principe
Un atome donne ses électrons de valence à un autre atome.

- L''atome qui perd des électrons → devient un **cation** (charge +)
- L''atome qui gagne des électrons → devient un **anion** (charge -)
- Les ions opposés s''attirent → **liaison ionique**

### Exemple : chlorure de sodium (NaCl - sel de cuisine)
- Na (11e⁻) → Na⁺ + 1e⁻ (cède 1 électron)
- Cl (17e⁻) + 1e⁻ → Cl⁻ (accepte 1 électron)
- Résultat : **Na⁺Cl⁻** → sel organisé en réseau cristallin

### Propriétés des composés ioniques
- Solides cristallins à température ambiante
- Point de fusion élevé
- Solubles dans l''eau et conducteurs en solution

## La liaison covalente

### Principe
Deux atomes **partagent** des paires d''électrons pour compléter leur couche externe.

### Types de liaisons covalentes

| Type | Paires partagées | Notation |
|------|-----------------|---------|
| Simple | 1 paire | H–H, H–Cl |
| Double | 2 paires | O=O, C=O |
| Triple | 3 paires | N≡N |

### Exemples
- **H₂O** : O partage 1 paire avec chaque H → molécule d''eau
- **CO₂** : C partage 2 paires avec chaque O → deux liaisons doubles
- **N₂** : N partage 3 paires → liaison triple très solide

### Polarité des liaisons
Si les deux atomes n''ont pas la même électronégativité, le partage n''est pas égal → **liaison polaire**.

Exemple : dans H-Cl, Cl est plus électronégatif → attire davantage les électrons → δ⁻ sur Cl, δ⁺ sur H.

## Tableau comparatif

| Caractéristique | Ionique | Covalente |
|----------------|---------|-----------|
| Transfert ou partage | Transfert | Partage |
| Entre | Métal + Non-métal | Non-métaux |
| Exemple | NaCl, MgO | H₂O, CO₂, CH₄ |
| État physique | Solide cristallin | Gaz, liquide, solide |',
  (SELECT id FROM subjects WHERE name = 'Chimie' AND level_id = (SELECT id FROM levels WHERE level_number = 3)),
  (SELECT id FROM levels WHERE level_number = 3),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Les réactions chimiques : équations et stœchiométrie',
  'Écrire et équilibrer des équations chimiques, et effectuer des calculs stœchiométriques.',
  'TEXT',
  '# Réactions chimiques et stœchiométrie

## Qu''est-ce qu''une réaction chimique ?

Une **réaction chimique** est une transformation qui modifie la nature des substances. Les **réactifs** se transforment en **produits**.

**Loi de conservation de la matière (Lavoisier) :** Dans une réaction chimique, la masse totale des réactifs est égale à la masse totale des produits.

## Écriture d''une équation chimique

**Réactifs → Produits** (ou avec une flèche double ⇌ si réversible)

### Équilibrage (ajustement des coefficients stœchiométriques)

Le nombre d''atomes de chaque élément doit être **identique** des deux côtés.

**Exemple : combustion du méthane**
CH₄ + O₂ → CO₂ + H₂O (non équilibrée)

1. Carbone : 1 = 1 ✓
2. Hydrogène : 4 ≠ 2 → mettre 2 H₂O
3. Oxygène : 2 ≠ 4 → mettre 2 O₂

**CH₄ + 2 O₂ → CO₂ + 2 H₂O** ✓

## La mole et la masse molaire

**1 mole** = 6,022 × 10²³ particules (nombre d''Avogadro)

**Masse molaire (M)** = masse d''une mole, en g/mol
= somme des masses atomiques de tous les atomes

Exemple : H₂O → M = 2×1 + 16 = **18 g/mol**
CO₂ → M = 12 + 2×16 = **44 g/mol**

**Formule :** n = m/M (n en mol, m en g, M en g/mol)

## Calculs stœchiométriques

### Méthode des proportions

**Exemple :** Quelle masse de CO₂ produit-on en brûlant 8 g de CH₄ ?

Équation : CH₄ + 2 O₂ → CO₂ + 2 H₂O

1 mol CH₄ → 1 mol CO₂
- M(CH₄) = 16 g/mol → n(CH₄) = 8/16 = **0,5 mol**
- 0,5 mol CH₄ → 0,5 mol CO₂
- M(CO₂) = 44 g/mol → m(CO₂) = 0,5 × 44 = **22 g**',
  (SELECT id FROM subjects WHERE name = 'Chimie' AND level_id = (SELECT id FROM levels WHERE level_number = 3)),
  (SELECT id FROM levels WHERE level_number = 3),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Les acides et les bases : pH et réactions de neutralisation',
  'Comprendre les propriétés des acides et des bases, mesurer le pH et prédire les réactions de neutralisation.',
  'TEXT',
  '# Acides, bases et pH

## Les acides

Un **acide** est une substance qui libère des ions H⁺ (protons) en solution aqueuse.

### Acides courants
| Nom | Formule | Domaine d''usage |
|-----|---------|----------------|
| Acide chlorhydrique | HCl | Industrie, estomac humain |
| Acide sulfurique | H₂SO₄ | Batteries, industrie |
| Acide nitrique | HNO₃ | Engrais |
| Acide acétique | CH₃COOH | Vinaigre |
| Acide citrique | C₆H₈O₇ | Fruits, boissons |

### Acides forts vs faibles
- **Forts** : ionisation totale → HCl → H⁺ + Cl⁻ (100%)
- **Faibles** : ionisation partielle → CH₃COOH ⇌ H⁺ + CH₃COO⁻

## Les bases

Une **base** est une substance qui libère des ions OH⁻ en solution ou accepte des H⁺.

### Bases courantes
- **NaOH** (soude) : déboucheurs, savon
- **KOH** (potasse) : batteries
- **Ca(OH)₂** (chaux) : bâtiment, agriculture
- **NH₃** (ammoniaque) : produits ménagers

## L''échelle de pH

Le **pH** mesure l''acidité d''une solution. Il varie de 0 à 14.

| pH | Nature | [H⁺] |
|----|--------|------|
| 0-6 | Acide | > 10⁻⁷ mol/L |
| 7 | Neutre | = 10⁻⁷ mol/L |
| 8-14 | Basique | < 10⁻⁷ mol/L |

### pH de substances connues
- Suc gastrique : pH 1-2
- Jus de citron : pH 2-3
- Eau pure : pH 7
- Sang : pH 7,4
- Bicarbonate de soude : pH 8-9
- Eau de Javel : pH 12-13

## Réaction de neutralisation

Acide + Base → Sel + Eau

**Exemple :** HCl + NaOH → NaCl + H₂O

La **titration** (dosage acide-base) consiste à ajouter progressivement une base d''une base à un acide jusqu''au point d''équivalence (pH = 7 pour HCl + NaOH). On utilise un indicateur coloré (phénolphtaléine, BTB) ou un pH-mètre.',
  (SELECT id FROM subjects WHERE name = 'Chimie' AND level_id = (SELECT id FROM levels WHERE level_number = 3)),
  (SELECT id FROM levels WHERE level_number = 3),
  true
);


-- ============================================================
-- NIVEAU 3 — Physique
-- ============================================================

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Cinématique : le mouvement et ses grandeurs',
  'Décrire et analyser les mouvements uniformes et uniformément accélérés en utilisant les équations cinématiques.',
  'TEXT',
  '# Cinématique : description du mouvement

## Les grandeurs cinématiques

### La position
La position d''un objet est repérée dans un **système de référence** (repère d''espace).

### La distance et le déplacement
- **Distance** (scalaire) : longueur totale parcourue
- **Déplacement** (vecteur) : écart entre la position finale et initiale

### La vitesse

**Vitesse moyenne :** v̄ = distance / temps = Δx / Δt (en m/s)

**Vitesse instantanée :** vitesse à un instant précis (pente de la courbe position-temps)

### L''accélération

L''**accélération** mesure la variation de vitesse par unité de temps.

**a = Δv / Δt** (en m/s²)

- a > 0 : la vitesse augmente (accélération)
- a < 0 : la vitesse diminue (décélération/freinage)
- a = 0 : la vitesse est constante (MRU)

## Mouvements fondamentaux

### Mouvement Rectiligne Uniforme (MRU)
- Trajectoire rectiligne, vitesse constante
- Accélération : a = 0
- **Équation :** x = x₀ + v·t

### Mouvement Rectiligne Uniformément Accéléré (MRUA)
- Trajectoire rectiligne, accélération constante
- **Équations :**
  - v = v₀ + a·t
  - x = x₀ + v₀·t + ½·a·t²
  - v² = v₀² + 2·a·(x - x₀)

## Chute libre

La chute libre est un MRUA particulier où l''accélération est celle de la pesanteur : **g = 9,81 m/s²** (vers le bas).

Objet lâché sans vitesse initiale (v₀ = 0) :
- v = g·t → après 3 s : v = 29,4 m/s ≈ 106 km/h !
- h = ½·g·t² → après 3 s : h = ½ × 9,81 × 9 ≈ 44 m

## Représentations graphiques

| Graphique | MRU | MRUA |
|-----------|-----|------|
| x(t) | Droite oblique | Parabole |
| v(t) | Ligne horizontale | Droite oblique |
| a(t) | Zéro | Ligne horizontale |',
  (SELECT id FROM subjects WHERE name = 'Physique' AND level_id = (SELECT id FROM levels WHERE level_number = 3)),
  (SELECT id FROM levels WHERE level_number = 3),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Les forces et la dynamique de Newton',
  'Appliquer les trois lois de Newton pour analyser les situations d''équilibre et de mouvement.',
  'TEXT',
  '# Les forces et les lois de Newton

## Qu''est-ce qu''une force ?

Une **force** est une action exercée par un objet sur un autre. Elle peut modifier la forme, l''état de repos ou le mouvement d''un objet.

**Unité :** Newton (N) — grandeur vectorielle (intensité, direction, sens, point d''application)

## Les forces courantes

| Force | Cause | Exemple |
|-------|-------|---------|
| Poids (P) | Gravité | P = m × g |
| Réaction normale (N) | Appui sur une surface | Sol sur un objet posé |
| Tension (T) | Corde ou câble | Pendule, poulie |
| Frottement (f) | Surface rugueuse | Freinage |
| Force de poussée d''Archimède | Fluide | Objet dans l''eau |

**Poids vs Masse :** P = m × g (P en N, m en kg, g = 9,81 m/s²)

## Les 3 lois de Newton

### 1ère loi : Principe d''inertie
*"Un objet reste au repos ou en mouvement rectiligne uniforme tant qu''aucune force nette ne s''exerce sur lui."*

→ Si ΣF = 0 → a = 0 (repos ou MRU)

### 2ème loi : Principe fondamental de la dynamique
*"La résultante des forces appliquées à un objet est égale à sa masse multipliée par son accélération."*

**ΣF = m × a** → **a = ΣF / m**

Exemple : voiture de 1000 kg avec moteur poussant 4000 N (frottements = 1000 N)
→ ΣF = 4000 - 1000 = 3000 N → a = 3000/1000 = **3 m/s²**

### 3ème loi : Principe des actions réciproques
*"Toute action exercée par A sur B est égale et opposée à l''action de B sur A."*

→ Si vous poussez un mur, il vous pousse avec la même force en sens contraire.

## Équilibre

Un objet est en **équilibre** si la somme vectorielle de toutes les forces est nulle : **ΣF = 0**

Exemple : livre sur une table :
- Poids P = 5 N vers le bas
- Réaction N = 5 N vers le haut
- ΣF = P + N = 0 → équilibre',
  (SELECT id FROM subjects WHERE name = 'Physique' AND level_id = (SELECT id FROM levels WHERE level_number = 3)),
  (SELECT id FROM levels WHERE level_number = 3),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'L''énergie : formes, transformations et conservation',
  'Identifier les formes d''énergie, comprendre les transformations énergétiques et le principe de conservation.',
  'TEXT',
  '# L''énergie

## Définition

L''**énergie** est la capacité à effectuer un travail ou à produire un changement. Elle ne se crée pas et ne se détruit pas : elle se **transforme** (principe de conservation de l''énergie).

## Les formes d''énergie

| Forme | Description | Exemple |
|-------|------------|---------|
| Cinétique (Ec) | Mouvement | Voiture en marche |
| Potentielle gravitationnelle (Ep) | Hauteur | Eau en altitude |
| Potentielle élastique | Déformation | Ressort comprimé |
| Thermique (chaleur) | Agitation moléculaire | Eau bouillante |
| Électrique | Courant | Ampoule allumée |
| Chimique | Liaisons chimiques | Combustible, batterie |
| Lumineuse | Rayonnement | Soleil, laser |
| Nucléaire | Noyau atomique | Centrale nucléaire |

## Calculs énergétiques

### Énergie cinétique
**Ec = ½ × m × v²** (en J, m en kg, v en m/s)

Exemple : voiture de 1000 kg à 36 km/h (= 10 m/s)
Ec = ½ × 1000 × 100 = **50 000 J = 50 kJ**

### Énergie potentielle gravitationnelle
**Ep = m × g × h** (en J, m en kg, g = 9,81 m/s², h en m)

Exemple : élève de 60 kg à 5 m de hauteur
Ep = 60 × 9,81 × 5 ≈ **2 940 J**

### Conservation de l''énergie mécanique
En l''absence de frottements : Ec + Ep = constante

Au sommet d''un toboggan (v = 0, h = 3 m) :
Ep = mgh = 60 × 9,81 × 3 ≈ 1 765 J, Ec = 0

En bas (h = 0) :
Ep = 0, Ec = 1 765 J → v = √(2×1765/60) ≈ **7,7 m/s**

## Le travail

**W = F × d × cos(θ)** (en J, F en N, d en m, θ = angle entre F et déplacement)

## La puissance

**P = W / t** (en Watt, W en Joules, t en secondes)

1 kW = 1000 W ; 1 kWh = 3 600 000 J',
  (SELECT id FROM subjects WHERE name = 'Physique' AND level_id = (SELECT id FROM levels WHERE level_number = 3)),
  (SELECT id FROM levels WHERE level_number = 3),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'L''électricité : courant, tension et résistance',
  'Comprendre les grandeurs électriques fondamentales et appliquer la loi d''Ohm aux circuits simples.',
  'TEXT',
  '# Électricité : grandeurs fondamentales

## Le courant électrique

Le **courant électrique** est un mouvement orienté de porteurs de charges électriques (électrons dans les métaux, ions dans les solutions).

**Intensité du courant (I)** : quantité de charge traversant une section par unité de temps.
- Unité : **Ampère (A)**
- Mesuré par un **ampèremètre** (en série dans le circuit)

## La tension électrique

La **tension** (différence de potentiel) est la différence d''énergie électrique entre deux points.
- Unité : **Volt (V)**
- Mesurée par un **voltmètre** (en parallèle)
- Tension d''une pile : 1,5 V ; prise électrique belge : 230 V

## La résistance

La **résistance** d''un conducteur s''oppose au passage du courant.
- Unité : **Ohm (Ω)**
- Dépend du matériau, de la longueur et de la section du conducteur

## La loi d''Ohm

**U = R × I** (tension = résistance × intensité)

Exemple : résistance de 100 Ω sous 12 V :
I = U/R = 12/100 = **0,12 A = 120 mA**

## Circuits en série et en parallèle

### Circuit en série (résistances bout à bout)
- Le courant I est le même partout
- La tension se répartit : U_total = U₁ + U₂ + ...
- Résistance équivalente : R_eq = R₁ + R₂ + ...

### Circuit en parallèle (résistances côte à côte)
- La tension est la même aux bornes de chaque branche
- Le courant se répartit : I_total = I₁ + I₂ + ...
- Résistance équivalente : 1/R_eq = 1/R₁ + 1/R₂ + ...

## La puissance électrique

**P = U × I = U²/R = R × I²** (en Watt)

Exemple : ampoule 60 W sous 230 V :
I = P/U = 60/230 ≈ **0,26 A**

**Énergie consommée :** E = P × t (en Wh ou kWh)
Coût sur votre facture : 1 kWh ≈ 0,30 € en Belgique (2024)',
  (SELECT id FROM subjects WHERE name = 'Physique' AND level_id = (SELECT id FROM levels WHERE level_number = 3)),
  (SELECT id FROM levels WHERE level_number = 3),
  true
);


-- ============================================================
-- NIVEAU 4 — Mathématiques générales
-- ============================================================

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Analyse : limites et continuité des fonctions',
  'Comprendre la notion de limite d''une fonction et les critères de continuité en un point.',
  'TEXT',
  '# Limites et continuité

## La notion de limite

La limite d''une fonction f(x) en un point a est la valeur vers laquelle f(x) tend quand x se rapproche de a, sans nécessairement atteindre a.

**Notation :** lim(x→a) f(x) = L

### Calcul de limites : cas simples

**1. Substitution directe** (si f est continue en a)
lim(x→3) (x² + 2x) = 9 + 6 = **15**

**2. Forme indéterminée 0/0** → factoriser
lim(x→2) (x² - 4)/(x - 2) = lim(x→2) (x+2)(x-2)/(x-2) = lim(x→2) (x+2) = **4**

**3. Limite à l''infini**
lim(x→+∞) (3x² + 5x)/(x² - 1) → diviser par x² → lim = **3/1 = 3**

### Limites infinies
lim(x→0) 1/x² = **+∞**

## Continuité d''une fonction

Une fonction f est **continue** en x = a si :
1. f(a) est définie (a dans le domaine de f)
2. lim(x→a) f(x) existe
3. lim(x→a) f(x) = f(a)

### Fonctions continues
- Polynômes → continus partout
- Fonctions rationnelles → continues sauf en les zéros du dénominateur
- sin, cos, eˣ, ln → continus sur leur domaine

### Discontinuités
- **Saut** : les limites à gauche et à droite existent mais diffèrent
- **Infinie** : la limite est ±∞ (asymptote verticale)
- **Ôtable** : la limite existe mais f(a) n''est pas défini ou ≠ à la limite

## Théorème des valeurs intermédiaires (TVI)

Si f est continue sur [a, b] et si k est compris entre f(a) et f(b), alors il existe au moins un c dans ]a, b[ tel que f(c) = k.

**Application :** montrer qu''une équation a une solution.

f(x) = x³ - 2x - 5
f(2) = 8 - 4 - 5 = -1 < 0
f(3) = 27 - 6 - 5 = 16 > 0
→ Par le TVI, ∃ c ∈ ]2, 3[ tel que f(c) = 0 (racine de l''équation)',
  (SELECT id FROM subjects WHERE name = 'Mathématiques générales' AND level_id = (SELECT id FROM levels WHERE level_number = 4)),
  (SELECT id FROM levels WHERE level_number = 4),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Dérivation : taux de variation et règles de dérivation',
  'Maîtriser les règles de dérivation et interpréter la dérivée comme taux de variation instantané.',
  'TEXT',
  '# La dérivation

## Définition de la dérivée

La **dérivée** d''une fonction en un point x₀ est la pente de la tangente au graphe en ce point.

**Définition formelle :**
f''(x₀) = lim(h→0) [f(x₀ + h) - f(x₀)] / h

Cette limite correspond au **taux de variation instantané**.

## Interprétation

- f''(x₀) > 0 → f est **croissante** en x₀
- f''(x₀) < 0 → f est **décroissante** en x₀
- f''(x₀) = 0 → **extremum** possible (max ou min local)

## Règles de dérivation fondamentales

| Fonction f(x) | Dérivée f''(x) |
|--------------|--------------|
| c (constante) | 0 |
| xⁿ | n·xⁿ⁻¹ |
| √x | 1/(2√x) |
| 1/x | -1/x² |
| eˣ | eˣ |
| ln(x) | 1/x |
| sin(x) | cos(x) |
| cos(x) | -sin(x) |

## Règles de combinaison

- **Somme :** (f + g)'' = f'' + g''
- **Produit :** (f·g)'' = f''·g + f·g''
- **Quotient :** (f/g)'' = (f''·g - f·g'') / g²
- **Composition :** (f∘g)'' = f''(g(x)) · g''(x) [règle de la chaîne]

## Exemples de calculs

1. f(x) = 3x⁴ - 5x² + 2x - 7
   → f''(x) = 12x³ - 10x + 2

2. g(x) = x² · eˣ [produit]
   → g''(x) = 2x·eˣ + x²·eˣ = eˣ(2x + x²)

3. h(x) = sin(2x) [composition]
   → h''(x) = cos(2x) · 2 = 2cos(2x)

## Application : étude de fonction

Pour f(x) = x³ - 3x + 2 :
- f''(x) = 3x² - 3 = 3(x-1)(x+1)
- f''(x) = 0 → x = ±1
- f''(x) > 0 pour x < -1 ou x > 1 → f croissante
- f''(x) < 0 pour -1 < x < 1 → f décroissante
- f(-1) = 4 (maximum local), f(1) = 0 (minimum local)',
  (SELECT id FROM subjects WHERE name = 'Mathématiques générales' AND level_id = (SELECT id FROM levels WHERE level_number = 4)),
  (SELECT id FROM levels WHERE level_number = 4),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Géométrie analytique : droites et cercles dans le plan',
  'Utiliser les équations cartésiennes pour décrire et analyser droites et cercles dans un repère.',
  'TEXT',
  '# Géométrie analytique

## Le repère cartésien

Un repère orthonormé (O, i, j) permet d''associer à chaque point du plan une paire de coordonnées (x, y).

## Les droites

### Équation cartésienne
Toute droite non verticale a une équation de la forme : **y = ax + b**
- **a** : pente (coefficient directeur) = Δy/Δx = tan(α)
- **b** : ordonnée à l''origine (point d''intersection avec l''axe y)

### Forme générale : ax + by + c = 0

### Pente et positions relatives

| Relation | Condition |
|----------|-----------|
| Parallèles | a₁ = a₂ (mêmes pentes) |
| Perpendiculaires | a₁ × a₂ = -1 |
| Identiques | a₁ = a₂ et b₁ = b₂ |
| Sécantes | a₁ ≠ a₂ |

### Équation par deux points
Si A(x₁, y₁) et B(x₂, y₂) sont deux points distincts :
**Pente a = (y₂-y₁)/(x₂-x₁)**
Puis : y - y₁ = a(x - x₁)

## Le cercle

Un cercle de centre C(a, b) et rayon r a pour équation :
**(x - a)² + (y - b)² = r²**

Exemple : cercle de centre O(0,0) et rayon 5 :
x² + y² = 25

### Forme générale : x² + y² + Dx + Ey + F = 0
Centre : (-D/2, -E/2) ; Rayon : r = √(D²/4 + E²/4 - F)

## Distance entre deux points

**d(A,B) = √[(x₂-x₁)² + (y₂-y₁)²]**

## Milieu d''un segment

**M = ((x₁+x₂)/2 , (y₁+y₂)/2)**

## Position d''un point par rapport à un cercle

Pour C: x² + y² + Dx + Ey + F = 0 et point P(p, q) :
- Si p² + q² + Dp + Eq + F < 0 → P est **intérieur** au cercle
- Si = 0 → P est **sur** le cercle
- Si > 0 → P est **extérieur** au cercle',
  (SELECT id FROM subjects WHERE name = 'Mathématiques générales' AND level_id = (SELECT id FROM levels WHERE level_number = 4)),
  (SELECT id FROM levels WHERE level_number = 4),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Suites numériques : arithmétiques et géométriques',
  'Définir, représenter et calculer la somme des termes des suites arithmétiques et géométriques.',
  'TEXT',
  '# Les suites numériques

## Définition

Une **suite** est une liste ordonnée de nombres (les termes), notés u₁, u₂, u₃, ..., uₙ, ...

Elle peut être définie :
- Par une **formule explicite** : uₙ = f(n)
- Par une **relation de récurrence** : uₙ₊₁ = f(uₙ)

## Suites arithmétiques

### Définition
Une suite est **arithmétique** si chaque terme s''obtient en ajoutant une constante **r** (raison) au précédent.

uₙ₊₁ = uₙ + r ↔ uₙ = u₁ + (n-1)r

### Propriétés
- **Terme général :** uₙ = u₁ + (n-1)r
- **Somme des n premiers termes :** Sₙ = n(u₁ + uₙ)/2

### Exemple
Suite : 3, 7, 11, 15, 19, ...
- Raison : r = 4
- u₁ = 3, terme général : uₙ = 3 + (n-1)×4 = 4n - 1
- u₁₀ = 4(10) - 1 = 39
- S₁₀ = 10×(3+39)/2 = **210**

## Suites géométriques

### Définition
Une suite est **géométrique** si chaque terme s''obtient en multipliant le précédent par une constante **q** (raison).

uₙ₊₁ = q × uₙ ↔ uₙ = u₁ × qⁿ⁻¹

### Propriétés
- **Terme général :** uₙ = u₁ × qⁿ⁻¹
- **Somme :** Sₙ = u₁ × (1 - qⁿ)/(1 - q) si q ≠ 1

### Exemple
Suite : 2, 6, 18, 54, ...
- Raison : q = 3
- u₁ = 2, terme général : uₙ = 2 × 3ⁿ⁻¹
- u₅ = 2 × 3⁴ = 162
- S₅ = 2 × (1-3⁵)/(1-3) = 2 × (1-243)/(-2) = **242**

## Application financière

Un capital de 1000 € placé à 2% par an :
- Suite géométrique de raison q = 1,02
- Après n années : Cₙ = 1000 × 1,02ⁿ
- Après 10 ans : C₁₀ = 1000 × 1,02¹⁰ ≈ **1 219 €**',
  (SELECT id FROM subjects WHERE name = 'Mathématiques générales' AND level_id = (SELECT id FROM levels WHERE level_number = 4)),
  (SELECT id FROM levels WHERE level_number = 4),
  true
);


-- ============================================================
-- NIVEAU 4 — Mathématiques fortes
-- ============================================================

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Démonstrations et raisonnement mathématique',
  'Apprendre les techniques de démonstration : directe, par contraposée, par l''absurde et par récurrence.',
  'TEXT',
  '# Raisonnement et démonstration

## Pourquoi démontrer ?

En mathématiques, une affirmation n''est vraie que si on peut la **prouver** par un raisonnement logique irréfutable. C''est la rigueur qui distingue les mathématiques des autres disciplines.

## Les types de raisonnement

### Raisonnement direct
On part de la prémisse et on en déduit la conclusion par une chaîne logique.

**Exemple :** Si n est pair, montrons que n² est pair.
- n pair → n = 2k pour un entier k
- n² = (2k)² = 4k² = 2(2k²)
- Donc n² est pair. ✓

### Raisonnement par contraposée
Prouver "Si P alors Q" en prouvant "Si non-Q alors non-P" (logiquement équivalent).

**Exemple :** Si n² est impair, alors n est impair.
On démontre la contraposée : si n est pair → n² est pair (déjà prouvé ci-dessus). ✓

### Raisonnement par l''absurde (reductio ad absurdum)
On suppose la négation de ce qu''on veut prouver, puis on arrive à une contradiction.

**Exemple classique :** √2 est irrationnel.
- Supposons √2 = p/q (rationnel irréductible, p et q entiers sans facteur commun)
- Alors 2 = p²/q² → p² = 2q² → p² est pair → p est pair → p = 2m
- Alors (2m)² = 2q² → 4m² = 2q² → q² = 2m² → q² pair → q pair
- Contradiction : p et q auraient 2 comme facteur commun ! ✗
- Donc √2 est irrationnel. ✓

### Raisonnement par récurrence
Pour prouver une propriété vraie pour tout entier n ≥ n₀ :

1. **Initialisation :** Vérifier que la propriété est vraie pour n = n₀
2. **Hérédité :** Supposer que la propriété est vraie au rang n (hypothèse de récurrence) et montrer qu''elle est vraie au rang n+1
3. **Conclusion :** Par le principe de récurrence, la propriété est vraie pour tout n ≥ n₀.

**Exemple :** Montrons que Σₖ₌₁ⁿ k = n(n+1)/2

- **Init (n=1) :** Σ = 1 = 1×2/2 ✓
- **Hérédité :** On suppose Σₖ₌₁ⁿ k = n(n+1)/2. Alors Σₖ₌₁ⁿ⁺¹ k = n(n+1)/2 + (n+1) = (n+1)(n+2)/2 ✓
- **Conclusion :** Vrai pour tout n ≥ 1.',
  (SELECT id FROM subjects WHERE name = 'Mathématiques fortes' AND level_id = (SELECT id FROM levels WHERE level_number = 4)),
  (SELECT id FROM levels WHERE level_number = 4),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Algèbre linéaire : systèmes d''équations et matrices',
  'Résoudre des systèmes linéaires et introduire le calcul matriciel élémentaire.',
  'TEXT',
  '# Systèmes d''équations et matrices

## Systèmes d''équations linéaires

### Définition
Un système de n équations à n inconnues est linéaire si toutes les équations sont du 1er degré.

**Exemple :**
- 2x + 3y = 12
- x - y = 1

### Méthodes de résolution

**Substitution :**
De la 2ème : x = 1 + y
Dans la 1ère : 2(1+y) + 3y = 12 → 2 + 5y = 12 → y = 2
Puis x = 1 + 2 = **3**

**Combinaison linéaire (élimination) :**
Multiplier la 2ème par 2 : 2x - 2y = 2
Soustraire de la 1ère : 5y = 10 → y = 2 → x = 3

**Méthode de Cramer (déterminants) :**
Pour ax + by = e et cx + dy = f :
Δ = |a b; c d| = ad - bc
x = (ed - bf)/Δ ; y = (af - ec)/Δ

## Introduction aux matrices

### Définition
Une **matrice** est un tableau rectangulaire de nombres organisé en lignes et colonnes.

**Notation :** A = (aᵢⱼ) où i = ligne, j = colonne

**Matrice 2×2 :**
A = [[a b], [c d]]

### Opérations sur les matrices

**Addition :** A + B = (aᵢⱼ + bᵢⱼ) — même taille requise

**Multiplication par un scalaire :** k×A = (k×aᵢⱼ)

**Produit matriciel :** (AB)ᵢⱼ = Σₖ aᵢₖ × bₖⱼ
Attention : AB ≠ BA en général !

**Exemple :**
A = [[1, 2], [3, 4]], B = [[5, 6], [7, 8]]

AB = [[1×5+2×7, 1×6+2×8], [3×5+4×7, 3×6+4×8]]
= [[19, 22], [43, 50]]

### Le déterminant d''une matrice 2×2
|A| = ad - bc

### Matrice inverse
Si det(A) ≠ 0, A est inversible :
A⁻¹ = (1/det(A)) × [[d, -b], [-c, a]]

**Application :** Résoudre AX = B → X = A⁻¹B',
  (SELECT id FROM subjects WHERE name = 'Mathématiques fortes' AND level_id = (SELECT id FROM levels WHERE level_number = 4)),
  (SELECT id FROM levels WHERE level_number = 4),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Trigonométrie avancée : cercle trigonométrique et formules',
  'Explorer le cercle trigonométrique, les identités remarquables et les équations trigonométriques.',
  'TEXT',
  '# Trigonométrie avancée

## Le cercle trigonométrique

Le cercle trigonométrique est un cercle de rayon 1 centré à l''origine O.

Pour un angle θ (en radians), le point M du cercle a pour coordonnées :
**M = (cos θ, sin θ)**

### Conversion degrés ↔ radians
- 180° = π radians
- 1° = π/180 rad ; 1 rad = 180°/π ≈ 57,3°

| Degrés | Radians | cos | sin |
|--------|---------|-----|-----|
| 0° | 0 | 1 | 0 |
| 30° | π/6 | √3/2 | 1/2 |
| 45° | π/4 | √2/2 | √2/2 |
| 60° | π/3 | 1/2 | √3/2 |
| 90° | π/2 | 0 | 1 |
| 180° | π | -1 | 0 |

## Identités trigonométriques fondamentales

- **Pythagore :** sin²θ + cos²θ = 1
- **Tangente :** tan θ = sin θ / cos θ
- **Symétries :** sin(-θ) = -sin θ ; cos(-θ) = cos θ
- **Complémentarité :** sin(π/2 - θ) = cos θ

## Formules d''addition

- **sin(a + b) = sin a · cos b + cos a · sin b**
- **cos(a + b) = cos a · cos b - sin a · sin b**
- **sin(2a) = 2 sin a · cos a** (cas particulier)
- **cos(2a) = cos²a - sin²a = 1 - 2sin²a = 2cos²a - 1**

## Équations trigonométriques

### Résoudre sin x = k (|k| ≤ 1)
x = arcsin(k) + 2kπ ou x = π - arcsin(k) + 2kπ, k ∈ ℤ

### Résoudre cos x = k
x = ±arccos(k) + 2kπ

**Exemple :** sin x = √3/2
x = π/3 + 2kπ ou x = 2π/3 + 2kπ, k ∈ ℤ

## Fonctions trigonométriques réciproques

- arcsin : [-1, 1] → [-π/2, π/2]
- arccos : [-1, 1] → [0, π]
- arctan : ℝ → ]-π/2, π/2[',
  (SELECT id FROM subjects WHERE name = 'Mathématiques fortes' AND level_id = (SELECT id FROM levels WHERE level_number = 4)),
  (SELECT id FROM levels WHERE level_number = 4),
  true
);


-- ============================================================
-- NIVEAU 4 — Biologie
-- ============================================================

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Génétique : ADN, gènes et hérédité',
  'Comprendre la structure de l''ADN, la notion de gène et les lois de l''hérédité de Mendel.',
  'TEXT',
  '# Génétique et hérédité

## L''ADN : support de l''information génétique

L''**ADN** (acide désoxyribonucléique) est la molécule qui contient les instructions génétiques de tout être vivant.

### Structure de l''ADN
- Double hélice formée de deux brins complémentaires
- Chaque brin est une chaîne de **nucléotides**
- Un nucléotide = sucre (désoxyribose) + phosphate + **base azotée**
- Quatre bases : Adénine (A), Thymine (T), Guanine (G), Cytosine (C)
- Complémentarité : A-T et G-C

### Le gène
Un **gène** est une séquence d''ADN qui code pour une protéine spécifique.
- L''humain possède environ **20 000-25 000 gènes**
- Organisés en **chromosomes** : 46 chromosomes (23 paires) chez l''humain
- Paires de chromosomes homologues : une paire vient du père, une de la mère

## Les lois de Mendel

Gregor Mendel (1865) a découvert les règles de l''hérédité en croisant des pois.

### Allèles et génotype
Chaque gène existe en différentes versions appelées **allèles**.
- **Génotype** : ensemble des allèles (ex. Aa, AA, aa)
- **Phénotype** : caractère observable correspondant
- **Allèle dominant** (noté en majuscule) : s''exprime même en une seule copie
- **Allèle récessif** (noté en minuscule) : ne s''exprime que si présent en deux copies

### 1ère loi : uniformité des hybrides F1
Le croisement de deux lignées pures donne une 1ère génération (F1) uniforme.

AA × aa → tous les enfants Aa (phénotype du dominant)

### 2ème loi : ségrégation en F2
Aa × Aa → ¼ AA + ½ Aa + ¼ aa

**Ratio phénotypique F2 :** 3 dominant : 1 récessif

### La codominance
Les deux allèles s''expriment simultanément (ni dominant ni récessif).
Exemple : groupe sanguin AB → allèles A et B tous deux exprimés.

## Application : groupe sanguin ABO

| Génotype | Groupe sanguin |
|----------|---------------|
| IAIA ou IAi | A |
| IBIB ou IBi | B |
| IAIB | AB |
| ii | O |',
  (SELECT id FROM subjects WHERE name = 'Biologie' AND level_id = (SELECT id FROM levels WHERE level_number = 4)),
  (SELECT id FROM levels WHERE level_number = 4),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Le système immunitaire : défenses naturelles et acquises',
  'Comprendre les mécanismes de défense de l''organisme contre les agents pathogènes.',
  'TEXT',
  '# Le système immunitaire

## Introduction

Le **système immunitaire** est l''ensemble des mécanismes qui protègent l''organisme contre les agents pathogènes (bactéries, virus, champignons, parasites) et les cellules anormales (cancers).

## La première ligne de défense : barrières physiques

- **Peau** : barrière mécanique imperméable aux microbes
- **Muqueuses** : sécrètent du mucus qui piège les microbes
- **Cils** : dans les voies respiratoires, éliminent les particules
- **Larmes, salive, sueur** : contiennent des substances antibactériennes (lysozyme)

## L''immunité innée (non spécifique)

Réaction rapide (quelques heures), non spécifique → attaque tout agent étranger.

### Cellules impliquées
- **Phagocytes** (neutrophiles, macrophages) : engloutissent et détruisent les agents pathogènes par **phagocytose**
- **Cellules NK** (Natural Killer) : détruisent les cellules infectées ou tumorales

### La réaction inflammatoire
En cas d''infection :
1. Les mastocytes libèrent de l''**histamine** → vasodilatation
2. Les capillaires deviennent plus perméables
3. Les phagocytes affluent vers le site infecté
4. Signes : rougeur, chaleur, gonflement, douleur

## L''immunité adaptative (spécifique)

Réaction plus lente (quelques jours), mais spécifique et durable.

### Les acteurs clés

**Lymphocytes B** : produisent des **anticorps** (immunoglobulines)
- Les anticorps se lient à des antigènes spécifiques → neutralisation

**Lymphocytes T** :
- **T auxiliaires (CD4+)** : coordonnent la réponse immunitaire
- **T cytotoxiques (CD8+)** : détruisent directement les cellules infectées

### Mémoire immunitaire
Après une infection, des **lymphocytes mémoire** persistent longtemps.
→ En cas de 2ème contact avec le même agent : réponse plus rapide et plus forte.

C''est le principe de la **vaccination** : introduire un antigène inoffensif pour créer une mémoire immunitaire sans déclencher la maladie.',
  (SELECT id FROM subjects WHERE name = 'Biologie' AND level_id = (SELECT id FROM levels WHERE level_number = 4)),
  (SELECT id FROM levels WHERE level_number = 4),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Évolution des espèces : théorie de Darwin et spéciation',
  'Comprendre les mécanismes de l''évolution biologique et les preuves qui la soutiennent.',
  'TEXT',
  '# La théorie de l''évolution

## Darwin et la sélection naturelle

Charles Darwin (1859, *De l''Origine des espèces*) propose la **théorie de l''évolution par sélection naturelle**.

### Les postulats de Darwin

1. **Variabilité** : au sein d''une espèce, les individus présentent des variations (taille, couleur, comportement...)
2. **Hérédité** : certaines de ces variations sont transmises à la descendance
3. **Surproduction** : les êtres vivants produisent plus de descendants que l''environnement ne peut en supporter → compétition
4. **Sélection naturelle** : les individus ayant les caractères les mieux adaptés survivent et se reproduisent davantage

**Résultat :** Au fil des générations, les caractères avantageux deviennent plus fréquents dans la population → **évolution**.

## Néo-darwinisme : la synthèse moderne

Darwin ignorait le mécanisme de l''hérédité. La génétique (Mendel, Watson & Crick) l''a complété :

- Les **mutations** génétiques créent de nouvelles variations aléatoires
- La **recombinaison génétique** lors de la reproduction sexuée brasse les allèles
- La **dérive génétique** peut faire varier les fréquences alléliques par hasard (surtout dans les petites populations)

## La spéciation

La **spéciation** est la formation d''une nouvelle espèce à partir d''une espèce ancestrale.

### Spéciation allopatrique (la plus fréquente)
Une population est **géographiquement isolée** (montagne, mer, désert).
→ Les deux populations évoluent séparément → accumulation de différences génétiques → isolation reproductive → nouvelle espèce.

Exemple : les pinsons de Darwin aux îles Galápagos (13 espèces issues d''un ancêtre commun).

### Preuves de l''évolution
- **Fossiles** : séquence dans les couches géologiques
- **Homologies anatomiques** : aile de chauve-souris / bras humain / nageoire de dauphin → même structure osseuse (vertébrés)
- **Homologies moléculaires** : ressemblances dans l''ADN et les protéines
- **Embryologie comparée** : stades embryonnaires similaires',
  (SELECT id FROM subjects WHERE name = 'Biologie' AND level_id = (SELECT id FROM levels WHERE level_number = 4)),
  (SELECT id FROM levels WHERE level_number = 4),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Le système nerveux et les hormones',
  'Comprendre la structure et le fonctionnement du système nerveux et de la régulation hormonale.',
  'TEXT',
  '# Système nerveux et régulation hormonale

## Le neurone : unité de base

Un **neurone** est la cellule de base du système nerveux.

### Structure
- **Corps cellulaire (soma)** : contient le noyau, centre de contrôle
- **Dendrites** : prolongements qui reçoivent les signaux
- **Axone** : long prolongement qui transmet le signal vers d''autres neurones
- **Gaine de myéline** : enveloppe grasse qui accélère la conduction

### L''influx nerveux
Le signal nerveux est un signal électrique : **potentiel d''action**.
Vitesse : 1 à 100 m/s selon le type de fibre.

La **synapse** est la jonction entre deux neurones. La transmission est chimique : le neurotransmetteur libéré dans la fente synaptique se fixe sur les récepteurs du neurone suivant.

## Organisation du système nerveux

### Système nerveux central (SNC)
- **Cerveau** : traitement de l''information, conscience, mémoire, langage
- **Cervelet** : coordination des mouvements, équilibre
- **Tronc cérébral** : fonctions vitales (respiration, rythme cardiaque)
- **Moelle épinière** : relais entre cerveau et corps, réflexes

### Système nerveux périphérique (SNP)
- **Somatique** : volontaire (contrôle des muscles squelettiques)
- **Autonome** : involontaire → sympathique (urgence, "fight or flight") et parasympathique (repos, "rest and digest")

## La régulation hormonale

Les **hormones** sont des molécules messagères sécrétées par des glandes endocrines, transportées par le sang jusqu''aux organes cibles.

| Glande | Hormones | Rôles |
|--------|---------|-------|
| Hypophyse | GH, FSH, LH | Croissance, reproduction |
| Thyroïde | Thyroxine | Métabolisme, développement |
| Glandes surrénales | Adrénaline, Cortisol | Stress, glycémie |
| Pancréas | Insuline, Glucagon | Glycémie (taux de sucre) |
| Gonades | Estrogènes, Testostérone | Caractères sexuels |

## Régulation de la glycémie

Lorsque la glycémie monte (après un repas) : le pancréas sécrète de l''**insuline** → les cellules absorbent le glucose → glycémie baisse.
Lorsque la glycémie baisse : sécrétion de **glucagon** → libération de glucose stocké → glycémie remonte.',
  (SELECT id FROM subjects WHERE name = 'Biologie' AND level_id = (SELECT id FROM levels WHERE level_number = 4)),
  (SELECT id FROM levels WHERE level_number = 4),
  true
);


-- ============================================================
-- NIVEAU 4 — Chimie
-- ============================================================

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Thermochimie : énergie des réactions chimiques',
  'Calculer les variations d''enthalpie et comprendre les réactions exothermiques et endothermiques.',
  'TEXT',
  '# Thermochimie

## Échanges d''énergie dans les réactions chimiques

Toute réaction chimique implique des échanges d''énergie avec le milieu extérieur, principalement sous forme de **chaleur**.

### Réactions exothermiques
La réaction **libère de la chaleur** → la température du système augmente.

**ΔH < 0** (variation d''enthalpie négative)

Exemples : combustion, neutralisation acide-base, respiration cellulaire.

### Réactions endothermiques
La réaction **absorbe de la chaleur** → la température du système diminue.

**ΔH > 0** (variation d''enthalpie positive)

Exemples : photosynthèse, décomposition thermique, dissolution de certains sels.

## L''enthalpie (H)

L''**enthalpie** est une fonction d''état qui représente l''énergie interne d''un système à pression constante.

**Variation d''enthalpie standard :** ΔH° (en kJ/mol, à 25°C et 1 atm)

### Loi de Hess
L''enthalpie de réaction est indépendante du chemin emprunté. On peut additionner des équations thermochimiques.

**ΔH(réaction globale) = ΣΔH(réactions élémentaires)**

### Enthalpie de formation standard (ΔHf°)
Enthalpie de formation de 1 mol d''un composé à partir de ses éléments dans leur état standard.

**ΔH°réaction = Σ ΔHf°(produits) - Σ ΔHf°(réactifs)**

Exemple : Combustion du méthane CH₄ + 2O₂ → CO₂ + 2H₂O
ΔH° = [ΔHf°(CO₂) + 2ΔHf°(H₂O)] - [ΔHf°(CH₄) + 2ΔHf°(O₂)]
= [-393,5 + 2(-241,8)] - [-74,8 + 0]
= -877,1 + 74,8 = **-802,3 kJ/mol** (exothermique)

## Capacité calorifique

Q = m × c × ΔT

- Q : chaleur échangée (en J)
- m : masse (en g)
- c : capacité calorifique spécifique (J/g·°C) — eau : c = 4,18 J/g·°C
- ΔT : variation de température (en °C)

**Exemple :** Chauffer 200 g d''eau de 20°C à 100°C :
Q = 200 × 4,18 × 80 = **66 880 J ≈ 66,9 kJ**',
  (SELECT id FROM subjects WHERE name = 'Chimie' AND level_id = (SELECT id FROM levels WHERE level_number = 4)),
  (SELECT id FROM levels WHERE level_number = 4),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'La chimie organique : alcanes, alcènes et fonctions organiques',
  'Découvrir la chimie du carbone, les hydrocarbures et les principales fonctions organiques.',
  'TEXT',
  '# Chimie organique

## Le carbone : un atome unique

La chimie organique est la chimie des composés du **carbone**. Le carbone peut former :
- 4 liaisons covalentes
- Des chaînes, des cycles, des structures complexes

**La chimie organique est à la base de la vie :** protéines, lipides, glucides, ADN.

## Les hydrocarbures

Composés formés uniquement de C et H.

### Alcanes (liaisons simples C-C)
- Formule : CₙH₂ₙ₊₂
- Chaîne saturée
- Suffixe : **-ane**

| n | Nom | Formule |
|---|-----|---------|
| 1 | Méthane | CH₄ |
| 2 | Éthane | C₂H₆ |
| 3 | Propane | C₃H₈ |
| 4 | Butane | C₄H₁₀ |

### Alcènes (au moins une double liaison C=C)
- Formule : CₙH₂ₙ
- Insaturés
- Suffixe : **-ène**
- Éthylène : CH₂=CH₂ (important en industrie)

### Alcynes (triple liaison C≡C)
- Suffixe : **-yne**
- Acétylène : CH≡CH

## Les fonctions organiques principales

| Fonction | Groupe caractéristique | Exemple |
|----------|----------------------|---------|
| Alcool | –OH | Éthanol C₂H₅OH |
| Aldéhyde | –CHO | Éthanal CH₃CHO |
| Cétone | >C=O | Propanone CH₃COCH₃ |
| Acide carboxylique | –COOH | Acide acétique CH₃COOH |
| Ester | –COO– | Acétate d''éthyle |
| Amine | –NH₂ | Méthylamine CH₃NH₂ |

## Isomérie

Des **isomères** ont la même formule moléculaire mais des structures différentes.

C₄H₁₀ : 
- butane : CH₃-CH₂-CH₂-CH₃ (chaîne droite)
- isobutane : CH₃-CH(CH₃)-CH₃ (branchée)

## Réactions organiques importantes

- **Substitution** (alcanes) : CH₄ + Cl₂ → CH₃Cl + HCl (lumière)
- **Addition** (alcènes) : CH₂=CH₂ + H₂ → CH₃-CH₃ (catalyseur)
- **Estérification** : alcool + acide → ester + eau
- **Polymérisation** : n CH₂=CH₂ → (CH₂-CH₂)ₙ (polyéthylène)',
  (SELECT id FROM subjects WHERE name = 'Chimie' AND level_id = (SELECT id FROM levels WHERE level_number = 4)),
  (SELECT id FROM levels WHERE level_number = 4),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Cinétique chimique et équilibres',
  'Comprendre la vitesse des réactions chimiques et le concept d''équilibre chimique (loi de Le Chatelier).',
  'TEXT',
  '# Cinétique et équilibre chimique

## La cinétique chimique

La cinétique étudie la **vitesse des réactions chimiques** et les facteurs qui l''influencent.

### Définition de la vitesse
Vitesse de réaction = variation de concentration par unité de temps :
v = -Δ[réactif]/Δt = +Δ[produit]/Δt (en mol/L·s)

### Facteurs influençant la vitesse

| Facteur | Effet | Explication |
|---------|-------|------------|
| Température ↑ | Vitesse ↑ | Plus de chocs efficaces |
| Concentration ↑ | Vitesse ↑ | Plus de chocs |
| Surface de contact ↑ | Vitesse ↑ | Plus de points d''attaque |
| Catalyseur | Vitesse ↑↑ | Abaisse l''énergie d''activation |
| Pression (gaz) ↑ | Vitesse ↑ | Concentration effective ↑ |

### L''énergie d''activation (Ea)
Énergie minimale nécessaire pour déclencher une réaction. Les catalyseurs réduisent Ea.

## L''équilibre chimique

Beaucoup de réactions sont **réversibles** (⇌). Elles atteignent un état d''équilibre où les vitesses de réaction directe et inverse sont égales.

### La constante d''équilibre (K)

Pour : aA + bB ⇌ cC + dD

**K = [C]ᶜ × [D]ᵈ / ([A]ᵃ × [B]ᵇ)**

- K grand (>> 1) : équilibre vers les produits → réaction pratiquement totale
- K petit (<< 1) : équilibre vers les réactifs → peu de produits formés

## Principe de Le Chatelier

*"Lorsqu''un système à l''équilibre est perturbé, il évolue pour contrecarrer cette perturbation."*

### Applications

N₂(g) + 3H₂(g) ⇌ 2NH₃(g) + énergie (réaction de Haber)

| Perturbation | Effet sur l''équilibre |
|-------------|----------------------|
| ↑ concentration N₂ ou H₂ | Déplacement vers les produits → ↑ NH₃ |
| ↑ pression | Déplacement vers le côté à moins de moles de gaz (→ produits : 2 mol NH₃ vs 4 mol réactifs) |
| ↑ température | Déplacement vers les réactifs (réaction exothermique → chaleur = produit) |
| Catalyseur | Atteint l''équilibre plus vite, SANS changer la position de l''équilibre |

## Importance industrielle

Le procédé Haber (NH₃) est crucial pour la production d''engrais (alimentation de la planète).
Conditions optimales : 450°C, 200 atm, catalyseur Fe → compromis cinétique/thermodynamique.',
  (SELECT id FROM subjects WHERE name = 'Chimie' AND level_id = (SELECT id FROM levels WHERE level_number = 4)),
  (SELECT id FROM levels WHERE level_number = 4),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'La chimie des solutions : concentrations et dilutions',
  'Calculer des concentrations molaires et massiques, réaliser des dilutions et des mélanges.',
  'TEXT',
  '# Chimie des solutions

## Les solutions

Une **solution** est un mélange homogène d''un **soluté** (substance dissoute) dans un **solvant** (substance qui dissout). En chimie, le solvant est souvent l''eau (solution aqueuse).

## La concentration massique (Cm)

**Cm = masse du soluté / volume de la solution**
Unité : g/L ou g/mL

Exemple : 20 g de NaCl dans 500 mL d''eau :
Cm = 20 g / 0,5 L = **40 g/L**

## La concentration molaire (Mol/L ou M)

**C = n / V** avec n en mol et V en L

**C = Cm / M** avec M = masse molaire (g/mol)

Exemple : NaCl, M = 23 + 35,5 = 58,5 g/mol
Cm = 40 g/L → C = 40 / 58,5 ≈ **0,68 mol/L**

## La dilution

Diluer = ajouter du solvant à une solution → concentration diminue, quantité de soluté reste constante.

**C₁ × V₁ = C₂ × V₂** (loi de dilution)

Exemple : Diluer 50 mL de HCl 6 mol/L pour obtenir HCl 0,5 mol/L :
V₂ = C₁ × V₁ / C₂ = 6 × 50 / 0,5 = **600 mL**
(prendre 50 mL de HCl concentré et ajouter de l''eau jusqu''à 600 mL)

**IMPORTANT :** Toujours verser l''acide dans l''eau (pas l''eau dans l''acide) pour éviter les projections !

## Solubilité

La **solubilité** est la quantité maximale de soluté pouvant se dissoudre dans 100 g de solvant à une température donnée.

- Si solubilité dépassée → solution saturée → précipité
- La solubilité des solides augmente généralement avec la température
- La solubilité des gaz diminue avec la température (CO₂ se dégage de l''eau chaude)

## Dosage (titrage)

Le **dosage** consiste à déterminer la concentration d''une solution inconnue (titrand) à l''aide d''une solution de concentration connue (réactif titrant).

**Point équivalent :** toute la quantité de l''un des réactifs a réagi.
n(titrant) = n(titrand) × coefficient stœchiométrique',
  (SELECT id FROM subjects WHERE name = 'Chimie' AND level_id = (SELECT id FROM levels WHERE level_number = 4)),
  (SELECT id FROM levels WHERE level_number = 4),
  true
);


-- ============================================================
-- NIVEAU 4 — Physique
-- ============================================================

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Optique géométrique : réflexion et réfraction',
  'Étudier la propagation de la lumière, la réflexion et la réfraction selon les lois de Snell-Descartes.',
  'TEXT',
  '# Optique géométrique

## La lumière

La lumière est une **onde électromagnétique** qui se propage en ligne droite dans un milieu homogène. Dans le vide, sa vitesse est c = 3 × 10⁸ m/s.

## La réflexion

Quand un rayon lumineux frappe une surface réfléchissante, il repart selon les lois de la réflexion.

### Lois de la réflexion
1. Le rayon incident, la normale et le rayon réfléchi sont dans le même plan
2. L''angle d''incidence (i) = angle de réflexion (r) : **i = r**

### Miroir plan
- Image virtuelle, droite, à la même distance derrière le miroir
- Symétrique de l''objet par rapport au miroir

### Miroir concave et convexe
- Miroir concave (sphère creuse) : concentre les rayons → image réelle possible
- Miroir convexe : diverge les rayons → image virtuelle, réduite (rétroviseur)

## La réfraction

Quand la lumière passe d''un milieu à un autre (densité différente), elle **dévie**.

### Loi de Snell-Descartes
n₁ × sin(i₁) = n₂ × sin(i₂)

- n : indice de réfraction du milieu
- i₁ : angle d''incidence (dans milieu 1)
- i₂ : angle de réfraction (dans milieu 2)

### Indices de réfraction
- Air : n ≈ 1
- Eau : n ≈ 1,33
- Verre : n ≈ 1,5
- Diamant : n ≈ 2,42

**Exemple :** rayon passant de l''air (n=1) à l''eau (n=1,33) avec i₁ = 30° :
sin(i₂) = (1 × sin 30°) / 1,33 = 0,5/1,33 ≈ 0,376 → i₂ ≈ 22°

La lumière se **rapproche de la normale** en entrant dans un milieu plus dense.

## Réflexion totale interne

Si n₁ > n₂ et i₁ > angle critique ic = arcsin(n₂/n₁) → **toute la lumière est réfléchie**.

Application : **fibre optique** → la lumière reste confinée dans la fibre par réflexion totale.

## Les lentilles

- **Lentille convergente (biconvexe)** : f'' > 0, fait converger la lumière
- **Lentille divergente (biconcave)** : f'' < 0, fait diverger la lumière

**Relation de conjugaison :** 1/OA'' - 1/OA = 1/f''

Application : lunettes, objectifs photo, microscopes, télescopes.',
  (SELECT id FROM subjects WHERE name = 'Physique' AND level_id = (SELECT id FROM levels WHERE level_number = 4)),
  (SELECT id FROM levels WHERE level_number = 4),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Les ondes mécaniques : son et propagation',
  'Caractériser les ondes mécaniques, analyser le son et comprendre l''effet Doppler.',
  'TEXT',
  '# Les ondes mécaniques et le son

## Qu''est-ce qu''une onde ?

Une **onde** est une perturbation qui se propage de proche en proche, transportant de l''énergie sans transport de matière.

### Types d''ondes
- **Ondes transversales** : la vibration est perpendiculaire à la propagation (corde, lumière)
- **Ondes longitudinales** : la vibration est parallèle à la propagation (son)

## Grandeurs caractéristiques

| Grandeur | Symbole | Unité | Définition |
|---------|---------|-------|-----------|
| Fréquence | f | Hertz (Hz) | Nombre de cycles par seconde |
| Période | T | Seconde (s) | Durée d''un cycle complet ; T = 1/f |
| Longueur d''onde | λ | Mètre (m) | Distance entre deux points identiques |
| Amplitude | A | (variable) | Hauteur maximale de la perturbation |
| Célérité | v | m/s | Vitesse de propagation ; v = f × λ |

## Le son

Le son est une onde mécanique **longitudinale** et **progressive**, produite par la vibration d''un objet (corde, membrane, colonne d''air).

### Propriétés du son

**Hauteur (pitch) :** liée à la fréquence
- Sons graves : f basse (20-200 Hz)
- Sons aigus : f haute (200-20 000 Hz)
- Domaine audible humain : 20 Hz - 20 000 Hz

**Intensité (volume) :** liée à l''amplitude
- Mesurée en **décibels (dB)**
- 0 dB : seuil d''audition ; 120 dB : seuil de douleur

**Timbre :** lié à la forme d''onde (même note, différent selon l''instrument)

### Vitesse du son
- Dans l''air (20°C) : v ≈ 343 m/s
- Dans l''eau : v ≈ 1 500 m/s
- Dans l''acier : v ≈ 5 000 m/s

## L''effet Doppler

Quand la source sonore se déplace par rapport à l''observateur, la fréquence perçue est différente de la fréquence émise.

- Source s''approche → fréquence perçue **plus haute** (son plus aigu)
- Source s''éloigne → fréquence perçue **plus basse** (son plus grave)

**Exemple :** ambulance qui passe → changement de ton de la sirène.

**Applications :** radar de contrôle de vitesse, échographie Doppler médicale, mesure des vitesses des étoiles (décalage spectral).',
  (SELECT id FROM subjects WHERE name = 'Physique' AND level_id = (SELECT id FROM levels WHERE level_number = 4)),
  (SELECT id FROM levels WHERE level_number = 4),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Le magnétisme et l''électromagnétisme',
  'Comprendre les champs magnétiques, la force de Lorentz et les principes de l''induction électromagnétique.',
  'TEXT',
  '# Magnétisme et électromagnétisme

## Les aimants et les champs magnétiques

Un **aimant** crée un **champ magnétique** B dans l''espace qui l''entoure.

**Unité du champ magnétique :** Tesla (T) ou Gauss (G) [1 T = 10 000 G]

### Propriétés
- Les pôles opposés s''attirent, les pôles identiques se repoussent
- Les lignes de champ sortent du pôle Nord et entrent dans le pôle Sud
- La Terre est un aimant géant → aiguille aimantée de la boussole

## Le courant crée un champ magnétique

Un fil parcouru par un courant I crée un champ magnétique circulaire autour de lui (découverte d''Oersted, 1820).

**Règle du tire-bouchon :** si le courant monte, le champ tourne dans le sens des aiguilles d''une montre.

### Le solénoïde
Un solénoïde est une bobine (fil enroulé) → crée un champ uniforme à l''intérieur.
**B = μ₀ × n × I** (μ₀ = 4π × 10⁻⁷ T·m/A, n = nombre de spires/mètre, I = courant)

## La force de Lorentz

Une charge en mouvement dans un champ magnétique subit une force :
**F = q × v × B × sin(θ)**

Direction : perpendiculaire à v et à B (règle de la main droite).

Pour un conducteur de longueur L : F = I × L × B × sin(θ)

**Moteur électrique :** une bobine dans un aimant, parcourue par un courant, tourne grâce à la force de Lorentz.

## Induction électromagnétique (Faraday, 1831)

Un flux magnétique variable crée une force électromotrice (tension) dans un circuit.

**Loi de Faraday :** ε = -dΦ/dt (ε = tension induite, Φ = flux magnétique)

### Applications
- **Générateur (alternateur)** : rotation mécanique → courant électrique (centrale, dynamo de vélo)
- **Transformateur** : modifier la tension alternative via deux bobines couplées
- **Plaque à induction** : courant haute fréquence → champ variable → courants induits dans casserole → chaleur',
  (SELECT id FROM subjects WHERE name = 'Physique' AND level_id = (SELECT id FROM levels WHERE level_number = 4)),
  (SELECT id FROM levels WHERE level_number = 4),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'La physique nucléaire : radioactivité et énergie nucléaire',
  'Comprendre la structure du noyau atomique, les types de radioactivité et les applications de la physique nucléaire.',
  'TEXT',
  '# Physique nucléaire

## Le noyau atomique

Le noyau est composé de :
- **Protons** (charge +) : nombre = Z (numéro atomique)
- **Neutrons** (charge nulle) : N = A - Z (A = nombre de masse)

Les protons se repoussent mais la **force nucléaire forte** (courte portée) maintient la cohésion du noyau.

**Notation :** ᴬ_Z X (ex. ²³⁸_₉₂ U = uranium 238)

## La radioactivité

Certains noyaux sont **instables** → ils se désintègrent spontanément en émettant des rayonnements.

### Trois types de radioactivité

| Type | Nature | Pénétration | Protection |
|------|--------|-------------|-----------|
| α (alpha) | ⁴He | Faible | Feuille de papier |
| β⁻ (bêta moins) | e⁻ | Moyenne | Quelques mm d''aluminium |
| γ (gamma) | Photon | Très forte | Plomb épais ou béton |

### Réactions nucléaires

**Désintégration α :** ᴬ_Z X → ᴬ⁻⁴_(Z-2) Y + ⁴_₂ He

**Désintégration β⁻ :** ᴬ_Z X → ᴬ_(Z+1) Y + ⁰_(-1) e

**Loi de conservation :** A et Z sont conservés de chaque côté.

## La demi-vie (période radioactive T½)

T½ = durée nécessaire pour que la moitié des noyaux d''un échantillon se soit désintégrée.

**N(t) = N₀ × (1/2)^(t/T½)**

Exemples :
- Carbone-14 (C-14) : T½ = 5 730 ans → datation en archéologie
- Uranium-238 : T½ = 4,5 milliards d''années
- Iode-131 : T½ = 8 jours → utilisé en médecine nucléaire

## L''énergie nucléaire

**E = m × c²** (Einstein) : une petite masse → énorme énergie (c = 3 × 10⁸ m/s)

### Fission
Un noyau lourd (U-235) capture un neutron et se fissionne → libère 2-3 neutrons → réaction en chaîne.

**Application :** centrales nucléaires (électricité), bombe atomique.

### Fusion
Deux noyaux légers (H-2, H-3) fusionnent → noyau plus lourd + énergie immense.

**Application :** étoiles (soleil), bombe H, recherche ITER (fusion contrôlée).

**Avantage de la fusion :** peu de déchets, carburant abondant (eau de mer), pas d''émission de CO₂.',
  (SELECT id FROM subjects WHERE name = 'Physique' AND level_id = (SELECT id FROM levels WHERE level_number = 4)),
  (SELECT id FROM levels WHERE level_number = 4),
  true
);

