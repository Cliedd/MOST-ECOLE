-- V4: Medical Exam Prep Content – Concours FWB Médecine & Dentisterie
-- 50 entries across 5 subjects (10 per subject)

CREATE TABLE IF NOT EXISTS medical_exam_prep (
    id               BIGSERIAL    PRIMARY KEY,
    subject          VARCHAR(20)  NOT NULL CHECK (subject IN ('BIOLOGY','CHEMISTRY','PHYSICS','MATHEMATICS','REASONING')),
    topic            VARCHAR(255) NOT NULL,
    content          TEXT,
    year             INTEGER,
    is_official      BOOLEAN      NOT NULL DEFAULT FALSE,
    source_url       VARCHAR(500),
    difficulty_level VARCHAR(20)
);

-- ============================================================
-- BIOLOGY (10 entries)
-- ============================================================

INSERT INTO medical_exam_prep (subject, topic, content, year, is_official, difficulty_level)
VALUES (
  'BIOLOGY',
  'La cellule procaryote vs eucaryote',
  $$
**La Cellule : Procaryote vs Eucaryote**

La cellule est l'unité structurale et fonctionnelle du vivant. On distingue deux grands types cellulaires : les procaryotes et les eucaryotes.

**Cellules procaryotes**
Les procaryotes (bactéries et archées) sont les formes de vie les plus anciennes. Leurs caractéristiques principales :
- Absence de noyau délimité par une membrane (l'ADN est dans le nucléoïde, région du cytoplasme)
- ADN circulaire, non associé à des histones (sauf certaines archées)
- Absence d'organites membranaires (mitochondries, réticulum endoplasmique, appareil de Golgi)
- Présence de ribosomes 70S (sous-unités 30S + 50S)
- Taille : 1 à 10 µm
- Paroi cellulaire en peptidoglycane (bactéries) ou pseudopeptidoglycane (archées)
- Multiplication par scissiparité (division binaire)

**Cellules eucaryotes**
Les eucaryotes (protistes, champignons, plantes, animaux) possèdent :
- Un noyau délimité par une double membrane (enveloppe nucléaire) avec des pores nucléaires
- ADN linéaire associé à des histones pour former la chromatine
- Des organites membranaires : mitochondries, réticulum endoplasmique rugueux (RER) et lisse (REL), appareil de Golgi, lysosomes (cellules animales), chloroplastes (végétaux)
- Ribosomes 80S (sous-unités 40S + 60S) dans le cytoplasme ; 70S dans les mitochondries et chloroplastes
- Taille : 10 à 100 µm
- Cytosquelette (microfilaments d'actine, microtubules, filaments intermédiaires)

**Théorie endosymbiotique**
Les mitochondries et chloroplastes seraient d'anciennes bactéries englouties par une cellule hôte eucaryote. Preuves : double membrane, ribosomes 70S, ADN circulaire propre, division par scissiparité.

**Tableau comparatif clé**

| Caractère | Procaryote | Eucaryote |
|---|---|---|
| Noyau | Absent | Présent |
| ADN | Circulaire | Linéaire |
| Ribosomes | 70S | 80S |
| Mitochondries | Absent | Présent |
| Taille | 1–10 µm | 10–100 µm |

**Point concours FWB**
Ce type de question apparaît fréquemment au concours FWB sous forme de QCM demandant d'identifier une caractéristique exclusive d'un type cellulaire. Attention aux pièges : les ribosomes des mitochondries sont de type 70S (comme les procaryotes), même dans une cellule eucaryote.
  $$,
  NULL, FALSE, 'FACILE'
);

INSERT INTO medical_exam_prep (subject, topic, content, year, is_official, difficulty_level)
VALUES (
  'BIOLOGY',
  'La mitose – phases et régulation',
  $$
**La Mitose**

La mitose est le processus de division cellulaire permettant à une cellule mère diploïde (2n) de produire deux cellules filles génétiquement identiques (2n). Elle est essentielle pour la croissance, la réparation et le renouvellement des tissus.

**Les phases de la mitose**

**1. Prophase** : La chromatine se condense progressivement en chromosomes visibles. Chaque chromosome est formé de deux chromatides sœurs unies par le centromère. L'enveloppe nucléaire se désintègre et le fuseau mitotique se forme à partir des centrioles.

**2. Métaphase** : Les chromosomes atteignent leur degré maximal de condensation. Ils s'alignent sur la plaque équatoriale (plaque métaphasique). Les fibres du fuseau s'attachent aux kinétochores situés au niveau des centromères.

**3. Anaphase** : Les chromatides sœurs se séparent simultanément. Les protéines de cohésion (cohésines) sont dégradées. Chaque chromatide migre vers un pôle opposé tirée par les fibres du fuseau.

**4. Télophase** : Les chromosomes fils arrivent aux pôles. L'enveloppe nucléaire se reconstitue. Les chromosomes se décondensent. On obtient deux noyaux fils.

**5. Cytocinèse** : Division du cytoplasme. Chez les cellules animales, un sillon de clivage se forme par contraction d'un anneau d'actine-myosine. Chez les végétaux, une plaque cellulaire se constitue.

**Résultat** : 2 cellules filles à 2n chromosomes, génétiquement identiques à la cellule mère.

**Régulation du cycle cellulaire**
Le cycle cellulaire est contrôlé par des complexes cycline-CDK (Cyclin-Dependent Kinase). Trois checkpoints principaux :
- Checkpoint G1/S : l'ADN est-il endommagé ? La cellule est-elle assez grande ?
- Checkpoint G2/M : la réplication de l'ADN est-elle complète ?
- Checkpoint du fuseau (métaphase) : tous les chromosomes sont-ils bien attachés au fuseau ?

**Point concours FWB – À ne pas confondre**
- Mitose (2n → 2n) : croissance, régénération, reproduction asexuée
- Méiose (2n → n) : formation des gamètes, brassage génétique

Ce type de question apparaît fréquemment au concours FWB sous forme de schéma à compléter ou de QCM sur le nombre de chromosomes à chaque phase.
  $$,
  NULL, FALSE, 'MOYEN'
);

INSERT INTO medical_exam_prep (subject, topic, content, year, is_official, difficulty_level)
VALUES (
  'BIOLOGY',
  'La méiose – gamétogenèse et brassage génétique',
  $$
**La Méiose**

La méiose est une division cellulaire réductionnelle qui produit quatre cellules haploïdes (n) à partir d'une cellule diploïde (2n). Elle est à la base de la reproduction sexuée et est source de diversité génétique.

**Les deux divisions méiotiques**

**Méiose I (division réductionnelle)**
- Prophase I : condensation des chromosomes, appariement des chromosomes homologues (synapsis) pour former les bivalents (tétrades). Crossing-over entre chromatides non-sœurs des chromosomes homologues → brassage intrachromosomique.
- Métaphase I : alignement des bivalents sur la plaque équatoriale avec orientation aléatoire → brassage interchromosomique.
- Anaphase I : séparation des chromosomes homologues (non des chromatides).
- Télophase I + Cytocinèse I : 2 cellules haploïdes à chromosomes bichromatidiens.

**Méiose II (division équationnelle)**
Similaire à une mitose : séparation des chromatides sœurs.
Résultat : 4 cellules haploïdes (n chromosomes monochromatidiens).

**Sources de diversité génétique**
1. **Brassage interchromosomique** : orientation aléatoire des bivalents → 2²³ combinaisons possibles chez l'humain.
2. **Brassage intrachromosomique** : crossing-over en prophase I → recombinaison génétique.
3. **Fécondation** : rencontre aléatoire des gamètes.

**Gamétogenèse**
- **Spermatogenèse** : 1 spermatocyte primaire → 4 spermatozoïdes fonctionnels
- **Ovogenèse** : 1 ovocyte primaire → 1 ovule fonctionnel + 2-3 globules polaires (rejetés)

Les globules polaires permettent de conserver les nutriments dans l'ovule.

**Non-disjonction méiotique**
Si les chromosomes homologues ne se séparent pas correctement → aneuploïdie :
- Trisomie 21 (syndrome de Down) : gamète avec 2 chromosomes 21
- Monosomie X (syndrome de Turner, 45,X)

**Point concours FWB**
Ce type de question apparaît fréquemment au concours FWB : compter le nombre de chromosomes et de chromatides à chaque stade. En métaphase I d'une cellule humaine : 46 chromosomes bichromatidiens = 92 chromatides.
  $$,
  NULL, FALSE, 'DIFFICILE'
);

INSERT INTO medical_exam_prep (subject, topic, content, year, is_official, difficulty_level)
VALUES (
  'BIOLOGY',
  'La synthèse protéique – transcription et traduction',
  $$
**La Synthèse Protéique**

La synthèse protéique transforme l'information génétique (ADN) en protéines fonctionnelles. Elle se déroule en deux étapes principales : la transcription et la traduction.

**1. La Transcription (noyau)**

L'ARN polymérase II reconnaît le promoteur du gène (séquence TATA box) et synthétise un ARN pré-messager (ARN pré-m) complémentaire au brin matrice de l'ADN, dans le sens 5'→3'.

Étapes :
- **Initiation** : assemblage du complexe de transcription sur le promoteur
- **Élongation** : synthèse de l'ARN en déplaçant la bulle de transcription
- **Terminaison** : signal AATAAA → polyadénylation en 3' et libération de l'ARN

**Maturation de l'ARN pré-m** (épissage) :
- Ajout d'une coiffe 7-méthylguanosine en 5'
- Polyadénylation en 3' (queue poly-A)
- Épissage : élimination des introns et jonction des exons par le spliceosome

L'ARNm mature est exporté vers le cytoplasme via les pores nucléaires.

**2. La Traduction (ribosomes)**

Les ribosomes (80S : grande sous-unité 60S + petite 40S) lisent l'ARNm en codons (triplets de nucléotides) dans le sens 5'→3'.

- L'ARN de transfert (ARNt) porte un anticodon complémentaire au codon de l'ARNm et transporte l'acide aminé correspondant
- Codon initiateur : AUG (méthionine)
- Codons stop : UAA, UAG, UGA (ne codent pour aucun acide aminé)

Le ribosome possède trois sites : A (aminoacyl), P (peptidyl), E (exit).

Étapes :
- **Initiation** : assemblage du ribosome sur l'AUG
- **Élongation** : formation des liaisons peptidiques par la peptidyltransférase
- **Terminaison** : reconnaissance du codon stop → libération du polypeptide

**Le code génétique**
- Universel (quasi-identique dans tous les organismes)
- Dégénéré : plusieurs codons pour un même acide aminé (ex. : 6 codons pour la leucine)
- Non ambigu : un codon = un seul acide aminé

**Modifications post-traductionnelles**
Glycosylation, phosphorylation, clivage du peptide signal, repliement dans le réticulum endoplasmique.

**Point concours FWB**
Ce type de question apparaît fréquemment au concours FWB : on donne une séquence d'ADN et demande de trouver la séquence en acides aminés. Maîtriser la lecture du code génétique (table fournie au concours) et les complémentarités A-T(U) et G-C.
  $$,
  NULL, FALSE, 'MOYEN'
);

INSERT INTO medical_exam_prep (subject, topic, content, year, is_official, difficulty_level)
VALUES (
  'BIOLOGY',
  'La génétique mendélienne – lois de Mendel',
  $$
**La Génétique Mendélienne**

Gregor Mendel (1822-1884) a établi les bases de la génétique classique en croisant des pois (Pisum sativum) et en analysant la transmission des caractères héréditaires.

**Vocabulaire essentiel**
- **Allèle** : forme alternative d'un gène (ex. : A et a)
- **Homozygote** : AA ou aa (deux allèles identiques)
- **Hétérozygote** : Aa (deux allèles différents)
- **Dominant** : allèle dont l'effet est visible à l'état hétérozygote (noté en majuscule)
- **Récessif** : allèle dont l'effet n'est visible qu'à l'état homozygote (noté en minuscule)
- **Phénotype** : caractère observable | **Génotype** : composition allélique

**1ère loi de Mendel – Uniformité des hybrides de F1**
Croisement de deux lignées pures (AA × aa) : tous les hybrides de première génération (F1) ont le même phénotype (Aa), celui du caractère dominant.

**2ème loi de Mendel – Disjonction des allèles**
En F2 (Aa × Aa) : ségrégation 3/4 dominant : 1/4 récessif (phénotypes) ou 1/4 AA : 2/4 Aa : 1/4 aa (génotypes). Les allèles se séparent lors de la méiose (dans les gamètes).

**3ème loi de Mendel – Assortiment indépendant**
Pour deux caractères indépendants (gènes sur chromosomes différents) :
AaBb × AaBb → 9 A_B_ : 3 A_bb : 3 aaB_ : 1 aabb (F2)
Cette loi n'est valable que si les deux gènes ne sont pas liés (sur des chromosomes différents).

**Croisement test (test-cross)**
Individu de phénotype dominant × individu aa (homozygote récessif) :
- Si résultat 1:1 → l'individu testé est hétérozygote (Aa)
- Si résultat 100% dominant → l'individu testé est homozygote (AA)

**Exceptions aux lois de Mendel**
- **Codominance** : les deux allèles s'expriment (ex. : groupe sanguin AB)
- **Dominance incomplète** : phénotype intermédiaire (ex. : fleur rose chez les belles-de-nuit)
- **Liaison génique** : gènes sur le même chromosome → pas d'assortiment indépendant
- **Épistasie** : un gène masque l'expression d'un autre

**Point concours FWB**
Ce type de question apparaît fréquemment au concours FWB sous forme d'arbres généalogiques. Méthode : identifier le mode de transmission (dominant/récessif, autosomique/lié à l'X) avant de déduire les génotypes.
  $$,
  NULL, FALSE, 'MOYEN'
);

INSERT INTO medical_exam_prep (subject, topic, content, year, is_official, difficulty_level)
VALUES (
  'BIOLOGY',
  'L''écologie – flux d''énergie dans les écosystèmes',
  $$
**L''Écologie et les Flux d''Énergie**

Un écosystème est l'ensemble formé par une communauté d'organismes vivants (biocénose) et leur environnement physico-chimique (biotope), en interaction.

**Les niveaux trophiques**
Les organismes sont classés selon leur mode d'alimentation :
- **Producteurs (niveau 1)** : végétaux photosynthétiques, algues, cyanobactéries – captent l'énergie solaire
- **Consommateurs primaires (niveau 2)** : herbivores (lapins, chenilles, bovins)
- **Consommateurs secondaires (niveau 3)** : carnivores primaires (renards, grenouilles)
- **Consommateurs tertiaires (niveau 4)** : grands prédateurs (aigles, requins)
- **Décomposeurs** : bactéries et champignons – minéralisent la matière organique

**Flux d'énergie et règle des 10%**
L'énergie ne se recycle pas : elle circule en sens unique, du Soleil jusqu'aux décomposeurs. À chaque transfert trophique, environ 90% de l'énergie est dissipée sous forme de chaleur (respiration, mouvements, chaleur corporelle).

Seulement ~10% de l'énergie d'un niveau est transférée au niveau suivant.

Exemple : 10 000 kJ captés par les végétaux → 1 000 kJ pour les herbivores → 100 kJ pour les carnivores primaires → 10 kJ pour les carnivores secondaires.

**Conséquence pratique** : les chaînes alimentaires longues sont inefficaces énergétiquement. C'est pourquoi il y a beaucoup plus de végétaux que de grands prédateurs dans un écosystème.

**Cycles biogéochimiques**
Contrairement à l'énergie, la matière (carbone, azote, phosphore, eau) est recyclée dans les écosystèmes.
- **Cycle du carbone** : photosynthèse (fixation CO₂) ↔ respiration (libération CO₂) ↔ décomposition
- **Cycle de l'azote** : fixation N₂ → nitrification → dénitrification
- **Cycle de l'eau** : évaporation → précipitation → ruissellement → infiltration

**Productivité primaire**
- **Productivité primaire brute (PPB)** : énergie totale fixée par photosynthèse
- **Productivité primaire nette (PPN)** = PPB − respiration des producteurs
- C'est la PPN qui est disponible pour les consommateurs

**Pyramides écologiques**
- Pyramide des nombres : nombre d'individus à chaque niveau
- Pyramide de biomasse : masse de matière vivante à chaque niveau
- Pyramide d'énergie : toujours en forme de pyramide (énergie décroissante)

**Point concours FWB**
Ce type de question apparaît fréquemment au concours FWB sous forme de calculs de rendement énergétique. Formule clé : rendement = (énergie niveau n+1 / énergie niveau n) × 100%.
  $$,
  NULL, FALSE, 'MOYEN'
);

INSERT INTO medical_exam_prep (subject, topic, content, year, is_official, difficulty_level)
VALUES (
  'BIOLOGY',
  'La photosynthèse – réactions claires et cycle de Calvin',
  $$
**La Photosynthèse**

La photosynthèse est le processus par lequel les organismes autotrophes (végétaux, algues, cyanobactéries) convertissent l'énergie lumineuse en énergie chimique stockée dans les glucides.

**Équation globale**
6 CO₂ + 6 H₂O + énergie lumineuse → C₆H₁₂O₆ + 6 O₂

La photosynthèse se déroule dans les **chloroplastes**, organites délimités par une double membrane, contenant des thylakoïdes empilés en grana et un stroma.

**Phase 1 : Réactions photochimiques (réactions claires)**
Lieu : membranes des thylakoïdes
Source d'énergie : lumière visible (surtout rouge 680 nm et bleu 450 nm)

- **Photosystème II (PSII)** : absorbe la lumière → photolyse de l'eau (H₂O → 2H⁺ + ½O₂ + 2e⁻) → libération d'O₂ et d'électrons énergétiques
- **Chaîne de transport d'électrons** : les électrons passent de PSII à PSI via des transporteurs (plastoquinone, complexe b6f, plastocyanine) → pompage de H⁺ dans le lumen → gradient protonique
- **ATP synthase** : le flux de H⁺ du lumen vers le stroma entraîne la synthèse d'ATP (photophosphorylation)
- **Photosystème I (PSI)** : re-excitation des électrons → réduction du NADP⁺ en NADPH

**Bilan des réactions claires** : ATP + NADPH + O₂ (rejeté)

**Phase 2 : Cycle de Calvin (réactions sombres)**
Lieu : stroma du chloroplaste
Utilise : ATP et NADPH produits par les réactions claires + CO₂ atmosphérique

Étapes :
1. **Carboxylation** : CO₂ + RuBP (5C) → 2 × 3-phosphoglycérate (3-PGA, 3C) – enzyme : RuBisCO
2. **Réduction** : 3-PGA + ATP + NADPH → glycéraldéhyde-3-phosphate (G3P)
3. **Régénération** : G3P + ATP → RuBP (régénération de l'accepteur)

Pour 1 molécule de glucose : 3 tours de cycle, 18 ATP, 12 NADPH, 6 CO₂.

**Facteurs limitants de la photosynthèse**
- Intensité lumineuse (jusqu'au point de saturation)
- Concentration en CO₂
- Température (activité enzymatique)
- Disponibilité en eau

**Plantes C3, C4 et CAM**
- **C3** : fixation directe du CO₂ par RuBisCO (ex. : blé, riz) – sensibles à la photorespiration
- **C4** : préfixation du CO₂ dans les cellules mésophylle avant transfert (ex. : maïs, canne à sucre)
- **CAM** : ouverture des stomates la nuit (ex. : cactus)

**Point concours FWB**
Ce type de question apparaît fréquemment au concours FWB : identifier où se produit chaque réaction, ce qui est consommé/produit, et l'effet d'une variation de facteur sur le taux de photosynthèse.
  $$,
  NULL, FALSE, 'DIFFICILE'
);

INSERT INTO medical_exam_prep (subject, topic, content, year, is_official, difficulty_level)
VALUES (
  'BIOLOGY',
  'La respiration cellulaire – glycolyse et cycle de Krebs',
  $$
**La Respiration Cellulaire**

La respiration cellulaire est l'ensemble des réactions cataboliques permettant d'extraire l'énergie chimique du glucose et de la stocker sous forme d'ATP, en utilisant le dioxygène comme accepteur final d'électrons.

**Équation globale**
C₆H₁₂O₆ + 6 O₂ → 6 CO₂ + 6 H₂O + ~38 ATP (théorique) / ~30-32 ATP (réel)

La respiration cellulaire se déroule en trois étapes principales :

**1. La Glycolyse (cytoplasme)**
Dégradation du glucose (6C) en deux molécules de pyruvate (3C).
- Ne nécessite pas d'O₂ (anaérobie)
- Bilan net : 2 ATP + 2 NADH + 2 pyruvates par molécule de glucose
- Investissement : 2 ATP → retour : 4 ATP (gain net = 2 ATP)

**2. La Transition : Décarboxylation oxydative (matrice mitochondriale)**
Pyruvate → Acétyl-CoA (2C) + CO₂ + NADH
Catalysée par le complexe pyruvate déshydrogénase.
Bilan pour 1 glucose : 2 Acétyl-CoA + 2 CO₂ + 2 NADH

**3. Le Cycle de Krebs / Cycle de l'acide citrique (matrice mitochondriale)**
L'Acétyl-CoA (2C) se condense avec l'oxaloacétate (4C) → citrate (6C).
Le cycle produit par tour :
- 3 NADH
- 1 FADH₂
- 1 ATP (ou GTP)
- 2 CO₂
Pour 1 glucose (2 tours) : 6 NADH + 2 FADH₂ + 2 ATP

**4. La Chaîne respiratoire et Phosphorylation oxydative (membrane interne mitochondriale)**
Les coenzymes réduits (NADH, FADH₂) transfèrent leurs électrons à la chaîne de transport :
- Complexe I (NADH déshydrogénase) → Complexe III (cytochrome bc1) → Complexe IV (cytochrome c oxydase)
- Pompage de protons H⁺ de la matrice vers l'espace intermembranaire
- Gradient de H⁺ → ATP synthase (complexe V) → synthèse d'ATP
- Accepteur final des électrons : O₂ → H₂O

Bilan énergétique :
- NADH ≈ 2,5 ATP | FADH₂ ≈ 1,5 ATP
- Total : ~30-32 ATP par molécule de glucose

**Fermentation (anaérobie)**
En absence d'O₂, le pyruvate est transformé en :
- Lactate (fermentation lactique) : muscles en effort intense, bactéries lactiques
- Éthanol + CO₂ (fermentation alcoolique) : levures
Bilan : seulement 2 ATP net (glycolyse uniquement)

**Point concours FWB**
Ce type de question apparaît fréquemment au concours FWB : localisation des étapes, bilan en ATP/NADH/FADH₂, et comparaison aérobie vs anaérobie. Maîtriser le tableau des bilans partiels.
  $$,
  NULL, FALSE, 'DIFFICILE'
);

INSERT INTO medical_exam_prep (subject, topic, content, year, is_official, difficulty_level)
VALUES (
  'BIOLOGY',
  'Le système nerveux – neurone et potentiel d''action',
  $$
**Le Système Nerveux et le Potentiel d''Action**

Le système nerveux permet la perception, l'intégration et la réponse aux stimuli. Son unité fonctionnelle est le **neurone**.

**Structure du neurone**
- **Corps cellulaire (soma)** : contient le noyau et les organites
- **Dendrites** : prolongements courts qui reçoivent les signaux entrants
- **Axone** : prolongement unique, parfois très long, qui transmet le signal (potentiel d'action)
- **Gaine de myéline** : enveloppe lipidique formée par les cellules de Schwann (SNP) ou les oligodendrocytes (SNC) ; accélère la conduction par sauts aux nœuds de Ranvier

**Potentiel de repos**
Au repos, la membrane du neurone est polarisée : l'intérieur est à −70 mV par rapport à l'extérieur. Maintenu par :
- La pompe Na⁺/K⁺ ATPase : expulse 3 Na⁺ et fait entrer 2 K⁺ (actif)
- Canaux K⁺ à rectification entrante : K⁺ sort passivement
- [Na⁺] élevée à l'extérieur ; [K⁺] élevée à l'intérieur

**Potentiel d'action (PA)**
Le PA est un signal électrique tout-ou-rien déclenché quand le stimulus dépasse le seuil (~−55 mV).

Phases :
1. **Dépolarisation** : ouverture des canaux Na⁺ voltage-dépendants → entrée massive de Na⁺ → potentiel monte vers +30 mV
2. **Repolarisation** : inactivation des canaux Na⁺ + ouverture des canaux K⁺ → sortie de K⁺ → retour vers −70 mV
3. **Hyperpolarisation** : surpassement de −70 mV (période réfractaire absolue et relative)
4. **Retour au repos** : pompe Na⁺/K⁺ restaure les concentrations ioniques

**Propagation du PA**
- Axone non myélinisé : propagation continue (~1 m/s)
- Axone myélinisé : conduction saltatoire de nœud en nœud (~100 m/s)

**Synapse chimique**
Le PA arrive à la terminaison présynaptique → entrée de Ca²⁺ → exocytose des neurotransmetteurs (ex. : acétylcholine, dopamine) → liaison aux récepteurs postsynaptiques → ouverture de canaux ioniques → PPSE (excitateur) ou PPSI (inhibiteur).

**Neurotransmetteurs importants**
- Acétylcholine (ACh) : jonction neuromusculaire, SNC
- Dopamine : motivation, récompense (déficit : Parkinson)
- Sérotonine : humeur, sommeil
- GABA : principal inhibiteur du SNC
- Glutamate : principal excitateur du SNC

**Point concours FWB**
Ce type de question apparaît fréquemment au concours FWB : tracer ou interpréter un graphique du potentiel d'action, identifier les phases et les ions impliqués.
  $$,
  NULL, FALSE, 'DIFFICILE'
);

INSERT INTO medical_exam_prep (subject, topic, content, year, is_official, difficulty_level)
VALUES (
  'BIOLOGY',
  'Le système endocrinien – hormones et rétrocontrôle',
  $$
**Le Système Endocrinien**

Le système endocrinien coordonne les fonctions corporelles par la sécrétion d'hormones dans le sang. Ces messagers chimiques agissent sur des organes cibles possédant des récepteurs spécifiques.

**Classification des hormones**
- **Hormones peptidiques/protéiques** : insuline, glucagon, GH, ADH, ocytocine – hydrosolubles, récepteurs membranaires, second messager (AMPc, IP3)
- **Hormones stéroïdiennes** : cortisol, œstrogènes, testostérone, aldostérone – liposolubles, traversent la membrane, récepteurs intracellulaires/nucléaires
- **Dérivés d'acides aminés** : adrénaline (catécholamine), hormones thyroïdiennes (T3, T4)

**Les grandes glandes endocrines**
- **Hypothalamus** : commande la glande pituitaire via hormones de libération (ex. : GnRH, TRH, CRH)
- **Hypophyse (pituitaire)** : antéhypophyse (TSH, FSH, LH, GH, ACTH, prolactine) + posthypophyse (ADH, ocytocine)
- **Thyroïde** : T3/T4 (métabolisme basal) + calcitonine (↓Ca²⁺ sanguin)
- **Parathyroïdes** : PTH (↑Ca²⁺ sanguin) – antagoniste de la calcitonine
- **Glandes surrénales** : cortex (cortisol, aldostérone) + médulla (adrénaline, noradrénaline)
- **Pancréas** : îlots de Langerhans → cellules β (insuline, ↓glycémie) + cellules α (glucagon, ↑glycémie)
- **Gonades** : ovaires (œstrogènes, progestérone) ; testicules (testostérone)

**Rétrocontrôle (feedback)**

**Rétrocontrôle négatif (−)** : le plus fréquent. La hormone produite inhibe sa propre sécrétion.
Exemple : axe thyréotrope
- Hypothalamus → TRH → Antéhypophyse → TSH → Thyroïde → T3/T4
- ↑T3/T4 inhibe la sécrétion de TRH et TSH (boucle −)

**Rétrocontrôle positif (+)** : plus rare. La hormone stimule sa propre production (amplifie la réponse).
Exemple : pic de LH lors de l'ovulation – les œstrogènes élevés stimulent le pic de LH.

**Régulation de la glycémie**
- **Hypoglycémie** → glucagon → glycogénolyse hépatique → ↑glycémie
- **Hyperglycémie** → insuline → captation du glucose par les cellules → glycogénèse → ↓glycémie
- Diabète type 1 : destruction auto-immune des cellules β → insuffisance d'insuline
- Diabète type 2 : résistance à l'insuline des cellules cibles

**Point concours FWB**
Ce type de question apparaît fréquemment au concours FWB : interpréter un schéma de rétrocontrôle ou prédire l'effet d'une lésion glandulaire sur les taux hormonaux. Ex. : ablation thyroïde → TSH augmente (perte du rétrocontrôle négatif).
  $$,
  NULL, FALSE, 'MOYEN'
);

-- ============================================================
-- CHEMISTRY (10 entries)
-- ============================================================

INSERT INTO medical_exam_prep (subject, topic, content, year, is_official, difficulty_level)
VALUES (
  'CHEMISTRY',
  'La structure atomique – modèle de Bohr et orbitales',
  $$
**La Structure Atomique**

L'atome est constitué d'un noyau (protons + neutrons) entouré d'un nuage électronique.

**Notations fondamentales**
- Z = numéro atomique = nombre de protons (définit l'élément chimique)
- A = nombre de masse = Z + N (N = neutrons)
- Atome neutre : nombre d'électrons = Z
- Isotopes : même Z, A différent (ex. : ¹²C et ¹⁴C ont le même comportement chimique)

**Modèle de Bohr (1913)**
Les électrons gravitent sur des orbites circulaires d'énergie quantifiée (n = 1, 2, 3...).
- Absorption d'un photon : électron monte vers orbite supérieure (état excité)
- Émission d'un photon : électron descend → ΔE = hν
- Énergie En = −13,6/n² eV (valable uniquement pour l'hydrogène)
Limite : ne s'applique qu'aux systèmes monoélectroniques.

**Modèle des orbitales (mécanique quantique)**
Quatre nombres quantiques définissent chaque électron :
- n (principal) : taille/énergie (n = 1, 2, 3...)
- l (secondaire) : forme (0=s sphérique, 1=p haltère, 2=d, 3=f)
- ml (magnétique) : orientation (de −l à +l)
- ms (spin) : +½ ou −½ (principe de Pauli : deux e⁻ par orbitale max)

Capacité max par sous-couche : s→2, p→6, d→10, f→14.

**Règles de remplissage**
1. **Aufbau** : remplissage par énergie croissante → 1s < 2s < 2p < 3s < 3p < 4s < 3d < 4p...
2. **Hund** : chaque orbitale d'une sous-couche est occupée par un seul e⁻ avant appariement
3. **Pauli** : pas deux e⁻ avec les 4 mêmes nombres quantiques

**Configuration électronique**
Fe (Z=26) : 1s² 2s² 2p⁶ 3s² 3p⁶ 4s² 3d⁶ → [Ar] 4s² 3d⁶
Fe²⁺ : [Ar] 3d⁶ (on perd d'abord les électrons 4s)
Fe³⁺ : [Ar] 3d⁵

**Point concours FWB**
Ce type de question apparaît fréquemment au concours FWB : écrire la configuration électronique d'un atome ou ion, identifier les électrons de valence, justifier la position dans le tableau périodique.
  $$,
  NULL, FALSE, 'MOYEN'
);

INSERT INTO medical_exam_prep (subject, topic, content, year, is_official, difficulty_level)
VALUES (
  'CHEMISTRY',
  'La classification périodique – périodicité des propriétés',
  $$
**La Classification Périodique**

Le tableau périodique classe les 118 éléments par Z croissant en périodes (lignes) et groupes (colonnes), révélant la répétition périodique des propriétés.

**Structure du tableau**
- 7 périodes : le numéro = nombre de couches électroniques occupées
- 18 groupes : numéro = configuration de valence → propriétés similaires
  - Groupe 1 : métaux alcalins (ns¹)
  - Groupe 2 : métaux alcalino-terreux (ns²)
  - Groupes 3–12 : métaux de transition (remplissage sous-couche d)
  - Groupe 17 : halogènes (ns²np⁵)
  - Groupe 18 : gaz nobles (ns²np⁶)

**Tendances périodiques**

**Rayon atomique**
Diminue de gauche à droite dans une période (Z↑ → attraction nucléaire↑ → nuage plus contracté)
Augmente de haut en bas dans un groupe (couche supplémentaire → écrantage accru)

**Énergie de première ionisation (EI₁)**
Énergie pour arracher un électron à un atome gazeux à l'état fondamental.
Augmente de gauche à droite ; diminue de haut en bas.
Exceptions notables : EI₁(O) < EI₁(N) car l'appariement des e⁻ dans O crée une répulsion ; EI₁(B) < EI₁(Be) (transition s→p, énergie plus haute).

**Électronégativité (χ, Pauling)**
Augmente de gauche à droite, diminue de haut en bas.
Maximum : F (4,0) ; minimum : Fr (≈0,7)
Détermine la polarité des liaisons : Δχ → type de liaison (ionique / polaire / apolaire).

**Affinité électronique**
Énergie libérée lors du gain d'un e⁻.
Maximale pour les halogènes ; Cl > F (répulsion électronique dans la petite orbitale 2p de F).

**Caractère métallique**
Croît vers le bas et vers la gauche. Les métalloïdes (Si, Ge, As, Sb, Te) forment une diagonale.

**Point concours FWB**
Ce type de question apparaît fréquemment au concours FWB : comparer deux propriétés périodiques, justifier une anomalie (N vs O), placer un élément dans le tableau à partir de sa configuration.
  $$,
  NULL, FALSE, 'FACILE'
);

INSERT INTO medical_exam_prep (subject, topic, content, year, is_official, difficulty_level)
VALUES (
  'CHEMISTRY',
  'Les liaisons chimiques – covalente, ionique, hydrogène',
  $$
**Les Liaisons Chimiques**

**1. Liaison ionique**
Transfert d'électrons entre un métal (χ faible) et un non-métal (χ forte) → cation + anion.
Condition : Δχ > 1,7 (convention)
Ex. : NaCl (Na⁺ + Cl⁻), MgO, CaF₂
Propriétés : réseau cristallin rigide, haut point de fusion, conducteur à l'état fondu ou en solution.

**2. Liaison covalente**
Partage de paire(s) d'électrons entre atomes non-métalliques.
- Simple σ (H–H, C–H)
- Double σ+π (C=O, O₂)
- Triple σ+2π (N≡N, C≡C)
Polaire (0,4 < Δχ < 1,7) : charges partielles δ+ et δ−
Apolaire (Δχ < 0,4) : partage égal

Règle de l'octet : chaque atome tend vers 8 électrons (sauf H:2, Be:4, B:6, et les atomes de la période 3+ qui peuvent dépasser 8).

**Géométrie VSEPR**
| Paires totales | Paires libres | Géométrie | Angle |
|---|---|---|---|
| 2 | 0 | Linéaire | 180° |
| 3 | 0 | Trigonal plan | 120° |
| 4 | 0 | Tétraédrique | 109,5° |
| 4 | 1 | Pyramidal | 107° |
| 4 | 2 | Coudé | 104,5° |

**3. Forces intermoléculaires**

**Liaison hydrogène**
Entre X–H et Y (X, Y ∈ {F, O, N}) ; énergie 10–40 kJ/mol.
Responsable des propriétés particulières de l'eau : Teb = 100°C (élevée pour M = 18 g/mol), tension superficielle, densité maximale à 4°C.
En biologie : ponts H dans l'ADN (A–T : 2, G–C : 3), hélices α et feuillets β des protéines.

**Forces de London**
Dipôles instantanés induits. Toutes les molécules. Croissent avec la polarisabilité et la masse molaire.

**Dipôle-dipôle**
Entre molécules polaires permanentes.

**Polarité moléculaire**
Molécule polaire = liaisons polaires + géométrie asymétrique.
CO₂ linéaire → apolaire même si C=O est polaire.
H₂O coudée → polaire (μ ≠ 0).

**Point concours FWB**
Ce type de question apparaît fréquemment au concours FWB : identifier les interactions qui expliquent les propriétés physiques d'une substance (Teb, solubilité dans l'eau), prédire la géométrie d'une molécule, évaluer la polarité.
  $$,
  NULL, FALSE, 'MOYEN'
);

INSERT INTO medical_exam_prep (subject, topic, content, year, is_official, difficulty_level)
VALUES (
  'CHEMISTRY',
  'La stœchiométrie – calculs de quantités et rendement',
  $$
**La Stœchiométrie**

**La mole**
1 mol = 6,022 × 10²³ entités (NA = constante d'Avogadro)
n = m/M (mol = g / g·mol⁻¹)

**Équilibrage**
Conservation de la masse → même nombre d'atomes de chaque élément des deux côtés.
N₂ + 3H₂ → 2NH₃

**Méthode stœchiométrique**
1. Équilibrer l'équation
2. Convertir en moles
3. Appliquer les rapports molaires (coefficients)
4. Convertir dans l'unité demandée

Ex. : 32 g CH₄ (M=16 g/mol) = 2 mol → dans CH₄ + 2O₂ → CO₂ + 2H₂O
Produit : 2 mol CO₂ = 88 g ; 4 mol H₂O = 72 g

**Réactif limitant**
Le réactif entièrement consommé en premier. Méthode : n(dispo)/coefficient → le plus petit quotient.

Ex. : 3 mol N₂ + 6 mol H₂ → N₂ coeff 1 → 3/1=3 ; H₂ coeff 3 → 6/3=2 → H₂ limitant → 4 mol NH₃.

**Rendement**
η(%) = (masse obtenue / masse théorique) × 100

**Solutions**
Concentration molaire c = n/V (mol/L)
Dilution : c₁V₁ = c₂V₂
Titrage à l'équivalence : n₁/ν₁ = n₂/ν₂

**Gaz parfaits**
PV = nRT (P[Pa], V[m³], T[K], R = 8,314 J·mol⁻¹·K⁻¹)
CNTP (0°C, 1 atm) : Vm = 22,4 L/mol

**Point concours FWB**
Ce type de question apparaît fréquemment au concours FWB : calcul de masse de produit, réactif limitant, rendement. Toujours équilibrer d'abord, convertir en moles, appliquer les ratios.
  $$,
  NULL, FALSE, 'MOYEN'
);

INSERT INTO medical_exam_prep (subject, topic, content, year, is_official, difficulty_level)
VALUES (
  'CHEMISTRY',
  'L''équilibre chimique – constante K et Le Chatelier',
  $$
**L''Équilibre Chimique**

Équilibre dynamique : les vitesses des réactions directe et inverse sont égales ; les concentrations restent constantes.

**Constante Kc**
Pour aA + bB ⇌ cC + dD :
Kc = [C]^c[D]^d / ([A]^a[B]^b) — concentrations à l'équilibre
Kc ne dépend que de la température.
Kc >> 1 : produits favorisés ; Kc << 1 : réactifs favorisés.

**Quotient Q**
Calculé avec concentrations initiales.
Q < K → vers les produits (→) ; Q > K → vers les réactifs (←) ; Q = K → à l'équilibre.

**Principe de Le Chatelier**
Perturbation → déplacement pour s'y opposer.

| Perturbation | Déplacement |
|---|---|
| Ajout d'un réactif | → produits |
| Retrait d'un produit | → produits |
| ↑ pression (gaz) | vers moins de moles gazeuses |
| ↑ T, ΔH < 0 (exo) | → réactifs (K diminue) |
| ↑ T, ΔH > 0 (endo) | → produits (K augmente) |
| Catalyseur | aucun effet sur K ou position |

**Kp**
Kp = Kc(RT)^Δn ; Δn = moles gazeuses produits − moles gazeuses réactifs

**Procédé Haber**
N₂ + 3H₂ ⇌ 2NH₃ (ΔH = −92 kJ/mol)
Haute pression (200 atm, Δn = −2 → vers NH₃) + température modérée (400°C, compromis cinétique/thermodynamique) + catalyseur Fe.

**Produit de solubilité Ks**
AgCl ⇌ Ag⁺ + Cl⁻ : Ks = [Ag⁺][Cl⁻]
Q < Ks : dissolution ; Q > Ks : précipitation.

**Point concours FWB**
Ce type de question apparaît fréquemment au concours FWB : calculer Kc, prédire le déplacement d'équilibre, analyser les conditions optimales d'un procédé industriel.
  $$,
  NULL, FALSE, 'DIFFICILE'
);

INSERT INTO medical_exam_prep (subject, topic, content, year, is_official, difficulty_level)
VALUES (
  'CHEMISTRY',
  'Les acides et bases – pH, pKa, solutions tampons',
  $$
**Les Acides et Bases**

**Brønsted-Lowry**
Acide = donneur de H⁺ ; Base = accepteur de H⁺
Couple acide/base conjugué : HA / A⁻

**Eau**
H₂O + H₂O ⇌ H₃O⁺ + OH⁻ ; Ke = [H₃O⁺][OH⁻] = 10⁻¹⁴ (25°C) → pKe = 14

**pH**
pH = −log[H₃O⁺] ; neutre = 7 ; acide < 7 ; basique > 7 (à 25°C)

**Acides/bases forts** (dissociation totale)
Acides forts : HCl, HNO₃, H₂SO₄, HBr, HI, HClO₄ → pH = −log(Ca)
Bases fortes : NaOH, KOH → pH = 14 + log(Cb)

**Acides/bases faibles**
Ka = [H₃O⁺][A⁻]/[HA] ; pKa = −log Ka
Acide faible : pH ≈ ½(pKa − log Ca)
Base faible : pH ≈ 14 − ½(pKb − log Cb)
pKa + pKb = 14

Valeurs : HF = 3,2 ; CH₃COOH = 4,75 ; H₂CO₃ = 6,35 ; NH₄⁺ = 9,25 ; HCO₃⁻ = 10,33

**Solutions tampons**
Acide faible + sa base conjuguée → résiste aux variations de pH.
**Henderson-Hasselbalch** : pH = pKa + log([A⁻]/[HA])
Zone tampon efficace : pKa ± 1

Ex. : tampon acétate (pKa = 4,75) → efficace pH 3,75 à 5,75.

**Tampons biologiques**
Sang : pH = 7,35–7,45
- Bicarbonate H₂CO₃/HCO₃⁻ (pKa = 6,1) — tampon principal
- Phosphate H₂PO₄⁻/HPO₄²⁻ (pKa = 7,2)
- Hémoglobine
Acidose (pH < 7,35) ; Alcalose (pH > 7,45) → perturbations vitales.

**Titration**
Acide fort / base forte : saut pH à l'équivalence, point équivalent pH = 7.
Acide faible / base forte : demi-équivalence → pH = pKa ; équivalence → pH > 7.

**Point concours FWB**
Ce type de question apparaît fréquemment au concours FWB : calculer pH, appliquer Henderson-Hasselbalch, identifier la composition d'un tampon, interpréter une courbe de titration.
  $$,
  NULL, FALSE, 'DIFFICILE'
);

INSERT INTO medical_exam_prep (subject, topic, content, year, is_official, difficulty_level)
VALUES (
  'CHEMISTRY',
  'La thermochimie – enthalpie et loi de Hess',
  $$
**La Thermochimie**

**Premier principe**
ΔU = Q + W ; à pression constante : ΔH = Qp

**Enthalpie de réaction ΔH**
ΔH < 0 : exothermique (libère chaleur) ; ΔH > 0 : endothermique (absorbe chaleur)
Ex. : combustion CH₄ + 2O₂ → CO₂ + 2H₂O ; ΔH° = −890 kJ/mol

**Enthalpies standard de formation ΔH°f**
Par convention : ΔH°f des éléments purs dans leur état standard = 0.
ΔH°réaction = Σ ΔH°f(produits) − Σ ΔH°f(réactifs)

**Loi de Hess**
L'enthalpie de réaction ne dépend que des états initial et final.
On peut combiner des équations thermochimiques :
(1) C + ½O₂ → CO        ΔH₁ = −110,5 kJ/mol
(2) CO + ½O₂ → CO₂     ΔH₂ = −283,0 kJ/mol
Somme → C + O₂ → CO₂  ΔH = −393,5 kJ/mol
Astuce : si on inverse une réaction, on change le signe de ΔH.

**Enthalpie de liaison**
ΔH ≈ Σ(liaisons rompues) − Σ(liaisons formées)
Valeurs typiques (kJ/mol) : C–H 413 ; O=O 498 ; C=O 799 ; O–H 463 ; N≡N 945

**Calorimétrie**
Q = m × c × ΔT ; eau : c = 4,184 J·g⁻¹·K⁻¹

**Énergie libre de Gibbs**
ΔG = ΔH − TΔS → spontané si ΔG < 0
ΔG° = −RT ln K

Biochimie : ATP + H₂O → ADP + Pi ; ΔG° = −30,5 kJ/mol (réaction de référence du couplage énergétique).

**Point concours FWB**
Ce type de question apparaît fréquemment au concours FWB : application de la loi de Hess, calcul de ΔH° à partir des enthalpies de formation, calorimétrie, interprétation exo/endothermique en contexte biologique.
  $$,
  NULL, FALSE, 'MOYEN'
);

INSERT INTO medical_exam_prep (subject, topic, content, year, is_official, difficulty_level)
VALUES (
  'CHEMISTRY',
  'La cinétique – vitesse de réaction et énergie d''activation',
  $$
**La Cinétique Chimique**

**Vitesse de réaction**
v = −(1/a)d[A]/dt = +(1/c)d[C]/dt (a, c = coefficients stœchiométriques)
Unité : mol·L⁻¹·s⁻¹

**Loi de vitesse**
v = k[A]^m[B]^n
k = constante de vitesse (dépend de T uniquement) ; m, n = ordres partiels (expérimentaux).

**Détermination de l'ordre**
Méthode des vitesses initiales : doubler [A], observer l'effet sur v₀.
- v double → ordre 1 en A
- v quadruple → ordre 2 en A
- v inchangé → ordre 0 en A

**Intégration**
Ordre 0 : [A] = [A]₀ − kt
Ordre 1 : ln[A] = ln[A]₀ − kt → t½ = ln2/k
Ordre 2 : 1/[A] = 1/[A]₀ + kt

**Facteurs**
Concentration ↑ → v ↑ ; Température ↑ → k ↑ ; Catalyseur → Ea ↓ → k ↑ (sans modifier K).

**Équation d'Arrhenius**
k = A · e^(−Ea/RT)
ln(k₂/k₁) = −(Ea/R)(1/T₂ − 1/T₁)
Graphe ln k vs 1/T : pente = −Ea/R → Ea en J/mol.

**Mécanisme et étape limitante**
La réaction globale = succession d'étapes élémentaires. L'étape la plus lente (plus haute barrière d'activation) détermine la vitesse globale. La loi de vitesse de l'étape limitante = loi de vitesse globale.

**Catalyse enzymatique (Michaelis-Menten)**
v = Vmax[S]/(Km + [S])
- Km : affinité enzyme-substrat (concentration [S] pour v = Vmax/2)
- Inhibiteurs compétitifs : augmentent le Km apparent sans changer Vmax.

**Point concours FWB**
Ce type de question apparaît fréquemment au concours FWB : déterminer l'ordre d'une réaction à partir d'un tableau de données, calculer Ea à partir de deux constantes de vitesse à deux températures.
  $$,
  NULL, FALSE, 'DIFFICILE'
);

INSERT INTO medical_exam_prep (subject, topic, content, year, is_official, difficulty_level)
VALUES (
  'CHEMISTRY',
  'La chimie organique – fonctions chimiques et isomérie',
  $$
**La Chimie Organique**

Le carbone (tétravalent) est la base de la chimie du vivant. Il forme des chaînes, des cycles et des structures tridimensionnelles variées.

**Principales fonctions**

| Fonction | Groupe | Exemple | Nom |
|---|---|---|---|
| Alcane | C–C | CH₃–CH₃ | éthane |
| Alcène | C=C | CH₂=CH₂ | éthène |
| Alcyne | C≡C | HC≡CH | éthyne |
| Alcool | –OH | CH₃OH | méthanol |
| Aldéhyde | –CHO | HCHO | méthanal |
| Cétone | C=O (interne) | CH₃COCH₃ | propanone |
| Acide carboxylique | –COOH | CH₃COOH | acide éthanoïque |
| Ester | –COO– | CH₃COOC₂H₅ | éthanoate d'éthyle |
| Amine | –NH₂ | CH₃NH₂ | méthylamine |
| Amide | –CONH₂ | CH₃CONH₂ | éthanamide |

**Isomérie de constitution**
- De chaîne : n-butane vs isobutane (C₄H₁₀)
- De position : 1-propanol vs 2-propanol
- De fonction : éthanol vs diméthyléther (C₂H₆O)

**Stéréoisomérie**

*Z/E (cis/trans)*
Autour de C=C (rotation bloquée).
Z = groupes prioritaires (règle CIP) du même côté.
E = côtés opposés.
Ex. : acide maléique (Z) vs fumarique (E).

*Isomérie optique*
Carbone asymétrique C* = 4 substituants différents.
Énantiomères = images miroir non superposables.
Configuration R (rectus) ou S (sinister) selon règle CIP.
Mélange racémique = 50%R + 50%S → inactif optiquement.

**Biologie**
- Acides aminés : configuration L (sauf glycine sans C*)
- Glucose : D-configuration ; L-glucose non métabolisé
- Médicaments chiraux : souvent un seul énantiomère thérapeutique

**Réactions clés**
- Addition sur alcènes (HX) : règle de Markovnikov (H → C le plus H)
- Estérification : RCOOH + R'OH ⇌ RCOOR' + H₂O (catalyse acide, équilibre)
- Hydrolyse d'ester (saponification en milieu basique : totale)
- Substitution aromatique électrophile (benzène + Br₂/FeBr₃)

**Point concours FWB**
Ce type de question apparaît fréquemment au concours FWB : identifier une fonction dans une molécule biologique, nommer un composé, reconnaître un C* et déterminer le type de stéréoisomérie.
  $$,
  NULL, FALSE, 'MOYEN'
);

INSERT INTO medical_exam_prep (subject, topic, content, year, is_official, difficulty_level)
VALUES (
  'CHEMISTRY',
  'L''oxydoréduction – nombre d''oxydation et cellule électrochimique',
  $$
**L''Oxydoréduction**

**Définitions**
Oxydation = perte d'e⁻ = augmentation du n.o.
Réduction = gain d'e⁻ = diminution du n.o.
Réducteur = se fait oxyder ; Oxydant = se fait réduire.
Mémo : "LEO GER" (Loss Electrons = Oxidation ; Gain Electrons = Reduction)

**Règles du nombre d'oxydation (n.o.)**
1. Élément pur → n.o. = 0
2. Ion monoatomique → n.o. = charge
3. O → n.o. = −2 (sauf peroxyde −1, OF₂ +2)
4. H → n.o. = +1 (sauf hydrure −1)
5. Somme des n.o. dans un composé = 0 ; dans un ion = charge

Ex. : dans Cr₂O₇²⁻ → 2×Cr + 7×(−2) = −2 → Cr = +6

**Équilibrage (méthode des demi-équations)**
1. Écrire les deux demi-équations (oxydation + réduction)
2. Équilibrer : atomes puis O (H₂O) puis H (H⁺) puis charges (e⁻)
3. Multiplier pour égaliser les e⁻
4. Additionner ; vérifier

**Potentiel standard de réduction E°**
Référence : ESH (électrode standard à hydrogène), E° = 0,00 V.
Couples importants :
F₂/F⁻ : +2,87 V | MnO₄⁻/Mn²⁺ : +1,51 V | Cl₂/Cl⁻ : +1,36 V
Cu²⁺/Cu : +0,34 V | H⁺/H₂ : 0,00 V | Zn²⁺/Zn : −0,76 V | Li⁺/Li : −3,04 V

**Cellule galvanique (Daniell)**
Zn(s) | Zn²⁺(aq) || Cu²⁺(aq) | Cu(s)
Anode (−) : Zn → Zn²⁺ + 2e⁻ (oxydation)
Cathode (+) : Cu²⁺ + 2e⁻ → Cu (réduction)
FEM = 0,34 − (−0,76) = 1,10 V
ΔG° = −nFE° = −2 × 96485 × 1,10 ≈ −212 kJ/mol (spontanée)

**Électrolyse**
Réaction non spontanée (E° < 0) forcée par courant externe.
Loi de Faraday : m = (M × I × t) / (n × F)
Applications : raffinage du cuivre, production d'aluminium, galvanoplastie, électrolyse de l'eau.

**Redox biologique**
La chaîne respiratoire = série de transferts d'e⁻ couplés :
NADH → Complexe I → CoQ → Complexe III → Cyt c → Complexe IV → O₂
ΔE° global ≈ +1,1 V → ΔG° ≈ −212 kJ/mol → force motrice pour l'ATP synthase.

**Point concours FWB**
Ce type de question apparaît fréquemment au concours FWB : attribuer les n.o. et identifier oxydant/réducteur, équilibrer une équation redox en milieu acide, calculer la FEM et prévoir la spontanéité.
  $$,
  NULL, FALSE, 'DIFFICILE'
);

-- ============================================================
-- PHYSIQUE – 10 fiches de préparation au concours FWB
-- ============================================================

INSERT INTO medical_exam_prep (subject, topic, content, year, is_official, difficulty_level) VALUES
('PHYSICS', 'Cinématique : mouvement rectiligne uniforme et uniformément accéléré',
$$Cinématique – Mouvement en translation

**MRU (Mouvement Rectiligne Uniforme)**
Vitesse constante v ; accélération a = 0.
x(t) = x₀ + v·t
v = Δx/Δt

**MRUA (Mouvement Rectiligne Uniformément Accéléré)**
Accélération constante a.
v(t) = v₀ + a·t
x(t) = x₀ + v₀·t + ½a·t²
v² = v₀² + 2a·(x − x₀)

**Chute libre** (a = g = 9,81 m/s² vers le bas, résistance air négligée)
v(t) = g·t (si v₀ = 0)
h = ½g·t²  →  t = √(2h/g)

**Graphes clés**
- MRU : x–t linéaire ; v–t horizontal ; a–t sur axe 0.
- MRUA : x–t parabolique ; v–t linéaire ; a–t horizontal.

**Exemple type concours**
Une balle lâchée du repos depuis h = 20 m.
t = √(2×20/9,81) ≈ 2,02 s ; v_impact = 9,81×2,02 ≈ 19,8 m/s.

**Point concours FWB**
Tracer les graphes x(t), v(t), a(t) ; distinguer MRU et MRUA ; calculer durée ou hauteur de chute libre.$$,
NULL, FALSE, 'FACILE'),

('PHYSICS', 'Dynamique : lois de Newton et applications',
$$Dynamique – Lois de Newton

**1ère loi (inertie)**
Tout corps reste en repos ou en MRU si la somme des forces extérieures est nulle (référentiel galiléen).

**2ème loi (fondamentale)**
ΣF = m·a  (vecteur)
En composantes : ΣFₓ = m·aₓ ; ΣFᵧ = m·aᵧ

**3ème loi (action–réaction)**
Si A exerce F_AB sur B, alors B exerce F_BA = −F_AB sur A (égale, opposée, même droite d'action).

**Forces courantes**
- Poids : P = m·g (vers le bas)
- Normale : N ⊥ surface (vers la surface)
- Frottement cinétique : f = μₖ·N (opposé au mouvement)
- Tension : T le long de la corde

**Plan incliné (angle θ)**
Composante le long du plan : P·sinθ − f = m·a
Normale : N = m·g·cosθ → f = μₖ·m·g·cosθ
Condition de glissement : tanθ > μₛ

**Point concours FWB**
Schéma de corps libre, décomposition des forces, écriture de ΣF = ma par axe, résolution numérique.$$,
NULL, FALSE, 'MOYEN'),

('PHYSICS', 'Travail, énergie cinétique et théorème travail-énergie',
$$Énergie mécanique

**Travail d'une force constante**
W = F·d·cosθ  (J = N·m)
θ = angle entre F et déplacement.
W > 0 : force motrice ; W < 0 : force résistante ; W = 0 : force ⊥ déplacement.

**Énergie cinétique**
Ec = ½m·v²  (J)

**Théorème travail–énergie**
ΣW = ΔEc = Ec_finale − Ec_initiale

**Énergie potentielle de pesanteur**
Ep = m·g·h  (référence choisie librement)

**Énergie mécanique**
Em = Ec + Ep

**Conservation** (sans frottement) : Em = constante
Avec frottement : ΔEm = W_frottement (négatif)

**Puissance**
P = W/t = F·v  (W = J/s)

**Exemple type**
Objet m = 2 kg, v₀ = 0, glisse sans frottement depuis h = 5 m.
v_bas = √(2gh) = √(2×9,81×5) ≈ 9,9 m/s
Ec_bas = Ep_haut = 2×9,81×5 = 98,1 J

**Point concours FWB**
Appliquer le théorème travail–énergie ; distinguer énergie conservée vs dissipée.$$,
NULL, FALSE, 'MOYEN'),

('PHYSICS', 'Quantité de mouvement et chocs',
$$Quantité de mouvement et chocs

**Quantité de mouvement (impulsion cinétique)**
p = m·v  (kg·m/s ; vecteur)

**Conservation de la quantité de mouvement**
Si ΣF_ext = 0 (système isolé) :
p_total_avant = p_total_après
m₁v₁ + m₂v₂ = m₁v₁' + m₂v₂'

**Types de chocs**
- Élastique : conservation de p ET de Ec.
  v₁' = ((m₁−m₂)v₁ + 2m₂v₂)/(m₁+m₂)
  v₂' = ((m₂−m₁)v₂ + 2m₁v₁)/(m₁+m₂)
- Parfaitement inélastique : conservation de p seulement ; les corps restent solidaires.
  v_commune = (m₁v₁ + m₂v₂)/(m₁+m₂)
  Energie perdue : ΔEc = Ec_avant − Ec_après

**Impulsion**
J = F·Δt = Δp

**Exemple**
m₁ = 3 kg à 4 m/s percute m₂ = 1 kg au repos, choc parfaitement inélastique.
v_commune = (3×4 + 1×0)/4 = 3 m/s
ΔEc = ½×3×16 − ½×4×9 = 24 − 18 = 6 J perdues.

**Point concours FWB**
Identifier le type de choc, écrire la conservation de p, calculer vitesse finale.$$,
NULL, FALSE, 'MOYEN'),

('PHYSICS', 'Électricité : lois d''Ohm, circuits série et parallèle',
$$Électricité – Circuits en courant continu

**Grandeurs fondamentales**
- Tension U (V) : différence de potentiel entre deux points.
- Intensité I (A) : débit de charge électrique.
- Résistance R (Ω) : opposition au passage du courant.

**Loi d'Ohm**
U = R·I  ↔  R = U/I  ↔  I = U/R

**Puissance électrique**
P = U·I = R·I² = U²/R  (W)
Énergie : E = P·t  (J ou kWh)

**Résistances en série**
R_eq = R₁ + R₂ + … + Rₙ
I identique dans chaque résistance ; U_total = ΣUᵢ.

**Résistances en parallèle**
1/R_eq = 1/R₁ + 1/R₂ + … + 1/Rₙ
U identique aux bornes de chaque branche ; I_total = ΣIᵢ.
Cas 2 résistances : R_eq = R₁R₂/(R₁+R₂)

**Lois de Kirchhoff**
- Nœuds : ΣI_entrant = ΣI_sortant
- Mailles : Σ(U sources) = Σ(R·I) sur la maille

**Exemple**
R₁ = 4 Ω et R₂ = 6 Ω en série, U = 20 V.
I = 20/(4+6) = 2 A ; U₁ = 8 V ; U₂ = 12 V.

**Point concours FWB**
Calculer R_eq série/parallèle, appliquer Kirchhoff, calculer puissance dissipée.$$,
NULL, FALSE, 'MOYEN'),

('PHYSICS', 'Champ et force électrostatiques – loi de Coulomb',
$$Électrostatique – Loi de Coulomb et champ électrique

**Loi de Coulomb**
F = k·|q₁|·|q₂|/r²
k = 8,99×10⁹ N·m²·C⁻²
Charges de même signe → répulsion ; signes opposés → attraction.

**Champ électrique**
E = F/q₀ = k·Q/r²  (N/C ou V/m)
Direction : vers q₀ si Q < 0, à l'opposé si Q > 0.

**Travail et potentiel**
W_A→B = q·(V_A − V_B)
V = k·Q/r  (potentiel d'une charge ponctuelle)
U_AB = V_A − V_B

**Condensateur plan**
E = U/d ; C = ε₀·ε_r·S/d  (F = C/V)
Énergie stockée : E_c = ½·C·U²

**Analogie gravitationnelle**
Loi de Coulomb ↔ Loi de Newton (F = G·m₁m₂/r²) ; même structure mathématique.

**Point concours FWB**
Calculer la force de Coulomb, le champ électrique, le potentiel et le travail pour déplacer une charge dans un champ uniforme.$$,
NULL, FALSE, 'DIFFICILE'),

('PHYSICS', 'Ondes mécaniques et sonores – propriétés et équation',
$$Ondes mécaniques et sonores

**Définition**
Une onde est la propagation d'une perturbation (énergie) sans transport de matière.

**Grandeurs caractéristiques**
- Période T (s) : durée d'un cycle complet.
- Fréquence f = 1/T (Hz).
- Longueur d'onde λ (m) : distance entre deux points en phase.
- Vitesse de propagation v = λ·f = λ/T (m/s).

**Types d'ondes**
- Transversales : perturbation ⊥ propagation (ex. vagues, lumière).
- Longitudinales : perturbation ∥ propagation (ex. son).

**Son**
v_son ≈ 340 m/s dans l'air à 20°C.
Intensité sonore L = 10·log(I/I₀) dB ; I₀ = 10⁻¹² W/m².
Effet Doppler : f_observé = f_source × (v ± v_obs)/(v ∓ v_source).

**Réflexion, réfraction, diffraction, interférence**
- Réflexion : angle d'incidence = angle de réflexion.
- Réfraction : n₁·sinθ₁ = n₂·sinθ₂ (Snell-Descartes).
- Interférences constructives : δ = kλ ; destructives : δ = (2k+1)λ/2.

**Point concours FWB**
Calculer λ, f, v à partir de deux des trois ; analyser l'effet Doppler ; distinguer réflexion et réfraction.$$,
NULL, FALSE, 'MOYEN'),

('PHYSICS', 'Optique géométrique : lentilles convergentes et formation d''image',
$$Optique géométrique – Lentilles

**Modèle de rayon lumineux**
La lumière se propage en ligne droite dans un milieu homogène.

**Lentille convergente (convexe)**
Distance focale f > 0 ; foyer image F' à distance f derrière la lentille.

**Relation de conjugaison (Descartes)**
1/OA' − 1/OA = 1/f'   (convention algébrique)
OA = distance objet (négatif si objet à gauche) ; OA' = distance image.

**Grandissement**
G = OA'/OA = taille image / taille objet
|G| > 1 : image agrandie ; |G| < 1 : image réduite.
G < 0 : image renversée ; G > 0 : image droite.

**Cas selon la position de l'objet**
| Position objet | Nature de l'image |
|---|---|
| À l'infini | Image au foyer, réelle, renversée, ponctuelle |
| Au-delà de 2F | Réelle, renversée, réduite |
| En 2F | Réelle, renversée, même taille |
| Entre F et 2F | Réelle, renversée, agrandie |
| Entre F et lentille | Virtuelle, droite, agrandie (loupe) |

**Lentille divergente**
f < 0 ; image toujours virtuelle, droite, réduite.

**Point concours FWB**
Construire l'image avec 2-3 rayons particuliers ; calculer position et grandissement avec la formule de conjugaison.$$,
NULL, FALSE, 'MOYEN'),

('PHYSICS', 'Thermodynamique : gaz parfaits et lois de la thermodynamique',
$$Thermodynamique des gaz parfaits

**Loi des gaz parfaits**
PV = nRT
P en Pa ; V en m³ ; n en mol ; R = 8,314 J·mol⁻¹·K⁻¹ ; T en K (T_K = T_°C + 273).

**Lois de Gay-Lussac, Charles, Boyle-Mariotte**
- Isotherme (T cste) : P₁V₁ = P₂V₂
- Isobare (P cste) : V₁/T₁ = V₂/T₂
- Isochore (V cste) : P₁/T₁ = P₂/T₂

**Premier principe**
ΔU = Q + W
Q : chaleur échangée (positive si reçue) ; W : travail reçu.
Pour un gaz parfait : ΔU = n·Cᵥ·ΔT.

**Deuxième principe**
L'entropie S d'un système isolé ne peut que croître (ΔS ≥ 0).
Rendement d'un moteur de Carnot : η = 1 − T_froide/T_chaude (en K).

**Transferts de chaleur**
- Conduction : Q = k·S·ΔT·t/e
- Convection : mouvement de fluide chaud.
- Rayonnement : E = σ·T⁴ (loi de Stefan-Boltzmann).

**Chaleur massique**
Q = m·c·ΔT ; c_eau = 4186 J·kg⁻¹·K⁻¹.

**Point concours FWB**
Appliquer PV = nRT ; distinguer les transformations (isotherme, isobare, isochore, adiabatique) ; calculer un rendement de Carnot.$$,
NULL, FALSE, 'DIFFICILE'),

('PHYSICS', 'Radioactivité et physique nucléaire',
$$Physique nucléaire et radioactivité

**Structure du noyau**
- Protons (Z) + neutrons (N) → masse atomique A = Z + N.
- Notation : ᴬzX (ex. ¹⁴₆C).
- Isotopes : même Z, différents A.

**Énergie de liaison**
ΔE = Δm·c² (Δm = défaut de masse en kg ; c = 3×10⁸ m/s).
Énergie de liaison/nucléon ≈ 8 MeV pour les noyaux stables les plus lourds.

**Types de désintégration**
| Type | Émission | Modification du noyau |
|---|---|---|
| α | ⁴₂He | A−4, Z−2 |
| β⁻ | électron + antineutrino | A inchangé, Z+1 |
| β⁺ | positron + neutrino | A inchangé, Z−1 |
| γ | photon (EM) | pas de changement de A ni Z |

**Loi de désintégration radioactive**
N(t) = N₀·e^(−λt)  ; λ = constante de désintégration.
Demi-vie T½ = ln2/λ ≈ 0,693/λ.
Après n demi-vies : N = N₀/2ⁿ.

**Activité**
A = λ·N  (Becquerel = 1 désintégration/s).

**Fission et fusion**
- Fission : ²³⁵U + n → produits + 2-3n + énergie (~200 MeV/fission).
- Fusion : ²H + ³H → ⁴He + n + 17,6 MeV.

**Applications médicales**
TEP, scintigraphie, radiothérapie, radiodiagnostic (¹³¹I, ⁹⁹ᵐTc).

**Point concours FWB**
Écrire et équilibrer les équations de désintégration ; calculer la quantité restante après n demi-vies ; interpréter la courbe de désintégration.$$,
NULL, FALSE, 'DIFFICILE');

-- ============================================================
-- MATHÉMATIQUES – 10 fiches de préparation au concours FWB
-- ============================================================

INSERT INTO medical_exam_prep (subject, topic, content, year, is_official, difficulty_level) VALUES
('MATHEMATICS', 'Fonctions réelles : définition, domaine, image et représentation graphique',
$$Fonctions réelles – Fondements

**Définition**
Une fonction f : D → ℝ associe à tout x ∈ D (domaine) un unique y = f(x) ∈ ℝ.

**Domaine de définition**
- Fraction : dénominateur ≠ 0.
- Racine carrée : radicande ≥ 0.
- Logarithme : argument > 0.
- Combinaison : intersection des conditions.

**Parité**
- Paire : f(−x) = f(x) ; symétrie par rapport à l'axe Oy.
- Impaire : f(−x) = −f(x) ; symétrie centrale en O.

**Sens de variation**
- Croissante sur I si x₁ < x₂ ⇒ f(x₁) < f(x₂).
- Décroissante si x₁ < x₂ ⇒ f(x₁) > f(x₂).

**Fonctions élémentaires**
| Fonction | Expression | Domaine | Propriétés |
|---|---|---|---|
| Affine | ax+b | ℝ | monotone |
| Quadratique | ax²+bx+c | ℝ | parabole |
| Racine carrée | √x | [0,+∞[ | croissante |
| Valeur absolue | |x| | ℝ | minimale en 0 |
| Exponentielle | eˣ | ℝ | toujours > 0 |
| Logarithme | ln(x) | ]0,+∞[ | croissante |

**Point concours FWB**
Déterminer le domaine, les variations, la parité, représenter graphiquement ; identifier extrema locaux.$$,
NULL, FALSE, 'FACILE'),

('MATHEMATICS', 'Dérivées : règles de dérivation et applications',
$$Dérivées – Règles et applications

**Définition**
f''(x) = lim_{h→0} [f(x+h) − f(x)] / h
Interprétation géométrique : pente de la tangente en x.

**Dérivées usuelles**
| f(x) | f''(x) |
|---|---|
| c (constante) | 0 |
| xⁿ | n·xⁿ⁻¹ |
| eˣ | eˣ |
| ln(x) | 1/x |
| sin(x) | cos(x) |
| cos(x) | −sin(x) |
| tan(x) | 1/cos²(x) = 1+tan²(x) |

**Règles de calcul**
- Linéarité : (af + bg)'' = af'' + bg''
- Produit : (f·g)'' = f''·g + f·g''
- Quotient : (f/g)'' = (f''·g − f·g'') / g²
- Composition (chaîne) : (f∘g)''(x) = f''(g(x))·g''(x)

**Étude de fonction**
1. Domaine → 2. Parité → 3. Limites aux bornes → 4. Dériver → 5. Tableau de signes de f'' → 6. Extrema → 7. Tableau de variations → 8. Graphe

**Extrema**
f''(x₀) = 0 et changement de signe → extremum local.
f''(x₀) > 0 → minimum local ; f''(x₀) < 0 → maximum local.

**Point concours FWB**
Dériver des fonctions composées, déterminer les extrema, dresser le tableau de variations complet.$$,
NULL, FALSE, 'MOYEN'),

('MATHEMATICS', 'Limites et continuité des fonctions',
$$Limites et continuité

**Définition intuitive**
lim_{x→a} f(x) = L signifie que f(x) se rapproche arbitrairement de L quand x → a.

**Règles opératoires**
lim(f + g) = lim f + lim g ; lim(f·g) = lim f · lim g ; lim(f/g) = lim f / lim g (si ≠ 0).

**Formes indéterminées (FI)**
0/0 ; ∞/∞ ; ∞−∞ ; 0·∞ ; 1^∞ ; 0⁰ ; ∞⁰
→ lever la FI par factorisation, L''Hôpital, substitution.

**Règle de L''Hôpital (FI 0/0 ou ∞/∞)**
lim f/g = lim f''/g'' (si cette limite existe).

**Limites importantes à connaître**
lim_{x→0} sin(x)/x = 1
lim_{x→0} (eˣ−1)/x = 1
lim_{x→+∞} x^n·e^(−x) = 0 (exponentielle l''emporte sur tout polynôme)
lim_{x→+∞} ln(x)/x^α = 0 (pour α > 0)

**Continuité**
f est continue en a si lim_{x→a} f(x) = f(a).
Théorème des valeurs intermédiaires (TVI) : si f continue sur [a,b] et k entre f(a) et f(b), ∃c ∈ ]a,b[ : f(c) = k.

**Asymptotes**
- Verticale x = a : lim_{x→a} |f(x)| = +∞
- Horizontale y = L : lim_{x→±∞} f(x) = L
- Oblique y = mx+p : m = lim f(x)/x ; p = lim [f(x)−mx]

**Point concours FWB**
Calculer des limites avec FI, identifier les asymptotes, appliquer le TVI.$$,
NULL, FALSE, 'MOYEN'),

('MATHEMATICS', 'Intégration : primitives, intégrale définie et applications',
$$Intégration – Primitives et intégrale définie

**Primitive**
F est une primitive de f si F'' = f.
Toute primitive de f s''écrit F(x) + C (C ∈ ℝ).

**Primitives usuelles**
| f(x) | F(x) |
|---|---|
| xⁿ (n ≠ −1) | xⁿ⁺¹/(n+1) |
| 1/x | ln|x| |
| eˣ | eˣ |
| sin(x) | −cos(x) |
| cos(x) | sin(x) |
| 1/cos²x | tan(x) |

**Techniques d''intégration**
- Linéarité : ∫(af+bg)dx = a∫fdx + b∫gdx
- Substitution : u = g(x) → du = g''(x)dx
- Intégration par parties : ∫u·dv = u·v − ∫v·du

**Intégrale définie (Riemann)**
∫_a^b f(x)dx = [F(x)]_a^b = F(b) − F(a)

**Théorème fondamental du calcul**
Si F est une primitive de f, alors ∫_a^b f(x)dx = F(b) − F(a).

**Aire entre deux courbes**
A = ∫_a^b |f(x) − g(x)| dx

**Applications biologiques**
Calcul de concentration d''un médicament, modèles de croissance, probabilités (densité).

**Point concours FWB**
Calculer une intégrale par substitution ou IPP ; calculer une aire entre deux courbes ; trouver une primitive d''une fonction composée.$$,
NULL, FALSE, 'MOYEN'),

('MATHEMATICS', 'Combinatoire, probabilités et loi normale',
$$Probabilités et statistiques

**Combinatoire**
- Arrangements A^p_n = n!/(n−p)! (ordre compte, sans répétition)
- Permutations : P_n = n!
- Combinaisons : C^p_n = n! / (p!(n−p)!) = "n parmi p"

**Probabilité d''un événement**
P(A) = nombre de cas favorables / nombre de cas possibles (si équiprobables)
0 ≤ P(A) ≤ 1 ; P(Ā) = 1 − P(A)

**Règles de calcul**
- Addition : P(A∪B) = P(A) + P(B) − P(A∩B)
- Multiplication : P(A∩B) = P(A)·P(B|A)
- Indépendance : P(A∩B) = P(A)·P(B)

**Loi binomiale**
X ~ B(n,p) : P(X=k) = C^k_n · pᵏ · (1−p)^(n−k)
E(X) = np ; Var(X) = np(1−p)

**Loi normale N(μ,σ²)**
Courbe en cloche, symétrique autour de μ.
68% des valeurs dans [μ−σ ; μ+σ]
95% dans [μ−2σ ; μ+2σ]
99,7% dans [μ−3σ ; μ+3σ]
Variable centrée réduite : Z = (X−μ)/σ ~ N(0,1)

**Tests statistiques courants au concours**
- Lire une table de la loi normale.
- Calculer une probabilité P(X ≤ x).
- Intervalle de confiance pour la moyenne.

**Point concours FWB**
Calculer des probabilités combinatoires, lire la table de la loi normale, calculer E(X) et σ pour une loi binomiale.$$,
NULL, FALSE, 'DIFFICILE'),

('MATHEMATICS', 'Trigonométrie : fonctions, identités et résolution d''équations',
$$Trigonométrie

**Cercle trigonométrique**
Rayon 1, angles en radians : 0, π/6, π/4, π/3, π/2, π, 3π/2, 2π.
Conversion : rad = degrés × π/180.

**Valeurs exactes**
| θ | 0 | π/6 | π/4 | π/3 | π/2 |
|---|---|---|---|---|---|
| sin | 0 | 1/2 | √2/2 | √3/2 | 1 |
| cos | 1 | √3/2 | √2/2 | 1/2 | 0 |
| tan | 0 | √3/3 | 1 | √3 | ∞ |

**Identités fondamentales**
sin²θ + cos²θ = 1
1 + tan²θ = 1/cos²θ
sin(a±b) = sina·cosb ± cosa·sinb
cos(a±b) = cosa·cosb ∓ sina·sinb
sin(2a) = 2·sina·cosa
cos(2a) = cos²a − sin²a = 1 − 2sin²a = 2cos²a − 1

**Équations trigonométriques**
sinx = k → x = arcsin(k) + 2kπ ou x = π − arcsin(k) + 2kπ
cosx = k → x = ±arccos(k) + 2kπ

**Applications**
Triangle quelconque :
- Loi des sinus : a/sinA = b/sinB = c/sinC = 2R
- Loi des cosinus : a² = b² + c² − 2bc·cosA

**Point concours FWB**
Résoudre des équations trigonométriques ; utiliser les formules d''addition ; calculer les côtés d''un triangle par la loi des cosinus.$$,
NULL, FALSE, 'MOYEN'),

('MATHEMATICS', 'Logarithmes et exponentielles : propriétés et équations',
$$Logarithmes et exponentielles

**Fonction exponentielle**
f(x) = eˣ (e ≈ 2,718)
Domaine : ℝ ; image : ]0,+∞[
Propriétés :
- e^(a+b) = eᵃ·eᵇ
- e^(a−b) = eᵃ/eᵇ
- (eᵃ)ᵇ = e^(ab)
- e⁰ = 1 ; (e^x)'' = eˣ

**Logarithme naturel (ln)**
ln = réciproque de exp : ln(eˣ) = x ; e^(lnx) = x
Domaine : ]0,+∞[ ; image : ℝ
Propriétés :
- ln(ab) = ln(a) + ln(b)
- ln(a/b) = ln(a) − ln(b)
- ln(aⁿ) = n·ln(a)
- ln(1) = 0 ; ln(e) = 1
- (ln x)'' = 1/x

**Résolution d''équations**
Pour résoudre eˣ = k : x = ln(k)   (k > 0)
Pour résoudre ln(x) = k : x = eᵏ

**Croissance comparée**
lim_{x→+∞} xⁿ/eˣ = 0 (exponentielle l''emporte)
lim_{x→+∞} ln(x)/xⁿ = 0 (polynôme l''emporte sur ln)

**Équations du type aˣ = b**
aˣ = b → x·ln(a) = ln(b) → x = ln(b)/ln(a)

**Applications en biologie**
- Croissance bactérienne : N(t) = N₀·eʳᵗ
- Décroissance radioactive : N(t) = N₀·e^(−λt)
- pH = −log₁₀[H₃O⁺]

**Point concours FWB**
Résoudre des équations et inéquations exponentielles/logarithmiques ; calculer des limites ; modéliser une croissance exponentielle.$$,
NULL, FALSE, 'MOYEN'),

('MATHEMATICS', 'Nombres complexes : forme algébrique, trigonométrique et opérations',
$$Nombres complexes

**Définition**
i² = −1 ; i = √(−1)
Forme algébrique : z = a + bi (a = partie réelle Re(z) ; b = partie imaginaire Im(z))

**Opérations en forme algébrique**
(a+bi) ± (c+di) = (a±c) + (b±d)i
(a+bi)(c+di) = (ac−bd) + (ad+bc)i
Conjugué : z̄ = a − bi ; z·z̄ = a² + b² = |z|²
Division : z₁/z₂ = (z₁·z̄₂) / |z₂|²

**Module et argument**
|z| = √(a²+b²) (distance à l''origine)
arg(z) = θ tel que cos θ = a/|z|, sin θ = b/|z|

**Forme trigonométrique (polaire)**
z = r·(cosθ + i·sinθ) = r·e^(iθ)
r = |z| ; θ = arg(z)

**Formule de Moivre**
(r·e^(iθ))ⁿ = rⁿ·e^(inθ)

**Applications**
- Résolution z² = −4 : z = ±2i
- Résolution z² + z + 1 = 0 : discriminant < 0 → z = (−1 ± i√3)/2
- Racines nièmes de l''unité : e^(2ikπ/n), k = 0,1,…,n−1

**Interprétation géométrique**
Plan de Gauss (Argand) : Re(z) en abscisse, Im(z) en ordonnée.
Multiplication par eⁱᶿ = rotation d''angle θ.

**Point concours FWB**
Passer de la forme algébrique à trigonométrique ; multiplier/diviser en forme polaire ; résoudre des équations du second degré à coefficients réels.$$,
NULL, FALSE, 'DIFFICILE'),

('MATHEMATICS', 'Suites numériques : arithmétiques, géométriques et limites',
$$Suites numériques

**Définition**
Suite (uₙ) : fonction de ℕ → ℝ. Définie par un terme général uₙ ou par récurrence uₙ₊₁ = f(uₙ).

**Suite arithmétique**
Raison r = uₙ₊₁ − uₙ = constante.
uₙ = u₀ + n·r
Somme : S = n·(u₀ + uₙ₋₁)/2 = n·(2u₀ + (n−1)r)/2

**Suite géométrique**
Raison q = uₙ₊₁/uₙ = constante (q ≠ 0).
uₙ = u₀·qⁿ
Somme (q ≠ 1) : S = u₀·(1−qⁿ)/(1−q)

**Convergence**
- Suite arithmétique : converge seulement si r = 0 (suite constante).
- Suite géométrique : converge si |q| < 1 → lim = 0 ; si |q| > 1 → diverge.
- Suite croissante majorée → converge.
- Suite décroissante minorée → converge.

**Limite des suites de référence**
lim n^α = +∞ pour α > 0
lim qⁿ = 0 pour |q| < 1
lim n·qⁿ = 0 pour |q| < 1 (exponentielle l''emporte)

**Application : intérêts composés**
Capital Cₙ après n périodes : Cₙ = C₀·(1+i)ⁿ (suite géométrique, q = 1+i).

**Raisonnement par récurrence**
1. Vérifier P(0) (initialisation).
2. Supposer P(n) vraie → démontrer P(n+1).
3. Conclure.

**Point concours FWB**
Identifier et calculer le terme général d''une suite ; calculer une somme arithmétique/géométrique ; étudier la convergence et calculer la limite.$$,
NULL, FALSE, 'MOYEN'),

('MATHEMATICS', 'Algèbre linéaire : systèmes d''équations, matrices et déterminants',
$$Algèbre linéaire

**Système de deux équations à deux inconnues**
a₁x + b₁y = c₁
a₂x + b₂y = c₂

Méthode de substitution, de combinaison linéaire (addition/soustraction).
Méthode de Cramer : x = Δₓ/Δ ; y = Δᵧ/Δ
Δ = a₁b₂ − a₂b₁ ; Δₓ = c₁b₂ − c₂b₁ ; Δᵧ = a₁c₂ − a₂c₁

**Matrices**
Matrice A (m×n) : m lignes, n colonnes.
Addition : (A+B)ᵢⱼ = aᵢⱼ + bᵢⱼ (même dimension)
Multiplication AB : (AB)ᵢⱼ = Σₖ aᵢₖ·bₖⱼ (n colonnes de A = n lignes de B)

**Matrice inverse**
A·A⁻¹ = I (matrice identité)
Pour A 2×2 : A⁻¹ = (1/det A)·[[d,−b],[−c,a]] si A = [[a,b],[c,d]]

**Déterminant**
det([[a,b],[c,d]]) = ad − bc
det([[a,b,c],[d,e,f],[g,h,i]]) = a(ei−fh) − b(di−fg) + c(dh−eg)

Propriétés : det(AB) = det A·det B ; det(Aᵀ) = det A ; A inversible ↔ det A ≠ 0.

**Valeurs propres et vecteurs propres**
A·v = λ·v → (A − λI)v = 0 → det(A − λI) = 0 (équation caractéristique).

**Point concours FWB**
Résoudre un système 3×3 par la méthode de Gauss ou Cramer ; calculer le déterminant et inverser une matrice 2×2.$$,
NULL, FALSE, 'DIFFICILE');

-- ============================================================
-- RAISONNEMENT – 10 fiches de préparation au concours FWB
-- ============================================================

INSERT INTO medical_exam_prep (subject, topic, content, year, is_official, difficulty_level) VALUES
('REASONING', 'Raisonnement logique : syllogismes, déduction et induction',
$$Logique formelle et raisonnement

**Propositions et connecteurs logiques**
- Négation : ¬P (vrai si P faux)
- Conjonction : P ∧ Q (vrai si P et Q vrais)
- Disjonction : P ∨ Q (vrai si au moins un vrai)
- Implication : P → Q (faux seulement si P vrai et Q faux)
- Équivalence : P ↔ Q (vrai si P et Q même valeur)

**Tables de vérité**
Méthode systématique pour évaluer une formule logique selon toutes les combinaisons de P, Q, R.

**Syllogismes (Aristote)**
Structure : Prémisse 1 (générale) + Prémisse 2 (particulière) → Conclusion.
Exemple :
P1 : Tous les humains sont mortels.
P2 : Socrate est humain.
C : Socrate est mortel. ✓

**Déduction vs Induction**
- Déduction : du général au particulier (conclusion certaine si prémisses vraies).
- Induction : du particulier au général (conclusion probable, non certaine).
- Abduction : inférence à la meilleure explication (utilisée en médecine clinique).

**Contrapositif et réciproque**
P → Q équivaut logiquement à ¬Q → ¬P (contrapositif).
Q → P est la réciproque (non équivalente en général).

**Erreurs logiques courantes**
- Affirmation du conséquent : "Si P→Q et Q, alors P" → INVALIDE.
- Négation de l''antécédent : "Si P→Q et ¬P, alors ¬Q" → INVALIDE.

**Point concours FWB**
Identifier la validité d''un syllogisme, construire la table de vérité d''une formule, reconnaître une erreur de raisonnement.$$,
NULL, FALSE, 'MOYEN'),

('REASONING', 'Séries numériques et suites logiques',
$$Séries numériques et suites logiques

**Méthode générale**
1. Chercher la différence entre termes consécutifs.
2. Si différences non constantes, calculer les différences de différences (second ordre).
3. Chercher un ratio (suite géométrique).
4. Chercher des alternances (termes pairs/impairs séparés).
5. Chercher une règle combinée (+n, ×n, ±n²…).

**Types de suites fréquentes au concours**
- Arithmétique : 3, 7, 11, 15, … (raison +4)
- Géométrique : 2, 6, 18, 54, … (raison ×3)
- Carrés : 1, 4, 9, 16, 25, … (n²)
- Fibonacci : 1, 1, 2, 3, 5, 8, 13, … (uₙ = uₙ₋₁ + uₙ₋₂)
- Interposées : 2, 5, 4, 10, 6, 15, … (deux suites entrelacées : +2 et +5)
- Différences croissantes : 1, 2, 4, 7, 11, … (différences = 1,2,3,4,…)

**Suites de lettres**
Chaque lettre = numéro dans l''alphabet (A=1, B=2,…, Z=26).
Chercher la règle sur les numéros de position.
Ex. : A, D, G, J, … → positions 1, 4, 7, 10 (raison +3) → prochain : M.

**Suites mixtes (chiffres + lettres)**
Décoder séparément la partie numérique et alphabétique.

**Stratégie au concours**
Toujours vérifier la règle sur TOUS les termes, pas seulement les deux premiers.
En cas de doute, tester plusieurs hypothèses et éliminer celles qui ne tiennent pas.

**Point concours FWB**
Trouver le terme manquant dans une suite numérique ou alphanumérique ; justifier la règle trouvée.$$,
NULL, FALSE, 'FACILE'),

('REASONING', 'Raisonnement spatial et figures géométriques',
$$Raisonnement spatial

**Types d''exercices fréquents**
1. **Rotation mentale** : identifier la vue d''un objet 3D après rotation.
2. **Développé de solide** : reconnaître le patron (développé) d''un cube, prisme…
3. **Vues en coupe** : identifier la coupe transversale d''un solide.
4. **Analogies de figures** : identifier la transformation (rotation, réflexion, translation) liant deux figures.
5. **Miroir** : trouver l''image d''une figure par symétrie axiale.

**Transformations planes**
- Translation : déplacement sans rotation ni réflexion.
- Rotation d''angle θ autour d''un centre O.
- Réflexion (symétrie axiale) : image miroir par rapport à un axe.
- Homothétie : agrandissement/réduction de rapport k.

**Solides usuels**
| Solide | Faces | Arêtes | Sommets |
|---|---|---|---|
| Cube | 6 | 12 | 8 |
| Tétraèdre | 4 | 6 | 4 |
| Octaèdre | 8 | 12 | 6 |
| Prisme triangle | 5 | 9 | 6 |

**Formule d''Euler (polyèdres convexes)** : S − A + F = 2 (S=sommets, A=arêtes, F=faces).

**Méthode pour les rotations mentales**
1. Fixer un point de référence (coin, couleur distinctive).
2. Suivre mentalement sa trajectoire après la rotation.
3. Vérifier la cohérence avec les autres points.

**Point concours FWB**
Identifier la figure résultante d''une transformation ; reconnaître le développé correct d''un cube ; trouver l''analogie de transformation entre deux paires de figures.$$,
NULL, FALSE, 'MOYEN'),

('REASONING', 'Analyse critique d''informations et biais cognitifs',
$$Analyse critique et biais cognitifs

**Pensée critique**
Capacité à évaluer objectivement une information ou un argument en :
1. Identifiant les prémisses et la conclusion.
2. Évaluant la validité logique du raisonnement.
3. Évaluant la vérité des prémisses.
4. Détectant les biais et les sophismes.

**Biais cognitifs courants**
- **Biais de confirmation** : tendance à chercher et mémoriser les informations qui confirment nos croyances.
- **Biais de disponibilité** : surestimer la probabilité d''événements facilement mémorisés (accidents d''avion vs voiture).
- **Biais d''ancrage** : se fier excessivement à la première information reçue.
- **Effet de halo** : une qualité perçue influence positivement l''évaluation globale d''une personne.
- **Pensée de groupe (groupthink)** : conformer ses opinions à celle du groupe au détriment du jugement individuel.
- **Biais de représentativité** : juger par ressemblance à un prototype plutôt que par probabilité.

**Sophismes (erreurs d''argumentation)**
- Ad hominem : attaquer la personne plutôt que l''argument.
- Appel à l''autorité : vrai parce qu''une autorité le dit (sans autres preuves).
- Pente glissante : si A alors inévitablement Z (sans justifier les étapes intermédiaires).
- Faux dilemme : réduire un problème à deux options quand d''autres existent.
- Généralisation hâtive : tirer une règle générale d''un seul cas.

**Application médicale**
Le raisonnement clinique exige de lutter contre ces biais : erreur de diagnostic fréquente = biais de confirmation (s''arrêter à la première hypothèse sans explorer les alternatives).

**Point concours FWB**
Identifier un biais dans un scénario ; reconnaître un sophisme ; évaluer la validité d''un argument médical.$$,
NULL, FALSE, 'MOYEN'),

('REASONING', 'Résolution de problèmes : démarche et stratégies',
$$Résolution de problèmes

**Démarche générale (Polya, 1945)**
1. **Comprendre le problème** : identifier ce qui est donné, ce qui est cherché, les contraintes.
2. **Élaborer un plan** : choisir une stratégie (analogie, décomposition, schéma…).
3. **Exécuter le plan** : résoudre méthodiquement.
4. **Vérifier** : contrôler la cohérence, tester avec des valeurs particulières.

**Stratégies principales**
- **Travail à rebours** : partir de la solution cherchée et remonter aux données.
- **Simplification** : résoudre un cas particulier plus simple, puis généraliser.
- **Décomposition** : diviser le problème en sous-problèmes.
- **Représentation graphique** : tableau, schéma, graphe.
- **Exhaustion** : explorer tous les cas possibles (si peu nombreux).
- **Contradiction** : supposer la négation de la conclusion et montrer l''absurde.

**Problèmes types au concours FWB**
- Problèmes de partage : 3 personnes ont ensemble 180 € ; A a le double de B, B a le triple de C. Combien chacun a-t-il ?
  (Sol. : C = x, B = 3x, A = 6x → 10x = 180 → x = 18)
- Problèmes de vitesse/distance/temps : D = v × t.
- Problèmes de robinets : taux = fraction par unité de temps, additionner les taux.
- Problèmes de mélanges : tableau des quantités et concentrations.

**Gestion du temps au concours**
- Lire d''abord toutes les questions.
- Résoudre d''abord les plus rapides.
- Ne pas rester bloqué : passer et revenir.
- Vérifier la plausibilité des réponses (ordre de grandeur).

**Point concours FWB**
Appliquer une stratégie de résolution à un problème quantitatif multi-étapes ; justifier chaque étape de la démarche.$$,
NULL, FALSE, 'MOYEN'),

('REASONING', 'Lecture et interprétation de graphiques statistiques',
$$Interprétation de données statistiques

**Types de graphiques**
- **Histogramme** : fréquences par classe d''une variable continue.
- **Diagramme en barres** : comparaison de catégories.
- **Diagramme circulaire (camembert)** : proportions d''un tout.
- **Courbe (line chart)** : évolution temporelle.
- **Nuage de points (scatter plot)** : corrélation entre deux variables.
- **Box plot (boîte à moustaches)** : médiane, quartiles, extrêmes.

**Indicateurs statistiques**
- Moyenne : x̄ = (1/n)Σxᵢ
- Médiane : valeur centrale (50% au-dessus, 50% en dessous)
- Mode : valeur la plus fréquente
- Variance : σ² = (1/n)Σ(xᵢ − x̄)²
- Écart-type : σ = √σ² (même unité que les données)
- Étendue : max − min

**Corrélation et causalité**
Corrélation ≠ causalité !
Coefficient de corrélation r (Pearson) : −1 ≤ r ≤ 1.
|r| ≈ 1 : forte corrélation linéaire ; r ≈ 0 : pas de corrélation linéaire.

**Pièges courants dans les graphiques**
- Axe qui ne part pas de zéro → exagère les différences.
- Échelle non uniforme → déforme les tendances.
- Échantillon non représentatif → biais de sélection.
- Données manquantes ou sélectionnées → manipulation.

**Probabilités conditionnelles**
P(B|A) = P(A∩B)/P(A)
Théorème de Bayes : P(A|B) = P(B|A)·P(A) / P(B)
Application : valeur prédictive positive/négative d''un test médical.

**Point concours FWB**
Lire et interpréter un graphique statistique ; calculer moyenne et écart-type ; distinguer corrélation et causalité ; appliquer Bayes à la sensibilité/spécificité d''un test.$$,
NULL, FALSE, 'MOYEN'),

('REASONING', 'Épistémologie des sciences et méthode scientifique',
$$Méthode scientifique et épistémologie

**Étapes de la démarche scientifique**
1. Observation d''un phénomène.
2. Formulation d''une hypothèse (testable et réfutable).
3. Conception d''une expérience pour tester l''hypothèse.
4. Collecte et analyse des données.
5. Conclusion : confirmation ou réfutation de l''hypothèse.
6. Communication et reproductibilité.

**Critère de réfutabilité (Popper)**
Une théorie scientifique doit être potentiellement réfutable (falsifiable).
"Tous les cygnes sont blancs" → réfutable (un cygne noir suffit à l''invalider).
"Les licornes existent quelque part dans l''univers" → non réfutable → non scientifique.

**Types d''études médicales**
- Étude épidémiologique descriptive : décrire la distribution d''une maladie.
- Étude de cohorte (prospective) : suivre un groupe dans le temps.
- Étude cas-témoin (rétrospective) : comparer malades et non-malades.
- Essai contrôlé randomisé (ECR) : gold standard pour évaluer un traitement.
- Méta-analyse : synthèse statistique de plusieurs études.

**Niveaux de preuve**
1 (plus fort) : méta-analyses d''ECR.
2 : ECR bien conduit.
3 : études de cohorte.
4 : études cas-témoin.
5 (plus faible) : opinion d''experts.

**Erreurs expérimentales**
- Erreur systématique (biais) : affecte toujours dans le même sens.
- Erreur aléatoire (imprécision) : fluctuation autour de la vraie valeur.
- Précision ≠ exactitude.

**Point concours FWB**
Identifier les étapes d''une démarche expérimentale ; classer les études médicales par niveau de preuve ; distinguer biais et erreur aléatoire.$$,
NULL, FALSE, 'MOYEN'),

('REASONING', 'Analogies verbales et matrices conceptuelles',
$$Analogies et matrices conceptuelles

**Structure d''une analogie**
A : B :: C : ?
Trouver la relation entre A et B, l''appliquer entre C et ?.

**Types de relations courantes**
- Partie/Tout : doigt : main :: orteil : pied
- Cause/Effet : infection : inflammation :: choc : état de choc
- Objet/Utilité : stéthoscope : auscultation :: bistouri : incision
- Synonyme/Antonyme : malin : bénin :: hyper : hypo
- Espèce/Genre : chêne : arbre :: python : serpent
- Gradation : chaud : tiède :: brûlant : chaud
- Agent/Action : pancréas : insuline :: thyroïde : thyroxine

**Matrices conceptuelles (type Raven)**
Grille n×n de figures avec une case manquante.
Méthode : identifier la règle sur les lignes ET les colonnes.
- Variation de taille, nombre d''éléments, rotation, couleur, forme.
- La figure manquante doit satisfaire les deux règles simultanément.

**Stratégie pour les analogies verbales**
1. Formuler la relation A→B en une phrase précise.
2. Tester chaque proposition avec la même formulation.
3. Éliminer les distracteurs (relations partielles ou superficielles).
4. Choisir la relation la plus spécifique et la plus précise.

**Application médicale**
Raisonnement par analogie en diagnostic différentiel :
"Ce patient ressemble à un cas de méningite bactérienne" → vérifier critères systématiquement.

**Point concours FWB**
Compléter une série d''analogies verbales ; résoudre une matrice de Raven ; distinguer la relation exacte des relations apparentes.$$,
NULL, FALSE, 'MOYEN'),

('REASONING', 'Raisonnement éthique et dilemmes médicaux',
$$Éthique médicale et bioéthique

**Les 4 principes de Beauchamp & Childress**
1. **Autonomie** : respecter la capacité du patient à décider pour lui-même (consentement éclairé).
2. **Bienfaisance** : agir dans l''intérêt du patient (primum non nocere + faire le bien).
3. **Non-malfaisance** : ne pas causer de tort inutile ("ne pas nuire").
4. **Justice** : distribuer équitablement les ressources et les soins.

**Consentement éclairé**
Conditions : patient informé, comprend l''information, décide librement, a la capacité de décision.
Exceptions : urgence vitale, incapacité juridique du patient, danger pour des tiers.

**Dilemmes éthiques courants**
- **Autonomie vs bienfaisance** : patient qui refuse une transfusion vitale (Témoin de Jéhovah).
- **Justice vs bienfaisance** : priorisation des organes à transplanter (qui reçoit en premier ?).
- **Vérité vs bienfaisance** : annoncer un pronostic fatal à un patient fragile.
- **Confidentialité vs protection des tiers** : patient HIV qui refuse d''informer son partenaire.

**Cadre légal belge**
- Loi sur les droits du patient (2002) : droit à l''information, à la décision, au dossier médical.
- Loi relative à l''euthanasie (2002) : conditions strictes (maladie grave et incurable, souffrance insupportable, demande réitérée).
- Loi relative aux soins palliatifs (2002) : droit aux soins de confort en fin de vie.

**Approche de résolution d''un dilemme**
1. Identifier les principes éthiques en tension.
2. Identifier les parties prenantes et leurs intérêts.
3. Analyser les conséquences de chaque option.
4. Choisir l''option la plus défendable en justifiant.

**Point concours FWB**
Analyser un dilemme médical en mobilisant les 4 principes ; identifier la loi applicable ; proposer une solution justifiée éthiquement.$$,
NULL, FALSE, 'DIFFICILE'),

('REASONING', 'Interprétation de textes scientifiques et résumé',
$$Lecture et interprétation de textes scientifiques

**Structure d''un article scientifique (format IMRAD)**
- **Introduction** : contexte, problème, hypothèse.
- **Méthodes** : population, protocole, mesures, statistiques.
- **Résultats** : données, graphiques, tableaux (sans interprétation).
- **Discussion** : interprétation, limites, comparaison avec la littérature.
- **Abstract** : résumé structuré (< 300 mots).

**Lecture critique**
Questions clés :
1. La question de recherche est-elle claire et importante ?
2. Le design de l''étude est-il adapté à la question ?
3. L''échantillon est-il représentatif ? La taille est-elle suffisante ?
4. Les résultats sont-ils présentés clairement ? Les stats sont-elles appropriées ?
5. Les conclusions dépassent-elles les données (overgeneralisation) ?
6. Les intérêts financiers des auteurs sont-ils déclarés ?

**Indicateurs statistiques à maîtriser dans les articles**
- Risque relatif (RR) = risque exposés / risque non-exposés
- Odds Ratio (OR) ≈ RR pour les événements rares
- Intervalle de confiance à 95% (IC 95%) : si inclut 1 (pour RR/OR) ou 0 (pour différences) → non significatif.
- p-valeur < 0,05 → résultat statistiquement significatif (convention habituelle).

**Résumé efficace**
1. Identifier l''idée principale de chaque paragraphe.
2. Reformuler sans copier.
3. Conserver les chiffres clés et les conclusions.
4. Respecter l''ordre logique de l''article.
5. Ne pas introduire ses propres opinions.

**Point concours FWB**
Résumer un extrait scientifique en 200 mots ; identifier les limites d''une étude ; interpréter un RR ou un OR avec son IC 95%.$$,
NULL, FALSE, 'MOYEN');
