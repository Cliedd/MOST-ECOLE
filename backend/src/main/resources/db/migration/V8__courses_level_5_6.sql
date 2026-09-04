-- V8: Sciences niveau 5 (Biologie, Chimie, Physique) + ALL niveau 6 (terminal year, incl. Concours médecine)
-- Belgian FWB secondary education curriculum — NOTE: FSE niveau 5 already in V3

-- ============================================================
-- NIVEAU 5 — Biologie
-- ============================================================

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Biochimie : les molécules du vivant',
  'Étudier les quatre grandes classes de biomolécules : glucides, lipides, protéines et acides nucléiques.',
  'TEXT',
  '# Les molécules du vivant

## Introduction

La vie est basée sur la chimie du **carbone**. Les molécules organiques qui constituent les êtres vivants appartiennent à quatre grandes familles.

## Les glucides (sucres)

### Structure
- **Monosaccharides** (sucres simples) : glucose, fructose, galactose (formule : C₆H₁₂O₆)
- **Disaccharides** : saccharose (glucose + fructose), lactose, maltose
- **Polysaccharides** : amidon (stockage végétal), glycogène (stockage animal), cellulose (paroi végétale)

### Fonctions
- Source d''énergie (glucose → ATP par respiration cellulaire)
- Stockage (amidon, glycogène)
- Structure (cellulose, chitine)

## Les lipides

### Types
- **Triglycérides** (graisses) : 3 acides gras + glycérol → stockage énergétique
- **Phospholipides** : tête hydrophile + 2 queues hydrophobes → membranes cellulaires
- **Cholestérol** : composant des membranes, précurseur des hormones stéroïdes
- **Vitamines liposolubles** : A, D, E, K

### Acides gras saturés vs insaturés
- Saturés (viandes, beurre) : liaisons simples, solides à TA → augmentent LDL
- Insaturés (huile d''olive, poisson) : doubles liaisons, liquides → cardioprotecteurs

## Les protéines

### Structure
Chaînes d''acides aminés (20 types). Quatre niveaux de structure :
1. **Primaire** : séquence d''acides aminés (code génétique)
2. **Secondaire** : hélices α, feuillets β (liaisons hydrogène)
3. **Tertiaire** : repliement 3D (détermine la fonction)
4. **Quaternaire** : plusieurs chaînes assemblées (ex. hémoglobine : 4 chaînes)

### Fonctions
- Enzymes (catalyseurs biologiques)
- Anticorps (défense immunitaire)
- Hormones (insuline)
- Transport (hémoglobine : O₂)
- Structure (collagène, kératine)

## Les acides nucléiques

**ADN** : double brin, désoxyribose, base T (thymine)
**ARN** : simple brin, ribose, base U (uracile)

### Flux de l''information génétique

**ADN → (transcription) → ARNm → (traduction) → Protéine**

- **Transcription** : dans le noyau, ARN polymérase copie un gène en ARNm
- **Traduction** : dans le cytoplasme, les ribosomes lisent l''ARNm et assemblent les acides aminés en protéine (codon = 3 bases → 1 acide aminé)',
  (SELECT id FROM subjects WHERE name = 'Biologie' AND level_id = (SELECT id FROM levels WHERE level_number = 5)),
  (SELECT id FROM levels WHERE level_number = 5),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'La respiration cellulaire et la fermentation',
  'Comprendre la dégradation du glucose en ATP par la respiration aérobie et les voies fermentaires.',
  'TEXT',
  '# Respiration cellulaire

## Définition

La **respiration cellulaire** est l''ensemble des réactions chimiques qui permettent aux cellules de produire de l''énergie (ATP) à partir de molécules organiques (principalement le glucose).

**Équation bilan de la respiration aérobie :**
C₆H₁₂O₆ + 6 O₂ → 6 CO₂ + 6 H₂O + 36-38 ATP

## Les étapes de la respiration aérobie

### 1. La glycolyse (cytoplasme)
- Glucose (6C) → 2 pyruvate (3C)
- Produit : 2 ATP + 2 NADH (transporteurs d''électrons)
- Ne nécessite PAS d''oxygène (anaérobie)

### 2. Le cycle de Krebs (matrice mitochondriale)
- Le pyruvate est transformé en Acétyl-CoA
- L''Acétyl-CoA entre dans un cycle de réactions
- Produit : 2 ATP + NADH + FADH₂ + CO₂

### 3. La chaîne respiratoire et la phosphorylation oxydative (crêtes mitochondriales)
- NADH et FADH₂ libèrent leurs électrons → chaîne de transporteurs
- L''énergie libérée pompe des H⁺ → ATP synthase → **ATP** (la majorité des 36-38 ATP)
- L''oxygène est l''accepteur final d''électrons → forme H₂O

## La fermentation (voie anaérobie)

Quand l''oxygène manque, les cellules utilisent la fermentation pour régénérer le NAD⁺ et continuer la glycolyse.

### Fermentation lactique
Pyruvate → lactate + NAD⁺

Exemples : muscles en effort intense (crampes = accumulation de lactate), fabrication de yaourt, fromage.

### Fermentation alcoolique (levures)
Pyruvate → éthanol + CO₂ + NAD⁺

Exemples : bière, vin, bread (pain).

## Comparaison énergétique

| Processus | O₂ | ATP produits | Utilisation |
|-----------|-----|-------------|------------|
| Respiration aérobie | Oui | 36-38 | Repos, activité modérée |
| Fermentation | Non | 2 seulement | Effort intense court |

## ATP : la monnaie énergétique

**ATP** (Adénosine Tri-Phosphate) : hydrolyse de ATP → ADP + Pi libère **30,5 kJ/mol**. C''est cette énergie qui alimente toutes les réactions cellulaires (synthèse, transport, mouvement).',
  (SELECT id FROM subjects WHERE name = 'Biologie' AND level_id = (SELECT id FROM levels WHERE level_number = 5)),
  (SELECT id FROM levels WHERE level_number = 5),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'La biologie moléculaire : réplication, transcription et traduction',
  'Décrire les mécanismes moléculaires fondamentaux de la réplication de l''ADN et de l''expression génique.',
  'TEXT',
  '# Biologie moléculaire

## La réplication de l''ADN

La **réplication** est la copie exacte de l''ADN avant la division cellulaire.

### Mécanisme
1. L''hélicase **déroule** la double hélice et sépare les deux brins
2. L''ADN polymérase lit chaque brin matrice (3''→5'') et synthétise un nouveau brin complémentaire (5''→3'')
3. La ligase soude les fragments (fragments d''Okazaki sur le brin retardé)

**Réplication semi-conservative :** chaque molécule fille contient un brin parental + un brin néosynthétisé.

**Fidélité :** 1 erreur pour 10⁹ bases → mécanismes de correction (DNA repair).

## La transcription

La **transcription** copie l''information d''un gène en ARN messager (ARNm).

### Mécanisme
1. L''**ARN polymérase** reconnaît le **promoteur** du gène
2. La double hélice s''ouvre localement
3. L''ARN polymérase synthétise un ARNm complémentaire du brin matrice (remplace T par U)
4. L''ARNm est **matûré** (élimination des introns, épissage des exons)
5. L''ARNm quitte le noyau via les pores nucléaires

### Gènes et introns/exons
- **Exons** : séquences codantes conservées dans l''ARNm mature
- **Introns** : séquences non codantes éliminées lors de la maturation
- Un même gène peut produire des protéines différentes selon l''épissage alternatif

## La traduction

La **traduction** décode l''ARNm pour assembler une protéine.

### Le code génétique
- Codon = triplet de 3 bases de l''ARNm
- 64 codons possibles → 20 acides aminés + codon STOP
- Code **redondant** (plusieurs codons pour un même acide aminé) mais non ambigu

### Mécanisme
1. Les **ribosomes** s''assemblent sur l''ARNm
2. Les **ARN de transfert (ARNt)** apportent les acides aminés correspondant à chaque codon
3. Les acides aminés sont reliés par des liaisons peptidiques → **protéine**
4. Le ribosome rencontre un codon STOP → libération de la protéine

### De la séquence au repliement
La séquence détermine le repliement 3D (structure tertiaire) qui détermine la fonction.',
  (SELECT id FROM subjects WHERE name = 'Biologie' AND level_id = (SELECT id FROM levels WHERE level_number = 5)),
  (SELECT id FROM levels WHERE level_number = 5),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Physiologie humaine : le système cardiovasculaire',
  'Étudier la structure et le fonctionnement du cœur, de la circulation sanguine et de la régulation cardiaque.',
  'TEXT',
  '# Le système cardiovasculaire

## Fonctions

Le système cardiovasculaire assure le **transport** de :
- L''oxygène et le CO₂
- Les nutriments (glucose, acides aminés, lipides)
- Les hormones
- Les cellules immunitaires
- La chaleur (thermorégulation)

## Le cœur : structure et fonctionnement

### Structure
Le cœur est un muscle creux (myocarde) divisé en 4 cavités :
- **Oreillettes** (cavités supérieures) : reçoivent le sang veineux
- **Ventricules** (cavités inférieures) : pompent le sang

**Cœur droit** : reçoit le sang désoxygéné → envoie vers les poumons (petite circulation)
**Cœur gauche** : reçoit le sang oxygéné → envoie vers le corps (grande circulation)

### Valves cardiaques
- Valves auriculo-ventriculaires (mitrale, tricuspide) : entre oreillettes et ventricules
- Valves sigmoïdes (aortique, pulmonaire) : entre ventricules et artères

### Le cycle cardiaque
1. **Diastole** : relaxation, les ventricules se remplissent de sang
2. **Systole auriculaire** : les oreillettes se contractent
3. **Systole ventriculaire** : les ventricules se contractent → éjection du sang

**Fréquence cardiaque au repos :** 60-80 bpm (battements/min)
**Débit cardiaque :** DC = FC × volume d''éjection systolique (~5 L/min au repos)

## Les vaisseaux sanguins

| Vaisseau | Paroi | Direction | Pression |
|---------|-------|---------|---------|
| Artères | Épaisse, musclée | Cœur → organes | Élevée |
| Capillaires | Très mince (1 cellule) | Échanges | Basse |
| Veines | Fine, avec valvules | Organes → cœur | Basse |

## La régulation de la pression artérielle

**Pression artérielle normale :** 120/80 mmHg (systolique/diastolique)

### Régulation
- **Système nerveux autonome** : sympathique ↑ FC, parasympathique ↓ FC
- **Hormones** : adrénaline ↑ FC et pression, aldostérone ↑ rétention sodée
- **Rein** : régule le volume sanguin (système rénine-angiotensine)

## Pathologies cardiovasculaires

- **Hypertension** : TA > 140/90 → risque cardiaque et AVC
- **Infarctus** : obstruction d''une artère coronaire → nécrose du myocarde
- **AVC** : accident vasculaire cérébral (ischémique ou hémorragique)
- **Atherosclérose** : dépôt de plaques de cholestérol dans les artères

**Facteurs de risque :** tabac, sédentarité, obésité, diabète, stress, alimentation',
  (SELECT id FROM subjects WHERE name = 'Biologie' AND level_id = (SELECT id FROM levels WHERE level_number = 5)),
  (SELECT id FROM levels WHERE level_number = 5),
  true
);


-- ============================================================
-- NIVEAU 5 — Chimie
-- ============================================================

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Électrochimie : piles et électrolyse',
  'Comprendre les réactions d''oxydoréduction en solution et les applications des piles et de l''électrolyse.',
  'TEXT',
  '# Électrochimie

## Les réactions d''oxydoréduction (redox)

Une réaction **redox** implique un transfert d''électrons.

- **Oxydation** : perte d''électrons → l''espèce qui s''oxyde = **réducteur** (il donne des e⁻)
- **Réduction** : gain d''électrons → l''espèce qui se réduit = **oxydant** (il accepte des e⁻)

**Moyen mnémotechnique :** "OIL RIG"
- **O**xidation **I**s **L**oss (of electrons)
- **R**eduction **I**s **G**ain (of electrons)

### Nombres d''oxydation
Le nombre d''oxydation (NO) est une charge fictive attribuée à chaque atome.

Règles essentielles :
- O a généralement NO = -2 (sauf H₂O₂ : -1)
- H a NO = +1 (sauf hydrures : -1)
- La somme des NO = charge totale de la molécule

## Les piles galvaniques (piles électrochimiques)

Une pile convertit l''énergie chimique d''une réaction redox spontanée en énergie électrique.

### La pile Daniell (Zn/Cu)
- **Anode (-)** : Zn → Zn²⁺ + 2e⁻ (oxydation)
- **Cathode (+)** : Cu²⁺ + 2e⁻ → Cu (réduction)
- Réaction globale : Zn + Cu²⁺ → Zn²⁺ + Cu
- Tension à vide : +1,10 V

**Pont salin** : relie les deux solutions et assure la neutralité électrique (ionique).

### Force électromotrice (fem)
fem = E(cathode) - E(anode) [en Volts]

Plus la fem est positive, plus la pile est puissante.

## L''électrolyse

L''électrolyse est le processus **inverse** : on force une réaction non spontanée grâce à un courant électrique extérieur.

**Applications industrielles :**
- **Électrolyse de l''eau** : 2H₂O → 2H₂ + O₂ (production d''hydrogène vert)
- **Électrolyse de NaCl** : production de NaOH, Cl₂, H₂ (procédé chlor-alcali)
- **Galvanoplastie** : déposition d''une couche de métal (chrome, or, nickel) sur un objet
- **Raffinage de l''aluminium** : Al₂O₃ → Al (nécessite beaucoup d''énergie électrique)

## Lois de Faraday pour l''électrolyse

**1ère loi :** m = (M × I × t) / (n × F)
- m : masse déposée (g)
- M : masse molaire (g/mol)
- I : intensité (A)
- t : durée (s)
- n : nombre d''électrons échangés
- F : constante de Faraday = 96 485 C/mol',
  (SELECT id FROM subjects WHERE name = 'Chimie' AND level_id = (SELECT id FROM levels WHERE level_number = 5)),
  (SELECT id FROM levels WHERE level_number = 5),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'La chimie des polymères et des matériaux',
  'Comprendre la chimie des polymères naturels et synthétiques et leurs applications industrielles.',
  'TEXT',
  '# Chimie des polymères

## Définition

Un **polymère** est une macromolécule formée par la répétition d''unités structurales appelées **monomères**.

**Degré de polymérisation (n) :** nombre de monomères dans la chaîne.

## Polymères naturels

| Polymère | Monomère | Présence |
|---------|---------|---------|
| Cellulose | Glucose (β) | Parois végétales |
| Amidon | Glucose (α) | Plantes (stockage) |
| Glycogène | Glucose (α) | Foie, muscles (stockage) |
| Caoutchouc naturel | Isoprène | Latex d''Hevea |
| Protéines | Acides aminés | Tous les êtres vivants |
| ADN/ARN | Nucléotides | Toutes les cellules |

## Polymères synthétiques

### Polyaddition
Un monomère insaturé (avec double liaison) se polymérise sans sous-produit.

Éthylène → Polyéthylène (PE) : -(CH₂-CH₂)ₙ-

Applications : bouteilles (PEHD), sacs, films plastiques

| Polymère | Monomère | Application |
|---------|---------|------------|
| PE (polyéthylène) | Éthylène | Emballages |
| PP (polypropylène) | Propylène | Jouets, fibres |
| PVC | Chlorure de vinyle | Tuyaux, fenêtres |
| PS (polystyrène) | Styrène | Gobelets, isolation |
| PTFE (Teflon) | Tétrafluoroéthylène | Antiadhérent |

### Polycondensation
Deux monomères réagissent en éliminant un sous-produit (souvent H₂O).

Nylon (polyamide) : diacide + diamine → polyamide + n H₂O

Applications : textiles techniques, cordes, engrenages.

Polyester (PET) : diacide + dialcool → polyester + n H₂O
Applications : bouteilles de boissons, fibres textiles.

## Propriétés et recyclage

### Thermoplastiques vs thermodurcissables
- **Thermoplastiques** : ramollissent à la chaleur → recyclables (PE, PET, PP)
- **Thermodurcissables** : réticulés après chauffage → non recyclables (résines époxy, bakélite)

### Recyclage des plastiques
Codes de recyclage 1 à 7.
Le PET (1) et le PEHD (2) sont les plus recyclés.

**Microplastiques :** particules < 5 mm polluent les océans, les sols et les organismes → enjeu environnemental majeur.',
  (SELECT id FROM subjects WHERE name = 'Chimie' AND level_id = (SELECT id FROM levels WHERE level_number = 5)),
  (SELECT id FROM levels WHERE level_number = 5),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Chimie analytique : méthodes de séparation et d''identification',
  'Maîtriser les principales techniques analytiques : chromatographie, spectroscopie et titrage.',
  'TEXT',
  '# Chimie analytique

## Techniques de séparation

### La chromatographie

La chromatographie sépare les composants d''un mélange en fonction de leur affinité pour une **phase stationnaire** (support fixe) et une **phase mobile** (solvant).

**Principe :** les molécules qui interagissent davantage avec la phase mobile migrent plus vite.

#### Chromatographie sur couche mince (CCM)
- Phase stationnaire : silice sur aluminium
- Phase mobile : solvant organique
- Détection : UV ou révélateur chimique
- **Rf = distance parcourue par l''analyte / distance parcourue par le solvant** (0 à 1)

#### Chromatographie en phase gazeuse (CPG)
- Phase mobile : gaz inerte (N₂, He)
- Sépare des molécules volatiles selon leur point d''ébullition
- Détecteur FID (flame ionization detector)
- Applications : analyse de mélanges pétroliers, arômes alimentaires, contrôle antidopage

#### Chromatographie liquide haute performance (HPLC)
- Phase mobile : solvant sous haute pression
- Applications : pharmaceutique, qualité alimentaire

### La distillation
Séparation basée sur les différences de points d''ébullition. Distillation fractionnée (colonne) pour les mélanges complexes.

### L''extraction
Séparation entre deux solvants non miscibles (eau/hexane). Basée sur les différences de solubilité.

## Techniques spectroscopiques

### Spectroscopie UV-visible
Mesure l''absorption de lumière → identification et dosage de molécules colorées.
**Loi de Beer-Lambert :** A = ε × l × c (absorbance, coeff molaire, longueur cuve, concentration)

### Spectrométrie de masse (SM)
Mesure du rapport masse/charge (m/z) des ions → identification de molécules inconnues.

### RMN (Résonance Magnétique Nucléaire)
Exploite les propriétés magnétiques des noyaux H¹ → structure des molécules organiques.

## Titrage potentiométrique

Mesure du pH (ou potentiel électrique) en continu lors d''un titrage → détermination précise du point équivalent.

**Avantage :** objectif (ne dépend pas de la couleur d''un indicateur), plus précis.',
  (SELECT id FROM subjects WHERE name = 'Chimie' AND level_id = (SELECT id FROM levels WHERE level_number = 5)),
  (SELECT id FROM levels WHERE level_number = 5),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Chimie de l''environnement : eau, air et sol',
  'Analyser les problèmes de pollution environnementale sous l''angle chimique et comprendre les solutions.',
  'TEXT',
  '# Chimie de l''environnement

## La chimie de l''eau

### Qualité de l''eau potable (Belgique)
L''eau est potable si elle respecte des normes strictes (Directive européenne) :
- Nitrates : < 50 mg/L (agriculture → eutrophisation)
- pH : 6,5-9,5
- Coliformes : 0 (bactéries)
- Plomb, cadmium, pesticides : limites très strictes

### Traitement de l''eau potable
1. **Floculation** : addition d''Al₂(SO₄)₃ → les particules fines s''agglomèrent
2. **Décantation et filtration** : séparation des flocs
3. **Ozonation** : désinfection par l''ozone (O₃)
4. **Chloration** : ajout de Cl₂ ou hypochlorite → désinfection résiduelle dans le réseau

### Pollution des eaux
- **Nitrates** (agriculture) → eutrophisation → blooms algaux → mort des espèces aquatiques
- **Métaux lourds** (Pb, Cd, Hg) → bioaccumulation dans la chaîne alimentaire
- **Micropolluants** (médicaments, perturbateurs endocriniens) → non éliminés par les STEP classiques

## La chimie de l''atmosphère

### Composition de l''air sec
N₂ (78%) + O₂ (21%) + Ar (0,93%) + CO₂ (0,04%)

### Les polluants atmosphériques
| Polluant | Source | Effet |
|---------|--------|-------|
| CO₂ | Combustion fossile | Effet de serre |
| SO₂ | Charbon, soufre | Pluies acides |
| NOₓ | Moteurs, industrie | Pluies acides, smog |
| O₃ (bas.) | Réactions secondaires NOₓ + COV | Smog photochimique |
| Particules fines (PM2.5) | Diesel, industrie | Maladies respiratoires |

### Le trou de la couche d''ozone
La couche d''ozone (stratosphère, 15-35 km) filtre le rayonnement UV-B. Les CFC (chlorofluorocarbures) détruisent l''ozone.

Cl• + O₃ → ClO + O₂ (réaction catalytique : un atome Cl détruit 100 000 molécules O₃)

**Protocole de Montréal (1987)** : interdiction progressive des CFC → récupération progressive.

## La chimie du sol

### Propriétés chimiques du sol
- **pH** : conditionne la disponibilité des nutriments (pH 6-7 optimal)
- **CEC** (capacité d''échange cationique) : capacité à retenir les ions nutritifs
- **Matière organique** : humus → fertilité, structure

### La contamination des sols
- Métaux lourds (anciennes mines, fonderies, décharges)
- HAP (hydrocarbures aromatiques polycycliques) → anciens sites industriels
- Pesticides organochlorés (DDT) → persistance, bioaccumulation',
  (SELECT id FROM subjects WHERE name = 'Chimie' AND level_id = (SELECT id FROM levels WHERE level_number = 5)),
  (SELECT id FROM levels WHERE level_number = 5),
  true
);


-- ============================================================
-- NIVEAU 5 — Physique
-- ============================================================

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Mécanique des fluides : pression, flottabilité et écoulement',
  'Appliquer les lois de la statique des fluides et comprendre la dynamique des fluides.',
  'TEXT',
  '# Mécanique des fluides

## La pression dans les fluides

La **pression** est la force exercée perpendiculairement par unité de surface.

**P = F / A** (en Pascal = N/m²)

### Pression hydrostatique
La pression dans un fluide au repos augmente avec la profondeur :
**P = P₀ + ρ × g × h**
- P₀ : pression atmosphérique (1,013 × 10⁵ Pa)
- ρ : masse volumique du fluide (eau : 1000 kg/m³)
- h : profondeur (m)

**Application :** À 10 m de profondeur dans l''eau : P = 101 300 + 1000 × 9,81 × 10 ≈ 200 000 Pa ≈ 2 atm.

### Principe de Pascal
Toute variation de pression appliquée à un fluide en équilibre se transmet intégralement dans toutes les directions.

**Application :** Vérins hydrauliques, freins de voiture.

## La poussée d''Archimède

Tout corps plongé dans un fluide subit une poussée verticale vers le haut égale au poids du fluide déplacé.

**F_A = ρ_fluide × g × V_immergé**

### Conditions de flottaison
- F_A > Poids → le corps flotte (monte)
- F_A < Poids → le corps coule
- F_A = Poids → équilibre (flottaison)

**Application :** sous-marin (ajuster son volume via ballasts), bateau (coque creuse pour augmenter V_déplacé)

## Dynamique des fluides

### Équation de continuité
Un fluide incompressible dans une conduite : **A₁ × v₁ = A₂ × v₂**

Si la section diminue → la vitesse augmente.

### Théorème de Bernoulli
Pour un fluide non visqueux en écoulement stationnaire :
**P + ½ρv² + ρgh = constante**

### Applications de Bernoulli
- **Portance des ailes d''avion** : vitesse > sur la face supérieure → pression < → force vers le haut
- **Venturi** : mesure de débit (réduction de section → vitesse ↑ → pression ↓)
- **Aérosol** : air rapide réduit la pression → aspire le liquide

## Viscosité et loi de Stokes

**Viscosité (η)** : résistance d''un fluide à l''écoulement (eau : 0,001 Pa·s ; miel : 2-10 Pa·s)

Force de Stokes sur une sphère : F = 6πηrv (r = rayon, v = vitesse)',
  (SELECT id FROM subjects WHERE name = 'Physique' AND level_id = (SELECT id FROM levels WHERE level_number = 5)),
  (SELECT id FROM levels WHERE level_number = 5),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Thermodynamique : chaleur, entropie et lois des gaz',
  'Appliquer les lois de la thermodynamique aux systèmes physiques et comprendre les échanges d''énergie thermique.',
  'TEXT',
  '# Thermodynamique

## Les lois des gaz parfaits

Un **gaz parfait** est un modèle dans lequel les molécules n''ont aucune interaction et sont de volume nul.

**Loi des gaz parfaits :** PV = nRT

- P : pression (Pa)
- V : volume (m³)
- n : quantité de matière (mol)
- R : constante des gaz = 8,314 J/(mol·K)
- T : température absolue (Kelvin) : T(K) = T(°C) + 273

### Lois simplifiées (n constant)

| Loi | Variables constantes | Relation |
|-----|---------------------|---------|
| Boyle-Mariotte | T constante | PV = cst → P₁V₁ = P₂V₂ |
| Charles | P constante | V/T = cst → V₁/T₁ = V₂/T₂ |
| Gay-Lussac | V constante | P/T = cst → P₁/T₁ = P₂/T₂ |

## Les principes de la thermodynamique

### 0ème principe : équilibre thermique
Si A est en équilibre thermique avec B, et B avec C, alors A est en équilibre thermique avec C.

### 1er principe : conservation de l''énergie
**ΔU = Q + W**
- ΔU : variation d''énergie interne
- Q : chaleur reçue par le système
- W : travail reçu par le système

### 2ème principe : irréversibilité et entropie
**ΔS ≥ Q/T** (entropie augmente dans tout processus spontané)

**Entropie (S)** : mesure du désordre d''un système. Tout système évolue spontanément vers plus de désordre.

- Un gaz se détend (désordre croissant)
- Un café refroidit (chaleur passe du chaud au froid, jamais l''inverse)

### 3ème principe : zéro absolu
L''entropie d''un cristal parfait est nulle à T = 0 K (-273,15 °C) → le zéro absolu est inaccessible.

## Les machines thermiques

Une machine thermique transforme la chaleur en travail mécanique.

**Rendement :** η = W/Q_chaud = 1 - T_froid/T_chaud (rendement de Carnot, idéal)

### Applications
- Moteur thermique (voiture) : η réel ≈ 30-40% (reste perdu en chaleur)
- Centrale électrique thermique : η ≈ 35-40%
- Pompe à chaleur (réfrigérateur, climatisation) : le travail sert à transférer la chaleur du froid vers le chaud',
  (SELECT id FROM subjects WHERE name = 'Physique' AND level_id = (SELECT id FROM levels WHERE level_number = 5)),
  (SELECT id FROM levels WHERE level_number = 5),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Physique quantique : dualité onde-corpuscule et modèle atomique',
  'Découvrir les fondements de la physique quantique et le modèle atomique de Bohr et la mécanique ondulatoire.',
  'TEXT',
  '# Introduction à la physique quantique

## Limites de la physique classique

À la fin du XIXe siècle, certains phénomènes résistaient à l''explication classique :
- Le **rayonnement du corps noir** : la physique classique prédisait une énergie infinie (catastrophe ultraviolette)
- L''**effet photoélectrique** : la lumière éjecte des électrons d''un métal si sa fréquence est suffisante

## Planck et la quantification de l''énergie (1900)

Max Planck postule que l''énergie est émise ou absorbée par **quanta** (paquets discrets) :

**E = h × f** (énergie d''un quantum = constante de Planck × fréquence)

**h = 6,626 × 10⁻³⁴ J·s** (constante de Planck)

## Einstein et l''effet photoélectrique (1905)

Einstein généralise l''idée de Planck : la lumière est constituée de **photons** (quanta de lumière).

Un photon éjecte un électron si : E_photon = hf > Φ (travail de sortie)

→ Célèbre prix Nobel de physique 1921.

## La dualité onde-corpuscule

**De Broglie (1924)** propose que les particules de matière ont aussi une nature ondulatoire.

**Longueur d''onde de De Broglie :** λ = h / (m × v)

→ Un électron a une longueur d''onde ! Confirmé par la diffraction d''électrons.

## Le modèle de Bohr (1913)

Niels Bohr propose un modèle de l''atome d''hydrogène :
- L''électron se déplace sur des **orbites circulaires quantifiées** (niveaux d''énergie)
- L''énergie d''une orbite : Eₙ = -13,6 / n² (eV)
- Une transition entre orbites → émission ou absorption d''un photon : ΔE = hf

### Spectre de l''atome d''hydrogène
Chaque élément émet un spectre caractéristique de raies → **empreinte digitale chimique** (spectroscopie).

## Principe d''incertitude d''Heisenberg (1927)

**Δx × Δp ≥ h/4π**

Il est impossible de connaître simultanément la position et la quantité de mouvement d''une particule avec une précision arbitraire.

→ La nature est fondamentalement probabiliste à l''échelle quantique.

## Applications de la physique quantique

- **Laser** : émission stimulée de photons tous en phase
- **Transistors et semi-conducteurs** : base de l''informatique
- **IRM** : résonance des spins nucléaires
- **Cryptographie quantique et ordinateurs quantiques** : futur de l''informatique',
  (SELECT id FROM subjects WHERE name = 'Physique' AND level_id = (SELECT id FROM levels WHERE level_number = 5)),
  (SELECT id FROM levels WHERE level_number = 5),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Physique moderne : relativité et cosmologie',
  'Découvrir les grandes théories de la physique moderne : relativité restreinte d''Einstein et cosmologie.',
  'TEXT',
  '# Physique moderne : relativité et cosmologie

## La relativité restreinte (Einstein, 1905)

### Postulats fondamentaux
1. Les lois de la physique sont identiques dans tous les référentiels inertiels (qui se déplacent en ligne droite à vitesse constante)
2. La vitesse de la lumière dans le vide, **c = 3 × 10⁸ m/s**, est la même pour tous les observateurs, quelle que soit leur vitesse

### Conséquences révolutionnaires

**Dilatation du temps :**
Δt'' = Δt / √(1 - v²/c²)

Un observateur en mouvement voit le temps se dilater : les horloges battent plus lentement dans les référentiels en mouvement.

→ **Paradoxe des jumeaux** : le jumeau qui voyage à grande vitesse revient plus jeune que celui qui est resté sur Terre. Confirmé expérimentalement avec des horloges atomiques dans des avions.

**Contraction des longueurs :**
L'' = L₀ × √(1 - v²/c²)

Les longueurs se contractent dans la direction du mouvement.

**Équivalence masse-énergie :**
**E = mc²**

La masse et l''énergie sont équivalentes. Une masse de 1 kg libère 9 × 10¹⁶ J !

→ Base de l''énergie nucléaire.

## La relativité générale (Einstein, 1915)

Extension à la gravité : la matière courbe l''espace-temps.

La gravité n''est pas une force, mais une courbure de la géométrie de l''espace-temps.

**Confirmations :**
- Précession du périhélie de Mercure (non expliquée par Newton)
- Déviation de la lumière par le Soleil (éclipse 1919, Eddington)
- Ondes gravitationnelles (LIGO, 2016) : fusion de deux trous noirs

## Cosmologie : l''origine et l''évolution de l''Univers

### Le Big Bang
L''Univers a commencé il y a **13,8 milliards d''années** dans un état de densité et température infinies.

**Preuves :**
- Expansion de l''Univers (Hubble, 1929 : les galaxies s''éloignent toutes)
- Rayonnement de fond cosmologique (CMB) : "écho" du Big Bang
- Abondances primordiales (H et He)

### La structure de l''Univers
- Matière ordinaire : ~5%
- Matière noire : ~27% (non visible, révélée par la gravité)
- Énergie noire : ~68% (responsable de l''expansion accélérée de l''Univers)

**Destin de l''Univers :** expansion accélérée → "Big Freeze" dans des milliards d''années',
  (SELECT id FROM subjects WHERE name = 'Physique' AND level_id = (SELECT id FROM levels WHERE level_number = 5)),
  (SELECT id FROM levels WHERE level_number = 5),
  true
);


-- ============================================================
-- NIVEAU 6 — Mathématiques 4h (terminal)
-- ============================================================

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Révision complète en analyse : limites, dérivées et intégrales',
  'Consolidation des notions d''analyse de terminale pour les examens de fin d''études secondaires.',
  'TEXT',
  '# Révision d''analyse — Terminale

## Les limites : points clés

### Formes indéterminées et méthodes
- **0/0** → factoriser ou simplifier
- **∞/∞** → diviser par le terme dominant
- **∞ - ∞** → mise au même dénominateur ou factorisation

**Règle de l''Hôpital :** si f(a)/g(a) = 0/0 ou ∞/∞ → lim f(x)/g(x) = lim f''(x)/g''(x)

### Asymptotes
- **Verticale** x = a si lim(x→a) f(x) = ±∞
- **Horizontale** y = L si lim(x→±∞) f(x) = L
- **Oblique** y = ax + b si lim(x→∞) [f(x) - ax - b] = 0

## La dérivation : règles et applications

### Tableau récapitulatif

| f | f'' |
|---|-----|
| xⁿ | nxⁿ⁻¹ |
| eˣ | eˣ |
| ln x | 1/x |
| sin x | cos x |
| cos x | -sin x |
| tan x | 1/cos²x |
| arcsin x | 1/√(1-x²) |
| arctan x | 1/(1+x²) |

### Étude complète de fonction
1. Domaine de définition
2. Parité (f(-x) = f(x) → paire ; f(-x) = -f(x) → impaire)
3. Limites aux bornes du domaine → asymptotes
4. Dérivée : tableau de signes → croissance/décroissance
5. Dérivée seconde : concavité (f'' > 0 → convexe)
6. Extrema : localisation et nature
7. Tableau de variations
8. Graphique

## L''intégration : méthodes avancées

### Intégration par parties
∫u dv = uv - ∫v du

**Règle "LATE"** pour choisir u : **L**ogarithme, **A**rctrigonométrique, **T**rigonométrique, **E**xponentielle → la première dans la liste est u.

Exemple : ∫x·eˣdx
u = x, dv = eˣdx → du = dx, v = eˣ
= x·eˣ - ∫eˣdx = **eˣ(x-1) + C**

### Intégrales de fractions rationnelles
Décomposer en éléments simples avant d''intégrer.

∫dx/(x²-1) = ∫dx/[(x-1)(x+1)] = ½∫[1/(x-1) - 1/(x+1)]dx = ½ ln|x-1/x+1| + C

## Applications des intégrales
- Aire entre deux courbes
- Valeur moyenne : f̄ = [1/(b-a)] × ∫[a→b] f(x)dx
- Calcul de probabilités (distributions continues)',
  (SELECT id FROM subjects WHERE name = 'Mathématiques générales 4h' AND level_id = (SELECT id FROM levels WHERE level_number = 6)),
  (SELECT id FROM levels WHERE level_number = 6),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Probabilités avancées et statistiques inférentielles',
  'Approfondir les probabilités conditionnelles, les distributions et les tests statistiques.',
  'TEXT',
  '# Probabilités et statistiques avancées

## Probabilités conditionnelles

**P(A|B) = P(A ∩ B) / P(B)**

**Règle de Bayes :**
P(A|B) = P(B|A) × P(A) / P(B)

**Application médicale :** Test de dépistage avec sensibilité 99% et spécificité 99%, prévalence 0,1%.

P(malade|test +) = (0,99 × 0,001) / [(0,99 × 0,001) + (0,01 × 0,999)] ≈ **9%**

→ Même avec un test très fiable, un résultat positif sur une maladie rare a >90% de chances d''être faux positif !

## Distributions de probabilités

### Distribution binomiale
X ~ B(n, p) : nombre de succès en n essais, probabilité p de succès

P(X = k) = C(n,k) × pᵏ × (1-p)ⁿ⁻ᵏ

E(X) = np ; Var(X) = np(1-p)

### Distribution de Poisson
X ~ P(λ) : nombre d''événements rares en un intervalle de temps

P(X = k) = e⁻λ × λᵏ / k!

E(X) = Var(X) = λ

### Distribution normale N(μ, σ²)
Variable continue → densité en forme de cloche. Utilisation des tables de la loi normale réduite Z ~ N(0,1).

**Théorème central limite :** pour n grand, la moyenne d''un échantillon suit approximativement une loi normale, quelle que soit la distribution de la population.

## Tests d''hypothèses

### Test z (n grand, σ connue)
H₀ : μ = μ₀

Statistique de test : z = (x̄ - μ₀) / (σ/√n)

**Règle de décision :** si |z| > z_α/2 → rejeter H₀ au niveau α.

(z_0,025 = 1,96 pour test bilatéral à 5%)

### Test t de Student (n petit, σ inconnue)
Remplace z par la distribution t à n-1 degrés de liberté.

### Test χ² d''adéquation
Compare les fréquences observées aux fréquences théoriques.

χ² = Σ (Oᵢ - Eᵢ)² / Eᵢ

Si χ² > valeur critique → la distribution observée s''écarte significativement de la distribution théorique.',
  (SELECT id FROM subjects WHERE name = 'Mathématiques générales 4h' AND level_id = (SELECT id FROM levels WHERE level_number = 6)),
  (SELECT id FROM levels WHERE level_number = 6),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Géométrie vectorielle dans l''espace : plans et sphères',
  'Maîtriser la géométrie analytique 3D pour les plans, les sphères et les positions relatives.',
  'TEXT',
  '# Géométrie dans l''espace

## Rappels vectoriels

**Vecteur :** v⃗ = (v₁, v₂, v₃) dans un repère orthonormé (O, i⃗, j⃗, k⃗).

**Norme :** |v⃗| = √(v₁² + v₂² + v₃²)

**Produit scalaire :** u⃗·v⃗ = u₁v₁ + u₂v₂ + u₃v₃ = |u⃗||v⃗|cos θ

**Produit vectoriel :** u⃗ × v⃗ = (u₂v₃-u₃v₂, u₃v₁-u₁v₃, u₁v₂-u₂v₁)
→ Perpendiculaire à u⃗ et v⃗, |u⃗ × v⃗| = |u⃗||v⃗|sin θ = aire parallélogramme

## Équations des plans

### Équation cartésienne
**ax + by + cz = d** où n⃗ = (a, b, c) est le vecteur normal.

**Par 3 points :** calculer deux vecteurs directeurs, leur produit vectoriel donne n⃗.

### Équation paramétrique
P = A + s·u⃗ + t·v⃗ (A = point, u⃗ et v⃗ = vecteurs directeurs du plan)

## Positions relatives

### Droite-Plan
- **Parallèles :** direction de la droite ⊥ au vecteur normal, et le point n''appartient pas au plan
- **Perpendiculaires :** direction de la droite // au vecteur normal
- **Intersection :** substituer l''équation paramétrique de la droite dans l''équation du plan

### Plan-Plan
- **Parallèles :** vecteurs normaux proportionnels
- **Perpendiculaires :** produit scalaire des normales = 0
- **Intersection :** droite → résoudre le système des deux équations

## La sphère

**Équation :** (x-a)² + (y-b)² + (z-c)² = r²
- Centre S(a,b,c), rayon r

**Forme générale :** x² + y² + z² + Dx + Ey + Fz + G = 0

Centre : (-D/2, -E/2, -F/2) ; r = √(D²/4 + E²/4 + F²/4 - G)

## Distances importantes

**Distance d''un point P(x₀, y₀, z₀) à un plan ax+by+cz=d :**
d = |ax₀ + by₀ + cz₀ - d| / √(a²+b²+c²)

**Distance d''un point à une droite :**
d = |AP⃗ × d⃗| / |d⃗| (d⃗ = vecteur directeur, A = point de la droite)

**Application :** Trouver le point d''un plan le plus proche d''un point donné → projection orthogonale.',
  (SELECT id FROM subjects WHERE name = 'Mathématiques générales 4h' AND level_id = (SELECT id FROM levels WHERE level_number = 6)),
  (SELECT id FROM levels WHERE level_number = 6),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Préparation aux examens de mathématiques : méthodes et stratégies',
  'Stratégies de révision, gestion du temps et approche méthodique pour réussir les examens de mathématiques.',
  'TEXT',
  '# Réussir les examens de mathématiques

## Organisation de la révision

### Planning de révision
- Commencer 4-6 semaines avant les examens
- Réviser par **thèmes** (fonctions, probabilités, géométrie...) pas par chapitres chronologiques
- Alterner révision active (exercices) et passive (relecture)
- Faire des pauses régulières (technique Pomodoro : 25 min de travail + 5 min de pause)

### Révision active
- Refaire des exercices sans regarder les solutions
- S''expliquer les concepts à voix haute (effet enseignement)
- Faire des fiches de synthèse personnelles
- Tester sa compréhension avec des questions sans support

## Stratégie pendant l''examen

### Avant de commencer
- Lire entièrement les questions (5 minutes)
- Estimer la difficulté et le temps de chaque question
- Commencer par les questions les plus faciles → confiance + points sûrs

### Pendant l''examen
- **Écrire les formules** utilisées → des points partiels même si le résultat est faux
- **Vérifier les unités** et la cohérence des résultats (un angle ne peut pas dépasser 360°)
- **Dessiner** un schéma ou graphique pour visualiser le problème
- Ne pas rester bloqué → passer à la suite et revenir

### Gestion du temps (exemple sur 3h)
- 5 min : lecture générale
- 2h30 : résolution (proportionnel aux points)
- 20 min : relecture et vérifications

## Erreurs courantes à éviter

| Erreur | Solution |
|-------|---------|
| Confondre dérivée et primitive | Apprendre les tableaux par cœur |
| Diviser par une inconnue nulle | Vérifier si le dénominateur peut être nul |
| Oublier la constante C | Écrire "+C" réflexivement |
| Erreur de signe dans le discriminant | Vérifier : Δ = b² - 4ac (soustraire 4ac) |
| Oublier les cas particuliers | Toujours vérifier les bornes du domaine |

## Ressources de préparation

- **Anciens examens** (TFE, certificats...) avec corrections
- **Manuel de référence** de la FWB
- **Exercices progressifs** par thème
- **Khan Academy** (en français) pour les révisions

## Les mathématiques dans la vie

Les compétences développées en mathématiques vont bien au-delà du calcul :
- Raisonnement logique et structuré
- Résolution de problèmes complexes
- Abstraction et modélisation
- Rigueur et précision

Ces compétences sont valorisées dans toutes les filières universitaires et professionnelles.',
  (SELECT id FROM subjects WHERE name = 'Mathématiques générales 4h' AND level_id = (SELECT id FROM levels WHERE level_number = 6)),
  (SELECT id FROM levels WHERE level_number = 6),
  true
);


-- ============================================================
-- NIVEAU 6 — Mathématiques 6h (terminal, sciences fortes)
-- ============================================================

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Analyse avancée : séries, intégrales impropres et transformées',
  'Maîtriser les séries numériques, les intégrales généralisées et une introduction aux transformées.',
  'TEXT',
  '# Analyse avancée

## Les séries numériques

Une **série** est la somme d''une suite infinie : Sₙ = Σ_{k=1}^{n} aₖ

Si lim(n→∞) Sₙ = S existe, la série **converge** vers S.

### Critères de convergence

**Série géométrique :** Σ rᵏ converge si |r| < 1, et Σ rᵏ = 1/(1-r)

**Critère de d''Alembert (ratio test) :** si lim |a_{n+1}/aₙ| = L :
- L < 1 → convergence absolue
- L > 1 → divergence
- L = 1 → indéterminé

**Critère de Cauchy (root test) :** si lim ⁿ√|aₙ| = L, même règle.

**Critère des séries alternées (Leibniz) :** Σ (-1)ⁿ aₙ converge si aₙ décroissante → 0.

### Séries entières (Taylor/Maclaurin)
f(x) = Σ f⁽ⁿ⁾(0)/n! × xⁿ

**Développements usuels :**
- eˣ = 1 + x + x²/2! + x³/3! + ...
- sin x = x - x³/3! + x⁵/5! - ...
- cos x = 1 - x²/2! + x⁴/4! - ...
- ln(1+x) = x - x²/2 + x³/3 - ... (|x| ≤ 1)

## Intégrales impropres

### Bornes infinies
∫[1→+∞] x⁻² dx = [-x⁻¹]₁^∞ = 0 - (-1) = **1** (converge)

∫[1→+∞] x⁻¹ dx = [ln x]₁^∞ = +∞ (diverge)

**Règle :** ∫[1→∞] x⁻ᵖ dx converge si **p > 1**, diverge si p ≤ 1.

### Singularité à l''intérieur
∫[0→1] x⁻¹/² dx = [2√x]₀¹ = 2 (converge, malgré la singularité en 0)

## Transformée de Laplace (introduction)

L{f(t)} = F(s) = ∫[0→∞] f(t)·e⁻ˢᵗ dt

Transforme des problèmes de dérivation en problèmes algébriques.

**Exemples clés :**
- L{1} = 1/s
- L{eᵃᵗ} = 1/(s-a)
- L{sin(ωt)} = ω/(s²+ω²)

**Applications :** résolution d''équations différentielles en ingénierie, traitement du signal.',
  (SELECT id FROM subjects WHERE name = 'Mathématiques générales 6h' AND level_id = (SELECT id FROM levels WHERE level_number = 6)),
  (SELECT id FROM levels WHERE level_number = 6),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Topologie et continuité uniforme',
  'Explorer les fondements topologiques de l''analyse réelle : ouverts, fermés, compacité et continuité uniforme.',
  'TEXT',
  '# Topologie de l''analyse réelle

## Rappels sur les intervalles de ℝ

**Intervalle ouvert** ]a, b[ : n''inclut pas les extrémités
**Intervalle fermé** [a, b] : inclut les extrémités
**Intervalle semi-ouvert** ]a, b] ou [a, b[

## Voisinages et ouverts

### Boule ouverte (dans ℝ)
Boule B(a, r) = ]a-r, a+r[ : ensemble des points à distance < r du centre a.

### Ensemble ouvert
U ⊆ ℝ est **ouvert** si tout point de U admet un voisinage contenu dans U.
Exemples : ]a, b[, ℝ, ∅, ]0, +∞[

### Ensemble fermé
F ⊆ ℝ est **fermé** si son complémentaire est ouvert, équivalent à : F contient tous ses points d''accumulation.
Exemples : [a, b], {a}, ℝ, ∅

## Points remarquables

**Point d''accumulation de A :** tout voisinage contient un point de A différent de lui-même.
**Adhérence Ā :** A ∪ {points d''accumulation} → le plus petit fermé contenant A.
**Intérieur int(A) :** le plus grand ouvert contenu dans A.
**Frontière ∂A :** Ā ∩ complémentaire de int(A).

## Compacité

Un ensemble K ⊆ ℝ est **compact** s''il est fermé et borné (Théorème de Heine-Borel).

**Propriétés fondamentales :**
- Toute suite dans K a une sous-suite convergente dans K (Bolzano-Weierstrass)
- Toute fonction continue sur un compact est bornée et atteint ses bornes (Théorème des valeurs extrêmes)

## Continuité uniforme

f est **uniformément continue** sur A si :
∀ε>0, ∃δ>0, ∀x,y ∈ A : |x-y| < δ → |f(x)-f(y)| < ε

(δ ne dépend pas de x, contrairement à la continuité simple)

**Théorème de Heine :** toute fonction continue sur un compact est uniformément continue.

**Application :** f(x) = x² est uniformément continue sur [0, 10] mais PAS sur ℝ entier.

## Espaces métriques

Un **espace métrique** (E, d) est un ensemble E muni d''une distance d(x,y) :
1. d(x,y) ≥ 0 et d(x,y) = 0 ↔ x = y
2. d(x,y) = d(y,x)
3. d(x,z) ≤ d(x,y) + d(y,z) (inégalité triangulaire)

Ces concepts généralisent ℝ à des espaces abstraits (fonctions, suites...).',
  (SELECT id FROM subjects WHERE name = 'Mathématiques générales 6h' AND level_id = (SELECT id FROM levels WHERE level_number = 6)),
  (SELECT id FROM levels WHERE level_number = 6),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Analyse combinatoire avancée et théorie des graphes',
  'Explorer la combinatoire avancée et les bases de la théorie des graphes pour les mathématiques discrètes.',
  'TEXT',
  '# Combinatoire avancée et graphes

## Combinatoire avancée

### Coefficients binomiaux et triangle de Pascal
C(n,k) = n! / [k!(n-k)!]

**Triangle de Pascal :** chaque case = somme des deux au-dessus.
**Propriété :** C(n,k) + C(n,k+1) = C(n+1,k+1)

### Identité de Vandermonde
Σ_{k=0}^{r} C(m,k)×C(n,r-k) = C(m+n,r)

### Le principe d''inclusion-exclusion
|A ∪ B| = |A| + |B| - |A ∩ B|
|A ∪ B ∪ C| = |A| + |B| + |C| - |A∩B| - |A∩C| - |B∩C| + |A∩B∩C|

**Application :** Combien de nombres de 1 à 100 sont divisibles par 2 ou 3 ?
|A₂ ∪ A₃| = 50 + 33 - 16 = **67**

### Les permutations avec répétition
n objets dont n₁ identiques de type 1, n₂ de type 2... : P = n! / (n₁! × n₂! × ...)

Exemple : "ANAGRAMME" → 9 lettres, A×3, M×2 → 9!/(3!×2!) = **30 240** anagrammes

## Théorie des graphes

### Définitions de base
Un **graphe** G = (V, E) est composé de :
- **Sommets (V)** : les nœuds
- **Arêtes (E)** : les connexions entre sommets

**Degré d(v)** : nombre d''arêtes incidentes au sommet v.

**Handshaking lemma :** Σ d(v) = 2|E| (la somme des degrés = 2 × nombre d''arêtes)

### Types de graphes
- **Non orienté** : les arêtes n''ont pas de direction
- **Orienté (digraphe)** : les arêtes ont une direction
- **Complet Kₙ** : chaque sommet est relié à tous les autres
- **Biparti** : sommets divisés en deux groupes, arêtes seulement entre les groupes

### Chemins et connexité
**Chemin** : suite de sommets reliés par des arêtes.
**Cycle** : chemin qui revient au point de départ.
**Connexe** : il existe un chemin entre toute paire de sommets.

**Graphe eulérien** (cycle passant par toutes les ARÊTES exactement une fois) : tous les sommets ont un degré pair.

**Graphe hamiltonien** (cycle passant par tous les SOMMETS exactement une fois) : pas de critère simple en général.

### Algorithme de Dijkstra
Trouve le plus court chemin d''un sommet source à tous les autres sommets d''un graphe pondéré (poids positifs).',
  (SELECT id FROM subjects WHERE name = 'Mathématiques générales 6h' AND level_id = (SELECT id FROM levels WHERE level_number = 6)),
  (SELECT id FROM levels WHERE level_number = 6),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Préparation aux études supérieures scientifiques',
  'Consolider les fondations mathématiques nécessaires pour les études d''ingénieur, de sciences et de médecine.',
  'TEXT',
  '# Mathématiques pour les études supérieures

## Les mathématiques en études supérieures

Selon la filière choisie, les mathématiques jouent des rôles différents :

| Filière | Mathématiques utilisées |
|---------|------------------------|
| Ingénierie | Analyse, algèbre linéaire, EDO, probabilités |
| Médecine/Dentisterie | Statistiques, probabilités, biostatistique |
| Physique | Analyse avancée, équations aux dérivées partielles |
| Économie | Calcul différentiel, statistiques, optimisation |
| Informatique | Algèbre de Boole, graphes, combinatoire |
| Architecture | Géométrie, calcul de structures |

## Compétences fondamentales pour l''université

### Calcul rigoureux
- Maîtrise des règles d''algèbre et de calcul
- Capacité à calculer mentalement et vérifier les ordres de grandeur
- Travail avec des expressions symboliques complexes

### Raisonnement logique
- Écrire des démonstrations claires et structurées
- Identifier les hypothèses et les conclusions
- Raisonner par récurrence et par l''absurde

### Modélisation
- Traduire un problème réel en modèle mathématique
- Choisir la méthode appropriée
- Interpréter les résultats

## Le concours médecine/dentisterie (CUSL)

En FWB, l''accès aux études de médecine et dentisterie passe par le **concours d''entrée organisé par l''UCLouvain et l''ULB** (CUSL).

### Structure
- **Épreuve 1** : sciences (biologie, chimie, physique, mathématiques)
- **Épreuve 2** : communication, raisonnement critique, aptitudes

### Contenu mathématiques
- Algèbre (équations, systèmes, fonctions)
- Analyse (limites, dérivées, intégrales)
- Statistiques et probabilités
- Géométrie

## Conseils de transition secondaire-université

1. **Consolider les bases** : un lacune au secondaire se creuse à l''université
2. **Apprendre à travailler seul** : moins d''encadrement qu''au secondaire
3. **S''organiser** : gérer son temps, ses révisions, ses cours
4. **Rejoindre des cercles** : associations étudiantes, tutorat par les pairs
5. **Ne pas hésiter à demander de l''aide** : professeurs, assistants, tuteurs

## Ressources préparatoires

- Programmes de mathématiques des universités belges francophones
- MOOC en ligne (Coursera, edX) sur les mathématiques de base universitaires
- Livres de préparation au concours médecine
- Semaines de remise à niveau proposées par les universités (avant la rentrée de septembre)',
  (SELECT id FROM subjects WHERE name = 'Mathématiques générales 6h' AND level_id = (SELECT id FROM levels WHERE level_number = 6)),
  (SELECT id FROM levels WHERE level_number = 6),
  true
);


-- ============================================================
-- NIVEAU 6 — Français (terminal)
-- ============================================================

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'La littérature contemporaine : enjeux et courants',
  'Explorer la littérature de la seconde moitié du XXe siècle : nouveau roman, théâtre de l''absurde, autobiographie.',
  'TEXT',
  '# Littérature contemporaine

## Le Nouveau Roman (années 1950-1970)

Rejet du roman traditionnel (intrigue, psychologie, personnages nommés, narrateur omniscient).

### Auteurs principaux
- **Nathalie Sarraute** (*Tropismes*, 1939 ; *L''Ère du soupçon*, 1956)
- **Alain Robbe-Grillet** (*Les Gommes*, *La Jalousie*)
- **Michel Butor** (*La Modification* : roman à la 2ème personne du pluriel)
- **Claude Simon** (Prix Nobel 1985 : *La Route des Flandres*)

### Caractéristiques
- Temps non linéaire
- Personnages sans profondeur psychologique traditionnelle
- Description minutieuse des objets
- Point de vue instable ou multiple

## Le Théâtre de l''Absurde

Représente l''absurdité de la condition humaine à travers des situations et dialogues dénués de sens.

### Samuel Beckett (1906-1989)
*En attendant Godot* (1952) : Vladimir et Estragon attendent Godot qui ne vient jamais. Le temps s''écoule sans événement. Silence, répétition, incommunicabilité.

*Fin de partie*, *Oh les beaux jours* (Winnie enterrée jusqu''au cou continue à parler)

### Eugène Ionesco (1909-1994)
*La Cantatrice chauve* (1950) : le non-sens du langage et des conventions sociales bourgeoises.
*Le Rhinocéros* (1959) : allégorie du totalitarisme (tous se transforment en rhinocéros sauf Bérenger).

## L''autobiographie et l''autofiction

### Définition d''une autobiographie (Lejeune, 1975)
Pacte autobiographique : auteur = narrateur = personnage.

### Autofiction
Mélange de réel et de fiction assumé. Ex. : Serge Doubrovsky.

**Annie Ernaux** (Prix Nobel 2022) :
*La Place* (1983) : relation au père ouvrier, honte sociale, ascension par l''école.
*Les Années* (2008) : mémoire collective à travers des photographies.
*Une femme*, *La Honte* : excavation de la mémoire et de l''identité.

**Jean-Marie Gustave Le Clézio** (Prix Nobel 2008) :
Expériences de l''altérité, des cultures marginalisées, de l''errance.',
  (SELECT id FROM subjects WHERE name = 'Français' AND level_id = (SELECT id FROM levels WHERE level_number = 6)),
  (SELECT id FROM levels WHERE level_number = 6),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Maîtrise de l''écrit : synthèse de documents et commentaire composé',
  'Développer les compétences d''analyse et de synthèse de documents pour les épreuves certificatives.',
  'TEXT',
  '# Synthèse de documents et commentaire composé

## La synthèse de documents

La synthèse de documents consiste à **reformuler et organiser** de manière objective les informations contenues dans plusieurs documents sur un même thème.

### Méthode
1. **Lecture et analyse** de chaque document (thèse, arguments, exemples)
2. **Tableau comparatif** : idées communes, oppositions, complémentarités
3. **Organisation** des informations par thèmes (pas par document !)
4. **Rédaction** dans un style neutre, sans opinion personnelle

### Règles impératives
- Pas de copier-coller : reformuler avec ses propres mots
- Citer les sources entre parenthèses : (Doc. 1), (Doc. 2 et 3)
- Ordre logique des idées, pas ordre chronologique des documents
- Longueur : environ 1/3 du total des documents

### Structure type
- Introduction : sujet et enjeux communs aux documents
- Développement : 2-3 parties thématiques avec leurs sous-parties
- Conclusion : synthèse des convergences/divergences

## Le commentaire composé

Le commentaire composé est une **analyse structurée** d''un texte littéraire organisée en parties thématiques.

### Méthode
1. Lecture attentive du texte (reformulation, identification du mouvement)
2. Relevé des procédés stylistiques
3. Formulation de 2-3 axes de lecture (axes ≠ résumé)
4. Construction du plan et rédaction

### Structure
- **Introduction** : accroche + présentation du texte + problématique + annonce du plan
- **Développement** : 2-3 parties (axe I + axe II + axe III) chacune avec sous-parties (procédé → exemple → effet)
- **Conclusion** : bilan + ouverture

### Exemples d''axes de lecture

Pour un poème romantique :
- I. La nature comme miroir de l''âme du poète
- II. Un lyrisme mélancolique qui transcende la douleur
- III. Le poème comme quête de l''idéal

Pour un extrait de roman réaliste :
- I. Un portrait satirique de la bourgeoisie
- II. La description comme révélateur social
- III. La voix du narrateur : ironie et distanciation

## Grille d''évaluation CESS

Pour le certificat de l''enseignement secondaire supérieur (CESS) :
- Compréhension du texte et pertinence de l''analyse
- Qualité et variété des exemples
- Organisation de la réponse
- Maîtrise de la langue (lexique, syntaxe, orthographe)',
  (SELECT id FROM subjects WHERE name = 'Français' AND level_id = (SELECT id FROM levels WHERE level_number = 6)),
  (SELECT id FROM levels WHERE level_number = 6),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Révision des grandes œuvres au programme : méthode de lecture',
  'Comment lire, analyser et mémoriser efficacement les œuvres au programme pour les épreuves de fin d''études.',
  'TEXT',
  '# Les grandes œuvres littéraires : méthode de lecture

## Pourquoi lire les œuvres en entier ?

La lecture intégrale des œuvres au programme est indispensable pour :
- Comprendre le contexte narratif complet
- Identifier les évolutions des personnages
- Appréhender la structure et l''architecture du texte
- Répondre avec précision aux questions d''examen

## Méthode de lecture active

### Pendant la lecture
- Annoter les passages importants
- Résumer chaque chapitre en 2-3 lignes
- Relever le vocabulaire inconnu
- Identifier les thèmes récurrents

### Fiche de lecture type
1. **Auteur** : biographie + contexte historique + courant littéraire
2. **Résumé** : intrigue principale + intrigues secondaires
3. **Personnages** : principaux (nom, statut, évolution) + secondaires
4. **Cadre** : lieu, époque, atmosphère
5. **Thèmes** : 3-5 thèmes principaux avec exemples textuels
6. **Style** : caractéristiques du style de l''auteur (vocabulaire, syntaxe, ton)
7. **Intérêt** : pourquoi cette œuvre est-elle considérée comme un chef-d''œuvre ?

## Études d''œuvres clés pour le CESS

### *L''Étranger* de Camus (1942)
**Thèmes :** l''absurde, l''indifférence, la solitude, la mort, la justice
**Style :** style dépouillé, phrases courtes, distanciation, présent de narration
**Personnage :** Meursault, anti-héros indifférent à toutes les conventions sociales

### *Les Fleurs du Mal* de Baudelaire (1857)
**Thèmes :** Spleen et Idéal, le beau et le laid, la dualité, Paris, la femme, la mort
**Style :** modernité, symbolisme naissant, synesthésie, alexandrins parfois "brisés"
**Structure :** 6 sections, dont Spleen et Idéal (la plus développée)

### Une œuvre belge : *Het verdriet van België* (Hugo Claus)
**Thèmes :** l''identité belge, la collaboration, l''enfance, la culpabilité
**Style :** roman fleuve, alternance de registres

## Mémorisation des citations

### Sélection
Choisir 10-15 citations clés par œuvre, couvrant les thèmes principaux.

### Mémorisation
- Écrire la citation 3 fois
- La réciter à voix haute
- Créer des associations mnémotechniques

### Utilisation à l''examen
- Intégrer la citation dans la phrase (ne pas la juxtaposer)
- Analyser systématiquement : "Baudelaire écrit [...] → par cette métaphore, il..."',
  (SELECT id FROM subjects WHERE name = 'Français' AND level_id = (SELECT id FROM levels WHERE level_number = 6)),
  (SELECT id FROM levels WHERE level_number = 6),
  true
);


-- ============================================================
-- NIVEAU 6 — Biologie (Concours médecine/dentisterie)
-- ============================================================

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Biologie cellulaire avancée pour le concours médecine',
  'Maîtriser la biologie cellulaire au niveau requis pour le concours d''entrée médecine/dentisterie en FWB.',
  'TEXT',
  '# Biologie cellulaire — Niveau concours médecine

## La membrane plasmique : structure et fonctions avancées

### Le modèle de la mosaïque fluide (Singer & Nicolson, 1972)
La membrane est une **bicouche phospholipidique fluide** dans laquelle flottent des protéines.

**Composition :**
- Phospholipides (tête hydrophile + 2 queues hydrophobes) → constituent la bicouche
- Cholestérol → régule la fluidité membranaire
- Glycolipides → reconnaissance cellulaire (surface externe)
- Protéines intégrales et périphériques

### Transport membranaire

**Transport passif (sans ATP) :**
- Diffusion simple : petites molécules apolaires (O₂, CO₂, lipides) → gradient de concentration
- Diffusion facilitée : protéines porteuses ou canaux (glucose, eau via aquaporines)
- Osmose : déplacement de l''eau vers la zone la plus concentrée en soluté

**Transport actif (nécessite ATP) :**
- Pompe Na⁺/K⁺ ATPase : pompe 3 Na⁺ vers l''extérieur et 2 K⁺ vers l''intérieur → maintient le potentiel de membrane (-70 mV)
- Cotransport (symport/antiport)

**Transport en masse :**
- Endocytose (phagocytose, pinocytose, endocytose par récepteur)
- Exocytose

## Le cytosquelette

Structure tridimensionnelle qui donne sa forme à la cellule et organise son espace interne.

### Trois types de filaments

| Filament | Composition | Diamètre | Fonctions |
|---------|------------|---------|---------|
| Microfilaments | Actine (F) | 7 nm | Mouvement cellulaire, cytocinèse |
| Filaments intermédiaires | Diverses protéines (kératine, vimentine, lamines) | 10 nm | Résistance mécanique |
| Microtubules | Tubuline α/β | 25 nm | Transport intracellulaire, fuseau mitotique, flagelles |

## La division cellulaire

### La mitose (cellules somatiques)
But : produire 2 cellules filles génétiquement identiques (2n = 46)

**Phases :**
1. **Prophase** : condensation des chromosomes, formation du fuseau
2. **Prométaphase** : attachement des kinétochores aux microtubules
3. **Métaphase** : alignement des chromosomes à la plaque métaphasique
4. **Anaphase** : séparation des chromatides sœurs vers les pôles
5. **Télophase** : décondensation, reformation des noyaux
6. **Cytocinèse** : division du cytoplasme

### La méiose (cellules germinales)
Produit 4 gamètes haploïdes (n = 23). Deux divisions successives :
- **Méiose I** : séparation des chromosomes homologues → 2 cellules haploïdes
- **Méiose II** : séparation des chromatides sœurs → 4 gamètes

**Enjambement (crossing-over)** : échange de segments entre chromatides → diversité génétique

## Signalisation cellulaire

1. Le ligand (hormone, neurotransmetteur) se fixe sur le **récepteur**
2. Le récepteur transmet le signal via des **protéines de transduction** (protéines G, kinases)
3. Le signal atteint la cible (enzyme, facteur de transcription)
4. **Amplification** du signal (cascade enzymatique)
5. **Rétrocontrôle négatif** (désensibilisation, inactivation du récepteur)',
  (SELECT id FROM subjects WHERE name = 'Biologie – Concours médecine' AND level_id = (SELECT id FROM levels WHERE level_number = 6)),
  (SELECT id FROM levels WHERE level_number = 6),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Génétique et biologie moléculaire pour le concours médecine',
  'Approfondir la génétique moléculaire, l''épigénétique et les biotechnologies au niveau du concours médecine.',
  'TEXT',
  '# Génétique avancée — Concours médecine

## Structure de la chromatine et épigénétique

### Organisation de la chromatine
L''ADN (2 mètres de long !) est compacté dans un noyau de 6 µm grâce à des protéines **histones**.

- Nucléosome : 146 pb d''ADN enroulé autour d''un octamère d''histones
- Fibre de 30 nm → boucles → chromatine condensée → chromosome

### Épigénétique
Modifications héritables de l''expression des gènes **sans modification de la séquence ADN**.

**Méthylation de l''ADN** : méthylation des cytosines (CpG) → répression transcriptionnelle

**Modifications des histones :**
- Acétylation → relâchement de la chromatine → transcription activée
- Méthylation → selon le résidu : activation ou répression

**Importance clinique :** des anomalies épigénétiques sont impliquées dans le cancer, les maladies neuropsychiatriques, et peuvent être transmises sur plusieurs générations.

## Mutations et maladies génétiques

### Types de mutations

| Type | Exemple | Conséquences |
|------|---------|-------------|
| Substitution faux-sens | Sickle cell : Glu→Val | Protéine altérée |
| Substitution non-sens | → codon STOP prématuré | Protéine tronquée, non fonctionnelle |
| Décalage du cadre de lecture | Insertion/délétion ≠ 3bp | Toute la séquence en aval altérée |
| Amplification de triplets | Huntington (CAG)ₙ | Maladies à triplets |

### Modes de transmission

**Autosomique dominant :** un seul allèle muté suffit (ex. Huntington, neurofibromatose)
**Autosomique récessif :** deux allèles mutés nécessaires (ex. mucoviscidose, phénylcétonurie)
**Lié à l''X récessif :** gène sur chrX (ex. hémophilie A, daltonisme) → atteint surtout les hommes
**Mitochondrial :** héritage maternel exclusif (ex. MELAS)

## Les biotechnologies

### PCR (Polymerase Chain Reaction)
Amplification in vitro de séquences d''ADN spécifiques.

**Étapes :**
1. **Dénaturation** (95°C) : séparation des brins
2. **Hybridation des amorces** (55-65°C) : fixation des primers
3. **Élongation** (72°C) : ADN polymérase thermostable (Taq) synthétise

→ 30 cycles = 2³⁰ ≈ 10⁹ copies !

**Applications :** diagnostic génétique, empreinte génétique (criminologie), SARS-CoV-2 PCR tests.

### Séquençage de l''ADN
**Méthode de Sanger** : séquençage classique (fragments + ddNTP marqués)
**Séquençage nouvelle génération (NGS)** : séquençage massif parallèle → génome entier en quelques jours

### CRISPR-Cas9
Outil de **chirurgie génétique** : guide RNA dirige la protéine Cas9 vers une séquence précise → coupure de l''ADN → modification.

**Applications potentielles :** traitement de maladies génétiques, thérapie génique, cancers.',
  (SELECT id FROM subjects WHERE name = 'Biologie – Concours médecine' AND level_id = (SELECT id FROM levels WHERE level_number = 6)),
  (SELECT id FROM levels WHERE level_number = 6),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Anatomie et physiologie humaine pour le concours',
  'Révision systémique des grandes fonctions du corps humain pour le concours d''entrée en médecine.',
  'TEXT',
  '# Physiologie humaine — Concours médecine

## Le système respiratoire

### Anatomie
Voies aériennes supérieures (nez, pharynx, larynx) → trachée → bronches → bronchioles → alvéoles

**Surface d''échange alvéolaire :** ~100 m² (équivalent à un court de tennis !)

### Mécanique ventilatoire
**Inspiration :** contraction du diaphragme + muscles intercostaux → expansion thoracique → pression ↓ → entrée d''air

**Expiration** (au repos) : passive, élasticité des poumons → pression ↑ → sortie d''air

**Volumes pulmonaires :**
- VT (volume courant) : ~0,5 L
- CV (capacité vitale) : ~4-5 L
- VR (volume résiduel) : ~1,2 L (air non expulsé)

### Hématose (échanges gazeux)
Dans les alvéoles : O₂ passe dans le sang (pO₂ alvéolaire > pO₂ sang veineux)
Dans les tissus : O₂ passe dans les cellules, CO₂ sort

**Transport de l''O₂ :** 97% par l''hémoglobine (Hb), 3% dissous
**Transport du CO₂ :** bicarbonate (70%), carbaminohémoglobine (23%), dissous (7%)

### Régulation de la respiration
Centre respiratoire dans le bulbe rachidien. Principaux chémorécepteurs :
- **Centraux** : réagissent à la [CO₂]/[H⁺] dans le LCR
- **Périphériques** (corps carotidiens, aortiques) : réagissent à la pO₂, pCO₂, pH

## Le système rénal

### Anatomie du néphron (unité fonctionnelle du rein)
1. **Corpuscule de Malpighi** (glomérule + capsule de Bowman) : filtration
2. **Tube proximal** : réabsorption du glucose, acides aminés, eau, Na⁺
3. **Anse de Henlé** : concentration des urines (gradient osmotique dans la médulla)
4. **Tube distal** : réabsorption fine Na⁺/K⁺ (aldostérone), sécrétion H⁺/K⁺
5. **Tube collecteur** : réabsorption eau (ADH)

### La filtration glomérulaire
Débit de filtration glomérulaire (DFG) : ~120 mL/min → 180 L/jour filtrés !
Mais seulement ~1,5 L d''urine/jour → 99% réabsorbés.

### Régulation de la pression artérielle : Système RAAS
1. ↓ PA → cellules juxta-glomérulaires → sécrétion de **rénine**
2. Rénine → angiotensinogène → angiotensine I → angiotensine II
3. Angiotensine II : vasoconstriction + stimule sécrétion d''aldostérone
4. **Aldostérone** : ↑ réabsorption Na⁺ au tube distal → ↑ volémie → ↑ PA

## Le système digestif

**Pancréas exocrine :**
- Amylase (glucides), lipase (lipides), protéases (trypsine, chymotrypsine)
- Bicarbonate → neutralise l''acidité gastrique

**Foie :**
- Bile (digestion des lipides, émulsification)
- Métabolisme du glucose (glycogénogenèse, glycogénolyse, néoglucogenèse)
- Métabolisme des lipides et des protéines
- Détoxification (médicaments, alcool)',
  (SELECT id FROM subjects WHERE name = 'Biologie – Concours médecine' AND level_id = (SELECT id FROM levels WHERE level_number = 6)),
  (SELECT id FROM levels WHERE level_number = 6),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Écologie et santé environnementale pour le concours',
  'Comprendre les liens entre environnement, biodiversité et santé humaine dans le contexte du concours médecine.',
  'TEXT',
  '# Écologie et santé environnementale

## La biodiversité : définition et niveaux

La **biodiversité** comprend trois niveaux :
1. **Diversité génétique** : variabilité au sein d''une espèce
2. **Diversité spécifique** : nombre et abondance des espèces
3. **Diversité des écosystèmes** : variété des habitats et communautés

**Valeur actuelle :** ~8,7 millions d''espèces estimées, dont ~1,5 million décrites.
**6ème extinction de masse** en cours : taux d''extinction 100-1000× le taux naturel.

## Services écosystémiques

Les écosystèmes rendent des **services** indispensables à la vie humaine :

| Catégorie | Exemples |
|----------|---------|
| Provisionnement | Nourriture, eau douce, bois, médicaments |
| Régulation | Climat, purification de l''air/eau, pollinisation |
| Culturels | Loisirs, spiritualité, valeur esthétique |
| Soutien | Formation des sols, cycle des nutriments |

**Valeur économique totale :** estimée à 125 000 milliards $/an (Costanza, 2014).

## Santé planétaire (Planetary Health)

Concept émergent : la santé humaine est **indissociable** de la santé des écosystèmes.

**Limites planétaires (Rockström, 2009) :** 9 limites à ne pas dépasser pour maintenir les conditions favorables à la vie humaine. 5 sont déjà dépassées en 2023 (changement climatique, biodiversité, cycles N/P, utilisation des terres, entités nouvelles).

## Changement climatique et santé

**Effets directs :**
- Vagues de chaleur → mortalité (canicule 2003 : 70 000 morts en Europe)
- Inondations → noyades, maladies hydriques
- Pollution de l''air (PM2.5, O₃) → maladies respiratoires et cardiovasculaires

**Effets indirects :**
- Extension géographique des vecteurs (moustiques tigres, tiques) → maladies infectieuses (dengue, Lyme)
- Sécheresses → malnutrition, conflits pour l''eau
- Réfugiés climatiques → tensions sociales, surpopulation urbaine

## One Health : une seule santé

Concept intégratif qui reconnaît l''interdépendance entre santé humaine, santé animale et santé des écosystèmes.

**Zoonoses :** 75% des maladies infectieuses émergentes sont d''origine animale (VIH, Ebola, SARS, COVID-19).

Réduire la déforestation et le braconnage → réduire le risque de pandémies.

## Toxicologie environnementale

**Perturbateurs endocriniens (PE) :** substances chimiques qui interfèrent avec le système hormonal.

Exemples : bisphénol A (plastiques), phtalates, pesticides organochlorés, dioxines.

**Effets :** troubles du développement, cancers hormono-dépendants, infertilité, obésité.

**Principe de précaution** : interdire un produit avant la preuve formelle de nocivité si des indices sérieux existent.',
  (SELECT id FROM subjects WHERE name = 'Biologie – Concours médecine' AND level_id = (SELECT id FROM levels WHERE level_number = 6)),
  (SELECT id FROM levels WHERE level_number = 6),
  true
);


-- ============================================================
-- NIVEAU 6 — Physique (Concours médecine/dentisterie)
-- ============================================================

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Mécanique et biophysique pour le concours médecine',
  'Appliquer les lois de la mécanique classique et de la biophysique aux systèmes biologiques.',
  'TEXT',
  '# Biophysique : mécanique appliquée au vivant

## Biomécanique du corps humain

### Levier et articulations
Le squelette fonctionne comme un système de leviers. Trois types de leviers selon la position du point d''appui (F), de la résistance (R) et de la puissance (P).

**Levier du troisième type** (P entre F et R) : le plus courant dans le corps humain → avantage de vitesse et d''amplitude au détriment de la force.

Exemple : muscle biceps (P) → flexion de l''avant-bras (R) → coude (F)
La force musculaire doit être bien plus grande que le poids soulevé → avantage de vitesse du mouvement.

### Pressions dans le corps

**Pression artérielle :**
Systolique/Diastolique (ex. 120/80 mmHg)
Conversion : 1 mmHg = 133 Pa

**Pression dans les poumons :**
- Inspiratoire : légèrement < Patm (~ -2 à -3 cmH₂O)
- Expiratoire : légèrement > Patm

**Pression intra-oculaire normale :** 10-21 mmHg ; si > 21 → risque de glaucome

## Physique des solutions biologiques

### Osmolarité et tonicité
**Osmolarité plasmatique :** ~290 mOsm/L (Na⁺, Cl⁻, glucose, urée)

**Tonicité** d''une solution par rapport au plasma :
- Isotonique (290 mOsm/L) : sérum physiologique (NaCl 0,9%), glucose 5%
- Hypertonique (> 290) : les cellules se ratatinent (plasmolyse)
- Hypotonique (< 290) : les cellules gonflent (turgescence, jusqu''à lyse)

### Dialyse et ultrafiltration (rein artificiel)
La dialyse exploite la diffusion passive à travers une membrane semi-perméable pour éliminer les déchets du sang.

## Électricité dans le corps

### Potentiel de repos (-70 mV)
Maintenu par :
- Perméabilité sélective (K⁺ sort, Na⁺ reste dehors)
- Pompe Na⁺/K⁺ ATPase

### Potentiel d''action
1. Dépolarisation : canaux Na⁺ s''ouvrent → Na⁺ entre → potentiel monte vers +30 mV
2. Repolarisation : canaux K⁺ s''ouvrent → K⁺ sort → retour à -70 mV
3. Hyperpolarisation brève

**Vitesse de conduction :** 0,5 m/s (fibres non myélinisées) à 100 m/s (fibres myélinisées, conduction saltatoire)

## Rayonnements et imagerie médicale

### Rayons X
Génération : électrons accélérés frappent une anode → rayons X
Absorption différentielle : os (dense, Ca²⁺) absorbe davantage → blanc sur radiographie

**Tomodensitométrie (scanner)** : reconstruction 3D par rotation des rayons X

### IRM
Exploite la résonance magnétique nucléaire des protons d''eau.
Avantage : sans irradiation, excellente résolution des tissus mous.

### Médecine nucléaire (TEP-scan)
Injection d''un isotope radioactif (FDG = glucose marqué au ¹⁸F).
Les zones très actives métaboliquement (tumeurs) captent plus de glucose → émettent plus de positrons → détectées.',
  (SELECT id FROM subjects WHERE name = 'Physique – Concours médecine' AND level_id = (SELECT id FROM levels WHERE level_number = 6)),
  (SELECT id FROM levels WHERE level_number = 6),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Optique et ondes pour le concours médecine',
  'Maîtriser l''optique géométrique et ondulatoire avec les applications médicales (ophtalmologie, échographie).',
  'TEXT',
  '# Optique et ondes pour la médecine

## Optique géométrique : l''œil humain

### Structure de l''œil
- **Cornée** : lentille convergente principale (fixe) ; 2/3 de la puissance de réfraction
- **Cristallin** : lentille convergente variable (**accommodation**)
- **Humeur aqueuse et vitrée** : milieux transparents
- **Rétine** : capteurs photosensibles (cônes et bâtonnets)

**Puissance totale de l''œil :** ~60 dioptries (D) ; 1D = 1/f (m)

### Défauts de vision et corrections

| Défaut | Cause | Correction |
|-------|-------|-----------|
| Myopie | Globe trop long ou cornée trop courbée | Verre divergent (concave) |
| Hypermétropie | Globe trop court | Verre convergent (convexe) |
| Astigmatisme | Cornée non sphérique | Verre cylindrique |
| Presbytie | Perte d''élasticité du cristallin | Lunettes de lecture (convexe) |

## Acoustique médicale : l''échographie

### Principes des ultrasons
Fréquences > 20 000 Hz (inaudibles par l''humain).

**Génération :** cristaux piézoélectriques → courant électrique → vibration mécanique (et vice versa)

### Principe de l''échographie
1. La sonde émet des ultrasons dans le tissu
2. Les interfaces entre tissus réfléchissent une partie des ultrasons
3. La sonde détecte l''écho → calcule la distance = vitesse × temps / 2
4. Reconstruction de l''image

**Fréquences utilisées :**
- 2-5 MHz : abdomen profond (moins de résolution, plus de pénétration)
- 5-15 MHz : organes superficiels (plus de résolution)

### Effet Doppler en médecine
Mesure la vitesse du sang dans les vaisseaux (écho-Doppler).
Si globules rouges s''approchent → fréquence de l''écho > fréquence émise → ↑ décalage Doppler.

**Application :** diagnostic des sténoses artérielles, mesure du débit cardiaque.

## Lasers en médecine

### Propriétés du laser
Lumière **cohérente** (même phase), **monochromatique** (même longueur d''onde), **collimatée** (faisceau parallèle) et de haute intensité.

### Applications médicales
- **Chirurgie ophtalmologique** : LASIK, traitement de la rétine
- **Dermatologie** : traitement des tatouages, cicatrices, épilation laser
- **Chirurgie** : découpe précise, hémostase (coagulation), endoscopie laser
- **Photothérapie dynamique (PDT)** : traitement de certains cancers (photosensibilisant + laser → destruction tumorale)

## Rayonnements ionisants et radioprotection

**Types et pénétration :**
- α : arrêté par la peau
- β⁻ : quelques mm de tissu
- γ et X : grande pénétration → blindage plomb

**Dose absorbée :** Gray (Gy) = J/kg
**Dose efficace (effet biologique) :** Sievert (Sv) = Gy × facteur de pondération

Dose naturelle annuelle : ~2,4 mSv (radioactivité naturelle, cosmique, radon)
Scanner thoracique : ~7 mSv
Radiographie pulmonaire : ~0,02 mSv',
  (SELECT id FROM subjects WHERE name = 'Physique – Concours médecine' AND level_id = (SELECT id FROM levels WHERE level_number = 6)),
  (SELECT id FROM levels WHERE level_number = 6),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Thermodynamique et physique des fluides pour le concours',
  'Applications de la thermodynamique et de la mécanique des fluides en physiologie et médecine.',
  'TEXT',
  '# Thermodynamique et fluides — Médecine

## Thermodynamique du corps humain

### Métabolisme et chaleur
Le corps humain est une **machine thermique imparfaite** : seulement ~25% de l''énergie alimentaire se transforme en travail mécanique utile, le reste est libéré sous forme de chaleur.

**Métabolisme de base :** ~70-80 W (au repos)
**Effort physique intense :** jusqu''à 1000 W

### Thermorégulation
Le corps maintient sa température à **37°C ± 0,5°C** par :
- **Vasodilatation/Vasoconstriction** : régule les échanges thermiques avec la peau
- **Transpiration** : évaporation (absorbe ~2430 J/g d''eau) → refroidissement très efficace
- **Frisson** : contraction musculaire involontaire → production de chaleur

**Hypothermie** (< 35°C) : altération des fonctions cognitives, puis vitales
**Hyperthermie/Coup de chaleur** (> 40°C) : dénaturation des protéines, urgence médicale

## Physique des fluides dans la circulation

### Loi de Poiseuille
Débit d''un fluide dans un tube cylindrique :

**Q = π × r⁴ × ΔP / (8 × η × L)**

- r : rayon du vaisseau (**paramètre crucial** : Q ∝ r⁴)
- ΔP : différence de pression
- η : viscosité du sang (~3-4 × 10⁻³ Pa·s)
- L : longueur du vaisseau

**Implication clinique :** Si le rayon diminue de moitié (sténose), le débit diminue de **16 fois** !

### Résistance vasculaire
R = 8ηL / (πr⁴) → La résistance vasculaire périphérique est essentiellement déterminée par les artérioles.

Hypertension artérielle = résistance périphérique trop élevée (vasoconstriction, artériosclérose).

### Viscosité du sang
La viscosité du sang dépend de :
- L''hématocrite (% globules rouges) → anémie ↓ viscosité, polycythémie ↑ viscosité
- La déformabilité des globules rouges (passage dans les capillaires de 5-8 µm)
- La température

### Turbulences et bruits cardiaques
Écoulement **laminaire** (normal) : couches de fluide parallèles, silencieux.
Écoulement **turbulent** : à haute vitesse ou faible viscosité → bruits (souffles cardiaques).

**Nombre de Reynolds :** Re = ρ × v × d / η
- Re < 2000 : laminaire
- Re > 4000 : turbulent
- 2000-4000 : régime transitoire',
  (SELECT id FROM subjects WHERE name = 'Physique – Concours médecine' AND level_id = (SELECT id FROM levels WHERE level_number = 6)),
  (SELECT id FROM levels WHERE level_number = 6),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Physique nucléaire et radioactivité pour le concours',
  'Comprendre les bases de la physique nucléaire et ses applications en médecine pour le concours.',
  'TEXT',
  '# Physique nucléaire — Applications médicales

## Structure nucléaire et stabilité

### Noyau atomique
Composé de protons (Z) et neutrons (N). Nombre de masse A = Z + N.

**Isotopes :** même Z, différents N → mêmes propriétés chimiques, propriétés nucléaires différentes.

**Carte des nucléides :** graphique N vs Z. La "vallée de stabilité" suit approximativement N = Z (pour les éléments légers) ou N > Z (éléments lourds).

### Forces dans le noyau
- Force électromagnétique (Coulomb) : **répulsion** entre protons
- Force nucléaire forte : **attraction** très courte portée (< 3 fm)
- Les neutrons ajoutent de la force attractive sans répulsion électrostatique → d''où N > Z pour les éléments lourds.

## La radioactivité en détail

### Décroissance α
Émission d''un noyau d''hélium ⁴₂He depuis un noyau lourd instable.

ᴬ_Z X → ᴬ⁻⁴_(Z-2) Y + ⁴₂He

Énergie cinétique de la particule α : typiquement 4-9 MeV.
**Risque :** faible si externe (arrêtée par la peau), mais très dangereux si inhalé ou ingéré.

### Décroissance β⁻
n → p + e⁻ + anti-νₑ (antineutrino)

ᴬ_Z X → ᴬ_(Z+1) Y + ⁰₋₁e

Le neutron se transforme en proton, Z augmente de 1.

### Décroissance β⁺ (émission de positron)
p → n + e⁺ + νₑ

ᴬ_Z X → ᴬ_(Z-1) Y + ⁰₊₁e

Le positron s''annihile avec un électron → émission de 2 photons γ de 511 keV → base de la TEP (tomographie par émission de positrons).

### Émission gamma
Désexcitation du noyau fils → émission d''un photon γ de haute énergie (pas de changement de Z ni de N).

## La demi-vie et applications médicales

**Critères de sélection d''un radio-isotope médical :**
- T½ assez courte (irradiation limitée) mais assez longue pour le diagnostic/traitement
- Émission adaptée (γ pour imagerie, β pour radiothérapie)
- Chimie permettant la fixation dans l''organe cible

| Isotope | T½ | Utilisation |
|--------|-----|-----------|
| Tc-99m | 6 h | Scintigraphie (imagerie SPECT) |
| I-131 | 8 jours | Traitement cancer thyroïde |
| F-18 | 110 min | TEP-scan (oncologie, neurologie) |
| C-14 | 5 730 ans | Datation archéologique |

## Radioprotection en médecine

**Principes ALARA :** As Low As Reasonably Achievable

- **Temps** : minimiser le temps d''exposition
- **Distance** : la dose ↓ avec le carré de la distance (loi en 1/r²)
- **Blindage** : plomb contre γ, tabliers de protection
- **Dosimétrie** : port de dosimètre par tout le personnel exposé

**Doses de référence :**
- Maximum professionnel : 20 mSv/an (personnel médical)
- Maximum public : 1 mSv/an (hors médical)',
  (SELECT id FROM subjects WHERE name = 'Physique – Concours médecine' AND level_id = (SELECT id FROM levels WHERE level_number = 6)),
  (SELECT id FROM levels WHERE level_number = 6),
  true
);


-- ============================================================
-- NIVEAU 6 — Chimie (Concours médecine/dentisterie)
-- ============================================================

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Chimie générale et inorganique pour le concours médecine',
  'Maîtriser la chimie générale (liaison, réactions, thermochimie) au niveau requis par le concours.',
  'TEXT',
  '# Chimie générale — Concours médecine

## Structure électronique et tableau périodique

### Configuration électronique
Notation par sous-couches : 1s, 2s, 2p, 3s, 3p, 3d, 4s...

**Règles :**
- **Aufbau** : remplir dans l''ordre des énergies croissantes
- **Pauli** : max 2 électrons par orbitale (spins opposés)
- **Hund** : remplir les orbitales dégénérées une par une avant appariement

**Exemples :**
- Na (Z=11) : 1s² 2s² 2p⁶ 3s¹ → 1 électron de valence → métal alcalin
- Cl (Z=17) : 1s² 2s² 2p⁶ 3s² 3p⁵ → 7 électrons de valence → halogène

### Tendances périodiques (révision)
- Électronégativité ↑ de gauche à droite et de bas en haut
- Rayon atomique ↑ de droite à gauche et de haut en bas
- Énergie d''ionisation ↑ de gauche à droite et de bas en haut

## Géométrie des molécules : VSEPR

La théorie VSEPR (Valence Shell Electron Pair Repulsion) prédit la géométrie moléculaire.

**Règle :** les paires d''électrons (liantes et non liantes) s''arrangent pour minimiser leurs répulsions.

| Paires totales | Paires non-liantes | Géométrie | Exemple |
|--------------|-------------------|---------|---------|
| 2 | 0 | Linéaire | CO₂, BeCl₂ |
| 3 | 0 | Trigonale plane | BF₃ |
| 4 | 0 | Tétraédrique | CH₄, SiO₄ |
| 4 | 1 | Pyramidale | NH₃ |
| 4 | 2 | Angulaire | H₂O |
| 6 | 0 | Octaédrique | SF₆ |

**Polarité :**
Une molécule est polaire si les liaisons sont polaires ET si la géométrie est asymétrique.
- CO₂ : linéaire, symétrique → **apolaire** malgré des liaisons C=O polaires
- H₂O : angulaire, asymétrique → **polaire**

## Enthalpies de liaison et énergie de réaction

**Enthalpie de liaison (D) :** énergie pour rompre une liaison en phase gazeuse.

**ΔH°réaction ≈ Σ D(liaisons rompues) - Σ D(liaisons formées)**

Exemple : H₂ + Cl₂ → 2HCl

Rompre : D(H-H) = 436 kJ + D(Cl-Cl) = 243 kJ = +679 kJ
Former : 2 × D(H-Cl) = 2 × 432 = -864 kJ

ΔH ≈ 679 - 864 = **-185 kJ** (exothermique)

## Solutions tampon

Une **solution tampon** résiste aux variations de pH lors d''ajout d''acide ou de base.

Composée d''un **acide faible et de sa base conjuguée** (ou base faible et son acide conjugué).

**Équation de Henderson-Hasselbalch :**
pH = pKa + log([base conjuguée]/[acide faible])

**Exemple : sang**
Tampon bicarbonate : H₂CO₃ / HCO₃⁻ (pKa = 6,1)
pH sanguin = 7,4 = 6,1 + log([HCO₃⁻]/[H₂CO₃]) → [HCO₃⁻]/[H₂CO₃] ≈ 20

Acidose (pH < 7,35) : hyperventilation → ↓ CO₂ → ↓ H₂CO₃ → pH ↑
Alcalose (pH > 7,45) : hypoventilation → ↑ CO₂ → pH ↓',
  (SELECT id FROM subjects WHERE name = 'Chimie – Concours médecine' AND level_id = (SELECT id FROM levels WHERE level_number = 6)),
  (SELECT id FROM levels WHERE level_number = 6),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Chimie organique avancée pour le concours médecine',
  'Maîtriser la chimie organique nécessaire pour le concours : stéréochimie, mécanismes et biomolécules.',
  'TEXT',
  '# Chimie organique — Concours médecine

## Stéréochimie

### Isomérie de constitution vs stéréoisomérie
**Isomères de constitution** : même formule moléculaire, ordre de liaisons différent.
**Stéréoisomères** : même formule, même ordre de liaisons, mais arrangement spatial différent.

### Chiralité
Un carbone est **chiral** (asymétrique) s''il porte 4 substituants différents → centre stéréogène.

Les deux molécules en relation d''images miroir non superposables sont des **énantiomères**.

**Configuration R/S :**
1. Numéroter les substituants selon la priorité de Cahn-Ingold-Prelog (CIP) : Z > A (numéro atomique)
2. Orienter le substituant 4 (priorité la plus faible) vers l''arrière
3. Si 1→2→3 dans le sens **horaire** → **R** (rectus)
4. Si 1→2→3 dans le sens **antihoraire** → **S** (sinister)

**Importance biologique :** les enzymes et récepteurs reconnaissent spécifiquement un énantiomère.
Ex. : L-acides aminés (naturels), D-glucose (naturel) vs L-glucose (non métabolisé).

### Diastéréoisomères
Stéréoisomères qui ne sont pas énantiomères.

**Isomères cis/trans** (géométriques) : autour d''une double liaison ou d''un cycle.
**Liaison double** C=C : pas de rotation libre → cis et trans sont des isomères distincts.

## Mécanismes réactionnels

### Substitution nucléophile (SN)

**SN2** : en une seule étape, inversion de configuration (attaque par derrière).
→ Favorisé pour les substrats primaires.

**SN1** : en deux étapes (formation d''un carbocation puis attaque).
→ Favorisé pour les substrats tertiaires, racémisation.

### Addition électrophile (AE)
Réaction des alcènes avec des électrophiles (HX, X₂, H₂O).

Règle de Markovnikov : l''hydrogène s''additionne sur le carbone le plus riche en H.

### Réactions d''acides carboxyliques
Estérification : RCOOH + R''OH ⇌ RCOOR'' + H₂O (lente, catalysée par H⁺, réversible)
Hydrolyse : RCOOR'' + H₂O → RCOOH + R''OH

## Chimie des biomolécules

### Amino-acides
Structure : NH₂-CHR-COOH (L-configuration)
**Point isoélectrique (pI)** : pH où l''AA est neutre → migration nulle en électrophorèse.

### Glucides
**Glucose** : aldohexose. Forme pyranose (cycle à 6) prédominante en solution.
**Liaison glycosidique** : entre OH anomérique et OH d''un autre sucre → di et polysaccharides.
**Hémiocétal → acétal** lors de la liaison glycosidique → liaison β (cellulose, non digestible) ou α (amidon, digestible).

### Lipides
**Saponification** : hydrolyse basique des triglycérides → glycérol + savon (sels d''acides gras)
RCOO-CH₂ + 3NaOH → 3 RCOONa + C₃H₈O₃',
  (SELECT id FROM subjects WHERE name = 'Chimie – Concours médecine' AND level_id = (SELECT id FROM levels WHERE level_number = 6)),
  (SELECT id FROM levels WHERE level_number = 6),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Cinétique et équilibres pour le concours médecine',
  'Appliquer les concepts de cinétique chimique et d''équilibre aux systèmes biologiques et physiologiques.',
  'TEXT',
  '# Cinétique et équilibres — Applications médicales

## Cinétique enzymatique

### Enzymes : catalyseurs biologiques
Les enzymes sont des protéines qui accélèrent les réactions biochimiques en abaissant l''énergie d''activation.

**Caractéristiques :**
- Spécificité (chaque enzyme reconnaît son substrat)
- Efficacité (k_cat jusqu''à 10⁷/s)
- Régulables (inhibiteurs, activateurs, pH, température)

### Modèle de Michaelis-Menten

E + S ⇌ ES → E + P

**Vitesse de réaction :**
v = V_max × [S] / (Km + [S])

- **V_max** : vitesse maximale (enzyme saturée en substrat)
- **Km** (constante de Michaelis) : concentration de substrat à laquelle v = V_max/2 → indicateur d''affinité (Km petit → forte affinité)

**Graphe Michaelis-Menten :** hyperbole rectangulaire.

**Graphe de Lineweaver-Burk (double inverse) :**
1/v = Km/(V_max × [S]) + 1/V_max → droite, permet de calculer Km et V_max graphiquement.

### Inhibition enzymatique

| Type | Mécanisme | Effet sur Km | Effet sur V_max |
|------|----------|-------------|----------------|
| Compétitive | Inhibiteur ressemble au substrat, occupe le site actif | ↑ | Inchangé |
| Non compétitive | Inhibiteur sur site allostérique | Inchangé | ↓ |
| Mixte | Les deux effets | ↑ | ↓ |

**Application pharmacologique :** les inhibiteurs de l''enzyme de conversion (IEC) → traitement de l''hypertension.

## Équilibres biologiques importants

### Équilibre hémoglobine-oxygène
Hb + 4O₂ ⇌ Hb(O₂)₄

La **courbe de saturation en oxygène** a une forme sigmoïde (coopérativité des sous-unités).

**Facteurs déplaçant la courbe vers la droite** (↓ affinité de Hb pour O₂) :
- ↑ pCO₂ (effet Bohr)
- ↑ température
- ↓ pH (acidose)
- ↑ 2,3-DPG

→ Avantageux dans les tissus actifs : ils libèrent plus d''O₂ là où il est nécessaire.

### Équilibre acido-basique plasmatique
Henderson-Hasselbalch : pH = 6,1 + log([HCO₃⁻]/[CO₂ dissous])

**Compensation respiratoire :** les poumons régulent [CO₂] en modifiant la fréquence respiratoire (réponse rapide : minutes).

**Compensation rénale :** les reins régulent [HCO₃⁻] en excrétant ou réabsorbant des bicarbonates (réponse lente : heures-jours).

**Troubles acido-basiques :**
- Acidose respiratoire : ↑ CO₂ (pneumonie, BPCO) → compensation rénale
- Alcalose respiratoire : ↓ CO₂ (hyperventilation) → compensation rénale
- Acidose métabolique : ↓ HCO₃⁻ (insuffisance rénale, diabète) → compensation respiratoire
- Alcalose métabolique : ↑ HCO₃⁻ (vomissements, diurétiques) → compensation respiratoire',
  (SELECT id FROM subjects WHERE name = 'Chimie – Concours médecine' AND level_id = (SELECT id FROM levels WHERE level_number = 6)),
  (SELECT id FROM levels WHERE level_number = 6),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Biochimie clinique pour le concours médecine',
  'Relier les concepts de biochimie aux situations cliniques : interprétation des bilans biologiques.',
  'TEXT',
  '# Biochimie clinique

## Métabolisme du glucose et diabète

### Régulation de la glycémie
**Valeurs normales :** glycémie à jeun 0,7-1,1 g/L (3,9-6,1 mmol/L)

**Hyperglycémie :** > 1,26 g/L à jeun → diabète

**Voies métaboliques du glucose :**
- **Glycolyse** : dégradation du glucose → pyruvate (cytoplasme)
- **Glycogénogenèse** : glucose → glycogène (foie et muscles)
- **Glycogénolyse** : glycogène → glucose (foie, lors du jeûne)
- **Néoglucogenèse** : pyruvate/AA/glycérol → glucose (foie)
- **Voie des pentoses phosphates** : NADPH + ribose-5-phosphate (biosynthèse)

**Hormones régulatrices :**
- **Insuline** (β-pancréas) : ↓ glycémie (après repas)
- **Glucagon** (α-pancréas) : ↑ glycémie (jeûne)
- **Cortisol, adrénaline, GH** : aussi hyperglycémiants

### Diabète type 1 vs type 2
**Type 1 :** destruction auto-immune des cellules β → déficit absolu en insuline. Traitement : insuline.
**Type 2 :** résistance à l''insuline + déficit relatif. Traitement : régime, métformine, puis insuline si besoin.

## Bilan hépatique

Le foie est l''organe central du métabolisme. Les enzymes hépatiques libérées dans le sang lors d''une lésion hépatique.

| Enzyme | Valeurs normales | Interprétation si élevée |
|-------|-----------------|------------------------|
| ASAT (AST) | 10-40 U/L | Atteinte hépatique ou musculaire |
| ALAT (ALT) | 7-40 U/L | Plus spécifique du foie |
| γ-GT | < 50 U/L | Alcool, médicaments, cholestase |
| PAL (phosphatase alcaline) | 40-130 U/L | Cholestase, osseuse |
| Bilirubine totale | < 17 µmol/L | Ictère si > 35 µmol/L |

## Marqueurs cardiaques

Lors d''un infarctus du myocarde, des enzymes cardiaques se retrouvent dans le sang.

| Marqueur | Délai élévation | Valeur |
|---------|----------------|-------|
| Troponine I/T | 3-6h | Très spécifique du cœur |
| CK-MB | 4-8h | Créatine kinase isoforme cardiaque |
| Myoglobine | 1-3h | Peu spécifique (musculaire aussi) |

## Interprétation de la formule sanguine (NFS)

| Paramètre | Valeur normale | Si bas | Si élevé |
|----------|---------------|-------|---------|
| Globules rouges | 4-5 M/µL | Anémie | Polyglobulie |
| Hémoglobine | 12-17 g/dL | Anémie | Polyglobulie |
| VGM | 80-100 fL | Anémie microcytaire (carence fer) | Anémie macrocytaire (B12, folates) |
| Globules blancs | 4-10 G/L | Leucopénie (infections virales, chimio) | Leucocytose (infection, leucémie) |
| Plaquettes | 150-400 G/L | Thrombopénie (hémorragie) | Thrombocytose (infection, cancer) |',
  (SELECT id FROM subjects WHERE name = 'Chimie – Concours médecine' AND level_id = (SELECT id FROM levels WHERE level_number = 6)),
  (SELECT id FROM levels WHERE level_number = 6),
  true
);


-- ============================================================
-- RAISONNEMENT – CONCOURS MÉDECINE/DENTISTERIE – NIVEAU 6
-- ============================================================

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES (
'Raisonnement logique et déduction',
'Maîtriser les structures du raisonnement logique pour les épreuves du concours d''accès aux études de médecine et de dentisterie en Fédération Wallonie-Bruxelles.',
'TEXT',
'# Raisonnement logique et déduction

## Introduction

Le test d''aptitudes du concours d''accès aux études de médecine et dentisterie (anciennement ARES) évalue la capacité à raisonner avec rigueur dans des contextes variés. Cette compétence transversale est fondamentale pour la pratique médicale future où chaque diagnostic repose sur un raisonnement structuré.

## 1. Logique propositionnelle

### 1.1 Connecteurs logiques fondamentaux

Les propositions s''assemblent via des connecteurs :

**Conjonction (ET, ∧)** : P ∧ Q est vraie uniquement si P et Q sont toutes deux vraies.

Table de vérité :
| P | Q | P ∧ Q |
|---|---|-------|
| V | V | V |
| V | F | F |
| F | V | F |
| F | F | F |

**Disjonction (OU, ∨)** : P ∨ Q est vraie si au moins l''une est vraie.

**Implication (→)** : P → Q est fausse uniquement si P est vraie et Q est fausse.
- Forme équivalente : ¬P ∨ Q
- Contraposée : ¬Q → ¬P (équivalente à l''implication)
- Réciproque : Q → P (non équivalente en général)

**Biconditionnelle (↔)** : P ↔ Q est vraie si P et Q ont la même valeur de vérité.

### 1.2 Tautologies et contradictions

Une **tautologie** est une proposition toujours vraie : P ∨ ¬P (tiers exclu).

Une **contradiction** est une proposition toujours fausse : P ∧ ¬P.

### 1.3 Formes normales

- **Forme normale conjonctive (FNC)** : conjonction de disjonctions
- **Forme normale disjonctive (FND)** : disjonction de conjonctions

Tout énoncé logique peut se réécrire dans ces formes standardisées.

## 2. Syllogismes et inférences

### 2.1 Syllogisme catégorique

Structure classique :
- Prémisse majeure : Tous les A sont B
- Prémisse mineure : X est A
- Conclusion : X est B

**Modes valides** : Barbara, Celarent, Darii, Ferio (figures classiques).

**Erreurs courantes** :
- Affirmer le conséquent : P→Q, Q donc P (invalide)
- Nier l''antécédent : P→Q, ¬P donc ¬Q (invalide)
- Modus ponens : P→Q, P donc Q (valide)
- Modus tollens : P→Q, ¬Q donc ¬P (valide)

### 2.2 Raisonnement par l''absurde

On suppose la négation de la conclusion et on montre que cela conduit à une contradiction avec les prémisses. Méthode très puissante en mathématiques et utile pour invalider des hypothèses diagnostiques.

### 2.3 Induction et déduction

- **Déduction** : du général au particulier ; certitude si prémisses vraies
- **Induction** : du particulier au général ; probabilité, non certitude
- **Abduction** : meilleure explication d''une observation (raisonnement diagnostique médical)

## 3. Raisonnement quantitatif

### 3.1 Proportions et ratios

Si A/B = k et B/C = m, alors A/C = k·m.

**Applications médicales** : calcul de doses, prévalence, sensibilité/spécificité de tests diagnostiques.

### 3.2 Probabilités conditionnelles

**Théorème de Bayes** :
P(A|B) = P(B|A) × P(A) / P(B)

Interprétation médicale :
- P(Maladie|Test+) = sensibilité × prévalence / P(Test+)
- Valeur prédictive positive dépend de la prévalence

Exemple : Test avec sensibilité 95%, spécificité 90%, prévalence 1%.
- VPP = (0,95 × 0,01) / (0,95×0,01 + 0,10×0,99) ≈ 8,7%

Cela illustre l''importance de la prévalence dans l''interprétation des tests.

### 3.3 Séries et suites logiques

Reconnaître un motif dans une suite :
- Arithmétique : différence constante
- Géométrique : rapport constant
- Mixte : alternance de règles
- Figurale : progression spatiale

## 4. Raisonnement spatial et abstrait

### 4.1 Analogies

Format : A est à B ce que C est à D.
Identifier la relation entre A et B, l''appliquer pour trouver D.

Types de relations : partie/tout, synonyme, antonyme, cause/effet, instrument/action, appartenance catégorielle.

### 4.2 Matrices de figures

Une grille 3×3 où une case est manquante. Identifier les règles de transformation (rotation, symétrie, nombre d''éléments, couleur) ligne par ligne et colonne par colonne.

**Méthode** : analyser d''abord les lignes, puis les colonnes, puis valider avec les deux règles simultanément.

### 4.3 Pliages et développements

Visualiser comment un développé plan se referme en solide. Identifier quelle face est en face de quelle autre face sur un cube développé.

## 5. Lecture critique et analyse d''arguments

### 5.1 Structure d''un argument

- **Thèse** : affirmation centrale
- **Arguments** : raisons données pour soutenir la thèse
- **Exemples** : cas particuliers illustrant l''argument
- **Conclusion** : synthèse

### 5.2 Identifier les sophismes

- Ad hominem : attaquer la personne plutôt que l''argument
- Pente glissante : enchaîner des conséquences exagérées
- Fausse dichotomie : présenter seulement deux options quand il en existe d''autres
- Appel à l''autorité : invoquer une autorité non pertinente
- Post hoc ergo propter hoc : confondre corrélation et causalité

### 5.3 Affaiblissement et renforcement d''hypothèses

Pour chaque affirmation, identifier :
- Ce qui la **renforce** : données cohérentes, mécanisme explicatif
- Ce qui l''**affaiblit** : contre-exemples, biais, facteurs confondants

## 6. Stratégies pour le concours

### 6.1 Gestion du temps

Environ 90 minutes pour 60 questions (soit 1,5 min/question). Ne pas bloquer sur une question difficile.

### 6.2 Élimination des distracteurs

En QCM, les mauvaises réponses sont souvent :
- Partiellement vraies mais pas pour la bonne raison
- Vraies mais hors sujet
- L''opposé de la bonne réponse

### 6.3 Vérification

Pour les questions de logique pure : construire la table de vérité si besoin. Pour les analogies : reformuler la relation en une phrase et tester chaque proposition.

## 7. Entraînement ciblé

**Exercice type 1** : "Si tous les cardiologues sont médecins, et si Paul est cardiologue, lequel des énoncés suivants est nécessairement vrai ?" → Paul est médecin (syllogisme valide).

**Exercice type 2** : Matrice 3×3 avec rotation de 90° dans le sens horaire à chaque case → trouver la case manquante en appliquant la règle.

**Exercice type 3** : Série 3, 6, 12, 24, ___ → 48 (multiplication par 2).

La pratique régulière de ces exercices dans des conditions chronométrées est la clé du succès au concours.',
(SELECT id FROM subjects WHERE name = 'Raisonnement – Concours médecine' AND level_id = (SELECT id FROM levels WHERE level_number = 6)),
(SELECT id FROM levels WHERE level_number = 6),
true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES (
'Analyse de données et interprétation scientifique',
'Lire et interpréter des graphiques, tableaux et résultats d''expériences scientifiques dans le contexte du concours d''accès aux études médicales.',
'TEXT',
'# Analyse de données et interprétation scientifique

## Introduction

L''épreuve de raisonnement du concours médecine/dentisterie inclut des questions d''analyse de données expérimentales. Cette compétence — lire un graphique, extraire une tendance, identifier une erreur méthodologique — est centrale dans la pratique médicale basée sur les preuves (evidence-based medicine).

## 1. Lecture de graphiques

### 1.1 Types de représentations

**Graphique en courbes** : montre l''évolution d''une variable en fonction d''une autre (souvent le temps). Identifier les axes, les unités, l''échelle (linéaire ou logarithmique).

**Histogramme** : distribution de fréquences. La surface des barres, non leur hauteur, représente la fréquence si les classes ne sont pas égales.

**Nuage de points (scatter plot)** : relation entre deux variables quantitatives. Identifier la tendance (positive, négative, nulle) et la force de la corrélation.

**Diagramme en boîte (box plot)** : résumé en 5 nombres : minimum, Q1, médiane, Q3, maximum. Les moustaches indiquent la dispersion ; les points au-delà sont des valeurs aberrantes.

### 1.2 Extraire des informations

- Lire les valeurs à un point précis (interpolation)
- Identifier le maximum, le minimum, la plage de variation
- Repérer les changements de tendance (inflexion, plateau, asymptote)
- Comparer plusieurs courbes sur le même graphique

### 1.3 Échelles logarithmiques

Sur une échelle log, les divisions représentent des puissances de 10. Une droite sur graphe semi-log indique une croissance exponentielle. Utile pour représenter des concentrations (pH, activité enzymatique).

## 2. Statistiques descriptives

### 2.1 Mesures de tendance centrale

- **Moyenne arithmétique** : Σxᵢ/n — sensible aux valeurs extrêmes
- **Médiane** : valeur du milieu après tri — robuste aux outliers
- **Mode** : valeur la plus fréquente

Règle pratique : si moyenne > médiane, la distribution est asymétrique à droite (skewed right) — présence de valeurs élevées rares. Cas typique en médecine : revenus, durées de séjour hospitalier.

### 2.2 Mesures de dispersion

- **Étendue** : max − min
- **Variance** : σ² = Σ(xᵢ − x̄)²/n
- **Écart-type** : σ (même unité que les données)
- **Coefficient de variation** : σ/x̄ (sans unité, permet de comparer des variables différentes)

### 2.3 Intervalle de confiance

Un IC à 95% signifie : si on répétait l''expérience un grand nombre de fois, 95% des intervalles calculés contiendraient la vraie valeur du paramètre.

**NE PAS dire** : "il y a 95% de probabilité que le vrai paramètre soit dans cet intervalle" (le paramètre est fixe, pas l''IC).

## 3. Méthodologie expérimentale

### 3.1 Variables

- **Variable indépendante** (VI) : ce que le chercheur manipule (ex. : dose d''un médicament)
- **Variable dépendante** (VD) : ce qui est mesuré en réponse (ex. : pression artérielle)
- **Variables contrôlées** : maintenues constantes pour éviter les biais

### 3.2 Groupes et contrôles

- **Groupe expérimental** : reçoit le traitement
- **Groupe contrôle** : ne reçoit pas le traitement (ou reçoit un placebo)
- **Essai en double aveugle** : ni les participants ni les évaluateurs ne savent qui reçoit quoi — élimine les biais de confirmation

### 3.3 Validité interne et externe

- **Validité interne** : l''effet observé est bien causé par la VI (peu de biais, randomisation)
- **Validité externe** : les résultats sont généralisables à d''autres populations

### 3.4 Biais courants

- **Biais de sélection** : échantillon non représentatif
- **Biais d''information** : mesure imprécise ou différentielle
- **Biais de confusion** : une troisième variable corrèle avec VI et VD
- **Biais de survivant** : analyser seulement les sujets qui ont survécu/complété l''étude

## 4. Corrélation et causalité

### 4.1 Coefficient de corrélation de Pearson (r)

Varie de −1 à +1 :
- r = 1 : corrélation parfaite positive
- r = 0 : aucune corrélation linéaire
- r = −1 : corrélation parfaite négative

**Attention** : r mesure uniquement la corrélation linéaire. Une relation non linéaire peut exister avec r ≈ 0.

### 4.2 Corrélation ≠ causalité

Exemples célèbres de corrélations fallacieuses :
- Ventes de crème solaire corrèlent avec les noyades (variable confondante : température)
- Nombre de cigognes corrèle avec le taux de natalité en Europe (variable confondante : urbanisation)

**Critères de Bradford Hill** pour établir la causalité : force de l''association, constance, spécificité, temporalité, gradient biologique, plausibilité, cohérence, expérimentation, analogie.

## 5. Tests d''hypothèses

### 5.1 Hypothèse nulle (H₀) et alternative (H₁)

H₀ : il n''y a pas d''effet (différence nulle)
H₁ : il y a un effet

Le test statistique calcule la probabilité d''obtenir les données observées si H₀ est vraie.

### 5.2 p-valeur

- Si p < 0,05 : on rejette H₀ ; résultat statistiquement significatif
- Si p ≥ 0,05 : on ne rejette pas H₀ (absence de preuve ≠ preuve d''absence)

**Limite** : la significativité statistique ≠ significativité clinique. Un effet peut être statistiquement significatif mais cliniquement négligeable.

### 5.3 Erreurs de type I et II

- **Erreur de type I (faux positif, α)** : rejeter H₀ alors qu''elle est vraie
- **Erreur de type II (faux négatif, β)** : ne pas rejeter H₀ alors qu''elle est fausse
- **Puissance** : 1 − β = probabilité de détecter un effet réel

## 6. Sensibilité, spécificité, VPP, VPN

Pour un test diagnostique binaire :

|  | Maladie + | Maladie − |
|--|-----------|-----------|
| Test + | VP | FP |
| Test − | FN | VN |

- **Sensibilité** = VP/(VP+FN) : capacité à détecter les malades
- **Spécificité** = VN/(VN+FP) : capacité à identifier les non-malades
- **VPP** = VP/(VP+FP) : si test positif, probabilité d''être malade
- **VPN** = VN/(VN+FN) : si test négatif, probabilité de ne pas être malade

Un test de dépistage privilégie la sensibilité (éviter les faux négatifs). Un test confirmatoire privilégie la spécificité (éviter les faux positifs).

## 7. Applications en contexte médical

**Étude de cas** : Un article rapporte qu''un nouveau médicament réduit la pression artérielle systolique de 5 mmHg (p = 0,03, IC95% [0,5 ; 9,5]). Questions à se poser :
1. L''IC est large → imprécision importante
2. 5 mmHg est-il cliniquement significatif ? (probablement non)
3. L''étude était-elle randomisée en double aveugle ?
4. Quels sont les effets secondaires ?

Ce raisonnement critique sur les données est fondamental en médecine moderne.',
(SELECT id FROM subjects WHERE name = 'Raisonnement – Concours médecine' AND level_id = (SELECT id FROM levels WHERE level_number = 6)),
(SELECT id FROM levels WHERE level_number = 6),
true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES (
'Compréhension de textes scientifiques',
'Développer la capacité à lire rapidement et à comprendre des textes scientifiques complexes dans le cadre de la préparation au concours d''accès aux études médicales.',
'TEXT',
'# Compréhension de textes scientifiques

## Introduction

Le concours d''accès aux études de médecine et de dentisterie en FWB comporte une épreuve de compréhension de textes. Les candidats doivent lire des extraits de vulgarisation scientifique ou d''articles de recherche et répondre à des questions de compréhension, d''inférence et d''analyse.

## 1. Stratégies de lecture efficace

### 1.1 Lecture active

La lecture passive (suivre les mots sans questionner) est inefficace pour un texte scientifique dense. La lecture active implique :
- Se poser des questions avant de lire (de quoi s''agit-il ?)
- Annoter mentalement les idées principales
- Identifier la structure argumentative
- Évaluer la logique des affirmations

### 1.2 Technique SQ3R

- **S** urvey : parcourir le texte (titre, sous-titres, premier et dernier paragraphe)
- **Q** uestion : formuler des questions auxquelles le texte devrait répondre
- **R** ead : lire attentivement
- **R** ecite : reformuler les idées clés sans regarder le texte
- **R** eview : vérifier la compréhension et identifier les lacunes

### 1.3 Repérage de la structure

Un texte scientifique suit généralement : Introduction → Développement (arguments) → Conclusion. Identifier :
- La thèse principale (souvent dans le premier ou dernier paragraphe)
- Les arguments de soutien (chaque paragraphe porte généralement une idée)
- Les exemples ou données empiriques
- Les nuances et concessions ("toutefois", "cependant", "bien que")

## 2. Vocabulaire scientifique

### 2.1 Terminologie médicale de base

Maîtriser les préfixes et suffixes latins/grecs permet de déchiffrer des termes inconnus :
- brady- (lent), tachy- (rapide) : bradycardie, tachycardie
- -ite (inflammation) : appendicite, méningite
- -ose (processus/maladie) : sclérose, arthrose
- -ectomie (ablation) : appendicectomie, cholécystectomie
- -plasie (croissance) : hyperplasie, néoplasie
- hypo-/hyper- (sous/sur) : hypotension, hyperglycémie

### 2.2 Marqueurs de certitude

Les textes scientifiques nuancent leurs affirmations :
- **Certitude haute** : "il est établi que", "démontré", "prouvé"
- **Probabilité** : "il est probable que", "les données suggèrent", "tend à"
- **Possibilité** : "pourrait", "il est possible que", "certains auteurs pensent"
- **Incertitude** : "on ignore encore si", "les résultats sont contradictoires"

Reconnaître ces marqueurs est crucial pour ne pas attribuer plus de certitude qu''un auteur n''en revendique.

### 2.3 Faux-amis scientifiques

- "Significatif" en science ≠ "important" : signifie statistiquement non nul
- "Théorie" en science ≠ "spéculation" : cadre explicatif solide et testé
- "Risque relatif" ≠ "risque absolu" : un RR de 2 peut correspondre à 0,002% vs 0,001%

## 3. Types de questions

### 3.1 Questions de repérage

"Selon le texte, quelle est la principale cause de X ?"
→ Chercher la réponse explicite dans le texte. Ne pas inférer.

### 3.2 Questions d''inférence

"Que peut-on déduire de la deuxième expérience ?"
→ La réponse n''est pas dans le texte mais découle logiquement de ce qui y est dit.

### 3.3 Questions d''évaluation

"Laquelle des affirmations suivantes affaiblirait le plus la thèse de l''auteur ?"
→ Identifier la thèse centrale, puis chercher quelle option lui est le plus directement contradictoire ou la rend moins convaincante.

### 3.4 Questions de reformulation

"Que signifie la phrase X dans le contexte du texte ?"
→ Choisir la paraphrase la plus fidèle en tenant compte du contexte, pas seulement du sens général du mot.

## 4. Analyse critique d''un texte scientifique

### 4.1 Identifier le type d''étude

- Étude observationnelle (aucune intervention du chercheur)
- Étude expérimentale / essai clinique randomisé
- Étude de cas / série de cas
- Méta-analyse / revue systématique

La hiérarchie des preuves : méta-analyses > ECR > études de cohorte > cas-témoins > études transversales > cas cliniques.

### 4.2 Évaluer la population étudiée

- Taille de l''échantillon (plus grand → plus fiable)
- Représentativité (qui a été exclu ?)
- Durée de suivi

### 4.3 Évaluer les résultats

- Les résultats sont-ils statistiquement significatifs ?
- Quelle est la taille de l''effet ?
- Les résultats ont-ils été répliqués par d''autres équipes ?

### 4.4 Identifier les limites avouées

Les bons articles scientifiques reconnaissent leurs limites. Les repérer dans le texte et comprendre leur implication.

## 5. Exercices pratiques

### Exemple de texte extrait

"Une étude récente portant sur 1 200 adultes âgés de 40 à 65 ans a montré que ceux consommant quotidiennement du chocolat noir (≥70% cacao) avaient une pression artérielle systolique inférieure de 3 mmHg en moyenne à celle du groupe contrôle (p = 0,02). Toutefois, les auteurs soulignent que cette réduction, bien que statistiquement significative, reste d''une signification clinique incertaine et que des facteurs alimentaires confondants n''ont pu être entièrement contrôlés."

**Questions types** :
1. La différence de pression artérielle est-elle cliniquement significative selon les auteurs ? → Non, ils la qualifient d''incertaine.
2. Quelle limite méthodologique est évoquée ? → Les facteurs alimentaires confondants.
3. L''étude permet-elle de conclure que le chocolat noir cause une baisse de pression ? → Non, car les facteurs confondants non contrôlés empêchent d''établir une causalité.

## 6. Conseils pour l''examen

- **Ne pas extrapoler** au-delà de ce que le texte dit réellement
- **Relire la question** avant de répondre pour s''assurer de répondre à ce qui est demandé
- **Méfier des options "absolues"** (toujours, jamais, tous, aucun) — souvent incorrectes en science
- **Temps** : lire le texte une fois entièrement (2-3 min), puis répondre aux questions en relisant les passages pertinents
- **En cas de doute** : la réponse la plus nuancée est souvent la bonne en contexte scientifique

La maîtrise de la compréhension de textes scientifiques est une compétence qui se développe avec la pratique régulière de la lecture d''articles de vulgarisation (Pour la Science, Science et Vie, BMJ patient).',
(SELECT id FROM subjects WHERE name = 'Raisonnement – Concours médecine' AND level_id = (SELECT id FROM levels WHERE level_number = 6)),
(SELECT id FROM levels WHERE level_number = 6),
true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES (
'Éthique médicale et organisation du système de santé',
'Introduction aux principes éthiques fondamentaux de la médecine et à l''organisation du système de soins en Belgique, dans le cadre de la préparation au concours d''accès aux études médicales.',
'TEXT',
'# Éthique médicale et organisation du système de santé

## Introduction

Le concours d''accès aux études de médecine en FWB évalue non seulement les connaissances scientifiques mais aussi la réflexion éthique et la connaissance du contexte professionnel médical. Cette section est souvent sous-estimée par les candidats alors qu''elle peut faire la différence.

## 1. Les quatre principes de la bioéthique

Beauchamp et Childress (1979) ont formulé quatre principes qui guident l''éthique médicale contemporaine :

### 1.1 Autonomie

Respecter la capacité du patient à prendre des décisions informées sur sa propre santé.

**Implications pratiques** :
- Consentement éclairé avant tout acte médical
- Information complète sur le diagnostic, le traitement et les alternatives
- Droit de refuser un traitement, même vital
- Protection des personnes vulnérables (mineurs, patients sous tutelle)

**Limites** : l''autonomie ne s''applique pas sans réserve si la décision met en danger autrui (maladie contagieuse) ou si la capacité de discernement est altérée.

### 1.2 Bienfaisance

Agir dans le meilleur intérêt du patient.

**Question clé** : qui définit le "meilleur intérêt" — le médecin (paternalisme) ou le patient (autonomie) ? La médecine moderne penche vers une alliance thérapeutique où les deux participent à la décision.

**Obligation positive** : ne pas seulement éviter de nuire, mais activement promouvoir le bien-être.

### 1.3 Non-malfaisance

Primum non nocere — avant tout, ne pas nuire.

**Application** : évaluer le rapport bénéfice/risque de chaque intervention. Aucun traitement n''est sans risque ; l''éthique demande que les bénéfices attendus dépassent les risques prévisibles.

**Euthanasie et sédation palliative** : la sédation palliative (réduire la conscience pour diminuer la souffrance en fin de vie) est distinguée de l''euthanasie (acte délibéré de mettre fin à la vie). En Belgique, l''euthanasie est légale sous conditions strictes (loi du 28 mai 2002).

### 1.4 Justice

Distribuer équitablement les ressources de santé et traiter chaque patient sans discrimination.

**Enjeux** :
- Accès aux soins selon les besoins, pas les moyens financiers
- Prioritarisation (triage en urgence, liste d''attente pour transplantation)
- Justice intergénérationnelle (ressources pour les futurs malades)

## 2. Cadre légal belge

### 2.1 Droits du patient (loi du 22 août 2002)

Tout patient belge a le droit à :
- Des prestations de santé de qualité
- Choisir librement son prestataire de soins
- L''information sur son état de santé
- Consentir ou refuser un traitement
- Un dossier médical soigneusement tenu
- La protection de sa vie privée
- L''introduction d''une plainte

### 2.2 Secret médical

Le médecin est tenu au secret professionnel — toute information confiée dans le cadre de la relation thérapeutique est confidentielle. Exceptions légales :
- Déclaration de maladies infectieuses à déclaration obligatoire
- Témoignage en justice (conditions strictes)
- Droit de saisir la justice en cas de maltraitance grave
- Partage d''informations au sein de l''équipe de soins (continuité des soins)

### 2.3 Euthanasie en Belgique

Conditions légales :
- Patient majeur ou mineur émancipé (depuis 2014, aussi mineur en phase terminale)
- Demande écrite, volontaire, réfléchie et répétée
- Souffrance physique ou psychologique constante et insupportable
- Affection grave et incurable
- Avis de plusieurs médecins
- Délai de réflexion d''un mois

La Belgique est l''un des rares pays au monde à avoir légalisé l''euthanasie pour mineurs.

## 3. Organisation du système de santé belge

### 3.1 Structure générale

La Belgique a un système de santé complexe en raison de sa structure fédérale :
- **Sécurité sociale fédérale** : assurance maladie-invalidité (INAMI/RIZIV)
- **Régions et Communautés** : compétences partagées en matière de santé publique, soins de santé préventifs, aide aux personnes

**INAMI (Institut National d''Assurance Maladie-Invalidité)** : organise et finance les soins de santé. Les mutuelles (Mutualité chrétienne, Solidaris, CAAMI, etc.) remboursent les soins.

### 3.2 Niveaux de soins

- **Soins primaires** : médecin généraliste, médecin de famille — premier contact, continuité des soins
- **Soins secondaires** : spécialistes, hôpitaux généraux — sur référence du généraliste
- **Soins tertiaires** : hôpitaux universitaires — soins hautement spécialisés, recherche

### 3.3 Financement

Système de **tiers payant** : le patient ne paie que le ticket modérateur (sa quote-part), la mutuelle rembourse directement le prestataire.

**Honoraires** : les médecins peuvent pratiquer des honoraires libres (dépassements) ou s''engager à respecter les tarifs INAMI (médecins conventionnés). Les médecins de maison (médecin de famille attaché au patient) bénéficient d''un forfait.

### 3.4 Défis du système de santé

- **Vieillissement de la population** : augmentation des maladies chroniques, des coûts de soins longue durée
- **Inégalités sociales de santé** : espérance de vie plus courte dans les milieux défavorisés
- **Désertification médicale** : manque de médecins généralistes en zones rurales
- **Numérisation** : dossier médical informatisé partagé (e-health), téléconsultation
- **Résistance aux antibiotiques** : enjeu de santé publique mondial

## 4. Dilemmes éthiques courants

### 4.1 Fin de vie

Patient en coma irréversible dont la famille exige la poursuite des soins intensifs alors que l''équipe médicale juge le traitement futile (obstination déraisonnable). Qui décide ? Comment ?

### 4.2 Ressources limitées

Deux patients ont besoin d''une greffe de rein compatible. L''un a 25 ans, l''autre 70 ans. Sur quels critères prioriser ? (âge, espérance de vie, ancienneté sur la liste, qualité du matching, comportement responsable passé ?)

### 4.3 Confidentialité vs protection de tiers

Un patient séropositif refuse que son partenaire soit informé. Le médecin a-t-il le droit de briser le secret ? (En Belgique, le médecin peut, dans des cas exceptionnels, lever partiellement le secret pour protéger un tiers en danger — mais c''est une décision difficile qui nécessite un accompagnement éthique.)

### 4.4 Recherche médicale

Essai clinique de phase I sur un médicament expérimental. Peut-on inclure des patients en phase terminale qui n''ont plus d''autre option ? Le désespoir altère-t-il la liberté de consentement ?

## 5. Préparer les questions d''éthique au concours

Les questions d''éthique au concours demandent généralement :
- D''identifier le ou les principes éthiques en jeu
- De reconnaître les droits légaux du patient
- De choisir la réponse la plus équilibrée (respectant à la fois autonomie et bienfaisance)
- D''éviter les positions extrêmes (ni paternalisme total, ni autonomie absolue)

**Règle pratique** : la réponse qui respecte le patient comme un adulte informé capable de décider tout en l''accompagnant avec bienveillance est généralement la bonne.',
(SELECT id FROM subjects WHERE name = 'Raisonnement – Concours médecine' AND level_id = (SELECT id FROM levels WHERE level_number = 6)),
(SELECT id FROM levels WHERE level_number = 6),
true
);

-- ============================================================
-- NÉERLANDAIS – NIVEAU 6
-- ============================================================

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES (
'Nederlandstalige literatuur en cultuur',
'Verkenning van de Nederlandstalige literatuur en cultuur voor leerlingen op niveau 6 in het secundair onderwijs van de Federatie Wallonië-Brussel.',
'TEXT',
'# Nederlandstalige literatuur en cultuur

## Inleiding

In het zesde jaar secundair onderwijs verdiept u uw kennis van de Nederlandse taal door de bestudering van literaire teksten en culturele contexten. Nederlands als tweede taal in de Federatie Wallonië-Brussel betekent een brug bouwen naar de Vlaamse en Nederlandse cultuur, literatuur en maatschappij.

## 1. Overzicht van de Nederlandstalige literatuur

### 1.1 Middeleeuwen (tot 1500)

De vroegste Nederlandstalige literatuur omvat religieuze teksten, hoofse literatuur en volksvertellingen.

**Belangrijke werken** :
- *Van den vos Reynaerde* (ca. 1250) : dierenfabel met sociale kritiek op de middeleeuwse samenleving. Reynaert de vos bedriegt alle dieren en ontsnapt aan gerechtigheid — een satirische kijk op corruptie.
- *Beatrijs* (ca. 1374) : religieus verhaal over een non die haar klooster verlaat voor de liefde en na jaren terugkeert, terwijl Maria haar plaats heeft ingenomen.
- Mystieke literatuur : Hadewijch (13e eeuw) schreef brieven, strofische gedichten en visioenen over goddelijke liefde.

### 1.2 Gouden Eeuw (17e eeuw)

De Nederlanden kenden een ongekende culturele bloei.

**Joost van den Vondel** (1587-1679) : de grootste Nederlandse dichter en toneelschrijver.
- *Gijsbrecht van Aemstel* (1637) : treurspel over de val van Amsterdam
- *Lucifer* (1654) : bijbels epos over de opstand van de engelen

**Pieter Corneliszoon Hooft** : historicus en dichter, schreef de *Nederlandse Historiën*.

**Jan Luyken** : religieuze poëzie en prenten.

Kenmerken van Gouden Eeuwse literatuur : humanisme, bijbelse thema''s, rederijkerskunst, emblematische poëzie.

### 1.3 19e-20e eeuw

**Eduard Douwes Dekker (Multatuli)** (1820-1887) : *Max Havelaar* (1860) — aanklacht tegen het Nederlandse koloniale beleid in Indonesië. Revolutionair in stijl en inhoud.

**Louis Couperus** (1863-1923) : naturalistische en symbolistische romans. *De stille kracht* (1900) — over het koloniale Indië.

**Willem Elsschot** (1882-1960) : Vlaamse schrijver. *Kaas* (1933), *Lijmen* — ironische kijk op het burgerlijk leven en commercieel opportunisme.

**Felix Timmermans** (1886-1947) : Vlaamse volksverteller. *Pallieter* (1916) — verheerlijking van de Kempen en de levensgenietende mens.

### 1.4 Naoorlogse literatuur

**Hugo Claus** (1929-2008) : de belangrijkste naoorlogse Vlaamse auteur.
- *De verwondering* (1962)
- *Het verdriet van België* (1983) — magnum opus over collaboratie en Vlaanderen tijdens de Tweede Wereldoorlog

**Harry Mulisch** (1927-2010) : *De aanslag* (1982) — een man herleeft de traumatische moord op zijn ouders tijdens de bezetting.

**W.F. Hermans** (1921-1995) : nihilistische literatuur. *De donkere kamer van Damokles* (1958).

**Marga Minco** (1920-2023) : *Het bittere kruid* (1957) — persoonlijk verslag van de jodenvervolging in Nederland.

## 2. Literaire stromingen

### 2.1 Romantiek

Verheerlijking van gevoel, natuur en verleden. Vlaamse beweging verbonden met romantisch nationalisme (Hendrik Conscience : *De Leeuw van Vlaanderen*, 1838).

### 2.2 Realisme en naturalisme

Objectieve weergave van de werkelijkheid, inclusief sociale misstanden. Naturalisme : nadruk op erfelijkheid en milieu als determinanten van menselijk gedrag.

### 2.3 Symbolisme en impressionisme

Suggestie, sfeer, muzikaliteit van taal. Emile Verhaeren, Karel van de Woestijne.

### 2.4 Expressionisme en modernisme

Subjectieve vervorming van de werkelijkheid ; experiment met taal en vorm. Paul van Ostaijen : politiek expressionisme (*Bezette Stad*, 1921).

### 2.5 Postmodernisme

Zelfreflexiviteit, intertekstualiteit, ironie. Metafictie : verhalen die hun eigen fictionaliteit blootleggen.

## 3. Analyse van een literaire tekst

### 3.1 Narratologie

- **Verteller** : wie vertelt ? Eerste persoon (ik-verhaal), derde persoon (alwetend, beperkt)
- **Perspectief** : vanuit welk oogpunt wordt verteld ?
- **Afstand** : betrokken of onthecht ?
- **Betrouwbaarheid** : is de verteller betrouwbaar of niet ?

### 3.2 Figuren en symbolen

Herkende symboliek in Nederlandstalige literatuur :
- Water = verandering, dood/wedergeboorte
- Spiegel = zelfkennis, dubbelganger
- Licht/duisternis = goed/kwaad, kennis/onwetendheid

### 3.3 Thematische analyse

Terugkerende thema''s in de Nederlandstalige literatuur :
- Identiteit en taal (Vlaamse beweging)
- Oorlog en collaboratie
- Kolonialisme en schuld
- Eenzaamheid en vervreemding
- Godsdienst en verlossing

## 4. Schriftelijke vaardigheden op niveau B2-C1

### 4.1 Betoog schrijven

Structuur : these → argumenten → tegenargumenten → weerlegging → conclusie.

Formele signaalwoorden : *enerzijds/anderzijds*, *bovendien*, *daarentegen*, *desalniettemin*, *kortom*.

### 4.2 Samenvatting van een tekst

- Identificeer de hoofdgedachte (per alinea één zin)
- Elimineer voorbeelden en herhalingen
- Herschrijf in eigen woorden — geen letterlijke overname

### 4.3 Correspondentie

Formele brief : aanhef (*Geachte heer/mevrouw*), duidelijke structuur, beleefde afsluiting (*Met vriendelijke groeten*).

## 5. Culturele context : Vlaanderen en Nederland vandaag

**Belgisch-Nederlandse relaties** : ondanks gedeelde taal, zijn er duidelijke culturele verschillen. Nederlanders worden als directer en pragmatischer beschouwd ; Vlamingen meer indirect en gemoedelijk.

**Taalverschillen** : Belgisch Nederlands vs. Nederlands Nederlands :
- Belgicismen : *allee* (allons), *gij/ge* (tu), *dienstig* (utile)
- Uitspraakverschillen : de *g* klinkt zachter in Vlaanderen

**Actualiteit** : de Belgische staatshervorming, de Vlaamse onafhankelijkheidsbeweging, de rol van het Frans in Brussel — politiek actuele thema''s voor taalstudenten.

## 6. Examenvoorbereiding

Voor het mondelinge examen Nederlands op niveau 6 :
- Bestudering van twee of drie werken uit de literatuurcanon
- Vermogen om een fragment te analyseren (stijl, thema, context)
- Actuele thema''s bespreken in correct B2-C1 Nederlands
- Eigen mening formuleren en verdedigen met argumenten',
(SELECT id FROM subjects WHERE name = 'Néerlandais' AND level_id = (SELECT id FROM levels WHERE level_number = 6)),
(SELECT id FROM levels WHERE level_number = 6),
true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES (
'Taalvaardigheid en communicatie op niveau C1',
'Perfectionnement des compétences linguistiques en néerlandais jusqu''au niveau C1 du CECRL pour les élèves de 6e secondaire.',
'TEXT',
'# Taalvaardigheid en communicatie op niveau C1

## Inleiding

Het zesde jaar markeert de voltooiing van het secundair onderwijs en de taalkundige doelstelling voor niet-Nederlandstalige leerlingen in de Federatie Wallonië-Brussel is het bereiken van niveau B2, met aspecten van C1 voor gevorderde leerlingen. Dit niveau stelt u in staat om vlot te communiceren in academische en professionele contexten.

## 1. Luistervaardigheid

### 1.1 Spontaan gesproken Nederlands begrijpen

Op niveau C1 moet u in staat zijn om :
- Langere authentieke teksten te volgen (documentaires, debatten, nieuws)
- Impliciete betekenissen en toon te detecteren
- Regionale accenten (Vlaams, Hollands, Brabants) te herkennen
- Snel gesproken, informeel taalgebruik te begrijpen

### 1.2 Luisterstrategieën

**Top-down** : gebruik van voorkennis en context om ontbrekende delen in te vullen.
**Bottom-up** : nauwkeurig luisteren naar elk woord, morfologische herkenning.

**Aanpak bij moeilijke fragmenten** :
1. Luister eerst naar de globale betekenis
2. Let op sleutelwoorden en connectoren
3. Gebruik de context van het gesprek
4. Noteer onbekende woorden voor nabespreking

## 2. Spreekvaardigheid

### 2.1 Debatteren in het Nederlands

Een debat vereist de volgende vaardigheden :
- Een standpunt helder formuleren
- Argumenteren met feiten, voorbeelden en logica
- Tegenargumenten benoemen en weerleggen
- Beurt nemen en ceden in een groepsgesprek
- Samenvatten en concluderen

**Nuttiger taalgebruik in het debat** :
- *Ik ben het (niet) eens met...*
- *Aan de ene kant..., aan de andere kant...*
- *Dat klopt, maar...*
- *Mag ik even reageren ?*
- *Om samen te vatten : ...*

### 2.2 Presentatie geven

Structuur van een goede presentatie :
1. **Introductie** : onderwerp, aanpak, doel
2. **Kern** : drie à vier hoofdpunten met overgangsformules
3. **Conclusie** : samenvatting en openingsvraag

Verbindingswoorden voor presentaties :
- *Ten eerste/ten tweede/ten slotte*
- *Bovendien/verder/ook*
- *Maar/echter/desalniettemin*
- *Zoals ik al zei/zoals u ziet*
- *Om te besluiten/kortom*

### 2.3 Uitspraak op niveau C1

Aandachtspunten voor Franstaligen die Nederlands spreken :
- De lange klinkers (a, e, i, o, u vs. à, è, ì, ò, ù)
- Diftongs : *ui* /œy/, *ij/ei* /ɛɪ/, *ou/au* /ʌu/
- De Nederlandse *g* (uvulaire fricatief in zuiden, velaire in noorden)
- Woordaccent : meestal op de eerste lettergreep
- Zinsintonatie : minder melodisch dan Frans

## 3. Leesvaardigheid

### 3.1 Lezen voor begrip op C1

Op dit niveau leest u authentieke teksten : krantenartikelen, wetenschappelijke popularisering, literaire fragmenten.

**Leesstrategie** :
1. **Skimmen** : globale inhoudsopname (30 seconden)
2. **Scannen** : specifieke informatie zoeken
3. **Intensief lezen** : gedetailleerde begripsvragen beantwoorden

### 3.2 Teksten uit *De Standaard* en *NRC Handelsblad*

Oefen met authentieke krantenartikelen :
- Onderscheid tussen feiten en meningen
- Vaktaal herkennen (economie, politiek, wetenschap)
- Schrijfstijl van krant vs. tijdschrift vs. blog

### 3.3 Woordenschat uitbreiden

Strategie voor onbekende woorden :
1. Context gebruiken : wat verwacht je grammaticaal ? Wat past logisch ?
2. Morfologie : prefix + stam + suffix ontleden
3. Woordfamilie : het basiswoord herkennen (*schrijven → beschrijven, omschrijven, opschrijven*)

**Samengestelde woorden** (kenmerkend voor het Nederlands) :
*ziekenhuisopname, staatssecretaris, milieuvervuiling, beroepskeuzebegeleiding*
→ Ontleed het laatste woord : dat is het hoofdwoord. De voorgaande woorden specificeren het.

## 4. Schrijfvaardigheid

### 4.1 Betoog op niveau C1

Een goed betoog op C1 niveau :
- Ontwikkelt een coherente en nuancerende argumentatie
- Gebruikt gevarieerd en precies woordgebruik
- Vermijdt herhalingen en vage formuleringen
- Heeft een herkenbare structuur met goede overgangen
- Handhaaft een consistent formeel register

**Doeltreffende openingszin** :
❌ "In dit essay ga ik het hebben over klimaatverandering."
✓ "De klimaatcrisis dwingt ons om onze consumptiegewoonten fundamenteel te herzien — maar is individuele actie voldoende, of vereist de schaal van het probleem structurele hervormingen ?"

### 4.2 Formeel vs. informeel Nederlands

| Formeel | Informeel |
|---------|-----------|
| Geachte | Dag / Hallo |
| U | Je / Jij |
| Tevens | Ook |
| Echter | Maar |
| Derhalve | Dus |
| Thans | Nu |

### 4.3 Grammatica op C1

**Subjonctief** : in het Nederlands is de subjonctief grotendeels verdwenen, maar resten komen voor in vaste uitdrukkingen :
- *Moge hij rusten in vrede* (formeel)
- *Het zij zo* (formule)

**Conditionalis** :
- Conditioneel I : *Als ik tijd had, zou ik meer lezen.*
- Conditioneel II (verleden) : *Als ik meer tijd had gehad, had ik meer gelezen.*

**Passief** :
- Worden-passief (actief proces) : *Het boek wordt gelezen.*
- Zijn-passief (toestand) : *Het boek is gelezen.*

**Nominalisatie** (kenmerk van formeel schrijven) :
*Besluiten → het besluit, beslissing ; schrijven → het schrijven ; oplossen → de oplossing*

## 5. Interculturele competentie

### 5.1 Culturele dimensies Vlaanderen/Nederland

Op de schaal van Hofstede :
- **Individualisme** : hoog — de autonomie van het individu wordt gewaardeerd
- **Machtsafstand** : laag — hiërarchie is beperkt, men spreekt bazen aan bij voornaam
- **Onzekerheidsvermijding** : gemiddeld — pragmatisme gecombineerd met regelgerichtheid

### 5.2 Werkgerelateerde communicatie

In Vlaamse en Nederlandse werkomgevingen :
- Directe feedback is normaal ("Dit werkt niet, hier is hoe het beter kan")
- Vergaderingen zijn functioneel, niet hiërarchisch
- E-mails zijn kort en direct
- Puntualiteit wordt hoog gewaardeerd

## 6. Voorbereiding op hoger onderwijs in het Nederlands

Als u kiest voor een Nederlandstalige opleiding (Ugent, KULeuven, VUB) :
- De academische schrijfstijl verschilt sterk van de middelbareschoolstijl
- Referentiestijl : APA of Chicago
- Actief lezen van vakteksten : aantekeningen maken, samenvatten
- Academisch debatteren : onderbouwde bijdragen, citeren van bronnen

De beheersing van het Nederlands opent deuren naar de Vlaamse en Nederlandse arbeidsmarkt, alsook naar Europese instellingen in Brussel waar het Nederlands een werktaal is.',
(SELECT id FROM subjects WHERE name = 'Néerlandais' AND level_id = (SELECT id FROM levels WHERE level_number = 6)),
(SELECT id FROM levels WHERE level_number = 6),
true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES (
'Préparation au DELF/CEFR et exercices de synthèse',
'Préparation aux certifications en langue néerlandaise et révision complète des compétences linguistiques pour la 6e année secondaire.',
'TEXT',
'# Préparation aux certifications et révision néerlandais niveau 6

## Introduction

Ce cours de synthèse prépare les élèves de 6e secondaire aux examens de néerlandais de fin de cycle et aux certifications linguistiques officielles. Il consolide toutes les compétences développées depuis le début de l''apprentissage du néerlandais.

## 1. Le cadre de référence (CECRL)

### 1.1 Niveaux et objectifs

Pour le néerlandais en 6e secondaire (option générale transition) :
- **Objectif minimal** : B1 pour les 4 compétences
- **Objectif optimal** : B2 en réception, B1+ en production
- **Pour option langues-sciences** : B2/C1

**Descripteurs B2** :
- Comprendre le contenu essentiel de sujets concrets ou abstraits dans un texte complexe
- Communiquer avec un degré de spontanéité qui rend possible une interaction normale avec un locuteur natif
- S''exprimer de façon claire et détaillée sur une grande gamme de sujets

### 1.2 Structure du DELF B2 ou CNaVT

Le **CNaVT** (Certificaat Nederlands als Vreemde Taal) est la certification belge :
- Épreuve écrite : lecture et rédaction
- Épreuve orale : exposé et conversation
- Durée : environ 3h

Conseils : s''entraîner avec des textes authentiques, simuler des conditions d''examen, se chronométrer.

## 2. Révision grammaticale complète

### 2.1 Syntaxe de la phrase néerlandaise

**Inversion** : quand un élément autre que le sujet est en tête de phrase, le verbe précède le sujet.
- *Gisteren ging ik naar de markt.* (Hier, je suis allé au marché.)
- *In het park lopen veel mensen.* (Dans le parc, beaucoup de gens marchent.)

**Place du verbe** :
- Principale : V2 (deuxième position)
- Subordonnée : verbe à la fin
  - *Ik weet dat hij morgen komt.*
  - *Ze vertelde me dat ze ziek was geweest.*

### 2.2 Déclinaisons et articles

Deux genres grammaticaux en néerlandais moderne :
- **De-mots** (masculin/féminin) : *de man, de vrouw, de tafel*
- **Het-mots** (neutre) : *het kind, het boek, het land*

Le diminutif est toujours un het-mot : *het boekje, het meisje, het hondje*.

**Article indéfini** : *een* (pour tous les genres).

**Adjectifs** : flexion -e sauf het-mot singulier indéfini.
- *de grote man, het grote huis* (défini → -e toujours)
- *een grote man, een groot huis* (indéfini → -e sauf het-mot)

### 2.3 Temps verbaux : révision

**Présent** : *ik loop, jij loopt, hij loopt, wij lopen*

**Passé composé (voltooid tegenwoordige tijd)** : hebben/zijn + participe passé
- Auxiliaire *hebben* : verbes transitifs + la plupart des intransitifs
- Auxiliaire *zijn* : verbes de mouvement et de changement d''état
  - *Ik ben gegaan, hij is gevallen, we zijn aangekomen*

**Imparfait (onvoltooid verleden tijd)** : pour la narration, description habituelle
- Faibles : -te/-de (ste/stde au pluriel)
- Forts : alternance vocalique (*schrijven/schreef, rijden/reed*)

**Plus-que-parfait** : was/had + participe passé
*Ze had al gegeten toen hij aankwam.*

## 3. Vocabulaire thématique de fin de cycle

### 3.1 Thèmes sociétaux

**Duurzaamheid (durabilité)** :
*hernieuwbare energie, broeikasgassen, klimaatverandering, circulaire economie, biodiversiteit*

**Digitale samenleving** :
*artificiële intelligentie, privacybescherming, desinformatie, sociale media, cyberveiligheid*

**Gezondheid** :
*gezondheidszorg, preventie, vaccinatie, geestelijke gezondheid, werkstress*

**Politiek en maatschappij** :
*democratie, mensenrechten, migratie, sociale ongelijkheid, federalisme*

### 3.2 Académique et professionnel

*sollicitatie, cv, motivatiebrief, werkgever, werknemer, beroepsopleiding, stages, loon, arbeidscontract*

Pour une lettre de motivation en néerlandais :
1. Introduction : fonction souhaitée, source de l''offre
2. Motivation : pourquoi cette entreprise / ce poste ?
3. Compétences : ce que vous apportez
4. Conclusion : disponibilité, entretien

## 4. Compréhension de l''écrit : exercices guidés

### 4.1 Stratégie pour les questions de compréhension

1. Lire d''abord les questions (pas le texte)
2. Lire le texte en cherchant les réponses
3. Localiser les passages pertinents
4. Reformuler dans votre propre néerlandais

### 4.2 Pièges fréquents

- **Antwoord is te letterlijk** : ne pas recopier des phrases entières — montrer la compréhension
- **Negatieve vragen** : "Wat staat NIET in de tekst ?" — lire soigneusement
- **Verwijswoorden** : "die, dat, er, er...op" — identifier à quoi ils réfèrent

### 4.3 Exercice type

Extrait d''article *De Standaard* sur le télétravail :
*"Thuiswerken verhoogt de productiviteit bij de meeste werknemers, maar heeft ook negatieve gevolgen voor de sociale cohesie binnen bedrijven. Toch blijkt uit recent onderzoek dat een hybride model — deels thuis, deels op kantoor — de optimale oplossing biedt."*

Questions :
1. Wat zijn de voordelen van thuiswerken ? → hogere productiviteit
2. Wat is het nadeel ? → sociale cohesie vermindert
3. Wat is de beste oplossing volgens het onderzoek ? → hybride model

## 5. Conseils pour l''examen de fin d''année

**La veille de l''examen** :
- Réviser le vocabulaire thématique par cartes mentales
- Relire les règles grammaticales essentielles (V2, subordonnées, auxiliaires)
- Se coucher tôt — la fatigue nuit aux performances linguistiques

**Pendant l''examen** :
- Lire toutes les questions avant de commencer
- Gérer le temps : ne pas passer plus de 5 minutes sur une question difficile
- En production écrite : faire un plan rapide (2 min) avant de rédiger
- Relire la production finale pour les accords et les conjugaisons

**Pour l''oral** :
- Parler lentement et clairement plutôt que vite et approximativement
- Utiliser des connecteurs logiques (*bovendien, echter, desalniettemin*)
- Si vous ne connaissez pas un mot : le décrire (*het ding waarmee je...*)

Le niveau B2 en néerlandais ouvre des perspectives importantes en Belgique : accès aux universités flamandes, marché de l''emploi bilingue, institutions européennes de Bruxelles.',
(SELECT id FROM subjects WHERE name = 'Néerlandais' AND level_id = (SELECT id FROM levels WHERE level_number = 6)),
(SELECT id FROM levels WHERE level_number = 6),
true
);

-- ============================================================
-- ANGLAIS – NIVEAU 6
-- ============================================================

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES (
'Advanced English Literature and Critical Analysis',
'A comprehensive study of English literature and critical thinking skills for 6th-year secondary students in the Fédération Wallonie-Bruxelles, targeting C1 level proficiency.',
'TEXT',
'# Advanced English Literature and Critical Analysis

## Introduction

In the final year of secondary school, English language study reaches its highest level of complexity. Students are expected to engage with authentic literary texts, analyze them critically, and express nuanced opinions in both written and spoken English. This course targets C1 level proficiency on the Common European Framework of Reference.

## 1. Key Literary Movements and Texts

### 1.1 Modernism (1900-1945)

Modernism emerged as a reaction against Victorian values and the trauma of World War I. Key features:
- Stream of consciousness narration
- Fragmented narrative structure
- Psychological depth over plot
- Experimentation with time and perspective

**Virginia Woolf** (1882-1941): *Mrs. Dalloway* (1925) follows Clarissa Dalloway through a single day in London, interweaving her thoughts with those of Septimus Warren Smith, a shell-shocked veteran. Woolf''s prose captures the flow of mental experience.

**T.S. Eliot** (1888-1965): *The Waste Land* (1922) — a landmark of modernist poetry. Fragments of myth, literature, and everyday speech create a vision of postwar despair and spiritual emptiness.

**James Joyce** (1882-1941): *Ulysses* (1922) — parallels Homer''s Odyssey across a single Dublin day. Radically experimental; interior monologue at its extreme.

**F. Scott Fitzgerald** (1896-1940): *The Great Gatsby* (1925) — critique of the American Dream. Gatsby''s obsessive pursuit of Daisy represents the corruption at the heart of American aspiration.

### 1.2 Postcolonial Literature

Literature that responds to the experience of colonialism and its aftermath.

**Chinua Achebe** (1930-2013): *Things Fall Apart* (1958) — the first major African novel in English. Follows Okonkwo, an Igbo leader, through the arrival of European missionaries and colonial government that destroy his world.

Key themes: masculinity and cultural identity, the collision of tradition and modernity, colonialism''s erasure of indigenous cultures.

**Chimamanda Ngozi Adichie** (b. 1977): *Half of a Yellow Sun* (2006) — the Biafran War through three characters'' perspectives. *Purple Hibiscus* explores family, religion, and political oppression in Nigeria.

Her TED talk "The Danger of a Single Story" is essential reading for media literacy.

**Salman Rushdie** (b. 1947): *Midnight''s Children* (1981) — magic realism applied to Indian independence. The protagonist, born at midnight on August 15, 1947, has telepathic powers and represents the promise and disappointment of independent India.

### 1.3 Contemporary Fiction and Dystopia

**George Orwell** (1903-1950): *1984* (1949) and *Animal Farm* (1945). Orwell''s political allegories remain urgently relevant. Vocabulary from *1984* — doublethink, Newspeak, Big Brother — has entered everyday political discourse.

**Margaret Atwood** (b. 1939): *The Handmaid''s Tale* (1985) — speculative fiction about theocratic patriarchy. A warning about how democratic rights can be dismantled.

**Kazuo Ishiguro** (b. 1954): *Never Let Me Go* (2005) — dystopian science fiction told with restraint. The narrator''s gradual revelation of her situation creates unbearable dramatic irony.

## 2. Literary Analysis Skills

### 2.1 Close Reading

Close reading means paying careful attention to the specific words and structures a writer chooses, not just what they say but how they say it.

**Questions to ask** :
- Why did the author choose this word rather than a synonym?
- What does the punctuation convey about pace, pause, or emphasis?
- How does sentence length and rhythm affect tone?
- What images or metaphors recur? What do they suggest?

### 2.2 Analyzing Narrative Voice

**First-person narrator** (I): intimate, limited perspective. Can be unreliable — the reader must read between the lines.

**Third-person limited**: follows one character''s consciousness without claiming omniscience.

**Third-person omniscient**: narrator knows all characters'' thoughts and motivations. Creates ironic distance.

**Free indirect discourse**: the narrator''s voice blends with a character''s thoughts without quotation marks. Characteristic of Jane Austen and Virginia Woolf.

### 2.3 Imagery and Figurative Language

**Metaphor**: direct comparison without "like" or "as". "Life is a journey."

**Extended metaphor**: a metaphor developed across a whole poem or passage.

**Simile**: comparison using "like" or "as". "My love is like a red, red rose" (Burns).

**Personification**: giving human qualities to non-human things.

**Irony**:
- Verbal irony: saying the opposite of what is meant
- Dramatic irony: the audience knows something the character doesn''t
- Situational irony: events turn out opposite to expectations

**Symbolism**: an object, person, or event that represents something beyond its literal meaning.

## 3. Writing at C1 Level

### 3.1 The Critical Essay

Structure:
1. **Introduction** (10%): contextualize the text, state your argument (thesis)
2. **Body paragraphs** (80%): each paragraph: topic sentence → evidence → analysis → link back to thesis
3. **Conclusion** (10%): synthesize, don''t just summarize; open a wider perspective

**The PEEL structure for body paragraphs**:
- **P**oint: state the argument of this paragraph
- **E**vidence: quote or paraphrase the text
- **E**xplanation: analyze why this evidence supports your point
- **L**ink: connect back to the thesis or forward to the next paragraph

### 3.2 Integrating Quotations

Bad: "The book says "Call me Ishmael"."
Good: The novel''s famous opening — "Call me Ishmael" — immediately establishes the narrator''s self-concealment; the conditional phrasing suggests identity is performed, not fixed.

Rule: embed short quotes into your sentence; use block quotes (indented) only for passages of 4+ lines.

### 3.3 Academic Vocabulary

Verbs for literary analysis:
*argues, suggests, implies, depicts, portrays, reveals, challenges, undermines, evokes, juxtaposes, subverts, explores, interrogates*

Hedging language (appropriate for interpretation):
*appears to, seems to, arguably, one might suggest, it could be argued that, Woolf seems to imply*

## 4. Oral Skills and Debate

### 4.1 Presenting a Literary Argument

Structure for a 5-minute presentation:
1. Introduce text and author briefly (30 sec)
2. State your argument (30 sec)
3. Develop with 2-3 textual examples (3 min)
4. Conclude with wider significance (1 min)

### 4.2 Participating in Seminar Discussion

C1 discussion phrases:
- *Building on what X said...*
- *I''d like to push back on that point...*
- *That''s a compelling reading, though one might also argue...*
- *The evidence for this is...*
- *To what extent does this apply to...?*

## 5. Media Literacy and Contemporary English

### 5.1 Analyzing Non-Literary Texts

Speeches, editorials, advertisements, social media — all use rhetorical techniques:
- **Ethos**: appealing to credibility ("As a doctor, I can tell you...")
- **Pathos**: appealing to emotion (images, personal stories)
- **Logos**: appealing to logic (statistics, evidence)

### 5.2 Digital English

The rise of global English: "English as a lingua franca" (ELF) between non-native speakers who adapt the language to their needs. Debate: should non-native English be "corrected" to match native norms?

Implications for C1 learners: your English will be understood worldwide; fluency matters more than perfect native-speaker accent.

## 6. Exam Preparation

**For the written exam**:
- Practice timed essays (90 minutes for 600-word essay)
- Review APA/MLA citation format if required
- Master the difference between analysis and summary

**For the oral exam**:
- Choose a text you genuinely find interesting — engagement is contagious
- Prepare 5-6 key points, not a memorized speech
- Anticipate counterarguments to your thesis

Reaching C1 in English opens doors to international universities, global careers, and full participation in the world''s most widely used language for science, business, and culture.',
(SELECT id FROM subjects WHERE name = 'Anglais' AND level_id = (SELECT id FROM levels WHERE level_number = 6)),
(SELECT id FROM levels WHERE level_number = 6),
true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES (
'Global Issues and Academic Communication in English',
'Développement des compétences de communication académique en anglais autour de grandes thématiques mondiales pour les élèves de 6e secondaire.',
'TEXT',
'# Global Issues and Academic Communication in English

## Introduction

This course develops the ability to discuss, analyze and write about major global issues in English. By engaging with real-world topics — climate change, inequality, technology, human rights — students practice the academic vocabulary and argumentative structures required for university and professional life.

## 1. Climate Change and the Environment

### 1.1 Core Vocabulary

**Scientific terms**: greenhouse gases, carbon dioxide (CO₂), methane (CH₄), radiative forcing, feedback loops, tipping points, carbon sequestration, renewable energy, carbon footprint, biodiversity loss, ecosystem services.

**Policy vocabulary**: Paris Agreement, carbon tax, cap-and-trade, net zero, climate adaptation vs. mitigation, Nationally Determined Contributions (NDCs), IPCC (Intergovernmental Panel on Climate Change).

### 1.2 Key Arguments

**Scientific consensus**: 97% of climate scientists agree that current warming is primarily human-caused. The IPCC''s 2023 Synthesis Report warns of catastrophic consequences above 1.5°C of warming.

**The equity debate**: Who bears responsibility? Rich countries industrialized first and emitted most historical CO₂. Developing nations argue they should be able to grow economically before decarbonizing. Climate justice demands that the most vulnerable — often those who contributed least — receive support.

**Technology vs. behavior change**: Can green technology (solar panels, electric vehicles, carbon capture) solve the problem without lifestyle changes? Or do we need to fundamentally rethink consumption patterns?

### 1.3 Expressing Nuanced Positions

Practice phrases:
- *While the scientific evidence is unambiguous, the political and economic solutions remain deeply contested.*
- *It would be overly simplistic to argue that individual action alone can address what is fundamentally a systemic problem.*
- *The tension between economic development and environmental protection is particularly acute in...*

## 2. Technology and Society

### 2.1 Artificial Intelligence

Key concepts:
- **Machine learning**: systems that improve through experience rather than explicit programming
- **Large Language Models (LLMs)**: AI systems trained on vast text data to generate human-like responses
- **Algorithmic bias**: when AI systems reflect and amplify human prejudices present in training data
- **Automation**: AI replacing routine cognitive tasks, raising questions about employment

Critical questions:
- Should AI decisions in hiring, lending, or sentencing be legally contestable?
- How do we ensure AI benefits are distributed equitably?
- What does "creativity" mean when machines can generate art, music, and text?

### 2.2 Social Media and Democracy

Research indicates social media:
- Creates "filter bubbles" and echo chambers that reinforce existing beliefs
- Enables the rapid spread of misinformation
- Allows political mobilization (Arab Spring) but also polarization and radicalization
- Has been linked to declining mental health, particularly among adolescent girls

Balanced argument: social media has democratized information and given voice to marginalized groups, but without regulatory frameworks, its architecture incentivizes engagement over accuracy.

### 2.3 Privacy in the Digital Age

The "surveillance capitalism" model (Shoshana Zuboff): tech companies generate profit by predicting and influencing human behavior using personal data.

GDPR (General Data Protection Regulation): European framework for data protection. The right to be forgotten, informed consent, data portability.

Vocabulary: data mining, biometric data, end-to-end encryption, digital sovereignty, the right to privacy, informed consent.

## 3. Global Inequality and Human Rights

### 3.1 Measuring Inequality

**Gini coefficient**: 0 = perfect equality; 1 = maximum inequality. Belgium''s Gini is approximately 0.26 (relatively equal); USA approximately 0.41; South Africa approximately 0.63.

**HDI (Human Development Index)**: combines income, life expectancy, and education. A more holistic measure than GDP per capita alone.

**Wealth vs. income inequality**: The richest 1% own more wealth than the bottom 50% combined (Oxfam). Wealth concentrates across generations; income inequality is more fluid.

### 3.2 Gender Equality

Progress and persistent gaps:
- Global Gender Gap Index (WEF): Iceland leads; most countries remain far from parity
- The gender pay gap: on average women earn 82 cents for every dollar men earn in OECD countries
- Unpaid care work: women perform 75% of the world''s unpaid care and domestic work

Intersectionality (Kimberlé Crenshaw): disadvantage accumulates when multiple identities (gender, race, class, disability) overlap.

### 3.3 Refugee and Migration Issues

- 110 million forcibly displaced people worldwide (UNHCR 2023)
- Distinction: refugees (flee persecution, protected by 1951 Refugee Convention) vs. economic migrants
- "Fortress Europe" criticism: the EU''s increasingly restrictive migration policy
- Integration challenges and cultural enrichment

## 4. Academic Writing Structures

### 4.1 The Argumentative Essay

**Claim**: a debatable assertion that requires evidence and reasoning.
**Evidence**: statistics, expert opinion, case studies, historical examples.
**Warrant**: the logical connection between evidence and claim.
**Concession-refutation**: acknowledge opposing views, then explain why your position is stronger.

### 4.2 Citing Sources

APA format examples:
- Book: Author, A. A. (Year). *Title of work*. Publisher.
- Article: Author, A. A. (Year). Article title. *Journal Name*, *Volume*(Issue), pages.
- Website: Author, A. A. (Year, Month Day). *Title of page*. Website Name. URL

**Avoiding plagiarism**: paraphrase rather than copy, always cite sources, use quotation marks for direct quotes.

### 4.3 Report Writing

Structure: Executive Summary → Introduction → Methodology → Findings → Recommendations → Conclusion.

Formal impersonal style: *It was found that... / The data suggests... / Recommendations include...*

## 5. Listening and Viewing

### 5.1 TED Talks for C1 Learners

Recommended TED talks with study questions:
- **Hans Rosling**, "The best stats you''ve ever seen" — data visualization about global development myths
- **Malala Yousafzai**, "My wish: education for every child" — personal narrative and advocacy
- **Chimamanda Ngozi Adichie**, "The danger of a single story" — media representation and cultural bias
- **Yuval Noah Harari**, "Why humans run the world" — cognitive revolution and historical perspective

### 5.2 News Media Literacy

Compare coverage of the same event across:
- BBC World Service (UK, global)
- NPR (USA, public broadcasting)
- Al Jazeera English (Qatar, global South perspective)
- The Guardian (UK, progressive)

Notice differences in framing, word choice, sources cited, and issues prioritized.

## 6. Exam and University Preparation

### 6.1 Language Certifications

**Cambridge B2 First (FCE)** and **C1 Advanced (CAE)**: internationally recognized. CAE opens doors to most English-language universities.

**IELTS** (International English Language Testing System): required by UK and Australian universities. Score 6.5-7.0 for most programs.

**TOEFL iBT**: US and Canadian universities. Score 90-100 for competitive programs.

### 6.2 University Application English

Personal statement / motivation letter:
- Open with a specific anecdote or observation (not "I have always been passionate about...")
- Demonstrate intellectual curiosity through concrete examples
- Connect past experience to future goals
- Avoid clichés: "thinking outside the box", "I am a hard worker", "I am passionate"

Developing your C1 vocabulary, analytical skills, and confidence in English communication now will serve you throughout your academic and professional life.',
(SELECT id FROM subjects WHERE name = 'Anglais' AND level_id = (SELECT id FROM levels WHERE level_number = 6)),
(SELECT id FROM levels WHERE level_number = 6),
true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES (
'English Grammar Mastery and Language Use at C1',
'Maîtrise approfondie de la grammaire anglaise et des structures linguistiques avancées pour les élèves de 6e secondaire visant le niveau C1.',
'TEXT',
'# English Grammar Mastery and Language Use at C1

## Introduction

At C1 level, grammar is not about avoiding mistakes — it is about making precise, flexible choices from a wide repertoire of structures. This course consolidates the advanced grammatical knowledge needed for university-level English and professional communication.

## 1. Advanced Verb Forms

### 1.1 The Aspect System

English aspect (completed vs. ongoing) is as important as tense (past vs. present vs. future).

**Simple vs. progressive**:
- Simple: states, habits, completed actions (*She knows French. He ran 10km yesterday.*)
- Progressive: ongoing, temporary, in-progress (*She is learning French. He was running when it started to rain.*)

**Perfect vs. simple past**:
- Past simple: completed action at a specific time (*I saw that film last week.*)
- Present perfect: past action with present relevance (*I have seen that film — I can discuss it with you.*)
- Past perfect: action completed before another past action (*She had already left when he arrived.*)

**Future forms**:
- *will*: prediction, spontaneous decision
- *going to*: plan, clear intention, immediate future evidence
- Present progressive: arranged future event
- *shall*: formal offer, suggestion (British English)

### 1.2 Modal Verbs: Full Paradigm

| Modal | Present/Future | Past |
|-------|----------------|------|
| Possibility | might, may, could | might/may/could have + PP |
| Certainty | must, will | must have, will have + PP |
| Ability | can | could, was able to |
| Obligation | must, have to | had to |
| Advice | should, ought to | should have + PP |
| Permission | can, may, might | could, might |

**Modal perfects** (critical for C1):
- *You should have told me* (regret about past)
- *She must have forgotten* (logical deduction about past)
- *He can''t have known* (logical impossibility about past)

### 1.3 Conditionals: Full System

**Zero conditional**: universal truths (*If water freezes, it expands.*)

**First conditional**: real future possibility (*If it rains, I''ll take an umbrella.*)

**Second conditional**: hypothetical present/future (*If I were president, I would reform the tax system.*)
- Note: *were* is correct for all persons in formal English

**Third conditional**: hypothetical past (*If she had studied harder, she would have passed.*)

**Mixed conditionals**: combining time frames
- *If I had taken that job offer (past), I would be living in London now (present).*
- *If I were more organized (present character), I would have finished the project on time (past).*

**Inverted conditionals** (formal written style):
- *Had she known, she would have acted differently.* (= If she had known...)
- *Were this to happen, the consequences would be severe.*
- *Should you require further information, please contact us.*

## 2. Complex Sentence Structures

### 2.1 Subordinate Clauses

**Noun clauses** (subject or object):
- *What she said surprised everyone.*
- *I believe that the evidence is inconclusive.*
- *Whether he comes or not is irrelevant.*

**Relative clauses**:
- Defining (no commas): *The student who fails the exam must resit it.*
- Non-defining (commas): *Professor Smith, who has published extensively, will give the lecture.*
- *whose* (possession): *The author whose novel won the prize gave a lecture.*
- *where* (place): *The library where I studied has closed.*
- *when* (time): *I remember the year when the wall fell.*

**Reduced relative clauses**:
- *The man sitting in the corner is my uncle.* (= who is sitting)
- *The problems caused by the policy were enormous.* (= that were caused)

### 2.2 Adverbial Clauses

Concession: *although, even though, while, whereas, despite (the fact that)*

*Although the evidence was strong, the jury was not convinced.*
*Despite having studied all night, he struggled with the exam.*

Contrast: note the difference:
- *Although / even though* + clause
- *Despite / in spite of* + noun/gerund
- *However* + punctuation (cannot join clauses alone)

### 2.3 Cleft Sentences (Emphasis)

*It was John who broke the window.* (not someone else)
*What surprised me was her calmness.* (that, specifically)
*What we need is a complete policy overhaul.*
*It is only by working together that we can solve this crisis.*

### 2.4 Inversion for Emphasis

Formal written and rhetorical style:
- *Never have I seen such determination.*
- *Not only did she win, but she also broke the world record.*
- *Rarely does the government acknowledge its mistakes.*
- *Hardly had I sat down when the phone rang.*
- *No sooner had he arrived than the meeting began.*

## 3. Lexis: Connotation, Register, and Collocation

### 3.1 Denotation vs. Connotation

Words with similar denotative meaning may carry very different connotations:
- *slim / thin / scrawny / gaunt* — progressively more negative
- *economical / frugal / stingy / miserly* — progressively more negative
- *confident / assertive / aggressive / arrogant* — progressively more negative

### 3.2 Register

| Informal | Neutral | Formal |
|---------|---------|--------|
| ask for | request | solicit |
| get | receive/obtain | procure |
| show | demonstrate | exhibit |
| use | employ | utilize |
| find out | discover | ascertain |
| help | assist | facilitate |

In academic and professional writing, prefer formal register without becoming pompous.

### 3.3 Collocations

Strong collocations cannot be predicted from individual words — they must be learned:
- *make* a decision, a mistake, an effort, progress
- *do* research, business, harm, a course, your best
- *take* responsibility, action, a risk, an opportunity
- *reach* a conclusion, a compromise, a decision, an agreement
- *raise* a question, awareness, funds, concerns

### 3.4 Phrasal Verbs at C1

*account for* (explain), *bring about* (cause), *call off* (cancel), *come across* (find/meet), *draw up* (prepare), *give rise to* (cause), *hold back* (restrain), *look into* (investigate), *put forward* (suggest), *rule out* (exclude), *set out* (begin/explain), *take on* (undertake/employ), *turn out* (prove to be), *work out* (solve/result)

## 4. Writing: Accuracy and Precision

### 4.1 Common C1 Errors to Eliminate

❌ *The informations are...* → ✓ *The information is...* (uncountable)
❌ *A research was done...* → ✓ *Research was conducted...* (uncountable)
❌ *According to me...* → ✓ *In my opinion / I believe that...*
❌ *I am agree...* → ✓ *I agree...*
❌ *Since...years* → ✓ *For...years* (duration)
❌ *Despite of...* → ✓ *Despite...* (no "of" needed)
❌ *It depends of...* → ✓ *It depends on...*

### 4.2 Punctuation for Complex Writing

**Semicolon (;)**: joins two independent clauses more closely than a period.
*The experiment succeeded; the results exceeded all expectations.*

**Colon (:)**: introduces a list, explanation, or quotation.
*There are three prerequisites: time, money, and commitment.*

**Dash (—)**: adds emphasis, inserts a parenthetical element.
*The study — conducted over five years — produced inconclusive results.*

**Parentheses ()**: non-essential additional information.
*The policy (implemented in 2019) has since been revised.*

## 5. C1 Examination Practice

Exam formats at C1 level typically include:
- **Reading**: multiple choice, paragraph matching, true/false/not stated
- **Use of English**: word formation, key word transformation, open cloze
- **Listening**: multiple choice, note completion, multiple matching
- **Writing**: essay, report, proposal, review (180-220 words per task)
- **Speaking**: long turn, collaborative task, discussion

**Key word transformation (Cambridge format)**:
Original: *"They finished the project despite having very little time."*
Keyword: THOUGH → *Even though they had very little time, they finished the project.*

Regular practice with past papers is the most effective examination preparation strategy.',
(SELECT id FROM subjects WHERE name = 'Anglais' AND level_id = (SELECT id FROM levels WHERE level_number = 6)),
(SELECT id FROM levels WHERE level_number = 6),
true
);

-- ============================================================
-- HISTOIRE – NIVEAU 6
-- ============================================================

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES (
'Le monde au XXe siècle : guerres, totalitarismes et décolonisation',
'Analyse approfondie des grands bouleversements du XXe siècle : les deux guerres mondiales, les régimes totalitaires et le processus de décolonisation, pour les élèves de 6e secondaire.',
'TEXT',
'# Le monde au XXe siècle : guerres, totalitarismes et décolonisation

## Introduction

Le XXe siècle a été le siècle des extrêmes : deux guerres mondiales, l''émergence de régimes totalitaires sans précédent, la Shoah, la bombe atomique, et simultanément, la décolonisation qui a reconfiguré la carte du monde. La compréhension de ce siècle est indispensable pour comprendre le monde contemporain.

## 1. La Première Guerre mondiale (1914-1918)

### 1.1 Les origines

**Le système des alliances** : Triple Alliance (Allemagne, Autriche-Hongrie, Italie) vs. Triple Entente (France, Russie, Grande-Bretagne).

**L''attentat de Sarajevo** (28 juin 1914) : l''archiduc François-Ferdinand d''Autriche est assassiné par Gavrilo Princip, nationaliste serbe. L''Autriche-Hongrie pose un ultimatum à la Serbie ; le système d''alliances s''emballe.

**Causes structurelles** :
- Nationalisme exacerbé (notamment dans les Balkans)
- Impérialisme et rivalités coloniales
- Militarisme : course aux armements
- L''instabilité des empires multiethiques (austro-hongrois, ottoman)

### 1.2 La guerre de tranchées

La guerre de mouvement prévue (Plan Schlieffen) échoue dès septembre 1914 (bataille de la Marne). Les fronts se figent.

**Conditions dans les tranchées** : boue, rats, poux, obus, gaz (chlore, gaz moutarde/ypérite). La vie dans les tranchées est marquée par l''attente, la peur, et la violence des assauts.

**Les grandes batailles** :
- Verdun (février-décembre 1916) : 700 000 morts pour un résultat nul
- La Somme (juillet-novembre 1916) : 60 000 soldats britanniques tués le premier jour

**Innovations militaires** : chars d''assaut, aviation, gaz de combat, mitrailleuses.

### 1.3 Le bilan et les conséquences

- 9 à 10 millions de morts militaires ; 6 millions de civils
- Chute des empires allemand, austro-hongrois, ottoman, russe
- Traité de Versailles (1919) : la "paix carthaginoise" — humiliation de l''Allemagne (article 231 : clause de responsabilité de la guerre)
- Création de la Société des Nations
- Redécoupage de la carte européenne (nouvelles nations : Pologne, Tchécoslovaquie, Yougoslavie)

## 2. Les régimes totalitaires

### 2.1 Le fascisme italien (1922-1945)

Mussolini prend le pouvoir en 1922 (marche sur Rome). Le fascisme se caractérise par :
- Culte du chef (Duce)
- Nationalisme extrême et impérialisme
- État corporatiste, abolition des partis d''opposition
- Violence d''État (milices fascistes)

### 2.2 Le nazisme (1933-1945)

Hitler devient chancelier en janvier 1933. Le nazisme radicalise le fascisme avec :
- Racisme biologique : théorie de la race aryenne supérieure
- Antisémitisme d''État : lois de Nuremberg (1935), nuit de Cristal (1938), Shoah
- Expansionnisme : Lebensraum (espace vital à l''Est)
- Propagande totalitaire (Goebbels, Leni Riefenstahl)

**La Shoah** : l''extermination systématique de 6 millions de Juifs d''Europe, et de millions de Roms, homosexuels, handicapés, opposants politiques. Les camps d''extermination (Auschwitz, Treblinka, Sobibor) représentent une rupture dans l''histoire de l''humanité.

### 2.3 Le stalinisme (1924-1953)

L''URSS sous Staline :
- Collectivisation forcée de l''agriculture → famine (Holodomor ukrainien, 3-5 millions de morts)
- Industrialisation accélérée (plans quinquennaux)
- Terreur : Goulag, purges (Procès de Moscou 1936-1938), 750 000 exécutions
- Culte de la personnalité

## 3. La Seconde Guerre mondiale (1939-1945)

### 3.1 Les origines

La politique d''apaisement (Munich, 1938) encourage Hitler. L''invasion de la Pologne (1er septembre 1939) déclenche la guerre.

### 3.2 La guerre totale

**La guerre mobilise les sociétés entières** : économie de guerre, rationnement, femmes dans les usines, propagande, résistance et collaboration.

**Les grandes phases** :
- 1939-1941 : conquêtes allemandes (France, Pays-Bas, Belgique, Danemark, Norvège)
- 1941 : opération Barbarossa (invasion URSS) et entrée en guerre des États-Unis (Pearl Harbor)
- 1942-1943 : tournant (Stalingrad, El-Alamein, débarquement en Afrique du Nord)
- 1944-1945 : libération de l''Europe occidentale (Débarquement en Normandie, 6 juin 1944)
- 8 mai 1945 : capitulation allemande ; 2 septembre 1945 : capitulation japonaise

**Bilan** : 50-70 millions de morts (dont 27 millions de Soviétiques). Destruction massive de l''Europe.

### 3.3 La Belgique pendant la guerre

- L''invasion allemande (mai 1940) et la capitulation du roi Léopold III
- L''Occupation : collaboration et résistance
- La déportation des Juifs de Belgique (Malines/Mechelen)
- La libération en septembre 1944
- La "question royale" : polémique sur le retour de Léopold III (1950)

## 4. La décolonisation

### 4.1 Contexte

Après 1945, les empires coloniaux s''effondrent sous plusieurs pressions :
- Affaiblissement des métropoles européennes
- Montée des nationalismes dans les colonies
- Déclaration universelle des droits de l''homme (1948)
- Pression des États-Unis et de l''URSS (idéologiquement anti-coloniales)
- Conférence de Bandung (1955) : naissance du mouvement des non-alignés

### 4.2 Décolonisations en Asie

**Inde** (1947) : partition entre Inde et Pakistan — 500 000 à 1 million de morts dans les violences communautaires. Gandhi, Nehru, Jinnah.

**Indochine** (1954) : guerre franco-vietnamienne, défaite de Diên Biên Phu. Accords de Genève — partition du Vietnam au 17e parallèle, prémices de la guerre du Vietnam.

### 4.3 Décolonisations en Afrique

**Congo belge** (1960) : indépendance précipitée, crise congolaise, assassinat de Patrice Lumumba (1961). La Belgique est critiquée pour son administration coloniale (exploitation, violation des droits humains).

**Algérie** (1954-1962) : guerre d''indépendance sanglante (500 000 morts). La torture par l''armée française, les harkis, l''OAS — une guerre qui marque profondément la France.

**Afrique subsaharienne** : la plupart des pays africains deviennent indépendants entre 1957 (Ghana) et 1960 (grande vague d''indépendances, "l''Année de l''Afrique").

### 4.4 Bilan de la décolonisation

Les indépendances ne mettent pas fin aux inégalités Nord-Sud. Le **néocolonialisme** (Nkrumah) désigne la dépendance économique persistante des anciennes colonies envers leurs métropoles.

**Héritage** : frontières artificielles tracées à Berlin (1885), élites formées à l''européenne, dettes extérieures, ingérence des puissances étrangères — autant de défis structurels pour les États africains.

## 5. La Guerre froide (1947-1991)

### 5.1 Bipolarisation du monde

Deux superpuissances — États-Unis et URSS — s''affrontent idéologiquement (capitalisme vs. communisme) sans jamais se combattre directement.

**Doctrine Truman** (1947) : containment (endiguement) du communisme. Plan Marshall : aide économique américaine à l''Europe occidentale.

### 5.2 Crises

- Berlin (1948-1949, 1961 : mur de Berlin) : symbole de la division
- Corée (1950-1953) : première guerre par procuration
- Cuba (1962) : crise des missiles — le monde au bord de la guerre nucléaire
- Vietnam (1955-1975) : défaite américaine ; 3 millions de Vietnamiens morts

### 5.3 Fin de la Guerre froide

Gorbatchev : glasnost (transparence) et perestroïka (restructuration) → délitement du bloc soviétique. Chute du mur de Berlin (9 novembre 1989). Dissolution de l''URSS (1991).

## 6. L''histoire comme outil de compréhension du présent

Le XXe siècle nous enseigne :
- La fragilité des démocraties (Weimar → nazisme)
- Les risques du nationalisme radical
- L''importance de la mémoire historique (devoir de mémoire)
- La nécessité des institutions internationales (ONU, Cour pénale internationale)
- La responsabilité collective face aux génocides

Pour l''examen de 6e : maîtriser les repères chronologiques, être capable de relier causes et conséquences, comparer des régimes ou des événements, et mobiliser ses connaissances pour analyser un document.',
(SELECT id FROM subjects WHERE name = 'Histoire' AND level_id = (SELECT id FROM levels WHERE level_number = 6)),
(SELECT id FROM levels WHERE level_number = 6),
true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES (
'Construction européenne et monde contemporain',
'Étude de la construction européenne depuis 1945 et analyse du monde contemporain pour les élèves de 6e secondaire en Fédération Wallonie-Bruxelles.',
'TEXT',
'# Construction européenne et monde contemporain

## Introduction

La construction européenne est l''un des projets politiques les plus ambitieux de l''histoire contemporaine : transformer des nations qui s''étaient déchirées dans deux guerres mondiales en une communauté de droit, de paix et de prospérité partagée. Ce cours analyse les étapes de cette construction et les défis du monde actuel.

## 1. Les origines de la construction européenne

### 1.1 L''idée européenne

L''idée d''une Europe unie remonte à des penseurs comme Saint-Simon et Victor Hugo. Après 1918, Aristide Briand propose une "fédération européenne". C''est après 1945, face aux ruines de la guerre, que le projet prend une dimension concrète.

**Discours de Winston Churchill à Zurich** (septembre 1946) : il appelle à la création des "États-Unis d''Europe", bien que pensant que la Grande-Bretagne serait extérieure à cette union.

### 1.2 Les pères fondateurs

- **Jean Monnet** : stratège de l''intégration, architecte du Plan Schuman
- **Robert Schuman** (Français d''origine lorraine-luxembourgeoise) : ministre des Affaires étrangères, auteur de la Déclaration Schuman (9 mai 1950)
- **Konrad Adenauer** (RFA) : réconciliation franco-allemande
- **Alcide De Gasperi** (Italie) : bâtisseur démocrate-chrétien
- **Paul-Henri Spaak** (Belgique) : promoteur de l''intégration européenne

### 1.3 Les étapes fondatrices

**1950** : Déclaration Schuman — mettre la production franco-allemande de charbon et d''acier sous une Haute Autorité commune (matières premières de la guerre rendues incapables de servir une guerre).

**1951** : CECA (Communauté Européenne du Charbon et de l''Acier) — 6 membres : France, RFA, Italie, Belgique, Pays-Bas, Luxembourg.

**1957** : Traités de Rome — création de la CEE (Communauté Économique Européenne) et de l''Euratom.

**1968** : Union douanière complète.

**1986** : Acte unique européen — marché unique avec libre circulation des biens, services, capitaux et personnes.

**1992** : Traité de Maastricht — création de l''Union européenne, citoyenneté européenne, programme de monnaie unique.

**2002** : Introduction de l''euro (12 pays, puis extension).

**2004** : Grand élargissement à l''Est (10 nouveaux États membres).

**2009** : Traité de Lisbonne — réforme des institutions, création du poste de Président du Conseil européen.

## 2. Les institutions européennes

### 2.1 Le triangle institutionnel

**Commission européenne** : gardienne des traités, propose les lois, exécute le budget. Chaque État membre désigne un commissaire. Présidée actuellement par Ursula von der Leyen.

**Parlement européen** : seule institution élue directement par les citoyens (depuis 1979). Partage le pouvoir législatif avec le Conseil.

**Conseil de l''Union européenne** ("Conseil des ministres") : représente les gouvernements nationaux. Vote à la majorité qualifiée sur la plupart des sujets, à l''unanimité pour les questions sensibles (fiscalité, politique étrangère).

**Conseil européen** : réunit les chefs d''État et de gouvernement. Fixe les grandes orientations. Décisions à l''unanimité.

**Cour de justice de l''UE** : interprète le droit européen. Ses arrêts s''imposent aux États membres.

**Banque centrale européenne (BCE)** : gère la politique monétaire de la zone euro.

### 2.2 Le processus législatif ordinaire

1. La Commission propose
2. Le Parlement et le Conseil co-décident (navette législative)
3. En cas de désaccord : procédure de conciliation
4. La loi est publiée au Journal officiel de l''UE

### 2.3 Les piliers de l''intégration

**Marché intérieur** : 450 millions de consommateurs, économie de 15 000 milliards €.

**Union monétaire** : 20 pays dans la zone euro. La BCE fixe les taux d''intérêt pour tous.

**Espace Schengen** : 27 pays sans contrôle aux frontières internes.

**Politique agricole commune (PAC)** : la plus ancienne politique commune, consomme encore environ 1/3 du budget européen.

**Politique de cohésion** : fonds structurels pour réduire les inégalités entre régions.

## 3. La Belgique dans l''Europe

Bruxelles est souvent appelée la "capitale de l''Europe" : siège de la Commission, du Conseil, du Parlement (qui siège aussi à Strasbourg) et de l''OTAN.

La Belgique a été l''un des membres fondateurs les plus enthousiastes de la construction européenne. Paul-Henri Spaak a présidé l''Assemblée parlementaire européenne et rédigé le rapport préalable aux traités de Rome.

**La Belgique multilingue comme modèle** : certains voient dans la gestion du multilinguisme en Belgique (français, néerlandais, allemand) une préfiguration des défis linguistiques européens.

## 4. Les défis de l''Union européenne contemporaine

### 4.1 Brexit (2016-2020)

Le référendum britannique du 23 juin 2016 : 52% pour la sortie. Négociations longues et complexes. Sortie effective le 31 janvier 2020.

Leçons :
- L''UE n''est pas irréversible
- La question de l''appartenance à l''UE est instrumentalisée par les populismes
- Les conséquences économiques du Brexit pour le Royaume-Uni ont été négatives

### 4.2 Crise de la zone euro (2010-2015)

Grèce, Espagne, Portugal, Irlande — crise des dettes souveraines. Les plans de sauvetage de la Troïka (Commission, BCE, FMI) imposent des politiques d''austérité sévères. Débat : l''UE est-elle un projet de solidarité ou un cadre d''austérité imposé par les pays du Nord ?

### 4.3 Crises migratoires

2015-2016 : afflux massif de réfugiés (Syrie, Afghanistan, Érythrée). L''absence de solidarité entre États membres (refus de certains de partager les réfugiés). Accord UE-Turquie controversé. Montée des partis anti-immigration.

### 4.4 Guerre en Ukraine (depuis 2022)

L''invasion russe de l''Ukraine en février 2022 a provoqué :
- Une crise énergétique (dépendance au gaz russe)
- Des sanctions économiques massives contre la Russie
- Une réactivation de l''OTAN
- Une candidature ukrainienne à l''UE
- La question de la défense européenne commune

## 5. Enjeux du monde contemporain

### 5.1 Multipolarité

La domination américaine de l''après-Guerre froide cède la place à un monde multipolaire :
- Montée en puissance de la Chine (deuxième économie mondiale, ambitions militaires)
- Réaffirmation de la Russie (après les années 1990 difficiles)
- Émergence des BRICS (Brésil, Russie, Inde, Chine, Afrique du Sud)
- Affaiblissement relatif de l''Occident

### 5.2 Terrorisme et géopolitique du Moyen-Orient

Attentats du 11 septembre 2001 → guerres en Afghanistan et en Irak. Montée de Daech (État islamique). Attentats en Europe (Madrid 2004, Londres 2005, Paris 2015, Bruxelles 2016). La question palestinienne reste non résolue.

### 5.3 Changement climatique comme enjeu géopolitique

Les "guerres de l''eau" à venir. Les migrations climatiques. La montée des eaux menaçant des nations insulaires (Tuvalu, Bangladesh). L''Arctique comme nouvelle zone de compétition géopolitique. La transition énergétique comme vecteur de géopolitique (lithium, terres rares).

## 6. Méthodes pour l''examen de 6e

### 6.1 Analyse de documents

- Identifier la nature du document (texte, carte, image, graphique)
- Déterminer le contexte (quand, où, qui, pourquoi)
- Extraire les informations pertinentes
- Confronter au cours : confirme, nuance ou contredit ?

### 6.2 Dissertation historique

Structure : problématique → plan → introduction → développement (2-3 parties) → conclusion.

La problématique est une question à laquelle la dissertation répond. Elle ne doit pas avoir de réponse évidente.

### 6.3 Carte mentale de révision

Pour chaque grande période :
- Repères chronologiques (5-6 dates clés)
- Acteurs principaux (avec leur rôle précis)
- Causes → événements → conséquences
- Liens avec le monde actuel',
(SELECT id FROM subjects WHERE name = 'Histoire' AND level_id = (SELECT id FROM levels WHERE level_number = 6)),
(SELECT id FROM levels WHERE level_number = 6),
true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES (
'Historiographie et méthode historique',
'Introduction à l''historiographie et aux méthodes de l''historien pour les élèves de 6e secondaire, avec exercices d''analyse critique de sources.',
'TEXT',
'# Historiographie et méthode historique

## Introduction

L''histoire n''est pas simplement la mémorisation de faits. C''est une discipline scientifique qui produit des connaissances à partir de sources, selon des méthodes rigoureuses et dans des cadres interprétatifs qui évoluent avec le temps. Comprendre "comment" on fait de l''histoire est aussi important que de connaître "ce que" disent les historiens.

## 1. Qu''est-ce que l''histoire ?

### 1.1 Définition et objet

L''histoire est l''étude du passé humain à partir de traces laissées dans le présent (documents, monuments, témoignages, etc.).

**Ce que l''histoire n''est pas** :
- La mémoire : subjective, fragmentaire, portée par des communautés
- La commémoration : pratique sociale et politique
- Le mythe : récit fondateur non soumis à la critique

**Ce que l''histoire est** :
- Une science critique : elle soumet ses sources à l''examen
- Une interprétation : les faits ne parlent pas d''eux-mêmes
- Un récit construit : l''historien choisit, sélectionne, organise
- Évolutive : chaque génération réécrit l''histoire avec de nouvelles questions et de nouvelles sources

### 1.2 Le temps historique

**Chronologie** : séquence d''événements dans le temps. Essentielle mais insuffisante.

**Périodisation** : découpage du temps en périodes (Antiquité, Moyen Âge, Temps modernes, Époque contemporaine). Ces découpages sont des constructions intellectuelles, non des réalités objectives.

**La longue durée** (Fernand Braudel) : certains phénomènes historiques (géographie, économie, mentalités) évoluent très lentement. L''événement politique est l''écume à la surface de courants profonds.

**La conjoncture** : évolutions à moyen terme (cycles économiques, crises, guerres).

**L''événement** : rupture ponctuelle dans le temps court.

## 2. Les sources historiques

### 2.1 Typologie des sources

**Sources primaires** : produites à l''époque étudiée.
- Écrites : archives officielles, correspondances, journaux intimes, presse, littérature
- Iconographiques : peintures, photographies, affiches, caricatures
- Matérielles : objets, bâtiments, monnaies
- Orales : témoignages (pour l''histoire récente)
- Numériques : emails, réseaux sociaux (pour l''histoire très récente)

**Sources secondaires** : analyses produites après coup par des historiens.

**Sources primaires n''équivalent pas à vérité** : elles reflètent le point de vue de leur auteur, les intentions de commanditaire, les conventions de l''époque.

### 2.2 La critique des sources

**Critique externe** : identifier la source.
- Qui l''a produite ?
- Quand et où ?
- Dans quel contexte ?
- Pour quel public ?
- Sous quelle forme ?
- Est-elle authentique (pas un faux) ?

**Critique interne** : évaluer le contenu.
- L''auteur était-il témoin direct ou indirect ?
- Avait-il des raisons de mentir, de taire ou d''exagérer ?
- Le contenu est-il cohérent ?
- Confirme-t-il ou contredit-il d''autres sources ?

### 2.3 Le problème de l''exhaustivité

Les sources disponibles sont une infime fraction de ce qui a existé. Elles survivent par accident (incendies, guerres) ou par sélection (les vainqueurs écrivent l''histoire). Les "sans voix" — femmes, classes populaires, colonisés — sont sous-représentés dans les archives traditionnelles.

L''histoire orale et les nouvelles approches (histoire des femmes, histoire coloniale et décoloniale) cherchent à restituer ces voix.

## 3. L''historiographie

### 3.1 Définition

L''historiographie est l''histoire de l''histoire : comment les historiens ont écrit et interprété le passé à différentes époques.

**Chaque époque pose ses propres questions au passé** : le XIXe siècle s''intéressait aux États-nations ; le XXe siècle a développé l''histoire économique et sociale ; l''histoire des mentalités (Annales), l''histoire des femmes et l''histoire culturelle ont émergé plus récemment.

### 3.2 L''École des Annales

Fondée en 1929 par Marc Bloch et Lucien Febvre, l''École des Annales a révolutionné l''historiographie française (et mondiale) :
- Critique de l''histoire événementielle et politique
- Promotion de l''histoire sociale, économique et des mentalités
- Interdisciplinarité (géographie, économie, sociologie, linguistique)
- Fernand Braudel : *La Méditerranée et le monde méditerranéen à l''époque de Philippe II* (1949)

### 3.3 Révisions historiographiques

L''histoire se réécrit. Exemples :
- **La Shoah** : longtemps un tabou, puis intégrée progressivement à l''histoire officielle (loi Gayssot 1990 en France).
- **La colonisation** : longtemps présentée comme une "mission civilisatrice", maintenant analysée sous l''angle de la violence et de l''exploitation.
- **La Résistance française** : mythe du "pays tout entier résistant" (de Gaulle) vs. réalité de la collaboration massive (travaux de Robert Paxton, *La France de Vichy*, 1972).
- **Le rôle des femmes** : longtemps absent de l''histoire mainstream, maintenant intégré grâce à l''histoire du genre.

### 3.4 Les débats mémoriels

**Mémoire et histoire** ne sont pas synonymes :
- La mémoire est sélective, émotionnelle, identitaire
- L''histoire est critique, distanciée, sujette à révision

**Lieux de mémoire** (Pierre Nora) : sites, dates, monuments, symboles autour desquels une communauté cristallise son rapport au passé.

**Guerres de mémoire** : conflits entre groupes qui revendiquent des lectures différentes, voire incompatibles, du passé (exemple : le débat sur l''identité nationale française, les mémoires de la guerre d''Algérie).

## 4. L''historien et ses responsabilités

### 4.1 Objectivité et subjectivité

Aucun historien n''est entièrement objectif : il appartient à une époque, une culture, une classe sociale. Mais le travail critique sur les sources, la confrontation des interprétations et la soumission au débat académique garantissent une forme d''objectivité intersubjective.

### 4.2 Responsabilité sociale

L''historien peut être témoin judiciaire (procès pour crimes contre l''humanité), conseiller politique, ou acteur du débat public. Sa responsabilité est de présenter le passé honnêtement, sans l''instrumentaliser.

**Négationnisme** : nier des faits historiquement établis (Shoah, génocide arménien) n''est pas une opinion protégée mais une falsification criminelle.

**Présentisme** : juger le passé avec les valeurs du présent. Un piège à éviter sans pour autant refuser tout jugement moral.

## 5. Exercices d''analyse de sources

### 5.1 Analyser une affiche de propagande

Étapes :
1. Nature : support, technique, format
2. Auteur/commanditaire : qui, dans quel but ?
3. Date et contexte : que se passe-t-il à ce moment ?
4. Message explicite : que représente l''image ? Que dit le texte ?
5. Message implicite : quelles valeurs, quelles peurs, quelles aspirations l''affiche mobilise-t-elle ?
6. Efficacité : comment les éléments visuels et textuels coopèrent-ils ?
7. Portée et limites comme source : que nous apprend-elle (et que ne nous dit-elle pas) ?

### 5.2 Analyser un texte d''historien

Un texte d''historien est une source secondaire. L''analyser, c''est :
- Identifier la thèse principale
- Repérer les arguments et les preuves
- Identifier le cadre interprétatif (marxiste, libéral, décolonial...)
- Évaluer la rigueur méthodologique
- Situer dans l''historiographie

Pour l''examen de 6e, maîtriser la méthode d''analyse de documents est aussi important que les connaissances factuelles. Un bon historien, comme un bon médecin, est d''abord un lecteur critique.',
(SELECT id FROM subjects WHERE name = 'Histoire' AND level_id = (SELECT id FROM levels WHERE level_number = 6)),
(SELECT id FROM levels WHERE level_number = 6),
true
);

-- ============================================================
-- FORMATION SOCIALE ET ÉCONOMIQUE (FSE) – NIVEAU 6
-- UAA6 : Le citoyen et l'État
-- ============================================================

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES (
'Le citoyen et l''État : institutions et démocratie',
'Étude des institutions démocratiques belges et européennes et du rôle du citoyen dans la vie politique, dans le cadre de la FSE UAA6 pour la 6e secondaire.',
'TEXT',
'# Le citoyen et l''État : institutions et démocratie

## Introduction

La Formation sociale et économique (FSE) en 6e secondaire (UAA6 – "Le citoyen et l''État") forme des citoyens actifs capables de comprendre les institutions qui les gouvernent, d''exercer leurs droits et de participer à la vie démocratique. Cette unité d''acquis d''apprentissage est la synthèse du parcours FSE.

## 1. L''État et ses fonctions

### 1.1 Définition de l''État

Un État se définit par trois éléments (définition de Weber) :
1. **Un territoire** délimité par des frontières reconnues
2. **Une population** liée à ce territoire (citoyens/résidents)
3. **Une autorité souveraine** qui détient le monopole de la violence légitime (armée, police, justice)

**Souveraineté** : l''État est souverain — il ne reconnaît aucune autorité supérieure dans ses frontières (en droit international). En pratique, des organisations supranationales (UE, ONU) limitent cette souveraineté.

### 1.2 Les fonctions de l''État

- **Régalienne** : défense, police, justice, relations extérieures
- **Économique** : régulation du marché, politique fiscale, investissements publics
- **Sociale** : protection sociale (sécurité sociale, aide aux personnes)
- **Culturelle** : éducation, patrimoine, langue officielle

**État-Providence** (Welfare State) : État qui assure la protection sociale de ses citoyens contre les risques de la vie (maladie, chômage, vieillesse). Le modèle belge est un État-Providence développé.

### 1.3 Formes d''État

**État unitaire** : pouvoir centralisé au niveau national (France — bien que décentralisée).

**État fédéral** : pouvoir partagé entre gouvernement fédéral et entités fédérées dotées de compétences propres.

**La Belgique est un État fédéral depuis 1993** :
- Niveau fédéral : affaires étrangères, défense, sécurité sociale, droit
- Régions (Wallonie, Flandre, Bruxelles-Capitale) : économie, emploi, environnement, logement
- Communautés (française, flamande, germanophone) : enseignement, culture, aide à la jeunesse

### 1.4 Séparation des pouvoirs (Montesquieu)

- **Pouvoir législatif** : vote les lois — Parlement (Chambre des représentants + Sénat en Belgique)
- **Pouvoir exécutif** : applique les lois — gouvernement (Premier ministre + ministres)
- **Pouvoir judiciaire** : tranche les litiges et contrôle l''application des lois — tribunaux et cours

La séparation garantit que nul ne concentre tous les pouvoirs. En pratique, les frontières sont poreuses (le gouvernement a l''initiative des lois ; les juridictions interprètent les lois).

## 2. La démocratie

### 2.1 Principes démocratiques

La démocratie (du grec *demos* = peuple, *kratos* = pouvoir) repose sur :
1. **La souveraineté populaire** : le pouvoir vient du peuple
2. **L''État de droit** : les gouvernants sont soumis aux mêmes lois que les gouvernés
3. **La séparation des pouvoirs** (voir ci-dessus)
4. **La protection des droits fondamentaux** : Constitution, CEDH
5. **Le pluralisme** : liberté d''opinion, de presse, d''association, d''opposition

### 2.2 Démocratie représentative

Les citoyens élisent des représentants qui gouvernent en leur nom. En Belgique :
- Elections législatives fédérales (tous les 4 ou 5 ans)
- Elections régionales et communautaires (idem)
- Elections communales (tous les 6 ans)
- Elections européennes (tous les 5 ans)

**Vote obligatoire en Belgique** : une particularité belge et rare dans le monde. Arguments pour : forte participation garantie, représentativité. Arguments contre : déni de liberté, votes "nuls" ou "blancs" par contrainte.

### 2.3 Démocratie directe et participative

**Référendum** : consultation directe de la population sur une question précise. Rare en Belgique ; courant en Suisse.

**Pétition** : tout citoyen peut soumettre une pétition au Parlement. Si elle recueille 25 000 signatures, elle est examinée.

**Budget participatif** : certaines communes laissent les citoyens décider de l''affectation d''une partie du budget.

**Assemblée citoyenne** : groupe de citoyens tirés au sort pour délibérer sur une question de politique publique (expériences en Belgique avec le Parlement citoyen et la Convention citoyenne pour le climat en France).

## 3. Les droits et libertés fondamentaux

### 3.1 Histoire des droits fondamentaux

**Magna Carta** (1215) : première limitation du pouvoir royal par des droits écrits (nobles anglais).

**Déclaration d''indépendance américaine** (1776) : "tous les hommes sont créés égaux et dotés par leur Créateur de certains droits inaliénables".

**Déclaration des droits de l''homme et du citoyen** (France, 1789) : liberté, propriété, sûreté, résistance à l''oppression.

**Déclaration universelle des droits de l''homme** (ONU, 1948) : réponse aux horreurs de la Seconde Guerre mondiale. 30 articles couvrant droits civils, politiques, économiques, sociaux et culturels.

**Convention européenne des droits de l''homme** (1950) : traité contraignant pour les États membres du Conseil de l''Europe. La Cour européenne des droits de l''homme (Strasbourg) peut condamner les États.

### 3.2 Catégories de droits

**Droits civils et politiques** (droits "négatifs" — l''État ne doit pas interférer) :
- Droit à la vie, interdiction de la torture
- Liberté d''expression, de presse, de religion
- Droit à un procès équitable
- Droit de vote

**Droits économiques, sociaux et culturels** (droits "positifs" — l''État doit agir) :
- Droit au travail, au logement, à la santé
- Droit à l''éducation
- Droit à la sécurité sociale

**Droits de solidarité** (3e génération) :
- Droit au développement
- Droit à un environnement sain
- Droit à la paix

### 3.3 La Constitution belge

La Constitution belge (1831, révisée plusieurs fois) consacre :
- Titre II : Droits et libertés des Belges (liberté d''expression, d''enseignement, de religion...)
- L''organisation des institutions (roi, Parlement, gouvernement)
- Le fédéralisme (depuis 1993)

La Cour constitutionnelle belge contrôle la conformité des lois à la Constitution et aux droits fondamentaux.

## 4. La participation citoyenne

### 4.1 Être électeur et élu

**Conditions pour voter en Belgique** : être belge (ou citoyen UE pour élections communales et européennes), avoir 18 ans révolus, ne pas être déchu de ses droits civils.

**Conditions pour être élu** : idem, plus ne pas exercer certaines fonctions incompatibles.

**Le vote** : comment voter ? Comment le dépouillement fonctionne-t-il ? La règle de Hondt pour la répartition des sièges.

### 4.2 Formes de participation non électorale

- **Engagement associatif** : ONG, syndicats, associations de quartier, mouvements sociaux
- **Action collective** : manifestations, grèves, boycotts, pétitions
- **Médias citoyens** : blogs, journalisme citoyen, réseaux sociaux
- **Consommation engagée** : achats responsables, commerce équitable

### 4.3 Les syndicats et le dialogue social

En Belgique, le dialogue social est institutionnalisé :
- **Conseil national du Travail (CNT)** : négocie les conventions collectives
- **Conseil central de l''Économie (CCE)** : avis sur la politique économique
- **Comité de concertation** : coordination entre gouvernements fédéral et fédérés

Les grandes centrales syndicales belges : CSC (chrétienne), FGTB (socialiste), CGSLB (libérale).

## 5. Défis de la démocratie contemporaine

### 5.1 Populisme et démocratie illibérale

Des régimes se réclament de la démocratie tout en concentrant le pouvoir, limitant l''indépendance de la justice et des médias, et stigmatisant les minorités. Hongrie (Orbán), Pologne (PiS), Russie, Turquie.

Le populisme oppose "le peuple pur" à "l''élite corrompue" — rhétorique simplificatrice qui fragilise les institutions libérales.

### 5.2 Abstentionnisme et crise de représentation

Même là où le vote est obligatoire (Belgique), le vote blanc et nul augmente. Partout en démocratie facultative, l''abstentionnisme croît, particulièrement chez les jeunes et les milieux défavorisés.

Causes : sentiment que le vote ne change rien, distance entre élus et citoyens, défiance envers les politiques.

### 5.3 Désinformation et réseaux sociaux

Les réseaux sociaux facilitent la propagation de fausses nouvelles (fake news). Les algorithmes créent des "bulles de filtre" qui renforcent les opinions préexistantes. La désinformation peut influencer les élections (ingérence étrangère, Cambridge Analytica).

**Solutions** : éducation aux médias (media literacy), vérification des faits (fact-checking), régulation des plateformes (Digital Services Act européen), transparence des algorithmes.

### 5.4 La démocratie face à l''urgence climatique

Les décisions climatiques nécessaires (taxation du carbone, interdiction des énergies fossiles) sont impopulaires. Comment une démocratie peut-elle prendre des décisions urgentes face à des intérêts à court terme ? Les assemblées citoyennes sur le climat sont une tentative de réponse.

## 6. Synthèse FSE : être un citoyen actif

La FSE vous a accompagné de la 1e à la 6e secondaire à travers les UAA :
- UAA1 : normes et société
- UAA2 : budget et droit
- UAA3 : consommation
- UAA4 : travail et emploi
- UAA5 : marché du travail
- **UAA6** : le citoyen et l''État ← vous êtes ici

Être un citoyen actif, c''est :
- Voter, mais aussi participer entre les élections
- S''informer à des sources diverses et fiables
- Comprendre ses droits et les faire valoir
- Contribuer à la vie associative et collective
- Penser à long terme et à l''intérêt général, pas seulement à l''intérêt immédiat

"La démocratie est le pire des systèmes de gouvernement, à l''exception de tous les autres." — Winston Churchill',
(SELECT id FROM subjects WHERE name = 'Formation sociale et économique' AND level_id = (SELECT id FROM levels WHERE level_number = 6)),
(SELECT id FROM levels WHERE level_number = 6),
true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES (
'Droits du travail, sécurité sociale et protection sociale en Belgique',
'Étude approfondie du droit du travail et du système de protection sociale belge pour les élèves de 6e secondaire dans le cadre de la FSE UAA6.',
'TEXT',
'# Droits du travail, sécurité sociale et protection sociale en Belgique

## Introduction

La Belgique dispose d''un des systèmes de protection sociale les plus développés au monde. Comprendre ce système — comment il est financé, quelles protections il offre, et quels défis il affronte — est une compétence citoyenne essentielle au terme du secondaire.

## 1. Le droit du travail en Belgique

### 1.1 Les sources du droit du travail

Le droit du travail belge est hiérarchisé :
1. **Constitution** : droit au travail (art. 23)
2. **Lois fédérales** : loi sur les contrats de travail, code du bien-être au travail
3. **Conventions collectives de travail (CCT)** : négociées entre syndicats et employeurs
4. **Règlements de travail** : spécifiques à chaque entreprise
5. **Contrat individuel de travail**

### 1.2 Le contrat de travail

**Éléments essentiels** :
- **Lien de subordination** : l''employé travaille sous l''autorité de l''employeur
- **Rémunération**
- **Prestation de travail**

**Types de contrats** :
- CDI (contrat à durée indéterminée) : protection renforcée, préavis ou indemnité en cas de licenciement
- CDD (contrat à durée déterminée) : fin automatique, limités à 4 renouvellements
- Contrat à temps partiel
- Contrat d''intérimaire (via agence d''intérim)
- Contrat d''étudiant (pour moins de 600 heures/an, cotisations sociales réduites)

### 1.3 Conditions de travail légales

**Durée du travail** : 38 heures/semaine en principe (avec possibilités de flexibilité). Heures supplémentaires majorées.

**Congés** : minimum 20 jours de congé payé pour un travail à temps plein sur un an complet (en Belgique, calculé sur l''année précédente — "pécule de vacances").

**Salaire minimum** : le RMMMG (Revenu Minimum Mensuel Moyen Garanti) est fixé par CCT interprofessionnelle. En 2024 : environ 2.070€ bruts/mois.

**Bien-être au travail** : protection contre le harcèlement, violence, burn-out. Obligation d''un conseiller en prévention dans chaque entreprise.

### 1.4 Licenciement et rupture du contrat

**Licenciement** : l''employeur doit respecter un préavis ou payer une indemnité compensatoire (calculée selon l''ancienneté depuis la loi Elio Di Rupo de 2013 — règle "Claeys").

**Licenciement abusif** : l''employeur doit avoir un motif réel et sérieux pour les ouvriers. Pour les employés : l''employeur n''a pas à justifier, mais peut être condamné à une indemnité supplémentaire si le motif est manifestement déraisonnable.

**Recours** : le tribunal du travail tranche les litiges entre employeurs et travailleurs.

## 2. La sécurité sociale belge

### 2.1 Principe et financement

La sécurité sociale est basée sur la **solidarité** : les cotisations de tous financent les prestations de ceux qui en ont besoin.

**Financement** :
- **Cotisations sociales** des travailleurs (13,07% du salaire brut) et des employeurs (environ 25%)
- **Subventions fédérales**
- **Taxes affectées** (cotisation sur les assurances)

Sur 100€ de coût salarial :
- Environ 68€ = salaire net
- Environ 19€ = cotisations patronales
- Environ 13€ = cotisations personnelles

### 2.2 Les branches de la sécurité sociale

**Assurance maladie-invalidité (AMI)** :
- Remboursement des soins de santé (médecin, hôpital, médicaments)
- Indemnités de maladie si incapacité de travail
- Géré par l''INAMI et les mutuelles

**Assurance chômage** :
- Allocation de chômage si perte involontaire d''emploi
- En Belgique : pas de limite dans le temps (contrairement à la France), mais allocation dégressive
- Conditions : avoir travaillé suffisamment (stage d''attente de 310 jours dans les 18 derniers mois pour quelqu''un de 21-36 ans)

**Pensions** :
- Pension de retraite (légale) : calculée sur la carrière et le salaire
- Âge légal de la retraite : 65 ans (progressivement 67 ans d''ici 2030)
- Les trois piliers : pension légale + pension complémentaire d''entreprise + épargne individuelle

**Allocations familiales** :
- Allocations pour chaque enfant (montant variant selon le rang et les revenus)
- Depuis 2020 : compétence des Communautés (et Régions de Bruxelles)

**Accidents du travail et maladies professionnelles** :
- Indemnisation des travailleurs victimes d''accidents dans le cadre du travail
- Couverture obligatoire par l''employeur (assurance)

### 2.3 L''aide sociale

Pour ceux qui ne remplissent pas les conditions de la sécurité sociale contributive :
- **CPAS (Centre Public d''Action Sociale)** : aide sociale au niveau communal
- **Revenu d''intégration (RI)** : minimum vital pour les personnes sans ressources suffisantes (environ 1.200€/mois pour une personne isolée en 2024)

## 3. Défis du système de protection sociale

### 3.1 Vieillissement de la population

La pyramide des âges s''inverse : plus de retraités pour moins de cotisants. Conséquences :
- Pression sur les pensions (financer plus de bénéficiaires avec moins de cotisations)
- Augmentation des coûts de santé
- Besoin de croissance de la productivité et d''immigration pour maintenir le rapport actifs/inactifs

### 3.2 Travail atypique et protection sociale

L''ubérisation de l''économie (livreurs de repas, chauffeurs Uber, freelances) crée des travailleurs "indépendants" qui ne bénéficient pas de la protection sociale des salariés. Comment adapter la sécurité sociale à de nouvelles formes de travail ?

### 3.3 Fraude sociale

Travail au noir, fausse déclaration de chômage, abus de la maladie : autant de formes de fraude qui pèsent sur le système. L''ONEM, l''INAMI et l''inspection sociale luttent contre ces abus.

### 3.4 Inégalités persistantes

Malgré la protection sociale, des inégalités importantes subsistent en Belgique :
- Espérance de vie : 8 ans de différence entre quartier riche et quartier pauvre à Bruxelles
- Accès aux soins dentaires : sous-consommation dans les milieux défavorisés
- Pauvreté des enfants : 18% des enfants belges vivent sous le seuil de pauvreté

## 4. Citoyen et fiscalité

### 4.1 À quoi servent les impôts ?

Les impôts financent les services publics : enseignement, soins de santé, routes, sécurité, aide sociale, culture. Sans impôts, pas d''État-Providence.

**Impôt des personnes physiques (IPP)** : impôt progressif sur le revenu en Belgique.
Tranches 2024 :
- 0 – 15.200€ : 25%
- 15.200 – 26.830€ : 40%
- 26.830 – 46.440€ : 45%
- Au-delà de 46.440€ : 50%

**TVA** : taxe sur la valeur ajoutée (21% en taux normal, 6% pour alimentation, livres, travaux rénovation).

**Impôt des sociétés** : 25% sur les bénéfices des entreprises.

### 4.2 Évasion et fraude fiscale

La fraude fiscale (dissimuler des revenus) est un délit. L''optimisation fiscale (exploiter légalement les règles pour payer moins) est légale mais éthiquement contestée.

Les "Panama Papers" (2016) et "Pandora Papers" (2021) ont révélé l''ampleur des structures offshore utilisées par les élites mondiales pour éviter l''impôt.

La Belgique perd plusieurs milliards d''euros par an en fraude fiscale selon le SPF Finances.

### 4.3 Justice fiscale

Débat : qui doit payer plus d''impôts ? Les partis de gauche défendent une fiscalité plus progressive (taxer davantage les hauts revenus et la fortune). Les partis libéraux préfèrent alléger la pression fiscale sur les entreprises pour stimuler l''investissement.

En Belgique, le "tax shift" de 2015 (Michel I) a déplacé la fiscalité du travail vers la consommation — débat sur les effets redistributifs.

## 5. Exercices de citoyenneté active

### 5.1 Simulation : réunion du conseil communal

Rôles : maire, échevin, conseiller d''opposition, représentant associatif, habitant. Débattre d''une question locale : création d''un parc, fermeture d''une école, budget communal.

Objectif : pratiquer l''argumentation, la négociation, et comprendre comment fonctionne la démocratie au quotidien.

### 5.2 Analyse d''une CCT

Lire une convention collective de travail sectorielle. Identifier les droits accordés au-delà du minimum légal (jours de congé supplémentaires, primes, conditions spéciales).

### 5.3 Calculer sa fiche de salaire

À partir d''un salaire brut donné :
1. Déduire les cotisations sociales personnelles (13,07%)
2. Calculer le salaire brut imposable
3. Appliquer le barème IPP (simplifié)
4. Obtenir le salaire net approximatif

Comprendre la différence entre salaire brut, coût employeur et salaire net est une compétence citoyenne concrète.',
(SELECT id FROM subjects WHERE name = 'Formation sociale et économique' AND level_id = (SELECT id FROM levels WHERE level_number = 6)),
(SELECT id FROM levels WHERE level_number = 6),
true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES (
'Synthèse FSE : engagement citoyen et projet de vie',
'Cours de synthèse de la Formation sociale et économique de 6e secondaire : bilan des apprentissages FSE, engagement citoyen et construction du projet de vie.',
'TEXT',
'# Synthèse FSE : engagement citoyen et projet de vie

## Introduction

Ce cours de synthèse clôt le parcours FSE du secondaire. Il invite l''élève à faire le lien entre les savoirs acquis et sa propre vie de citoyen, de futur travailleur et de membre de la société. L''objectif n''est pas d''imposer des valeurs mais de fournir les outils pour construire un projet de vie réfléchi et responsable.

## 1. Bilan du parcours FSE (UAA 1-6)

### 1.1 Ce que vous savez maintenant

**Normes et société (UAA1)** : les normes sociales et juridiques régulent la vie collective. Elles varient dans le temps et l''espace, elles peuvent être contestées et modifiées. Le droit est une construction sociale.

**Budget et droit (UAA2)** : gérer un budget personnel, comprendre les contrats du quotidien (bail, crédit, assurance). Le droit civil vous protège — encore faut-il le connaître.

**Consommation (UAA3)** : les choix de consommation ont des impacts économiques (soutenir l''emploi local), sociaux (commerce équitable) et environnementaux (empreinte carbone). Consommer est un acte politique.

**Travail et emploi (UAA4-5)** : le monde du travail est régi par des droits et des obligations. Les syndicats, la concertation sociale, les conventions collectives — des conquêtes historiques qui structurent la relation de travail.

**Le citoyen et l''État (UAA6)** : la démocratie ne se limite pas au vote. L''État-Providence belge est un bien commun à défendre et à adapter. Les droits fondamentaux sont à la fois une protection et une responsabilité.

### 1.2 Les compétences développées

La FSE a développé des compétences transversales :
- **Lecture critique** : analyser un contrat, un article de presse, une publicité, un programme politique
- **Argumentation** : défendre un point de vue avec des faits et des arguments
- **Coopération** : travailler en groupe, gérer les désaccords, trouver des compromis
- **Résolution de problèmes** : face à un litige, identifier les voies de recours appropriées
- **Citoyenneté active** : participer à la vie de la classe, de l''école, de la commune

## 2. Construire son projet de vie

### 2.1 Qu''est-ce qu''un projet de vie ?

Un projet de vie n''est pas un plan rigide mais une orientation réfléchie qui intègre :
- **Valeurs** : ce qui compte vraiment pour vous (famille, justice, créativité, liberté, sécurité...)
- **Aspirations** : ce que vous voulez construire (carrière, relations, engagement)
- **Ressources** : ce que vous avez (compétences, réseau, santé, formation)
- **Contraintes** : ce qui limite vos choix (contexte économique, géographique, familial)

### 2.2 Choix d''orientation

Après la 6e secondaire, les options sont multiples :

**Enseignement supérieur** :
- Université (bachelier 3 ans, master 2 ans) : recherche, professions réglementées (médecin, architecte, avocat)
- Haute École (bachelier professionnalisant) : enseignement, soins infirmiers, ingénieurs industriels
- École supérieure des arts
- Hautes Écoles d''enseignement de promotion sociale

**Insertion directe dans l''emploi** :
- Recherche d''emploi avec le CESS
- Formation professionnelle (IFAPME, Bruxelles-Formation)

**Service civique ou volontariat international** :
- Engagement citoyen avant les études ou le travail
- Service Volontaire Européen (SVE/ESC)

### 2.3 Connaître le marché du travail belge

**Secteurs porteurs** :
- Technologies de l''information et de la communication (pénurie de profils numériques)
- Soins de santé (vieillissement de la population)
- Enseignement (pénurie d''enseignants, particulièrement en mathématiques et sciences)
- Secteur social et aide à la personne
- Développement durable et transition énergétique

**Le marché du travail régional** :
- Taux de chômage structurellement plus élevé en Wallonie et à Bruxelles qu''en Flandre
- La connaissance du néerlandais est un atout majeur à Bruxelles

**L''entrepreneuriat** :
- Créer sa propre entreprise : en Belgique, possible en 24 heures via le guichet d''entreprises
- Statut d''indépendant : liberté mais aussi responsabilité sociale propre
- Économie sociale et coopérative : entreprendre avec une finalité sociale

## 3. Engagement et responsabilité citoyenne

### 3.1 Pourquoi s''engager ?

L''individualisme contemporain peut donner l''impression que l''engagement ne change rien. Les exemples historiques prouvent le contraire : le mouvement des droits civiques, le suffrage féminin, la protection de l''environnement — toutes des conquêtes citoyennes.

"Soyez le changement que vous voulez voir dans le monde." — Gandhi

### 3.2 Formes d''engagement

**Engagement politique** : voter, rejoindre un parti, se présenter à des élections locales (dès 18 ans).

**Engagement associatif** : rejoindre une ONG, une asbl locale, un mouvement de jeunesse (scouts, chiro, jeunes syndicaux).

**Engagement communautaire** : comité de quartier, conseil communal des jeunes, conseil d''établissement scolaire.

**Engagement numérique** : pétitions en ligne, journalisme citoyen, sensibilisation sur les réseaux sociaux. Attention : l''engagement numérique ne remplace pas l''engagement physique.

**Consommation engagée** : commerce équitable, circuits courts, boycott de marques irresponsables.

### 3.3 Être citoyen du monde

La mondialisation interconnecte nos destins. Un citoyen responsable :
- Suit l''actualité internationale
- Comprend l''impact de ses choix de consommation sur des travailleurs à l''autre bout du monde
- S''interroge sur les inégalités mondiales et le rôle de son pays
- Participe à des échanges interculturels

**Les Objectifs de Développement Durable** (ODD de l''ONU, 2015) : 17 objectifs à atteindre d''ici 2030 (fin de la pauvreté, santé, éducation, égalité des genres, énergie propre, action climatique...). Chaque citoyen peut contribuer à son échelle.

## 4. La démocratie comme valeur personnelle

### 4.1 Défense des valeurs démocratiques

La démocratie n''est pas acquise. Des régimes autoritaires restreignent les libertés partout dans le monde. Même en Belgique, certaines valeurs sont contestées : liberté de la presse, indépendance de la justice, droits des minorités.

Être citoyen démocratique, c''est :
- Respecter les droits des autres, même de ceux avec qui on est en désaccord
- Refuser la violence comme moyen politique
- Accepter les résultats des élections, même défavorables
- Défendre l''état de droit face aux tentatives de le contourner

### 4.2 Pensée critique et résistance à la manipulation

La désinformation est la menace démocratique du XXIe siècle. Outils de défense :
1. **Vérifier la source** : qui publie cette information ? Quelle est sa réputation ? A-t-il des intérêts ?
2. **Chercher la confirmation** : d''autres sources fiables confirment-elles ?
3. **Distinguer fait et opinion** : ce qui est affirmé est-il vérifiable ?
4. **Identifier les biais** : le texte est-il partisan ? À quel public s''adresse-t-il ?
5. **Consulter des fact-checkers** : Belga fact-check, Politico, Reuters Fact Check

### 4.3 Dialogue et vivre-ensemble

Dans une société plurielle (diversité d''origines, de religions, d''opinions), le dialogue est une compétence citoyenne cruciale.

Le "dialogue démocratique" n''est pas le consensus mou mais la capacité à débattre avec rigueur et respect, à chercher des compromis sans trahir ses valeurs fondamentales, et à reconnaître que l''autre peut avoir raison.

## 5. Conclusion : le CESS, un point de départ

Le certificat de l''enseignement secondaire supérieur (CESS) que vous obtenez à l''issue de la 6e n''est pas une fin mais un point de départ. Il atteste que vous maîtrisez les savoirs et compétences de base pour poursuivre des études supérieures ou intégrer le monde du travail.

Mais la vie citoyenne ne s''arrête pas à un diplôme. La formation continue — intellectuelle, civique, professionnelle — est une responsabilité de chaque adulte dans une société démocratique en mutation rapide.

"L''éducation est l''arme la plus puissante qu''on puisse utiliser pour changer le monde." — Nelson Mandela

Bonne continuation dans votre vie d''étudiant, de travailleur, et de citoyen.',
(SELECT id FROM subjects WHERE name = 'Formation sociale et économique' AND level_id = (SELECT id FROM levels WHERE level_number = 6)),
(SELECT id FROM levels WHERE level_number = 6),
true
);
