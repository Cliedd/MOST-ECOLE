-- V7: Humanités (Français, Histoire, Géographie, Néerlandais, Anglais, Sciences économiques) — Niveaux 3, 4 et 5
-- Belgian FWB secondary education curriculum — NOTE: FSE niveaux 3,4,5 already in V3

-- ============================================================
-- NIVEAU 3 — Français
-- ============================================================

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'L''argumentation : convaincre et persuader',
  'Identifier et construire une argumentation efficace dans les textes et les discours.',
  'TEXT',
  '# L''argumentation

## Définition

**Argumenter**, c''est défendre un point de vue (une thèse) en apportant des arguments pour convaincre un destinataire.

## La structure d''un texte argumentatif

1. **Introduction (accroche + présentation du sujet + thèse)**
2. **Développement** (arguments + exemples/illustrations)
3. **Conclusion** (synthèse + ouverture)

### Structure d''un paragraphe argumentatif (AEI)
- **Argument** (idée principale)
- **Exemple/Explication** (preuve, illustration, citation...)
- **Interprétation/Lien** (retour à la thèse)

## Les types d''arguments

### Arguments logiques (logos)
S''appuient sur la raison, les faits, les statistiques.
→ "Les études montrent que 72% des accidents sont liés à l''alcool au volant."

### Arguments éthiques (éthos)
L''auteur valorise sa crédibilité, son autorité morale.
→ "En tant que médecin depuis 30 ans, je peux affirmer que..."

### Arguments affectifs (pathos)
Font appel aux émotions, à la sensibilité du lecteur.
→ "Imaginez un enfant qui n''a pas mangé depuis trois jours..."

### Concession et réfutation
La **concession** reconnaît la valeur de l''argument adverse avant de le réfuter.
→ "Certes, le nucléaire produit peu de CO₂, MAIS ses déchets restent dangereux 100 000 ans."

## Les connecteurs logiques

| Relation | Connecteurs |
|----------|------------|
| Addition | de plus, en outre, par ailleurs |
| Opposition | mais, or, cependant, toutefois, néanmoins |
| Cause | car, parce que, puisque, en effet |
| Conséquence | donc, ainsi, c''est pourquoi, par conséquent |
| Concession | certes, il est vrai que, bien que + subjonctif |
| Illustration | par exemple, notamment, ainsi |

## Argumentation indirecte

Les fables (La Fontaine), les apologues, les dystopies (Orwell) véhiculent un message implicite par le biais d''un récit fictif.

**La Fontaine** : "Le Loup et l''Agneau" → critique du pouvoir arbitraire sous le couvert d''une fable animale.',
  (SELECT id FROM subjects WHERE name = 'Français' AND level_id = (SELECT id FROM levels WHERE level_number = 3)),
  (SELECT id FROM levels WHERE level_number = 3),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Lecture analytique d''un texte littéraire',
  'Méthode pour analyser un texte narratif ou poétique en identifiant les procédés d''écriture et leur effet.',
  'TEXT',
  '# Lecture analytique de textes littéraires

## Qu''est-ce qu''une lecture analytique ?

La lecture analytique est une **étude méthodique** d''un texte qui vise à comprendre comment l''auteur construit du sens et produit des effets sur le lecteur.

## Méthode générale

### Étape 1 : Identification du texte
- Auteur, titre, date, genre littéraire
- Contexte historique et biographique (mouvement littéraire)

### Étape 2 : Première lecture (compréhension globale)
- Sujet du texte
- Situation d''énonciation : qui parle ? à qui ? dans quel contexte ?
- Type de texte : narratif, descriptif, argumentatif, poétique ?

### Étape 3 : Relevé des procédés stylistiques

**Niveau lexical :**
- Champ lexical dominant (mort, lumière, violence...)
- Registre de langue (soutenu, courant, familier)
- Connotations des mots

**Niveau grammatical :**
- Temps verbaux et leur valeur
- Types de phrases (interrogative, exclamative → effet)
- Modalisation (peut-être, certainement → degré de certitude)

**Niveau rhétorique :**
- Figures de style (métaphore, hyperbole, antithèse, ironie...)
- Rythme et syntaxe (phrases courtes = rapidité, longues = méditation)

**Niveau narratif (pour les récits) :**
- Point de vue (narrateur omniscient, interne, externe)
- Focalisation
- Rythme narratif (ellipse, scène, résumé, pause)

### Étape 4 : Interprétation
Relier les procédés à leur effet et à la signification du texte.

**Structure de commentaire :** Procédé + Exemple + Effet produit

Exemple : "L''hyperbole ''je meurs de honte'' traduit l''intensité de la souffrance du personnage, soulignant l''excès de sa sensibilité romantique."

## Genres et mouvements littéraires en FWB

- **XVIIe siècle :** Classicisme (Racine, Molière, La Fontaine)
- **XVIIIe siècle :** Lumières (Voltaire, Rousseau)
- **XIXe siècle :** Romantisme (Hugo, Lamartine) ; Réalisme (Balzac, Flaubert)
- **XXe siècle :** Surréalisme (Breton, Éluard) ; Existentialisme (Sartre, Camus)',
  (SELECT id FROM subjects WHERE name = 'Français' AND level_id = (SELECT id FROM levels WHERE level_number = 3)),
  (SELECT id FROM levels WHERE level_number = 3),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Le subjonctif : emplois et formation',
  'Maîtriser la formation du subjonctif présent et passé et ses principaux emplois en français.',
  'TEXT',
  '# Le mode subjonctif

## Définition

Le **subjonctif** est un mode qui exprime une action vue comme **subjective** : un désir, une crainte, une obligation, une possibilité, un doute. Il s''oppose à l''indicatif qui présente les faits comme réels et objectifs.

## Formation du subjonctif présent

**Base :** radical de la 3e personne du pluriel du présent de l''indicatif + terminaisons : -e, -es, -e, -ions, -iez, -ent

| Verbe | Radical | Subj. présent |
|-------|---------|--------------|
| parler | parl- | que je parle |
| finir | finiss- | que tu finisses |
| prendre | prenn- | qu''il prenne |
| venir | vienn- | que nous venions |

### Verbes irréguliers au subjonctif
| Verbe | 1ère pers. sing. |
|-------|----------------|
| être | que je sois |
| avoir | que j''aie |
| aller | que j''aille |
| faire | que je fasse |
| pouvoir | que je puisse |
| vouloir | que je veuille |
| savoir | que je sache |

## Formation du subjonctif passé

Auxiliaire être ou avoir au **subjonctif présent** + participe passé

→ que j''aie mangé / que je sois parti(e)

## Principaux emplois

### 1. Après les verbes de sentiment
vouloir, désirer, souhaiter, avoir peur, regretter, s''étonner...
→ "Je veux qu''il **vienne**." / "Je regrette qu''il soit parti."

### 2. Après les verbes d''obligation et de nécessité
Il faut que, il est nécessaire que, il est important que...
→ "Il faut que tu **finisses** tes devoirs."

### 3. Après les verbes de doute et d''opinion négative
douter que, ne pas croire que, ne pas penser que...
→ "Je ne crois pas qu''il **ait** raison."

### 4. Après certaines conjonctions
bien que, quoique, pour que, afin que, avant que, à moins que...
→ "Je lui explique pour qu''il **comprenne**."

### 5. Dans les propositions relatives (caractère indéfini)
→ "Je cherche un assistant qui **parle** français."',
  (SELECT id FROM subjects WHERE name = 'Français' AND level_id = (SELECT id FROM levels WHERE level_number = 3)),
  (SELECT id FROM levels WHERE level_number = 3),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'La poésie : formes, rythmes et versification',
  'Analyser la forme poétique, comprendre la versification française et identifier les effets sonores.',
  'TEXT',
  '# La poésie et la versification

## Qu''est-ce que la poésie ?

La poésie est une forme d''expression littéraire qui joue sur le langage dans sa matérialité sonore, rythmique et visuelle. Le poète choisit chaque mot pour ce qu''il **dit** et pour ce qu''il **fait entendre**.

## Les formes poétiques

### La poésie régulière (classique)
Règles strictes de versification : nombre de syllabes, rimes, structure.

### La poésie libérée (XIXe)
Abandonne la régularité des rimes tout en gardant certains rythmes.

### Le vers libre (moderne)
Sans règles fixes de longueur ou de rime. Apollinaire, Claudel, Cendrars.

## La versification française

### Le vers et le mètre
Le vers se mesure en **syllabes** (on compte les e muets devant consonnes et en fin de vers avant césure).

| Mètre | Nombre de syllabes | Nom |
|-------|-------------------|-----|
| Alexandrin | 12 | Le plus noble |
| Décasyllabe | 10 | Fréquent XVIe |
| Octosyllabe | 8 | Poésie légère |

**La césure :** pause au milieu de l''alexandrin après la 6ème syllabe.
"La fille de Minos | et de Pasiphaé" (Racine) 6/6

**L''enjambement :** le sens continue de la fin d''un vers au début du suivant.

## Les rimes

**Position :** plates (AABB), croisées (ABAB), embrassées (ABBA)
**Qualité :** pauvre (1 son), suffisante (2 sons), riche (3+ sons)

## Les effets sonores

- **Allitération :** répétition de consonnes → "Pour qui sont ces serpents qui sifflent sur vos têtes ?" (s, sifflement)
- **Assonance :** répétition de voyelles → "Les sanglots longs des violons de l''automne" (o)
- **Harmonie imitative :** les sons imitent le sens

## Analyse d''un sonnet

Le sonnet = 14 vers, 2 quatrains (ABBA) + 2 tercets (CCD EDE).
Exemple canonique : "Heureux qui comme Ulysse" (Du Bellay, XVIe).',
  (SELECT id FROM subjects WHERE name = 'Français' AND level_id = (SELECT id FROM levels WHERE level_number = 3)),
  (SELECT id FROM levels WHERE level_number = 3),
  true
);


-- ============================================================
-- NIVEAU 3 — Histoire
-- ============================================================

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'La Révolution française : causes, événements et conséquences',
  'Analyser les causes profondes de la Révolution française et son impact durable sur l''Europe.',
  'TEXT',
  '# La Révolution française (1789-1799)

## Contexte et causes

### Crise financière
La France de Louis XVI est en faillite après avoir soutenu la guerre d''Indépendance américaine et maintenu une cour dispendieuse à Versailles.

### Crise sociale
La société d''Ancien Régime est divisée en **trois ordres** :
- 1er ordre : clergé (exempt d''impôts)
- 2e ordre : noblesse (exempt d''impôts)
- 3e ordre : 97% de la population (bourgeoisie + paysans) qui paient tout

### Crise des idées
Les **Lumières** (Voltaire, Rousseau, Montesquieu) diffusent des idées nouvelles : souveraineté populaire, droits naturels, séparation des pouvoirs.

## Les grandes étapes (1789)

- **5 mai 1789** : Réunion des États généraux à Versailles
- **17 juin 1789** : Le Tiers-État se proclame **Assemblée nationale**
- **20 juin 1789** : **Serment du Jeu de paume** (ne pas se séparer avant une Constitution)
- **14 juillet 1789** : **Prise de la Bastille** (symbole de la tyrannie royale)
- **4 août 1789** : Nuit de l''abolition des privilèges
- **26 août 1789** : **Déclaration des Droits de l''Homme et du Citoyen** (DDHC)

## La DDHC : principes fondateurs

- Article 1 : "Les hommes naissent et demeurent libres et égaux en droits"
- Article 2 : droits naturels = liberté, propriété, sûreté, résistance à l''oppression
- Article 6 : la loi est l''expression de la volonté générale
- Article 16 : toute société sans séparation des pouvoirs n''a pas de Constitution

## La période révolutionnaire

- **1789-1792** : Monarchie constitutionnelle
- **1792-1793** : Première République
- **1793-1794** : La **Terreur** (Robespierre, guillotine, 40 000 exécutés)
- **1795-1799** : Directoire → affaiblissement
- **9 novembre 1799** : **Coup d''État de Bonaparte** → fin de la Révolution

## Impact sur la Belgique

La Belgique est annexée à la France (1795-1815). L''administration française abolit les privilèges, introduit le Code civil (Napoléon), la conscription et réorganise le territoire.',
  (SELECT id FROM subjects WHERE name = 'Histoire' AND level_id = (SELECT id FROM levels WHERE level_number = 3)),
  (SELECT id FROM levels WHERE level_number = 3),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'La Belgique : naissance d''un État (1830)',
  'Comprendre les circonstances et les enjeux de la Révolution belge et de l''indépendance de 1830.',
  'TEXT',
  '# La naissance de la Belgique (1830)

## Le contexte du Royaume des Pays-Bas

Après la défaite de Napoléon, le Congrès de Vienne (1815) réunit les Pays-Bas autrichiens (Belgique actuelle) et les Provinces-Unies (Hollande actuelle) en un seul État : le **Royaume des Pays-Bas** sous Guillaume Ier d''Orange.

### Les griefs des Belges

**Griefs économiques :**
- La capitale et la cour sont à La Haye → les Belges se sentent défavorisés
- Protections douanières qui nuisent à l''industrie belge

**Griefs linguistiques et culturels :**
- Le néerlandais imposé dans les provinces francophones et germanophones
- Les catholiques belges vus comme inférieurs par les protestants hollandais

**Griefs politiques :**
- Sous-représentation au parlement (moitié des sièges malgré 3,5 millions vs 2 millions)
- Liberté de la presse limitée

## La Révolution de 1830

### L''étincelle : 25 août 1830
Représentation de l''opéra **La Muette de Portici** (sur une révolte napolitaine) → la foule quitte la salle en clamant "liberté" → émeutes à Bruxelles.

### L''insurrection de septembre
Du 23 au 26 septembre 1830 → les insurgés repoussent les troupes hollandaises de Bruxelles. Le gouvernement provisoire proclame l''**indépendance** le **4 octobre 1830**.

### La reconnaissance internationale
Le Congrès de Londres (1830-1831) reconnaît la Belgique sous condition de **neutralité perpétuelle**. Les grandes puissances garantissent cette neutralité (traité des 24 articles, 1839).

## La construction du nouvel État

- **7 février 1831** : adoption de la **Constitution belge** (parmi les plus libérales d''Europe)
- **21 juillet 1831** : le Roi **Léopold Ier de Saxe-Cobourg** prête serment → fête nationale belge
- Régime : monarchie constitutionnelle parlementaire

## La Constitution de 1831

Droits garantis : liberté de presse, d''enseignement, d''association, de réunion → modèle pour d''autres constitutions européennes.',
  (SELECT id FROM subjects WHERE name = 'Histoire' AND level_id = (SELECT id FROM levels WHERE level_number = 3)),
  (SELECT id FROM levels WHERE level_number = 3),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'L''industrialisation : révolution industrielle et société ouvrière',
  'Analyser les transformations économiques et sociales de la révolution industrielle au XIXe siècle.',
  'TEXT',
  '# La Révolution industrielle

## Définition et origines

La Révolution industrielle est le processus de transformation économique et sociale qui remplace le travail artisanal par la **production mécanisée en usine**, en s''appuyant sur de nouvelles sources d''énergie.

**Naissance :** Angleterre, 1760-1850 → puis Europe continentale (Belgique dès les années 1820).

## Les innovations techniques

- **La machine à vapeur** (James Watt, 1769) : énergie thermique → travail mécanique
- **Le métier à tisser mécanique** : production textile en grande série
- **Le haut-fourneau** : production de fer et d''acier à grande échelle
- **Le chemin de fer** (1825, Stephenson) : révolution des transports

## La Belgique, pionnière industrielle

La Belgique est le **premier pays continental** à s''industrialiser.

- **1823** : usine de Cockerill à Seraing (Liège) → premier complexe industriel intégré d''Europe
- Bassin industriel : Sambre-et-Meuse (charbon, acier), Gand (textile)
- **1835** : inauguration du premier chemin de fer continental entre Bruxelles et Malines

## Transformation de la société

### Exode rural et urbanisation
Les paysans quittent les campagnes pour les villes → Liège, Charleroi, Gand grandissent rapidement.

### La classe ouvrière
Conditions de travail très dures :
- Journées de 12-16 heures
- Travail des enfants dès 5-6 ans
- Salaires de misère, logements insalubres

### La question sociale
Naissance du **mouvement ouvrier** :
- Syndicats (trade-unions)
- Partis socialistes (Parti ouvrier belge fondé en 1885)
- Marx et Engels, *Le Manifeste du Parti communiste* (1848)

## Conséquences environnementales
Pollution des rivières, de l''air → les villes industrielles belges sont parmi les plus polluées d''Europe au XIXe siècle.',
  (SELECT id FROM subjects WHERE name = 'Histoire' AND level_id = (SELECT id FROM levels WHERE level_number = 3)),
  (SELECT id FROM levels WHERE level_number = 3),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Les guerres mondiales : la Belgique dans les deux conflits',
  'Comprendre la Première et la Seconde Guerre mondiale à travers le prisme de la Belgique.',
  'TEXT',
  '# La Belgique dans les guerres mondiales

## La Première Guerre mondiale (1914-1918)

### Le déclenchement
L''assassinat de l''archiduc François-Ferdinand d''Autriche à Sarajevo (28 juin 1914) déclenche un mécanisme d''alliances → war is inevitable.

### L''invasion de la Belgique
Le 4 août 1914, l''Allemagne viole la neutralité belge (malgré le traité de 1839) pour attaquer la France via la Belgique (**Plan Schlieffen**).

Le Roi Albert Ier refuse le passage → la Belgique entre en guerre contre l''Allemagne.

### La résistance belge
- Siège de Liège (août 1914) : retarda l''avance allemande
- L''armée belge se replie derrière l''Yser → tient le front jusqu''en 1918
- La **résistance civile** : journaux clandestins, réseaux d''évasion (Edith Cavell)

### Le bilan : 40 000 soldats belges tués

## La Seconde Guerre mondiale (1940-1945)

### L''invasion et la capitulation
Le 10 mai 1940, l''Allemagne nazie attaque la Belgique → le Roi Léopold III capitule le 28 mai 1940 (controversé).

**La question royale :** Léopold III reste en Belgique occupée tandis que le gouvernement belge continue la guerre depuis Londres.

### L''occupation
- Déportation et extermination de 25 000 Juifs belges
- Travail forcé en Allemagne
- Résistance organisée : armée secrète, presse clandestine

### La Libération
Septembre 1944 : libération de Bruxelles par les Alliés.
Décembre 1944 - janvier 1945 : Bataille des Ardennes (dernière offensive allemande).

### Le bilan
- 88 000 victimes belges (militaires + civils + résistants + déportés)
- Dévastations importantes notamment en Ardenne

## La reconstruction et l''intégration européenne
Après 1945, la Belgique joue un rôle pionnier dans la construction européenne : siège de l''OTAN (1967) et des institutions européennes à Bruxelles.',
  (SELECT id FROM subjects WHERE name = 'Histoire' AND level_id = (SELECT id FROM levels WHERE level_number = 3)),
  (SELECT id FROM levels WHERE level_number = 3),
  true
);


-- ============================================================
-- NIVEAU 3 — Géographie
-- ============================================================

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Les risques naturels : causes et gestion',
  'Identifier les différents types de risques naturels et comprendre les mécanismes qui les produisent.',
  'TEXT',
  '# Les risques naturels

## Définition

Un **risque naturel** est la probabilité qu''un phénomène naturel dangereux (aléa) affecte une population ou des biens (enjeux).

**Risque = Aléa × Vulnérabilité**

## Les grands types de risques naturels

### 1. Les risques géologiques

**Les tremblements de terre (séismes)**
- Origine : mouvement des plaques tectoniques → rupture le long d''une faille
- Mesure : **échelle de Richter** (magnitude) et **échelle de Mercalli** (intensité ressentie)
- Zones à risque : ceintures de feu du Pacifique, Méditerranée, Himalaya
- Belgique : zone à faible risque sismique (faible activité possible en Ardenne)

**Les éruptions volcaniques**
- Zones : dorsales océaniques, zones de subduction, points chauds
- Risques : coulées de lave, cendres, gaz toxiques, lahars

### 2. Les risques climatiques

**Les inondations**
- Causes : pluies intenses, fonte des neiges, débordement de rivières
- Exemple belge : inondations de juillet 2021 (vallée de la Vesdre) → 39 morts, milliards de dégâts

**Les tempêtes et cyclones**
- Cyclones/ouragans : mers tropicales, eau > 26°C
- Tornades : Great Plains aux États-Unis

### 3. Les risques gravitaires
Glissements de terrain, avalanches → fréquents dans les zones montagneuses

## Gestion des risques

### Prévention
- Cartographie des zones à risque
- Normes de construction parasismiques (Japon)
- Reboisement pour limiter les glissements

### Prévision
- Réseaux sismographiques, satellite, météorologie
- Systèmes d''alerte précoce (tsunamis en Méditerranée)

### Gestion de crise
- Plans d''urgence, évacuation, cellules de crise
- Coopération internationale (OCHA, Croix-Rouge)',
  (SELECT id FROM subjects WHERE name = 'Géographie' AND level_id = (SELECT id FROM levels WHERE level_number = 3)),
  (SELECT id FROM levels WHERE level_number = 3),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'La mondialisation : échanges, flux et inégalités',
  'Comprendre les mécanismes de la mondialisation économique et ses effets sur les inégalités mondiales.',
  'TEXT',
  '# La mondialisation

## Définition

La **mondialisation** est le processus d''intégration des économies, des sociétés et des cultures à l''échelle mondiale, notamment à travers l''intensification des échanges commerciaux, financiers et d''informations.

## Les moteurs de la mondialisation

1. **Révolution des transports** : conteneurisation (baisse du coût du fret maritime de 90% depuis 1950), avion cargo
2. **Révolution des communications** : internet, téléphonie mobile → instantanéité des échanges d''informations
3. **Libéralisation commerciale** : OMC (Organisation mondiale du commerce), accords de libre-échange

## Les acteurs de la mondialisation

### Les firmes multinationales (FMN)
Entreprises présentes dans plusieurs pays, dont les 100 premières ont un chiffre d''affaires supérieur au PIB de nombreux États.

Exemples : Apple, Volkswagen, Nestlé, Unilever.

### Les organisations internationales
- FMI, Banque mondiale : régulation financière
- OMC : règles du commerce international
- ONU, OMS, UNESCO

## Les flux mondiaux

### Flux commerciaux
- Échanges de marchandises : 25 000 milliards de dollars/an (2022)
- Principaux pôles : États-Unis, Union européenne, Chine → "Triade"

### Flux financiers
- Investissements directs à l''étranger (IDE)
- Marchés financiers : actions, obligations, devises

### Flux migratoires
- 280 millions de migrants internationaux (2022)
- Sud → Nord, mais aussi Sud → Sud

## Inégalités de la mondialisation

### Pays gagnants
Les pays émergents (Chine, Inde, Corée du Sud, Brésil) ont massivement bénéficié de la mondialisation.

### Pays marginalisés
L''Afrique subsaharienne reste en grande partie à l''écart des bénéfices.

### Inégalités internes
Même dans les pays riches, la mondialisation creuse les inégalités (désindustrialisation, chômage dans les secteurs exposés).',
  (SELECT id FROM subjects WHERE name = 'Géographie' AND level_id = (SELECT id FROM levels WHERE level_number = 3)),
  (SELECT id FROM levels WHERE level_number = 3),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Les villes et l''urbanisation mondiale',
  'Analyser les dynamiques d''urbanisation mondiale et les défis posés par les métropoles du XXIe siècle.',
  'TEXT',
  '# L''urbanisation mondiale

## Un monde de plus en plus urbain

**2007 :** première fois dans l''histoire, la population urbaine dépasse la population rurale.
**2023 :** 57% de la population mondiale vit en ville.
**2050 (prévision) :** 70% d''urbains.

## Définition et hiérarchie urbaine

**Ville :** agglomération de population de taille variable (définition varie selon les pays).

**Hiérarchie des villes :**
- Villages et petites villes
- Villes moyennes
- Grandes villes (> 1 million d''habitants)
- Métropoles (> 5 millions)
- **Mégalopoles** (> 10 millions) : Tokyo (38M), Delhi (32M), Shanghai (27M)

## L''urbanisation dans les pays en développement

Exode rural massif : les paysans migrent vers les villes en quête d''emploi et de meilleures conditions de vie.

### Les bidonvilles (slums)
- Plus d''1 milliard de personnes vivent dans des quartiers précaires
- Sans eau courante, ni égouts, ni électricité légale, ni droit foncier
- Exemples : Dharavi (Mumbai), Kibera (Nairobi)

## Les métropoles mondiales

Les **villes mondiales** (global cities) concentrent les fonctions de commandement de l''économie mondiale : centres financiers, sièges sociaux de multinationales, aéroports internationaux, universités de rang mondial.

Exemples : New York, Londres, Tokyo, Paris, Singapour, Dubai.

## La Belgique : un pays très urbanisé

- 98% de Belges habitent à moins de 30 km d''une ville
- **Bruxelles** : métropole de ~2,5 millions (agglomération), capital régional et européen
- **Liège, Gand, Anvers, Charleroi** : grandes villes régionales
- **Wallonie :** réseau de villes moyennes dans les anciennes vallées industrielles

## Les défis des villes du XXIe siècle

- Étalement urbain et artificialisaton des sols
- Mobilité et embouteillages
- Ségrégation sociospatiale
- Adaptation au changement climatique (îlots de chaleur, inondations urbaines)
- Transition vers des "villes durables"',
  (SELECT id FROM subjects WHERE name = 'Géographie' AND level_id = (SELECT id FROM levels WHERE level_number = 3)),
  (SELECT id FROM levels WHERE level_number = 3),
  true
);


-- ============================================================
-- NIVEAU 3 — Néerlandais
-- ============================================================

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Zakelijke teksten begrijpen : comprehension de textes fonctionnels',
  'Développer des stratégies de compréhension de textes journalistiques et informatifs en néerlandais.',
  'TEXT',
  '# Zakelijke teksten lezen

## Strategieën voor leesbegrip

Het lezen van zakelijke teksten (krantenartikelen, informatieve teksten, advertenties) vereist specifieke strategieën.

### Globaal lezen (skimmen)
Eerst snel de tekst doorlopen om het onderwerp en de structuur te begrijpen:
- Titel en ondertitel
- Eerste en laatste alinea
- Vet gedrukte woorden

### Gericht lezen (scannen)
Specifieke informatie snel opzoeken in de tekst.

## Tekststructuur

Een goed gestructureerde tekst bestaat uit:
1. **Inleiding** : onderwerp en hoofdidee
2. **Kern** : argumenten, voorbeelden, uitleg
3. **Besluit** : samenvatting of conclusie

### Verbindingswoorden herkennen

| Functie | Woorden |
|---------|---------|
| Opsomming | ten eerste, vervolgens, ten slotte |
| Oorzaak | want, omdat, doordat |
| Gevolg | dus, daarom, daardoor |
| Tegenstelling | maar, echter, toch, hoewel |
| Toelichting | namelijk, immers, dat wil zeggen |

## Woordenschat uitbreiden

**Strategie 1 : Afleiding**
Veel woorden zijn afgeleid van een basiswoord:
- werk → werken, werker, werkzaam, werkgever, werkloosheid

**Strategie 2 : Samenstelling**
Twee woorden samengesteld:
- werk + gever = **werkgever** (employeur)
- hand + werk = **handwerk** (artisanat)

**Strategie 3 : Context**
Het onbekende woord in de context begrijpen.

## Veelgebruikte krantenwoorden

| Nederlands | Français |
|-----------|---------|
| bevolking | population |
| overheid | gouvernement/autorités |
| maatregel | mesure |
| onderzoek | recherche/enquête |
| resultaat | résultat |
| beleid | politique (politique publique) |
| gemeente | commune |
| onderwijs | enseignement |

## Oefening : krantenartikel analyseren

Bij het analyseren van een krantenartikel, stel je volgende vragen:
1. Wie? Wat? Waar? Wanneer? Waarom? Hoe?
2. Wat is het standpunt van de auteur?
3. Welke bronnen worden aangehaald?',
  (SELECT id FROM subjects WHERE name = 'Néerlandais' AND level_id = (SELECT id FROM levels WHERE level_number = 3)),
  (SELECT id FROM levels WHERE level_number = 3),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Spreken en schrijven : expression orale et écrite en néerlandais',
  'Améliorer la production orale et écrite en néerlandais avec des structures de discours courantes.',
  'TEXT',
  '# Spreken en schrijven in het Nederlands

## Mondeling communiceren

### Gesprekken voeren (mener une conversation)

Een gesprek voeren vereist:
- **Beginnen** : Hoe gaat het met je? / Mag ik iets vragen?
- **Reageren** : Prima, dank je. / Zeker! / Dat klopt.
- **Vragen om verduidelijking** : Wat bedoel je? / Kun je dat herhalen?
- **Afsluiten** : Bedankt! / Tot ziens! / Dag!

### Mening geven (donner son avis)

| Positief | Negatief | Onzeker |
|---------|---------|---------|
| Ik vind dat... | Ik ben het er niet mee eens want... | Ik weet het niet zeker, maar... |
| Naar mijn mening... | Het probleem is dat... | Het zou kunnen zijn dat... |
| Ik denk dat... | Ik ben ervan overtuigd dat dit niet klopt. | Misschien... |

## Schriftelijk communiceren

### Een formele brief schrijven

**Indeling :**
- Datum en plaatsnaam (rechts bovenaan)
- Aanhef : *Geachte heer/mevrouw [naam],*
- Inleiding : doel van de brief
- Kern : uitleg, argumenten
- Afsluiting : *Met vriendelijke groeten,*
- Naam en handtekening

### Een informele e-mail

- Aanhef : *Hallo [naam],* / *Dag [naam],*
- Informele toon, kortere zinnen
- Afsluiting : *Groetjes, / Tot snel,*

## Zinsstructuur in het Nederlands

**Hoofdzin :** onderwerp + persoonsvorm + rest
→ Ik ga morgen naar school.

**Bijzin :** verbindingswoord + onderwerp + rest + persoonsvorm
→ Ik weet dat hij morgen naar school **gaat**.

**Inversie :** als een bijwoord vooraan staat → persoonsvorm komt vóór onderwerp
→ Morgen **ga** ik naar school.

## Veelgemaakte fouten

❌ "Ik ben 16 jaar oud." → ✓ **Ik ben 16 jaar oud.** (correct!)
❌ "Ik heb gegaan." → ✓ **Ik ben gegaan.** (zijn als hulpwerkwoord bij bewegingsverben)
❌ "een groot huis" → correct! Maar: "het groot**e** huis" (met het-woord + lidwoord ''het'')',
  (SELECT id FROM subjects WHERE name = 'Néerlandais' AND level_id = (SELECT id FROM levels WHERE level_number = 3)),
  (SELECT id FROM levels WHERE level_number = 3),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'De woordenschat uitbreiden : vocabulaire avancé en néerlandais',
  'Enrichir son vocabulaire néerlandais dans les domaines thématiques clés : société, environnement, médias.',
  'TEXT',
  '# Woordenschat : maatschappij, milieu en media

## Het milieu (l''environnement)

| Nederlands | Français |
|-----------|---------|
| klimaatverandering | changement climatique |
| opwarming van de aarde | réchauffement de la planète |
| broeikasgassen | gaz à effet de serre |
| hernieuwbare energie | énergie renouvelable |
| zonnepanelen | panneaux solaires |
| windmolen | éolienne |
| recyclen | recycler |
| afval | déchets |
| duurzaamheid | durabilité |
| uitstoot | émissions |
| wateroverlast | inondations |
| droogte | sécheresse |

## De samenleving (la société)

| Nederlands | Français |
|-----------|---------|
| gelijkheid | égalité |
| diversiteit | diversité |
| integratie | intégration |
| armoede | pauvreté |
| welvaart | prospérité |
| werkloosheid | chômage |
| gezondheidszorg | soins de santé |
| onderwijs | enseignement |
| migratie | migration |
| solidariteit | solidarité |

## De media

| Nederlands | Français |
|-----------|---------|
| krant | journal |
| nieuws | informations |
| berichtgeving | couverture médiatique |
| sociale media | réseaux sociaux |
| nepnieuws | fake news |
| influencer | influenceur |
| privacy | vie privée |
| gegevensbescherming | protection des données |

## Collocaties leren

Collocaties zijn woorden die vaak samen voorkomen:

- **klimaat** + *verandering, akkoord, wet, top, vluchtelingen*
- **energie** + *besparing, verbruik, transitie, crisis, factuur*
- **nieuws** + *item, bericht, zender, gids, brief*

## Oefening : gebruik in context

Vul de juiste woorden in:
"De _____ (réchauffement) van de aarde zorgt voor meer _____ (sécheresses) en _____ (inondations). We moeten dringend overschakelen op _____ (énergies renouvelables)."

Antwoord : opwarming / droogtes / wateroverlast / hernieuwbare energie',
  (SELECT id FROM subjects WHERE name = 'Néerlandais' AND level_id = (SELECT id FROM levels WHERE level_number = 3)),
  (SELECT id FROM levels WHERE level_number = 3),
  true
);


-- ============================================================
-- NIVEAU 3 — Anglais
-- ============================================================

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Modal verbs: ability, possibility, obligation and advice',
  'Master the use of modal verbs (can, could, may, might, must, should, would) in various contexts.',
  'TEXT',
  '# Modal Verbs

## What are modal verbs?

Modal verbs are **auxiliary verbs** that modify the meaning of the main verb. They express meanings like ability, possibility, permission, obligation, advice, or deduction.

**Key feature:** Modals are followed by the **bare infinitive** (no -to, no -s, no -ing).
✓ She **can swim**.   ❌ She **cans to swim**.

## Modals and their meanings

### CAN / COULD

| Modal | Use | Example |
|-------|-----|---------|
| can | Ability in the present | I **can** speak three languages. |
| can | Permission (informal) | **Can** I use your phone? |
| could | Ability in the past | She **could** run fast when she was young. |
| could | Polite request | **Could** you help me please? |
| could | Possibility | It **could** rain tomorrow. |

### MAY / MIGHT

| Modal | Use | Example |
|-------|-----|---------|
| may | Formal permission | **May** I come in? |
| may | Possibility (likely) | She **may** be late tonight. |
| might | Weaker possibility | He **might** come, but I''m not sure. |

### MUST / HAVE TO / MUSTN''T

| Modal | Use | Example |
|-------|-----|---------|
| must | Strong obligation (internal) | I **must** call my mother. |
| have to | Obligation (external rule) | You **have to** wear a uniform. |
| mustn''t | Prohibition | You **mustn''t** smoke here. |
| don''t have to | No obligation | You **don''t have to** come if you''re busy. |

### SHOULD / OUGHT TO / HAD BETTER

All express advice or recommendation.
- You **should** eat more vegetables.
- You **ought to** apologise.
- You**''d better** hurry — it''s getting late! (stronger warning)

## Modals for deduction

- **Must + be** : logical certainty → "She''s been up since 5am. She **must be** exhausted."
- **Can''t + be** : logical impossibility → "He passed his exam without studying. That **can''t be** right!"
- **Might/could + be** : uncertainty → "She''s not answering. She **might be** asleep."',
  (SELECT id FROM subjects WHERE name = 'Anglais' AND level_id = (SELECT id FROM levels WHERE level_number = 3)),
  (SELECT id FROM levels WHERE level_number = 3),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Writing skills: paragraphs, essays and formal emails',
  'Develop structured written production in English: from the paragraph to the complete essay.',
  'TEXT',
  '# Writing Skills in English

## The Paragraph Structure

A well-written paragraph follows this structure:

1. **Topic sentence** (main idea) — tells the reader what the paragraph is about
2. **Supporting sentences** (evidence, examples, explanation)
3. **Concluding sentence** (summary or link to next paragraph)

**Example:**
> Social media has transformed how young people communicate. Instead of meeting face-to-face, teenagers now share their lives through Instagram posts and TikTok videos. According to a 2023 survey, 78% of Belgian teenagers use social media daily. While this keeps friends connected, it has also led to increased feelings of loneliness and anxiety. Therefore, a balanced approach to social media use is essential.

## Essay Structure

### Introduction
- **Hook**: start with an interesting fact, question, or quote
- **Background**: briefly introduce the topic
- **Thesis statement**: your main argument / position

### Body paragraphs (usually 2-3)
- Each paragraph = one main idea
- Use linking words to connect ideas

### Conclusion
- Restate thesis (in different words)
- Summarise main points
- End with a thought-provoking statement or recommendation

## Linking Words for Essays

| Function | Expressions |
|----------|------------|
| Addition | Furthermore, In addition, Moreover, What is more |
| Contrast | However, On the other hand, Nevertheless, Despite this |
| Cause/Effect | As a result, Consequently, Therefore, This leads to |
| Example | For instance, For example, Such as, To illustrate |
| Conclusion | In conclusion, To sum up, Overall, In summary |

## Formal Email Format

**Subject:** Clear and specific
**Salutation:** Dear Mr./Ms. [Surname], / Dear Sir/Madam,
**Opening:** I am writing to / I would like to...
**Body:** formal tone, no contractions, passive voice acceptable
**Closing:** Yours sincerely (if name known) / Yours faithfully (if Dear Sir/Madam)
**Signature:** Full name + title/role

## Common Mistakes to Avoid
- ❌ contractions in formal writing (don''t → do not)
- ❌ colloquial expressions (a lot → a great deal / significantly)
- ❌ starting sentences with "And" or "But" in academic writing',
  (SELECT id FROM subjects WHERE name = 'Anglais' AND level_id = (SELECT id FROM levels WHERE level_number = 3)),
  (SELECT id FROM levels WHERE level_number = 3),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Reading comprehension strategies for longer texts',
  'Develop effective strategies for understanding and analysing longer texts in English.',
  'TEXT',
  '# Reading Comprehension Strategies

## Why reading strategies matter

Reading in a foreign language can be challenging. Using the right **strategy** for each task makes the process more efficient and accurate.

## Key Reading Strategies

### 1. Skimming (lecture rapide pour comprendre le sens général)
Read quickly to get the **main idea** — not every word.
- Read title, subtitles, first and last sentence of each paragraph
- Look for repeated key words

**Use when:** you want to understand what the text is generally about.

### 2. Scanning (recherche d''information spécifique)
Look for **specific information** without reading everything.
- Look for numbers, names, dates
- Use paragraph headings as guides

**Use when:** answering specific questions ("When did...?", "How many...?")

### 3. Intensive reading (lecture approfondie)
Read carefully for **detailed understanding**.
- Read each sentence
- Note unfamiliar vocabulary
- Re-read difficult passages

## Understanding unknown vocabulary

**Context clues:** use surrounding words to guess meaning
- "The **arid** climate with almost no rainfall made farming impossible." → arid = very dry

**Word formation:** recognise prefixes/suffixes
- un- (not), -tion (act of), re- (again), -less (without), pre- (before)

**Word families:** recognise related words
- economy → economic → economically → economist

## Text types and their features

| Text type | Features | Reading goal |
|-----------|----------|-------------|
| News article | 5W structure, inverted pyramid | Find facts |
| Opinion article | thesis, arguments, conclusion | Identify the author''s position |
| Literary text | narrative, figurative language | Understand meaning and style |
| Scientific text | technical vocabulary, passive | Understand processes |
| Advertisement | persuasive language, superlatives | Identify the selling point |

## Answering comprehension questions

- **True/False questions:** find evidence in the text — do not guess!
- **Multiple choice:** eliminate wrong answers
- **Open questions:** answer in complete sentences, refer to the text
- **Vocabulary questions:** explain in your own words',
  (SELECT id FROM subjects WHERE name = 'Anglais' AND level_id = (SELECT id FROM levels WHERE level_number = 3)),
  (SELECT id FROM levels WHERE level_number = 3),
  true
);


-- ============================================================
-- NIVEAU 4 — Français
-- ============================================================

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Le roman réaliste du XIXe siècle : Balzac, Flaubert, Zola',
  'Étudier les caractéristiques du réalisme et du naturalisme à travers leurs œuvres majeures.',
  'TEXT',
  '# Le roman réaliste et naturaliste

## Le réalisme (1840-1890)

### Définition et contexte
Le réalisme littéraire cherche à reproduire la réalité sociale avec précision et objectivité. Il naît dans la France industrielle et bourgeoise du XIXe siècle, en réaction contre les excès sentimentaux du Romantisme.

### Caractéristiques du roman réaliste
- **Observation minutieuse** du monde contemporain
- **Souci du détail** : milieux sociaux, décors, vêtements, langage
- **Critique sociale** implicite ou explicite
- Types de personnages issus de toutes les couches sociales

### Honoré de Balzac (1799-1850) : *La Comédie humaine*
Ensemble de 90 romans et nouvelles qui forment une fresque de la société française de la Restauration. Le même personnage peut apparaître dans plusieurs romans.

**Œuvres clés :** *Le Père Goriot*, *Eugénie Grandet*, *Illusions perdues*

*Le Père Goriot* : un père qui se sacrifie pour ses filles ingrates. Rastignac, étudiant ambitieux, comprend la cruauté de la société parisienne.

### Gustave Flaubert (1821-1880)
Maître du style, obsédé par la perfection formelle. La phrase comme unité musicale.

**Œuvre clé :** *Madame Bovary* (1857) — Emma Bovary rêve d''une vie romanesque que la réalité provinciale lui refuse → adultères, dettes, tragédie.

**Le style indirect libre** : technique narrative qui fond la voix du narrateur et la conscience du personnage sans marques typographiques.

## Le naturalisme : Émile Zola (1840-1902)

Le naturalisme va plus loin que le réalisme : il applique la méthode scientifique à la littérature. L''écrivain est un "chirurgien social" qui dissèque la société.

### *Les Rougon-Macquart* (20 romans, 1871-1893)
Histoire naturelle et sociale d''une famille sous le Second Empire, influencée par l''hérédité et l''environnement.

**Œuvres clés :**
- *Germinal* (1885) : les mineurs du Nord en grève → condition ouvrière, capitalisme
- *L''Assommoir* : l''alcoolisme dans les milieux populaires parisiens
- *Nana* : la courtisane et la corruption de la bourgeoisie

### L''affaire Dreyfus
En 1898, Zola publie *J''accuse !* dans L''Aurore, défendant le capitaine Dreyfus (juif condamné à tort pour espionnage). Acte majeur de l''engagement de l''intellectuel dans la vie publique.',
  (SELECT id FROM subjects WHERE name = 'Français' AND level_id = (SELECT id FROM levels WHERE level_number = 4)),
  (SELECT id FROM levels WHERE level_number = 4),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'La dissertation littéraire : méthode et plan',
  'Apprendre à construire et rédiger une dissertation littéraire en respectant la démarche argumentative.',
  'TEXT',
  '# La dissertation littéraire

## Qu''est-ce qu''une dissertation ?

La dissertation est un exercice d''argumentation qui consiste à **répondre à une question littéraire** en développant une réflexion organisée, illustrée par des exemples tirés des œuvres lues.

## Les types de sujets

### Sujet fermé (thèse à défendre ou réfuter)
"La littérature n''est utile qu''en tant que divertissement."
→ On peut défendre, nuancer ou réfuter la thèse.

### Sujet ouvert (question ouverte)
"En quoi la littérature peut-elle changer notre vision du monde ?"
→ On organise une réflexion à plusieurs axes.

## La méthode en 4 étapes

### 1. Analyser le sujet
- Définir les mots-clés
- Repérer les tensions, les mots ambigus
- Reformuler en question(s)

### 2. Chercher des idées (brainstorming)
- Arguments pour / contre
- Exemples d''œuvres
- Définitions, distinctions

### 3. Élaborer le plan

**Plan dialectique (thèse/antithèse/synthèse) :**
- Thèse : défense de la proposition
- Antithèse : nuances, limites, contradictions
- Synthèse : dépassement, nouvelle perspective

**Plan thématique :**
- 3 axes qui examinent la question sous différents angles

### 4. Rédiger

**Introduction :**
1. Accroche (citation, fait d''actualité, question rhétorique)
2. Présentation du sujet
3. Problématique
4. Annonce du plan

**Développement :**
- Chaque partie commence par une phrase d''annonce
- Chaque sous-partie : idée + exemple + analyse

**Conclusion :**
1. Bilan du développement
2. Réponse à la problématique
3. Ouverture

## Les erreurs à éviter
- Paraphraser les œuvres au lieu d''analyser
- Oublier la problématique
- Manquer d''exemples précis
- Négliger les transitions entre parties',
  (SELECT id FROM subjects WHERE name = 'Français' AND level_id = (SELECT id FROM levels WHERE level_number = 4)),
  (SELECT id FROM levels WHERE level_number = 4),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Le théâtre : tragédie, comédie et dramaturgie',
  'Comprendre les conventions théâtrales et analyser les textes de Molière, Racine et les dramaturges modernes.',
  'TEXT',
  '# Le théâtre

## Le texte théâtral : spécificités

Le théâtre est écrit pour être **joué**. Sa lecture demande d''imaginer la mise en scène.

### Les composantes du texte
- **Les répliques** : paroles des personnages
- **Les didascalies** : indications scéniques (décor, ton, gestes, lumière)
- **Les actes et les scènes** : divisions du texte

### Les types de discours au théâtre
- **Dialogue** : échange entre personnages
- **Monologue** : un personnage seul parle à voix haute (révèle sa pensée intérieure)
- **Aparté** : un personnage parle au public sans que les autres l''entendent (convention théâtrale)
- **Tirade** : long discours d''un seul personnage

## La tragédie classique

### Règles de la tragédie classique (XVIIe)
- **Règle des trois unités** : unité de temps (24h), de lieu (un seul endroit), d''action (une seule intrigue principale)
- **Vraisemblance** et **bienséance** (rien de choquant sur scène)
- Personnages de rang élevé (rois, héros antiques)
- Fin malheureuse → **catharsis** (purification des passions)

### Jean Racine (1639-1699)
*Phèdre* (1677) : Phèdre, épouse de Thésée, est amoureuse de son beau-fils Hippolyte. Passion coupable, fatalité, mort.

## La comédie : Molière (1622-1673)

Molière critique les vices et travers de la société de son temps.

**Œuvres clés :**
- *L''Avare* : Harpagon et son obsession de l''argent
- *Le Bourgeois gentilhomme* : Monsieur Jourdain veut devenir noble
- *Le Tartuffe* : dénonce le faux dévot et l''hypocrisie religieuse
- *Dom Juan* : le libertin séducteur et impie

**Les ressorts comiques :**
- Comique de situation (quiproquos, travestissements)
- Comique de caractère (l''avare, le pédant, le jaloux)
- Comique de mots (jeux de mots, répétitions)
- Comique de gestes (lazzi, mimiques)

## Le théâtre moderne et contemporain

- **Brecht** : théâtre épique, distanciation → le spectateur doit réfléchir, pas s''identifier
- **Ionesco, Beckett** : théâtre de l''absurde → *En attendant Godot* (1953)
- Le théâtre belge : **Hugo Claus**, **Jean-Marie Piemme**',
  (SELECT id FROM subjects WHERE name = 'Français' AND level_id = (SELECT id FROM levels WHERE level_number = 4)),
  (SELECT id FROM levels WHERE level_number = 4),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'La syntaxe avancée : propositions subordonnées',
  'Analyser les différents types de propositions subordonnées et leur rôle dans la phrase complexe.',
  'TEXT',
  '# La phrase complexe et les subordonnées

## La phrase complexe

Une phrase complexe contient plusieurs **propositions** (groupes organisés autour d''un verbe conjugué).

### Types de propositions

- **Proposition principale** : peut exister seule
- **Proposition subordonnée** : dépend de la principale (introduite par un mot subordonnant)
- **Proposition coordonnée** : reliée par une conjonction de coordination (mais, ou, et, donc, or, ni, car)
- **Proposition juxtaposée** : reliée uniquement par la ponctuation

## Les propositions subordonnées

### 1. Subordonnée relative

**Rôle :** complément du nom ou du pronom (comme un adjectif).
**Mots subordonnants :** pronoms relatifs (qui, que, quoi, dont, où, lequel...)

→ "Le livre **que tu m''as prêté** est passionnant." (que = COD de a prêté)
→ "Le village **où je suis né** existe encore." (où = CC de lieu)
→ "L''auteur **dont je t''ai parlé** est belge." (dont = COI de a parlé)

### 2. Subordonnée conjonctive complétive

**Rôle :** COD de la principale (comme un groupe nominal).
**Introduite par** : que

→ "Je pense **qu''il viendra**."
→ "Il est certain **qu''elle réussira**."

### 3. Subordonnées circonstancielles

**Rôle :** CC de la principale (temps, cause, conséquence, concession, condition, but, comparaison...)

| Type | Conjonction | Mode |
|------|------------|------|
| Temps | quand, lorsque, avant que, après que | Indicatif / Subjonctif |
| Cause | parce que, puisque, comme | Indicatif |
| Conséquence | si bien que, de sorte que | Indicatif |
| Concession | bien que, quoique, malgré que | Subjonctif |
| Condition | si, à condition que, pourvu que | Indicatif / Subjonctif |
| But | pour que, afin que | Subjonctif |

**Exemple :** "**Bien qu''il soit fatigué**, il continue à travailler." (concessif + subjonctif)

## Exercice d''analyse

Analysez : "Je crois que les élèves qui travaillent régulièrement réussissent mieux, bien que les examens soient stressants."

- "que les élèves qui travaillent régulièrement réussissent mieux" : subordonnée conjonctive complétive (COD de crois)
- "qui travaillent régulièrement" : subordonnée relative (CN de élèves)
- "bien que les examens soient stressants" : subordonnée circonstancielle de concession',
  (SELECT id FROM subjects WHERE name = 'Français' AND level_id = (SELECT id FROM levels WHERE level_number = 4)),
  (SELECT id FROM levels WHERE level_number = 4),
  true
);


-- ============================================================
-- NIVEAU 4 — Histoire
-- ============================================================

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'La colonisation africaine et le Congo belge',
  'Analyser le contexte et les mécanismes de la colonisation de l''Afrique, en particulier le cas du Congo.',
  'TEXT',
  '# Le Congo belge et la colonisation africaine

## Le partage de l''Afrique

Le **Congrès de Berlin (1884-1885)** partage l''Afrique entre les puissances européennes sans consulter les Africains. L''Afrique est alors presque entièrement sous contrôle colonial d''ici 1914.

**Motifs de la colonisation :**
- Économiques : matières premières, débouchés commerciaux
- Politiques : prestige national, rivalités entre puissances
- Idéologiques : "mission civilisatrice" (idéologie raciste qui justifie la domination)

## L''État indépendant du Congo (1885-1908)

Léopold II, roi des Belges, s''approprie personnellement le Congo (85 fois la superficie de la Belgique) lors du Congrès de Berlin. Il en fait sa propriété privée sous prétexte d''une mission humanitaire contre la traite arabe des esclaves.

### Le régime de la terreur

**Système du caoutchouc :** chaque village doit livrer des quotas de caoutchouc sauvage sous peine de:
- Mutilations (coupure de mains → preuve que les cartouches ne sont pas gaspillées)
- Prise d''otages (femmes et enfants)
- Destruction de villages

**Bilan humain :** estimations entre 1 et 10 millions de morts (famine, violence, maladies, chute de natalité).

### La prise de conscience internationale

- **E.D. Morel** (journaliste) et **Roger Casement** (consul britannique) dénoncent les atrocités
- Campagne internationale de presse → "Congo Reform Association"
- Léopold cède le Congo à l''État belge en **1908**

## Le Congo belge (1908-1960)

L''État belge prend le relais mais maintient le système colonial :
- **Paternalisme** : développement économique + soin de la population sans émancipation politique
- Grandes sociétés (UMHK : cuivre du Katanga, Unilever : palmiers à huile)
- Très peu de Congolais accèdent à l''enseignement supérieur

## L''indépendance (30 juin 1960)

Patrice **Lumumba** (premier ministre) proclame l''indépendance. Assassinat de Lumumba (janvier 1961) avec la complicité belge et américaine (Guerre froide). Début d''une longue instabilité politique.',
  (SELECT id FROM subjects WHERE name = 'Histoire' AND level_id = (SELECT id FROM levels WHERE level_number = 4)),
  (SELECT id FROM levels WHERE level_number = 4),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'La Guerre froide : monde bipolaire (1947-1991)',
  'Comprendre les mécanismes de la Guerre froide, ses crises et sa fin à travers les grandes étapes.',
  'TEXT',
  '# La Guerre froide (1947-1991)

## Définition

La Guerre froide est l''état de tension et de rivalité idéologique, politique et militaire entre les **États-Unis** (bloc capitaliste occidental) et l''**URSS** (bloc communiste oriental), sans affrontement direct entre les deux superpuissances.

## Les origines

- Fin de la Deuxième Guerre mondiale → l''Europe est dévastée, les USA et l''URSS émergent comme superpuissances
- Idéologies opposées : démocratie libérale vs communisme
- **1947 :** Doctrine Truman (endiguement du communisme) + Plan Marshall (aide économique à l''Europe de l''Ouest)

## Le monde bipolaire

### L''OTAN et le Pacte de Varsovie

**Alliance atlantique (OTAN, 1949) :** États-Unis + Europe de l''Ouest (dont la Belgique)

**Pacte de Varsovie (1955) :** URSS + pays d''Europe de l''Est (satellites soviétiques)

### La dissuasion nucléaire

Les deux blocs développent des armes nucléaires → **équilibre de la terreur** : toute guerre directe = destruction mutuelle assurée (MAD : Mutually Assured Destruction).

## Les grandes crises

| Crise | Date | Description |
|-------|------|-------------|
| Berlin | 1948-49 | Blocus soviétique, pont aérien américain |
| Corée | 1950-53 | Guerre chaude par proxies interposés |
| Cuba | 1962 | Crise des missiles → risque de guerre nucléaire |
| Vietnam | 1955-75 | Guerre au Vietnam : USA vs Nord-Vietnam soutenu par URSS/Chine |
| Afghanistan | 1979-89 | Invasion soviétique |

## La fin de la Guerre froide (1989-1991)

- Gorbatchev (URSS) : réformes *glasnost* (transparence) et *perestroïka* (restructuration)
- **9 novembre 1989 :** Chute du mur de Berlin → début des révolutions en Europe de l''Est
- **25 décembre 1991 :** dissolution de l''URSS → fin de la Guerre froide

**Conséquences :** 15 nouvelles républiques indépendantes, élargissement de l''OTAN et de l''UE vers l''Est.',
  (SELECT id FROM subjects WHERE name = 'Histoire' AND level_id = (SELECT id FROM levels WHERE level_number = 4)),
  (SELECT id FROM levels WHERE level_number = 4),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'La construction européenne : de la CECA à l''Union européenne',
  'Retracer les étapes de la construction européenne et comprendre les institutions et le fonctionnement de l''UE.',
  'TEXT',
  '# La construction européenne

## Les origines : l''après-guerre

Après la Seconde Guerre mondiale, des personnalités comme **Jean Monnet**, **Robert Schuman** et **Konrad Adenauer** promeuvent l''idée de réconciliation franco-allemande et d''intégration économique européenne.

**Objectifs initiaux :** prévenir une nouvelle guerre, reconstruire les économies, contrer l''influence soviétique.

## Les étapes

### La CECA (1951)
Communauté européenne du charbon et de l''acier → mette en commun les industries de guerre franco-allemandes (charbon et acier).

Membres fondateurs : France, Allemagne, Italie, Belgique, Pays-Bas, Luxembourg (**les Six**).

### Le traité de Rome (1957)
Création de la **CEE** (Communauté économique européenne) et de l''**Euratom**.
- Marché commun : libre circulation des marchandises, services, capitaux, personnes
- Politique agricole commune (PAC)

### L''Acte unique européen (1986)
Grand marché unique au 1er janvier 1993 : fin des frontières intérieures.

### Le traité de Maastricht (1992)
Naissance de l''**Union européenne** :
- Union économique et monétaire → **euro** (2002 pour les billets et pièces)
- Politique étrangère et de sécurité commune
- Coopération en justice et affaires intérieures

### Élargissements successifs
De 6 pays en 1957 à 27 membres en 2024 (après le Brexit britannique en 2020).

## Les institutions européennes

| Institution | Rôle | Siège |
|------------|------|-------|
| Parlement européen | Vote les lois, élu au suffrage universel | Strasbourg/Bruxelles |
| Conseil de l''UE | Représente les États membres | Bruxelles |
| Commission européenne | Propose les lois, gardienne des traités | Bruxelles |
| Cour de justice (CJUE) | Interprète le droit communautaire | Luxembourg |

## La Belgique et l''UE

Bruxelles est le siège de la Commission européenne, du Conseil de l''UE et du Parlement européen (partiellement) → capitale de facto de l''Union européenne.',
  (SELECT id FROM subjects WHERE name = 'Histoire' AND level_id = (SELECT id FROM levels WHERE level_number = 4)),
  (SELECT id FROM levels WHERE level_number = 4),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Les droits de l''homme : histoire et enjeux contemporains',
  'Retracer l''histoire des droits humains et analyser leurs défis dans le monde actuel.',
  'TEXT',
  '# Les droits humains

## Les origines philosophiques

### Le droit naturel
Depuis l''Antiquité, des philosophes soutiennent que des droits fondamentaux appartiennent à tout être humain, indépendamment des lois positives des États.

### Les Lumières (XVIIIe siècle)
Locke, Rousseau, Voltaire : droits inaliénables à la vie, à la liberté et à la propriété. Ces idées nourrissent les révolutions américaine et française.

## Les grandes déclarations

### 1776 : Déclaration d''indépendance américaine
"Tous les hommes sont créés égaux, dotés par leur Créateur de certains droits inaliénables : la vie, la liberté et la recherche du bonheur."

### 1789 : DDHC (France)
Première déclaration nationale des droits. Influencera la plupart des constitutions modernes.

### 1948 : Déclaration universelle des droits de l''Homme (DUDH)
Adoptée par l''ONU après les horreurs de la Seconde Guerre mondiale.

**30 articles fondamentaux :**
- Droit à la vie, à la liberté, à la sécurité
- Interdiction de la torture et de l''esclavage
- Droit à un procès équitable
- Liberté d''expression, de religion, d''association
- Droit à l''éducation, au travail, à la santé

## Les mécanismes de protection

- **ONU** : Conseil des droits de l''Homme, Haut-Commissariat aux réfugiés (HCR)
- **Convention européenne des droits de l''Homme (1950)** : Cour européenne des droits de l''Homme (CEDH) à Strasbourg
- ONG : Amnesty International, Human Rights Watch

## Les défis contemporains

### Droits non respectés
- Violations dans les États autoritaires (peine de mort, torture, censure)
- Conditions des migrants et réfugiés
- Droits des femmes (mutilations, mariages forcés, écart salarial)

### Nouveaux droits émergents
- Droit à un environnement sain (reconnu par l''ONU en 2022)
- Droits numériques : vie privée à l''ère des données
- Droits des générations futures face au changement climatique',
  (SELECT id FROM subjects WHERE name = 'Histoire' AND level_id = (SELECT id FROM levels WHERE level_number = 4)),
  (SELECT id FROM levels WHERE level_number = 4),
  true
);


-- ============================================================
-- NIVEAU 4 — Néerlandais
-- ============================================================

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'De Nederlandse literatuur : een beknopt overzicht',
  'Découvrir la littérature néerlandophone à travers ses courants et auteurs majeurs.',
  'TEXT',
  '# Nederlandse literatuur

## Waarom literatuur lezen?

Literatuur helpt ons om:
- Empathie te ontwikkelen (andere perspectieven begrijpen)
- Kritisch te denken over de samenleving
- De taal te verrijken
- Te genieten van verhalen en poëzie

## Middeleeuwse literatuur

### *Van den vos Reynaerde* (circa 1260)
De bekendste Middelnederlandse tekst: een satirisch dierenverhaal over de slimme vos Reynaerde die steeds ontsnapt aan de rechtbank van koning Nobel de leeuw.
→ **Satire** van de middeleeuwse samenleving: adel, kerk, gerechtigheid.

## 17de en 18de eeuw: de Gouden Eeuw

### Joost van den Vondel (1587-1679)
De "prins der dichters" → tragedies (*Gijsbrecht van Amstel*, *Lucifer*)

### P.C. Hooft (1581-1647)
Poëzie en geschiedschrijving (*Nederlandsche Historiën*)

## 19de en 20de eeuw

### Multatuli (Eduard Douwes Dekker, 1820-1887)
*Max Havelaar* (1860): roman die de koloniale uitbuiting in Nederlands-Indië aanklaagt. Pionier van de sociale literatuur.

### Louis Paul Boon (1912-1979, Belgisch)
*De Kapellekensbaan* (1953): de werkende klasse in Aalst → experimenteel, sociaal engagement.

### Hugo Claus (1929-2008, Gent)
De grootste Vlaamse schrijver van de 20de eeuw.
*Het verdriet van België* (1983): de collaboratie tijdens WOII en de complexe Belgische identiteit.

## Hedendaagse Vlaamse literatuur

### Tom Lanoye (°1958)
*Sprakeloos* (2009): over zijn moeder die aan afasie lijdt na een beroerte.

### Annelies Verbeke (°1976)
*Slaap!* (2003), *Dertig dagen* (2015): hedendaagse thema''s zoals eenzaamheid en identiteit.

## Poëzieanalyse

Bij het analyseren van een gedicht, let je op:
- **Structuur**: strofen, rijmschema, vers
- **Klank**: alliteratie, assonantie, rijm
- **Beeldspraak**: metafoor, vergelijking, personificatie
- **Thema**: wat wil de dichter zeggen?
- **Toon**: melancholisch, ironisch, hoopvol...

**Rijmschema**: ABAB (gekruist), ABBA (omarmend), AABB (gepaard)',
  (SELECT id FROM subjects WHERE name = 'Néerlandais' AND level_id = (SELECT id FROM levels WHERE level_number = 4)),
  (SELECT id FROM levels WHERE level_number = 4),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Betoog schrijven : rédiger un texte argumentatif en néerlandais',
  'Maîtriser la structure et le style pour rédiger un texte argumentatif en néerlandais.',
  'TEXT',
  '# Een betoog schrijven

## Wat is een betoog?

Een **betoog** is een tekst waarbij je je lezer probeert te overtuigen van jouw standpunt (stelling/these) door middel van argumenten.

## Structuur van een betoog

### 1. Inleiding
- Aandachttrekker (vraag, citaat, opvallend gegeven)
- Onderwerp introduceren
- Stelling formuleren: "Ik ben van mening dat..."

### 2. Kern
Minstens 2-3 alinea''s, elk met:
- **Topicsin (kernzin)**: de hoofdgedachte van de alinea
- **Argumenten en voorbeelden**: bewijs, cijfers, bronnen
- **Afsluiting**: terugkoppeling naar de stelling

### 3. Besluit
- Samenvatting van argumenten
- Herhaling stelling
- Afsluitende boodschap (oproep tot actie, vraag, uitsmijter)

## Argumentatieve signaalwoorden

| Functie | Woorden |
|---------|---------|
| Stelling geven | Ik ben van mening dat / Naar mijn inzicht |
| Argument toevoegen | Ten eerste, bovendien, daarnaast |
| Tegenargument erkennen | Weliswaar..., maar / Hoewel... toch |
| Conclusie | Kortom, samenvattend, al met al |
| Voorbeeld | Zo blijkt dat, bijvoorbeeld, neem nu |
| Oorzaak-gevolg | Hierdoor, dit leidt tot, als gevolg van |

## Stijltips

- Schrijf in de **formele stijl** (geen ''ik vind'', gebruik ''men kan stellen dat'')
- Varieer je zinslengte
- Gebruik de **actieve vorm** liever dan de passieve
- Vermijd herhaling: gebruik synoniemen
- Controleer de spelling en interpunctie

## Voorbeeld van een sterke alinea

**Onderwerp:** Smartphone in de klas

*Ten eerste zorgen smartphones in de klas voor afleiding. Leerlingen zijn geneigd om berichten te controleren of sociale media te bekijken in plaats van de les te volgen. Uit een studie van de Universiteit Gent (2022) blijkt dat leerlingen die hun smartphone op de bank leggen, gemiddeld 20% minder scoren op concentratietests. De smartphone verbant uit de klas zou de leerprestaties dan ook aanzienlijk verbeteren.*',
  (SELECT id FROM subjects WHERE name = 'Néerlandais' AND level_id = (SELECT id FROM levels WHERE level_number = 4)),
  (SELECT id FROM levels WHERE level_number = 4),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Luisteren en spreken : compréhension orale et prise de parole en néerlandais',
  'Développer ses compétences d''écoute et d''expression orale en néerlandais dans des situations variées.',
  'TEXT',
  '# Luisteren en spreken

## Luisterstrategie ën

Goed luisteren is een actieve vaardigheid. Je gebruikt verschillende strategieën afhankelijk van de luisteropdracht.

### Globaal luisteren
→ Begrijp het algemene onderwerp en de grote lijnen.
- Let op intonatie en de nadruk die de spreker legt
- Probeer het thema te identificeren

### Gericht luisteren
→ Zoek specifieke informatie (namen, data, plaatsen, cijfers).
- Schrijf trefwoorden op terwijl je luistert
- Let op signaalwoorden (ten eerste, maar, want...)

### Intensief luisteren
→ Begrijp alles zo gedetailleerd mogelijk.
- Maak gebruik van herlezen/herhalen (als mogelijk)

## Spreekstrategieën

### Monoloog houden (exposé/presentatie)

**Structuur:**
1. **Inleiding**: "Vandaag wil ik jullie vertellen over..."
2. **Kern**: maximaal 3 hoofdpunten, elk met een voorbeeld
3. **Besluit**: "Samenvattend kan ik zeggen dat..."

**Tips:**
- Spreek duidelijk en niet te snel
- Gebruik visuele ondersteuning (slides, afbeeldingen)
- Houd oogcontact met het publiek
- Varieer je intonatie

### Debatteren

In een debat verdedig je een standpunt en reageer je op tegenargumenten.

Nuttige uitdrukkingen:
- "Ik ben het niet eens met... omdat..."
- "Klopt, maar je vergeet te zeggen dat..."
- "Wat u zegt klopt deels, maar..."
- "Dat is een goed punt. Toch..."

## Uitspraakoefeningen

**Moeilijke klanken voor Franstaligen:**

| Klank | Beschrijving | Voorbeeldwoorden |
|-------|-------------|-----------------|
| g/ch | gutturaal (keelklank) | goed, groot, chaos |
| ui | geen Frans equivalent | huis, buiten, muis |
| eu | half-open achterste klinker | neus, leugen, zeuren |
| ij/ei | diftong | ijzer, zijn, tijd |
| uu | lange /y/ klank |uur, duur,uur |

**Oefentekst voor uitspraak:**
"De Vlaamse zon schijnt over gouden velden. Het is heerlijk om buiten te lopen langs de grote gracht."',
  (SELECT id FROM subjects WHERE name = 'Néerlandais' AND level_id = (SELECT id FROM levels WHERE level_number = 4)),
  (SELECT id FROM levels WHERE level_number = 4),
  true
);


-- ============================================================
-- NIVEAU 4 — Anglais
-- ============================================================

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Conditional sentences: zero, first, second and third conditionals',
  'Master the four types of conditional sentences and understand when to use each one.',
  'TEXT',
  '# Conditional Sentences

## What are conditionals?

Conditional sentences describe situations and their consequences. They express real or hypothetical conditions using an **if-clause** (condition) and a **main clause** (result).

## The Four Conditionals

### Zero Conditional (facts and general truths)
**Structure:** If + present simple → present simple
**Use:** Always true, scientific facts, habits

→ "If you heat water to 100°C, it **boils**."
→ "If I eat chocolate, I **get** headaches."

### First Conditional (real/likely future)
**Structure:** If + present simple → will + infinitive
**Use:** Possible and likely future situations

→ "If it **rains** tomorrow, we **will cancel** the trip."
→ "If you **study** hard, you **will pass** the exam."

### Second Conditional (unreal/hypothetical present or future)
**Structure:** If + past simple → would + infinitive
**Use:** Imaginary or unlikely situations in the present/future

→ "If I **had** a million euros, I **would travel** the world."
→ "If I **were** you, I **would apologise**." (Note: always *were*, not *was*)

### Third Conditional (unreal past / regrets)
**Structure:** If + past perfect → would have + past participle
**Use:** Imaginary situations in the past — things that did NOT happen

→ "If she **had studied** more, she **would have passed** the exam." (She didn''t study → she failed)
→ "If we **hadn''t missed** the train, we **would have arrived** on time."

## Mixed Conditionals

Sometimes we mix past condition with present result (or vice versa):

**Past condition → present result:**
"If I **had taken** that job, I **would be** living in Paris now."

**Present condition → past result:**
"If she **were** more careful, she **wouldn''t have made** that mistake."

## Common Errors

| Error | Correction |
|-------|-----------|
| If I will go... | If I **go**... (present simple in if-clause) |
| If I would have... | If I **had**... (past perfect in 3rd conditional) |
| If I was you... | If I **were** you... (subjunctive) |

## Wish sentences

Similar to conditionals, "wish" expresses regret:
- I wish I **had** more time. (present wish = 2nd conditional)
- I wish I **had studied** harder. (past regret = 3rd conditional)',
  (SELECT id FROM subjects WHERE name = 'Anglais' AND level_id = (SELECT id FROM levels WHERE level_number = 4)),
  (SELECT id FROM levels WHERE level_number = 4),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Reported speech: direct and indirect speech',
  'Convert direct speech to reported (indirect) speech accurately, applying tense backshift and pronoun changes.',
  'TEXT',
  '# Reported Speech

## What is reported speech?

Reported speech (indirect speech) is used to tell someone what another person said, without quoting them directly.

- **Direct speech:** She said, "I am hungry."
- **Reported speech:** She said (that) she **was** hungry.

## Tense backshift

When we report speech, we usually shift the tense **one step back** into the past.

| Direct Speech | Reported Speech |
|--------------|----------------|
| Present Simple (is/are) | Past Simple (was/were) |
| Present Continuous (is eating) | Past Continuous (was eating) |
| Past Simple (ate) | Past Perfect (had eaten) |
| Present Perfect (has eaten) | Past Perfect (had eaten) |
| will | would |
| can | could |
| may | might |
| must | had to |

### Examples:
- "I **love** pizza." → She said she **loved** pizza.
- "I **am working** now." → He said he **was working** then.
- "I **have finished**." → She said she **had finished**.
- "I **will call** you." → He said he **would call** me.

## Changes in pronouns, time, and place

| Direct | Reported |
|--------|---------|
| I / me | he / she / him / her |
| we / us | they / them |
| my / our | his / her / their |
| today | that day |
| yesterday | the day before / the previous day |
| tomorrow | the next day / the following day |
| now | then |
| here | there |
| this | that |
| these | those |

## Reporting verbs (more precise than "said")

| Verb | Use | Example |
|------|-----|---------|
| told | + object | She told me she was tired. |
| asked | questions | He asked if I was coming. |
| warned | danger | She warned him not to go there. |
| promised | future commitment | He promised he would help. |
| suggested | idea | She suggested going to the cinema. |
| refused | declining | He refused to answer. |
| admitted | confession | She admitted she had made a mistake. |

## Questions in Reported Speech

Yes/No questions → use **if** or **whether**:
"Are you coming?" → He asked **if** I was coming.

Wh-questions → use the question word (no inversion, no do/does/did):
"Where do you live?" → She asked **where I lived**.
"What did you say?" → He asked **what I had said**.',
  (SELECT id FROM subjects WHERE name = 'Anglais' AND level_id = (SELECT id FROM levels WHERE level_number = 4)),
  (SELECT id FROM levels WHERE level_number = 4),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Literature in English: Shakespeare and the short story',
  'Explore key texts from English literature — from Shakespeare to contemporary short stories.',
  'TEXT',
  '# Literature in English

## Why study literature?

Reading literature in English develops:
- Deeper language skills (vocabulary, style, idioms)
- Cultural understanding of English-speaking societies
- Critical thinking and interpretation skills
- Empathy through experiencing other perspectives

## William Shakespeare (1564-1616)

Shakespeare is arguably the greatest writer in the English language. He wrote 37 plays and 154 sonnets.

### Types of plays
- **Tragedies:** *Hamlet*, *Macbeth*, *King Lear*, *Romeo and Juliet*, *Othello*
- **Comedies:** *A Midsummer Night''s Dream*, *Much Ado About Nothing*, *Twelfth Night*
- **Histories:** *Henry V*, *Richard III*

### Language features
Shakespeare wrote in **Early Modern English**. Key features:
- *thou/thee* = you (singular, informal)
- *doth* = does; *hath* = has; *art* = are; *wilt* = will
- Iambic pentameter (10 syllables per line: da-DUM da-DUM da-DUM da-DUM da-DUM)

**Famous quote:** "To be or not to be, that is the question." (*Hamlet*, Act III)

### *Romeo and Juliet* — key themes
Love vs. family loyalty, fate vs. free will, youth vs. age. Two young lovers from feuding families in Verona end in tragedy.

## The Short Story

The short story is a concise narrative focusing on a single incident, character, or theme.

### Structure of a short story
- **Exposition:** introduce setting, characters, situation
- **Rising action:** conflict develops
- **Climax:** turning point
- **Falling action:** consequences
- **Resolution/Ending:** open, closed, or ironic

### Famous authors
- **Edgar Allan Poe** (19th C, USA): horror and mystery
- **O. Henry** (USA): surprise endings (*The Gift of the Magi*)
- **Katherine Mansfield** (NZ): stream of consciousness
- **Roald Dahl** (UK): dark humour and twists (*Lamb to the Slaughter*)
- **Chimamanda Ngozi Adichie** (Nigeria/USA): contemporary postcolonial themes

## Analysing a literary text

Quote → Explain → Analyse:
"When Dahl writes ''she walked up behind him and without any pause she swung the leg of lamb high in the air'' the sudden shift from domestic calm to violence shocks the reader, subverting our expectations of the ''devoted wife'' character."',
  (SELECT id FROM subjects WHERE name = 'Anglais' AND level_id = (SELECT id FROM levels WHERE level_number = 4)),
  (SELECT id FROM levels WHERE level_number = 4),
  true
);


-- ============================================================
-- NIVEAU 5 — Mathématiques générales 4h
-- ============================================================

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Intégration : calcul intégral et applications',
  'Comprendre la notion d''intégrale définie et indéfinie, et calculer des aires et volumes.',
  'TEXT',
  '# Le calcul intégral

## L''intégrale indéfinie (primitive)

La **primitive** de f(x) est une fonction F(x) telle que F''(x) = f(x).

On note : ∫f(x)dx = F(x) + C (C = constante d''intégration)

### Règles fondamentales

| f(x) | ∫f(x)dx |
|------|---------|
| xⁿ (n ≠ -1) | xⁿ⁺¹/(n+1) + C |
| 1/x | ln|x| + C |
| eˣ | eˣ + C |
| cos(x) | sin(x) + C |
| sin(x) | -cos(x) + C |

**Linéarité :** ∫[af(x) + bg(x)]dx = a∫f(x)dx + b∫g(x)dx

### Exemples
- ∫3x²dx = x³ + C
- ∫(2x + 5)dx = x² + 5x + C

## L''intégrale définie

**Théorème fondamental :**
∫[a→b] f(x)dx = F(b) - F(a)

où F est une primitive de f.

### Exemple
∫[0→2] x²dx = [x³/3]₀² = 8/3 - 0 = **8/3**

## Applications géométriques

### Aire sous une courbe
Si f(x) ≥ 0 sur [a, b], l''aire entre la courbe et l''axe des x est :
**A = ∫[a→b] f(x)dx**

Exemple : aire sous f(x) = x² entre x = 0 et x = 3 :
A = ∫[0→3] x²dx = [x³/3]₀³ = 9 unités²

### Aire entre deux courbes
**A = ∫[a→b] |f(x) - g(x)|dx**

### Volume de révolution
Volume obtenu en faisant tourner f(x) autour de l''axe x :
**V = π × ∫[a→b] [f(x)]²dx**

## Techniques d''intégration

### Intégration par substitution
∫f(g(x))·g''(x)dx = ∫f(u)du avec u = g(x)

Exemple : ∫2x·e^(x²)dx
u = x² → du = 2xdx → ∫e^u du = e^u + C = **e^(x²) + C**',
  (SELECT id FROM subjects WHERE name = 'Mathématiques générales 4h' AND level_id = (SELECT id FROM levels WHERE level_number = 5)),
  (SELECT id FROM levels WHERE level_number = 5),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Fonctions exponentielles et logarithmes',
  'Étudier les propriétés des fonctions exponentielles et logarithmiques et leurs applications.',
  'TEXT',
  '# Fonctions exponentielles et logarithmes

## La fonction exponentielle

### Définition
f(x) = eˣ, où e ≈ 2,718... (constante d''Euler)

### Propriétés
- Domaine : ℝ ; Image : ]0; +∞[
- Croissante sur ℝ
- f''(x) = eˣ (la dérivée est elle-même !)
- e⁰ = 1 ; eˣ > 0 toujours

### Règles de calcul
- eᵃ × eᵇ = eᵃ⁺ᵇ
- eᵃ/eᵇ = eᵃ⁻ᵇ
- (eᵃ)ᵇ = eᵃᵇ
- e⁻ˣ = 1/eˣ

## La fonction logarithme naturel

**ln(x)** est la fonction réciproque de eˣ : ln(eˣ) = x et e^(ln x) = x (pour x > 0)

### Propriétés
- Domaine : ]0; +∞[ ; Image : ℝ
- Croissante sur son domaine
- (ln x)'' = 1/x
- ln(1) = 0 ; ln(e) = 1

### Règles de calcul
- ln(a × b) = ln(a) + ln(b)
- ln(a/b) = ln(a) - ln(b)
- ln(aⁿ) = n × ln(a)

## La base a : généralisation

**Fonction exponentielle de base a :** f(x) = aˣ (a > 0, a ≠ 1)

aˣ = e^(x·ln a)

**Logarithme de base a :** log_a(x) = ln(x)/ln(a)

log_10(x) est le logarithme décimal (très utilisé en sciences).

## Applications

### Croissance exponentielle
Population bactérienne : N(t) = N₀ × eᵏᵗ
- N₀ = population initiale, k = taux de croissance

### Décroissance radioactive
N(t) = N₀ × e^(-λt) = N₀ × (1/2)^(t/T½)

### Intérêts composés
Capital après n années : C(n) = C₀ × (1 + r)ⁿ ≈ C₀ × e^(rn) pour r petit',
  (SELECT id FROM subjects WHERE name = 'Mathématiques générales 4h' AND level_id = (SELECT id FROM levels WHERE level_number = 5)),
  (SELECT id FROM levels WHERE level_number = 5),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Statistiques inférentielles et intervalles de confiance',
  'Comprendre les bases de l''inférence statistique pour passer de l''échantillon à la population.',
  'TEXT',
  '# Statistiques inférentielles

## Du descriptif à l''inférentiel

La **statistique descriptive** décrit les données d''un échantillon.
La **statistique inférentielle** permet de généraliser les résultats d''un échantillon à la **population entière**.

## La loi normale (loi de Gauss)

La loi normale est la distribution en forme de **cloche** la plus importante en statistiques.

**Notation :** X ~ N(μ, σ²) avec μ = moyenne et σ = écart-type

### Propriétés
- Symétrique par rapport à μ
- 68% des valeurs dans [μ - σ ; μ + σ]
- 95% des valeurs dans [μ - 2σ ; μ + 2σ]
- 99,7% des valeurs dans [μ - 3σ ; μ + 3σ]

**Variable réduite (Z-score) :** z = (x - μ) / σ → N(0, 1)

## Estimation et intervalles de confiance

On veut estimer la moyenne μ de la population à partir d''un échantillon de taille n.

**Estimateur ponctuel :** x̄ (moyenne de l''échantillon)

**Intervalle de confiance à 95% :**
x̄ ± 1,96 × σ/√n

(quand σ est connu ; sinon on utilise l''écart-type de l''échantillon s)

### Exemple
Une étude sur 100 élèves donne x̄ = 14,2 et s = 2,4.
IC à 95% : 14,2 ± 1,96 × 2,4/√100 = 14,2 ± 0,47
→ [13,73 ; 14,67]

**Interprétation :** On est confiant à 95% que la vraie moyenne de la population est dans cet intervalle.

## Tests d''hypothèses (introduction)

Un **test statistique** permet de décider si une hypothèse sur la population est compatible avec les données.

**H₀ (hypothèse nulle) :** pas de différence, pas d''effet
**H₁ (hypothèse alternative) :** il y a une différence

**p-valeur :** probabilité d''observer les données si H₀ est vraie.
- Si p < 0,05 : on rejette H₀ → résultat statistiquement significatif
- Si p ≥ 0,05 : on ne peut pas rejeter H₀',
  (SELECT id FROM subjects WHERE name = 'Mathématiques générales 4h' AND level_id = (SELECT id FROM levels WHERE level_number = 5)),
  (SELECT id FROM levels WHERE level_number = 5),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Vecteurs et géométrie dans l''espace',
  'Utiliser les vecteurs en 3D pour résoudre des problèmes de géométrie spatiale.',
  'TEXT',
  '# Vecteurs dans l''espace

## Vecteurs en 3D

Un vecteur dans l''espace est défini par trois composantes : **v⃗ = (x, y, z)**

### Opérations vectorielles

**Addition :** u⃗ + v⃗ = (u₁+v₁, u₂+v₂, u₃+v₃)

**Multiplication par un scalaire :** k·v⃗ = (k·x, k·y, k·z)

**Norme (longueur) :** |v⃗| = √(x² + y² + z²)

**Vecteur unitaire :** û = v⃗/|v⃗| (vecteur de norme 1)

## Le produit scalaire

**Définition :** u⃗·v⃗ = u₁v₁ + u₂v₂ + u₃v₃

**Propriété :** u⃗·v⃗ = |u⃗|·|v⃗|·cos(θ)

→ Si u⃗·v⃗ = 0 alors u⃗ ⊥ v⃗ (vecteurs perpendiculaires)

**Application :** Angle entre deux vecteurs :
cos(θ) = u⃗·v⃗ / (|u⃗|·|v⃗|)

## Le produit vectoriel

**Définition :** u⃗ × v⃗ = (u₂v₃-u₃v₂, u₃v₁-u₁v₃, u₁v₂-u₂v₁)

**Propriétés :**
- Résultat perpendiculaire à u⃗ et à v⃗
- |u⃗ × v⃗| = |u⃗|·|v⃗|·sin(θ) = aire du parallélogramme
- u⃗ × v⃗ = -v⃗ × u⃗

## Droites et plans dans l''espace

### Équation paramétrique d''une droite
M = A + t·d⃗ → (x, y, z) = (a₁ + t·d₁, a₂ + t·d₂, a₃ + t·d₃)

### Équation cartésienne d''un plan
ax + by + cz = d

Le vecteur **n⃗ = (a, b, c)** est le **vecteur normal** au plan.

**Exemple :** Plan passant par A(1,2,3) avec normale n⃗=(2,1,-1) :
2(x-1) + 1(y-2) + (-1)(z-3) = 0 → 2x + y - z = 1

## Applications

**Distance d''un point à un plan :**
d(M, plan) = |a·xₘ + b·yₘ + c·zₘ - d| / √(a²+b²+c²)',
  (SELECT id FROM subjects WHERE name = 'Mathématiques générales 4h' AND level_id = (SELECT id FROM levels WHERE level_number = 5)),
  (SELECT id FROM levels WHERE level_number = 5),
  true
);


-- ============================================================
-- NIVEAU 5 — Mathématiques générales 6h
-- ============================================================

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Analyse complexe : nombres complexes et applications',
  'Maîtriser les nombres complexes, leur représentation et leurs propriétés algébriques et géométriques.',
  'TEXT',
  '# Les nombres complexes

## Introduction

Certaines équations n''ont pas de solution réelle : x² + 1 = 0 n''a pas de solution dans ℝ.

On introduit le nombre **i** tel que **i² = -1** (unité imaginaire).

## Définition et formes

Un nombre complexe z est de la forme : **z = a + bi** (forme algébrique)

- **a = Re(z)** : partie réelle
- **b = Im(z)** : partie imaginaire
- Si b = 0 → z est réel ; si a = 0 → z est imaginaire pur

## Opérations algébriques

**Addition :** (a+bi) + (c+di) = (a+c) + (b+d)i

**Multiplication :** (a+bi)(c+di) = (ac-bd) + (ad+bc)i
(en développant et en utilisant i² = -1)

**Conjugué :** z̄ = a - bi

**Module :** |z| = √(a² + b²)

**Division :** z₁/z₂ = z₁·z̄₂ / |z₂|²

### Exemple
z = 3 + 4i → |z| = √(9+16) = 5 ; z̄ = 3 - 4i

## Représentation géométrique (plan de Gauss)

On représente z = a + bi par le point (a, b) dans le plan complexe.
- Axe horizontal : partie réelle
- Axe vertical : partie imaginaire

**Forme trigonométrique :** z = r(cos θ + i·sin θ)
- r = |z| (module)
- θ = arg(z) (argument) = angle avec l''axe réel positif

**Formule d''Euler :** eⁱᶿ = cos θ + i·sin θ

**Forme exponentielle :** z = r·eⁱᶿ

## Formule de De Moivre

(r·eⁱᶿ)ⁿ = rⁿ·eⁱⁿᶿ = rⁿ(cos nθ + i·sin nθ)

→ Permet de calculer facilement les puissances et racines de nombres complexes.

## Racines nème d''un nombre complexe

L''équation zⁿ = w a exactement **n solutions** (racines nème).

Si w = r·eⁱᶿ, les racines sont :
zₖ = ⁿ√r · e^(i(θ + 2kπ)/n), k = 0, 1, ..., n-1

**Exemple :** Racines cubiques de 1 :
z³ = 1 = e^(i·0) → zₖ = e^(2kπi/3) pour k = 0, 1, 2
z₀ = 1 ; z₁ = -1/2 + (√3/2)i ; z₂ = -1/2 - (√3/2)i',
  (SELECT id FROM subjects WHERE name = 'Mathématiques générales 6h' AND level_id = (SELECT id FROM levels WHERE level_number = 5)),
  (SELECT id FROM levels WHERE level_number = 5),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Les coniques : ellipse, hyperbole, parabole',
  'Étudier les courbes coniques, leurs équations cartésiennes et leurs propriétés géométriques.',
  'TEXT',
  '# Les coniques

## Définition générale

Les **coniques** sont les courbes obtenues par l''intersection d''un cône circulaire et d''un plan. Selon l''angle du plan, on obtient une ellipse, une parabole ou une hyperbole.

## La parabole

**Équation :** y = ax² + bx + c (déjà étudié)

**Définition géométrique :** Lieu des points équidistants d''un **foyer F** et d''une **directrice D**.

Forme canonique : y² = 4px (axe horizontal) ; x² = 4py (axe vertical)

## L''ellipse

**Définition :** Lieu des points M tels que MF₁ + MF₂ = 2a (somme des distances à deux foyers = constante).

**Équation :** x²/a² + y²/b² = 1 avec a ≥ b > 0

- **Centre :** O (origine)
- **Foyers :** F₁(-c, 0) et F₂(c, 0) avec c² = a² - b²
- **Demi-axe grand :** a (horizontal si a > b)
- **Demi-axe petit :** b

**Excentricité :** e = c/a (0 < e < 1)
→ Si e → 0 : quasi-cercle ; si e → 1 : très allongée

**Cas particulier :** Cercle = ellipse avec a = b = r

**Application :** Orbites planétaires (Lois de Kepler : orbites elliptiques avec le Soleil en foyer)

## L''hyperbole

**Définition :** Lieu des points M tels que |MF₁ - MF₂| = 2a (différence des distances aux foyers).

**Équation :** x²/a² - y²/b² = 1

- **Centre :** O
- **Foyers :** F₁(-c, 0) et F₂(c, 0) avec c² = a² + b²
- **Asymptotes :** droites y = ±(b/a)x
- **Excentricité :** e = c/a > 1

**Application :** Ondes de choc (bang supersonique), certaines orbites hyperboliques.

## Équation générale des coniques

Ax² + Bxy + Cy² + Dx + Ey + F = 0

| Condition | Conique |
|-----------|---------|
| B² - 4AC < 0 | Ellipse (ou cercle si A=C, B=0) |
| B² - 4AC = 0 | Parabole |
| B² - 4AC > 0 | Hyperbole |',
  (SELECT id FROM subjects WHERE name = 'Mathématiques générales 6h' AND level_id = (SELECT id FROM levels WHERE level_number = 5)),
  (SELECT id FROM levels WHERE level_number = 5),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Théorie des équations différentielles (introduction)',
  'Comprendre les équations différentielles du premier ordre séparables et à variables séparables.',
  'TEXT',
  '# Équations différentielles

## Définition

Une **équation différentielle (ED)** est une équation qui relie une fonction inconnue y(x) et ses dérivées.

**Exemples :**
- y'' = 2x → ordre 1 (ne contient que y'')
- y'' + 3y'' + 2y = 0 → ordre 2

La **solution générale** est une famille de fonctions. Une **condition initiale** donne la solution particulière.

## Équations différentielles du 1er ordre

### Équation séparable
**Form :** y'' = f(x)·g(y) → on sépare les variables

**Méthode :**
dy/g(y) = f(x)dx → intégrer les deux membres

**Exemple :** y'' = 2xy, avec y(0) = 1

dy/y = 2x·dx → ln|y| = x² + C → y = A·e^(x²)

Condition initiale : y(0) = A·e⁰ = A = 1 → **y = e^(x²)**

### Équation linéaire du 1er ordre
**Forme :** y'' + P(x)·y = Q(x)

**Facteur intégrant :** μ(x) = e^(∫P(x)dx)

Solution : y = (1/μ)·∫(μ·Q)dx

## Applications

### Croissance/Décroissance exponentielle
y'' = ky → y = y₀·eᵏˣ

- k > 0 : croissance (population bactérienne, investissement)
- k < 0 : décroissance (radioactivité, refroidissement)

### Loi de refroidissement de Newton
dT/dt = -k(T - Tamb) avec Tamb = température ambiante

Solution : T(t) = Tamb + (T₀ - Tamb)·e^(-kt)

### Dynamique des populations
Modèle logistique : dN/dt = r·N·(1 - N/K)

- r = taux de croissance, K = capacité limite
- Solution : courbe sigmoïde (S)',
  (SELECT id FROM subjects WHERE name = 'Mathématiques générales 6h' AND level_id = (SELECT id FROM levels WHERE level_number = 5)),
  (SELECT id FROM levels WHERE level_number = 5),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Algèbre linéaire avancée : espaces vectoriels',
  'Introduire les notions d''espaces vectoriels, sous-espaces, bases et dimensions.',
  'TEXT',
  '# Espaces vectoriels

## Définition formelle

Un **espace vectoriel** E sur ℝ est un ensemble muni de deux opérations :
- Addition de vecteurs : u⃗ + v⃗ ∈ E
- Multiplication par un scalaire : λ·v⃗ ∈ E

Ces opérations doivent vérifier 8 axiomes (commutativité, associativité, élément neutre, inverse, distributivité...).

**Exemples d''espaces vectoriels :**
- ℝⁿ (n-uplets de réels)
- L''ensemble des polynômes de degré ≤ n
- L''ensemble des fonctions continues sur [a,b]

## Sous-espace vectoriel

Un sous-ensemble F ⊆ E est un **sous-espace vectoriel** si :
1. F est non vide (contient le vecteur nul)
2. F est stable par addition : u⃗, v⃗ ∈ F → u⃗ + v⃗ ∈ F
3. F est stable par multiplication scalaire : v⃗ ∈ F → λ·v⃗ ∈ F

## Famille libre et génératrice

### Famille libre (linéairement indépendante)
v⃗₁, v⃗₂, ..., v⃗ₙ sont libres si :
λ₁v⃗₁ + λ₂v⃗₂ + ... + λₙv⃗ₙ = 0⃗ implique λ₁ = λ₂ = ... = λₙ = 0

**Interprétation :** aucun vecteur n''est combinaison linéaire des autres.

### Famille génératrice
La famille génère E si tout vecteur de E est combinaison linéaire de v⃗₁, ..., v⃗ₙ.

## Base et dimension

Une **base** de E est une famille à la fois libre et génératrice.

**Dimension** de E = nombre de vecteurs d''une base.

### Exemples
- ℝ² : base standard {(1,0), (0,1)}, dim = 2
- ℝ³ : base standard {(1,0,0), (0,1,0), (0,0,1)}, dim = 3
- Polynômes de degré ≤ 2 : base {1, x, x²}, dim = 3

## Coordonnées dans une base

Si B = {b⃗₁, ..., b⃗ₙ} est une base, tout vecteur v⃗ s''écrit uniquement :
v⃗ = x₁b⃗₁ + x₂b⃗₂ + ... + xₙb⃗ₙ

Les (x₁, ..., xₙ) sont les **coordonnées** de v⃗ dans la base B.

**Changement de base :** matrice de passage P entre deux bases.',
  (SELECT id FROM subjects WHERE name = 'Mathématiques générales 6h' AND level_id = (SELECT id FROM levels WHERE level_number = 5)),
  (SELECT id FROM levels WHERE level_number = 5),
  true
);


-- ============================================================
-- NIVEAU 5 — Français
-- ============================================================

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Le surréalisme et la littérature de l''entre-deux-guerres',
  'Étudier le mouvement surréaliste et ses représentants belges et français (Breton, Magritte, Michaux).',
  'TEXT',
  '# Le surréalisme

## Contexte historique

Après la Première Guerre mondiale, une génération d''artistes et d''écrivains est profondément traumatisée. Ils rejettent la raison et la logique qui ont mené à la catastrophe.

**Dada (1916)** prépare le terrain : mouvement nihiliste et provocateur qui remet en question toutes les valeurs artistiques établies.

## Le surréalisme : définition

**André Breton** publie le *Manifeste du surréalisme* en **1924**. Il définit le surréalisme comme :

"Automatisme psychique pur par lequel on se propose d''exprimer, soit verbalement, soit par écrit, soit de toute autre manière, le fonctionnement réel de la pensée. Dictée de la pensée, en l''absence de tout contrôle exercé par la raison, en dehors de toute préoccupation esthétique ou morale."

### Les influences
- **Freud** et l''inconscient, les rêves, la psychanalyse
- **Marx** et la révolution sociale
- Le hasard, l''érotisme, l''étrange

## Les techniques surréalistes

### L''écriture automatique
Écrire sans censure de la raison, en laissant le flux inconscient s''exprimer.

### Le cadavre exquis
Plusieurs personnes écrivent une phrase ou dessinent un segment d''image en pliant le papier pour cacher ce qu''a fait le précédent.

### La métaphore filée / l''image surréaliste
Deux réalités très éloignées rapprochées pour créer un effet de choc.

"La terre est bleue comme une orange." (Paul Éluard)

## Les surréalistes belges

La Belgique est l''un des foyers du surréalisme mondial.

### René Magritte (1898-1967)
Peintre surréaliste : "La Trahison des images" (*Ceci n''est pas une pipe*), "L''Empire des lumières", "La Chambre d''écoute". Remet en question la représentation et le langage.

### Paul Nougé (1895-1967)
Cofondateur du groupe surréaliste belge.

### Henri Michaux (1899-1984)
Originaire de Namur, explorations de l''espace intérieur à travers l''écriture et la peinture (*Plume*, *La Vie dans les plis*).

## Paul Éluard et Louis Aragon
Poètes surréalistes français qui évoluent vers l''engagement politique et la poésie de la Résistance.',
  (SELECT id FROM subjects WHERE name = 'Français' AND level_id = (SELECT id FROM levels WHERE level_number = 5)),
  (SELECT id FROM levels WHERE level_number = 5),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'L''existentialisme et la littérature engagée',
  'Analyser les œuvres de Sartre et Camus dans leur contexte philosophique et historique.',
  'TEXT',
  '# L''existentialisme et la littérature engagée

## L''existentialisme : contexte et définition

Courant philosophique et littéraire qui se développe en France après la Seconde Guerre mondiale.

**Idée centrale :** "L''existence précède l''essence" (Sartre). Il n''y a pas de nature humaine prédéterminée. L''être humain est ce qu''il fait de lui-même. Il est **condamné à être libre** et donc **responsable** de ses choix.

## Jean-Paul Sartre (1905-1980)

### L''œuvre philosophique et littéraire
- *L''Être et le Néant* (1943) — œuvre philosophique majeure
- *La Nausée* (1938) — roman : Roquentin découvre l''absurde de l''existence
- *Huis clos* (1944) — pièce de théâtre : "L''enfer, c''est les Autres"

### La littérature engagée
Sartre refuse le Prix Nobel de Littérature (1964). Il défend le concept d''**engagement** : l''écrivain doit prendre position dans les débats de son époque.

## Albert Camus (1913-1960)

Prix Nobel de Littérature 1957.

### Le cycle de l''absurde
*L''Étranger* (1942) — Roman : Meursault, être dépourvu de passion apparente, tue un Arabe sur la plage. Jugé autant pour son absence de chagrin à l''enterrement de sa mère que pour le meurtre.

*Le Mythe de Sisyphe* (1942) — Essai : Sisyphe doit rouler son rocher éternellement. Métaphore de la condition humaine. Conclusion : "Il faut imaginer Sisyphe heureux."

*La Peste* (1947) — Roman : une épidémie frappe Oran (Algérie). Allégorie de l''Occupation nazie et de la résistance. Le Dr Rieux incarne la solidarité et l''engagement.

## Sartre vs Camus : une rupture célèbre

En 1951, la publication par Camus de *L''Homme révolté* provoque une rupture avec Sartre. Débat sur la violence révolutionnaire et le stalinisme.

## Simone de Beauvoir (1908-1986)

Compagne de Sartre, elle applique l''existentialisme à la condition féminine :
*Le Deuxième Sexe* (1949) : "On ne naît pas femme : on le devient." → Fondement du féminisme moderne.',
  (SELECT id FROM subjects WHERE name = 'Français' AND level_id = (SELECT id FROM levels WHERE level_number = 5)),
  (SELECT id FROM levels WHERE level_number = 5),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'La langue française : histoire, variation et francophonie',
  'Retracer l''histoire du français et comprendre sa diversité géographique et sociale à l''échelle mondiale.',
  'TEXT',
  '# La langue française dans le monde

## Histoire de la langue française

### Du latin au français
Le français est une langue **romane**, issue du latin populaire parlé par les Romains en Gaule (actuelle France).

**Évolution :**
- Latin vulgaire (IIIe-Ve siècle)
- Roman (VIIe-IXe) : premiers textes
- Ancien français (IXe-XIVe) : *Chanson de Roland*
- Moyen français (XIVe-XVIe) : Villon, Rabelais
- Français classique (XVIIe) : Académie française (1635), règles codifiées
- Français moderne (XVIIIe à nos jours)

### L''Académie française (1635)
Créée par Richelieu. Mission : codifier la langue. Publie le *Dictionnaire de l''Académie* (9ème édition en cours). 40 membres = "les Immortels".

## La variation linguistique

### Variation géographique (diatopique)
Accents et dialectes différents selon les régions.

**En Belgique :** belgicismes (mots spécifiques au français belge)
- "drache" (averse), "kot" (chambre d''étudiant), "septante" (70), "nonante" (90)
- "une fois" comme particule discursive
- Prononciation distincte du R, des voyelles

**Au Québec :** québécismes, archaïsmes, anglicismes
**En Suisse :** "huitante" (80), vocabulaire spécifique

### Variation sociale (diastratique)
- Langue soutenue / standard / familière / argotique
- Verlan, argot, jargon professionnel, langue des jeunes

### Variation situationnelle (diaphasique)
Le même locuteur adapte sa langue selon la situation (registres).

## La francophonie mondiale

Le français est parlé par **320 millions de personnes** dans le monde (2023).

**Organisation internationale de la Francophonie (OIF) :** 88 États et gouvernements membres.

| Continent | Pays francophones |
|-----------|------------------|
| Europe | France, Belgique, Suisse, Luxembourg, Monaco |
| Afrique | 25 pays (Congo, Côte d''Ivoire, Cameroun...) |
| Amérique | Québec, Haïti, Louisiane, Antilles |
| Asie-Pacifique | Vietnam, Cambodge, Liban, Nouvelle-Calédonie |

**Langue officielle** dans 29 pays. 2ème langue étrangère la plus apprise au monde.',
  (SELECT id FROM subjects WHERE name = 'Français' AND level_id = (SELECT id FROM levels WHERE level_number = 5)),
  (SELECT id FROM levels WHERE level_number = 5),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Écriture créative et expression personnelle',
  'Développer ses capacités d''expression créative à travers différents genres : nouvelle, poésie, essai personnel.',
  'TEXT',
  '# Écriture créative

## Pourquoi écrire ?

L''écriture créative permet de :
- Développer son **identité** et sa voix propre
- Explorer des univers imaginaires
- Traiter des expériences et émotions
- Expérimenter avec la langue

## La nouvelle

La nouvelle est une œuvre de **fiction courte** (quelques pages à quelques dizaines de pages), concentrée sur un personnage ou une situation.

### Caractéristiques
- **Unité** : peu de personnages, peu de lieux, peu de temps
- **Chute** : fin souvent surprenante ou suggestive
- **Économie** : chaque mot compte

### Techniques narratives
- **Point de vue interne :** le narrateur = un personnage (sentiment d''immersion)
- **Point de vue externe :** le narrateur observe sans accéder aux pensées
- **Omniscient :** le narrateur sait tout sur tous les personnages

**Incipit (début)** : doit accrocher le lecteur immédiatement.

## La poésie personnelle

La poésie personnelle n''a pas à suivre des règles fixes. Elle peut être :
- En vers libres (sans métrique ni rime obligatoire)
- En vers réguliers (alexandrins, sonnets...)
- En prose poétique

**Principes :**
- Choix des images : métaphores, comparaisons inattendues
- Rythme : longueur des vers, répétitions, anaphores
- Musicalité : sons, allitérations

## L''essai personnel (écriture de soi)

Montaigne invente l''**essai** (XVIe) : réflexion libre sur un sujet à partir de soi-même.

**Format :** réflexion en "je", non romanesque, qui explore une idée ou une expérience.

**Exemples de sujets :** "Ce que la Belgique m''a appris", "La langue que j''habite", "Apprendre à faire confiance"

## Conseils pratiques pour améliorer l''écriture

1. **Lisez beaucoup** : la lecture nourrit l''écriture
2. **Montrez plutôt que racontez** : "Show, don''t tell"
   - ❌ "Elle était triste." → ✓ "Elle regardait la pluie sans voir, les mains crispées sur sa tasse froide."
3. **Révisez** : la première version n''est jamais la bonne
4. **Variez les structures de phrases**
5. **Faites confiance à vos intuitions** : ce qui vous touche touchera vos lecteurs',
  (SELECT id FROM subjects WHERE name = 'Français' AND level_id = (SELECT id FROM levels WHERE level_number = 5)),
  (SELECT id FROM levels WHERE level_number = 5),
  true
);


-- ============================================================
-- NIVEAU 5 — Histoire
-- ============================================================

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'La décolonisation et le monde post-colonial',
  'Analyser les processus de décolonisation en Asie et en Afrique et leurs héritages contemporains.',
  'TEXT',
  '# La décolonisation

## Contexte général

Après 1945, les empires coloniaux européens s''effondrent progressivement sous la pression de :
- Les mouvements nationalistes dans les colonies
- L''affaiblissement économique des métropoles (Europe dévastée par la guerre)
- L''idéologie des droits de l''homme et de l''autodétermination (ONU, Charte de San Francisco)
- La Guerre froide (USA et URSS hostiles au colonialisme européen)

## L''Asie : premières indépendances

### L''Inde (1947)
**Gandhi** mène une lutte non-violente (désobéissance civile, grèves de la faim) contre la domination britannique.

**Partition traumatique :** le sous-continent est divisé en deux États :
- **Inde** (majorité hindoue)
- **Pakistan** (majorité musulmane)

**Conséquences :** 10-12 millions de déplacés, 500 000 à 2 millions de morts dans les violences intercommunautaires.

### L''Indochine française (1954)
Ho Chi Minh mène le Viet Minh contre la France. La défaite française de **Điện Biên Phủ** (mai 1954) met fin à la présence française.

## L''Afrique : vague des indépendances des années 1960

**1960 = "Année de l''Afrique"** : 17 pays africains deviennent indépendants.

### La décolonisation au Congo
Le Congo belge devient indépendant le **30 juin 1960**. Cérémonie à Léopoldville (Kinshasa). Discours mémorable de Lumumba qui accuse la Belgique.

Assassinat de Lumumba (janvier 1961) → Mobutu prend le pouvoir (soutenu par l''Occident) → dictature jusqu''en 1997.

### Algérie (1954-1962)
Guerre d''indépendance (FLN vs armée française) : 300 000 à 1 million de morts. Accords d''Évian (mars 1962) → indépendance.

## Héritages post-coloniaux

- **Frontières artificielles** : les États africains ont hérité des frontières coloniales (ignorant les réalités ethniques) → source de conflits
- **Dépendance économique** : le néo-colonialisme maintient des liens inégaux
- **Migrations** : vers les anciennes métropoles
- **Mémoires** : comment aborder l''histoire coloniale dans les manuels scolaires ?

## Débats contemporains en Belgique

Restitution des œuvres d''art africaines pillées → Musée royal de l''Afrique centrale à Tervuren (rénové en 2018). Excuses officielles belges pour l''assassinat de Lumumba (2002).',
  (SELECT id FROM subjects WHERE name = 'Histoire' AND level_id = (SELECT id FROM levels WHERE level_number = 5)),
  (SELECT id FROM levels WHERE level_number = 5),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Les génocides du XXe siècle : Shoah, Rwanda, Arménie',
  'Comprendre les mécanismes des génocides et l''évolution du droit international pour les prévenir.',
  'TEXT',
  '# Les génocides du XXe siècle

## Définition

Un **génocide** est défini par la Convention des Nations Unies (1948) comme "des actes commis avec l''intention de détruire, en tout ou en partie, un groupe national, ethnique, racial ou religieux."

## Le génocide arménien (1915-1916)

Pendant la Première Guerre mondiale, l''Empire ottoman organise la déportation et le massacre des Arméniens chrétiens.
- **Bilan estimé :** 600 000 à 1,5 million de victimes
- Marches de la mort vers le désert de Deir ez-Zor
- La Turquie ne reconnaît toujours pas le terme "génocide"

## La Shoah (1941-1945)

L''extermination systématique des Juifs d''Europe par le régime nazi.

### Idéologie nazie
- Antisémitisme racial : les Juifs désignés comme responsables de tous les maux de l''Allemagne
- Propagande (Goebbels), lois de Nuremberg (1935) : privation de droits civiques
- Discrimination → exclusion → persécution → extermination

### La "Solution finale" (Endlösung)
Décidée à la Conférence de Wannsee (janvier 1942) : extermination industrielle de tous les Juifs d''Europe.

**Camps d''extermination :** Auschwitz-Birkenau, Treblinka, Sobibor, Belzec
- Chambres à gaz (Zyklon B), fours crématoires
- **6 millions de Juifs assassinés** (+ 500 000 Roms, 250 000 handicapés, homosexuels, résistants)

### La Belgique et la Shoah
25 000 Juifs belges déportés (sur ~55 000) → seuls 1 200 survécurent.
Le rôle des autorités belges (police, administration) reste controversé.

## Le génocide rwandais (1994)

En 100 jours (avril-juillet 1994), la communauté Hutu extrémiste massacre entre **800 000 et 1 million** de Tutsis et Hutus modérés.

- Colonisation belge avait durci la distinction Hutu/Tutsi
- La communauté internationale (ONU, USA, France) n''intervient pas
- Le Tribunal pénal international pour le Rwanda (TPIR) juge les responsables

## Prévention et mémoire

- **Convention pour la prévention et la répression du crime de génocide** (ONU, 1948)
- **Cour pénale internationale (CPI)** (1998) : juge les crimes contre l''humanité
- Devoir de mémoire : musées, commémorations, éducation scolaire
- **Responsabilité de protéger (R2P)** : les États ont l''obligation de protéger leurs populations',
  (SELECT id FROM subjects WHERE name = 'Histoire' AND level_id = (SELECT id FROM levels WHERE level_number = 5)),
  (SELECT id FROM levels WHERE level_number = 5),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'La mondialisation culturelle et les identités',
  'Analyser l''impact de la mondialisation sur les cultures et les questions d''identité dans le monde contemporain.',
  'TEXT',
  '# Mondialisation culturelle et identités

## La mondialisation culturelle

La mondialisation n''est pas seulement économique. Elle touche aussi les **cultures** : modes de vie, valeurs, pratiques culturelles et artistiques circulent à l''échelle planétaire.

### Les vecteurs de la mondialisation culturelle

- **Les médias de masse** : Hollywood, Netflix, YouTube diffusent des contenus dans le monde entier
- **Internet et réseaux sociaux** : TikTok, Instagram, Twitter/X → cultures jeunes globalisées
- **Les multinationales** : McDonald''s, Nike, IKEA → standardisation des modes de consommation
- **Le tourisme de masse** : 1,5 milliard de voyages internationaux/an

## Homogénéisation ou diversité ?

### L''"américanisation" de la culture
La domination culturelle américaine (soft power) est souvent critiquée :
- 60% des films vus en Europe sont américains
- L''anglais comme lingua franca mondiale

**Exception culturelle française :** quotas de diffusion de musique et films français à la radio et la télévision belge et française pour protéger la culture locale.

### La "glocalisation"
Parfois, les influences globales se mêlent aux cultures locales pour produire quelque chose de nouveau.
→ K-pop coréenne avec influences américaines → phénomène mondial
→ Nollywood (cinéma nigérian) → succès africain et mondial

## Les identités dans un monde globalisé

### Identité nationale et appartenance
La mondialisation questionne les identités nationales. Les individus ont des identités **multiples** et **fluides** : nationale, régionale, religieuse, professionnelle, générationnelle...

### En Belgique : la question communautaire
La Belgique illustre la complexité identitaire : identité belge + wallonne/flamande/bruxelloise + européenne.

Le fédéralisme belge (6 réformes de l''État depuis 1970) tente de gérer cette diversité.

### Le "choc des civilisations" ?
Samuel Huntington (1993) prédit un monde divisé en grandes civilisations en conflit. Cette thèse est critiquée car elle essentialise les cultures et ignore leur diversité interne.',
  (SELECT id FROM subjects WHERE name = 'Histoire' AND level_id = (SELECT id FROM levels WHERE level_number = 5)),
  (SELECT id FROM levels WHERE level_number = 5),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'La Belgique contemporaine : enjeux politiques et sociaux',
  'Analyser les défis politiques, économiques et sociaux de la Belgique au XXIe siècle.',
  'TEXT',
  '# La Belgique contemporaine

## Le système politique belge

La Belgique est une **monarchie constitutionnelle fédérale** à double structure : fédérale et communautaire.

### La structure fédérale
Depuis la 6ème réforme de l''État (2014), la Belgique est divisée en :
- 3 **Régions** : Région wallonne, Région flamande, Région de Bruxelles-Capitale
- 3 **Communautés** : FWB (Fédération Wallonie-Bruxelles), Communauté flamande, Communauté germanophone
- L''**État fédéral** : défense, sécurité sociale, dette publique...

### Les partis politiques
La scission est totale : il n''existe plus de partis bilingues depuis les années 1970.

**Côté francophone :** MR (libéral), PS (socialiste), Ecolo (vert), Les Engagés (démocrate-chrétien)
**Côté flamand :** N-VA (nationaliste), VB (extrême droite), VLD (libéral), SP.A/Vooruit (socialiste), Groen (vert)

### La crise politique chronique
La Belgique détient des records de durée de formation de gouvernement :
- 541 jours (2010-2011)
- 493 jours (2019-2020)

## Les défis socio-économiques

### Les inégalités régionales
Le taux de chômage varie fortement : ~3% en Flandre, ~11% en Wallonie, ~18% à Bruxelles.

### La dette publique
La dette belge représente environ 105% du PIB (2023) → parmi les plus élevées d''Europe.

### La transition écologique
La Belgique a des objectifs climatiques ambitieux (neutralité carbone en 2050) mais peine à fermer ses centrales nucléaires dans les délais prévus.

### La mobilité
Embouteillages chroniques en Flandre et à Bruxelles → réforme du système de voiture de société.

## La Belgique dans l''UE et le monde

Bruxelles abrite les sièges de la Commission européenne, de l''OTAN et de nombreuses organisations internationales. Ce rôle de "capitale de l''Europe" est un atout économique considérable mais aussi une source de pression sur le coût du logement.',
  (SELECT id FROM subjects WHERE name = 'Histoire' AND level_id = (SELECT id FROM levels WHERE level_number = 5)),
  (SELECT id FROM levels WHERE level_number = 5),
  true
);


-- ============================================================
-- NIVEAU 5 — Sciences économiques
-- ============================================================

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'La macroéconomie : PIB, chômage et inflation',
  'Comprendre les principaux agrégats macroéconomiques et les politiques économiques pour les réguler.',
  'TEXT',
  '# Macroéconomie : PIB, chômage et inflation

## Le Produit Intérieur Brut (PIB)

Le **PIB** est la valeur totale des biens et services finaux produits dans un pays pendant une année.

**PIB = C + I + G + (X - M)**
- C : Consommation des ménages
- I : Investissement des entreprises
- G : Dépenses publiques
- X - M : Exportations - Importations (balance commerciale)

### PIB nominal vs réel
- **PIB nominal** : valeur aux prix courants (peut augmenter simplement à cause de l''inflation)
- **PIB réel** : valeur à prix constants (mesure la croissance réelle de la production)

### Limites du PIB
- Ne mesure pas le bien-être (le PIB d''un pays peut augmenter avec des guerres ou des catastrophes)
- Ne prend pas en compte l''économie informelle
- Ignore les inégalités de distribution

**Alternatives :** IDH (Indice de développement humain), Indice de bonheur brut (Bhoutan)

## Le chômage

**Taux de chômage = personnes sans emploi, cherchant un emploi / population active × 100**

### Types de chômage
- **Conjoncturel :** lié à un ralentissement économique
- **Structurel :** inadéquation des compétences aux besoins du marché
- **Frictionnel :** temps entre deux emplois (normal, inévitable)
- **Technologique :** robots/IA remplacent des travailleurs

### Impact
Le chômage cause précarité, exclusion sociale, perte de compétences, coût budgétaire.

## L''inflation

**Inflation** = hausse généralisée et durable des prix.

**Mesure :** Indice des prix à la consommation (IPC) → panier de biens représentatif.

**Belgique 2022 :** +10,4% (crise énergétique) → le plus haut depuis les années 1970.

### Causes de l''inflation
- **Demande excessive** (demand-pull) : trop de monnaie, économie en surchauffe
- **Coûts en hausse** (cost-push) : prix du pétrole, salaires, matières premières
- **Anticipations** : si tout le monde attend de l''inflation, elle se produit

### Effets
- Perte de pouvoir d''achat (surtout pour les bas revenus)
- Incertitude pour les entreprises
- Avantage pour les emprunteurs (dette allégée en termes réels)

## Politiques économiques

### Politique monétaire (Banque centrale européenne - BCE)
- Hausse des taux d''intérêt → crédit plus cher → moins d''investissement → ↓ inflation
- Baisse des taux → relance économique

### Politique budgétaire (gouvernements)
- **Politique de relance** : dépenses publiques ↑ ou impôts ↓ → stimuler l''économie
- **Politique d''austérité** : dépenses ↓ → réduire la dette publique',
  (SELECT id FROM subjects WHERE name = 'Sciences économiques' AND level_id = (SELECT id FROM levels WHERE level_number = 5)),
  (SELECT id FROM levels WHERE level_number = 5),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Le commerce international et la politique commerciale',
  'Analyser les avantages et limites du libre-échange et les instruments de la politique commerciale.',
  'TEXT',
  '# Commerce international

## Les théories du commerce international

### L''avantage absolu (Adam Smith, 1776)
Chaque pays doit se spécialiser dans la production pour laquelle il est le plus efficace (coût absolu le plus bas).

### L''avantage comparatif (Ricardo, 1817)
Même si un pays est moins efficace que l''autre dans **toutes** les productions, il gagne à se spécialiser dans ce où il est **relativement** le moins désavantagé.

**Exemple :** Si France produit 2 voitures/h ou 1 kg de blé/h, et Portugal produit 1 voiture/h ou 1 kg de blé/h :
- France : avantage comparatif dans les voitures
- Portugal : il vaut mieux aussi se spécialiser dans le blé (comparativement moins désavantagé)

→ Les deux gagnent à l''échange !

## Les instruments de politique commerciale

### Le libre-échange (libre-échangisme)
Élimination de toutes les barrières aux échanges → marché mondial ouvert.

**Arguments pour :** efficacité, baisse des prix, spécialisation, croissance.

**Arguments contre :** pertes d''emplois industriels, fragilité, inégalités, dépendance alimentaire/sanitaire.

### Le protectionnisme
Politique visant à protéger les producteurs nationaux de la concurrence étrangère.

**Instruments :**
- **Droits de douane** : taxe sur les importations → augmente le prix des biens importés
- **Quotas** : limite quantitative des importations
- **Normes et barrières non tarifaires** : normes sanitaires, techniques...
- **Subventions** : aides aux producteurs nationaux

## L''OMC : Organisation mondiale du commerce

Créée en 1995 (remplace le GATT). 164 membres.

Mission : faciliter le commerce en réduisant les barrières tarifaires et en réglant les différends commerciaux.

**Principe central :** clause de la **nation la plus favorisée** (NPF) : tout avantage commercial accordé à un membre doit être étendu à tous.

## La politique commerciale européenne

L''UE parle d''une seule voix dans les négociations commerciales (compétence exclusive).

**CETA** (Accord UE-Canada, 2016) : suppression de 98% des droits de douane.
**Débats en Belgique :** inquiétudes sur les normes alimentaires et la protection des industries sensibles.',
  (SELECT id FROM subjects WHERE name = 'Sciences économiques' AND level_id = (SELECT id FROM levels WHERE level_number = 5)),
  (SELECT id FROM levels WHERE level_number = 5),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Les inégalités économiques et la redistribution',
  'Mesurer et analyser les inégalités économiques et les mécanismes de redistribution dans les États providence.',
  'TEXT',
  '# Inégalités économiques et redistribution

## Mesure des inégalités

### Le coefficient de Gini
Mesure l''inégalité de distribution des revenus sur une échelle de 0 (égalité parfaite) à 1 (inégalité absolue).

- 0,25-0,30 : pays très égalitaires (Scandinavie)
- 0,30-0,35 : pays modérément inégaux (Belgique ≈ 0,26 avant redistribution → 0,22 après)
- 0,40-0,60 : pays très inégaux (États-Unis ≈ 0,39, Afrique du Sud ≈ 0,63)

### La courbe de Lorenz
Représente graphiquement la répartition des revenus. Plus elle s''éloigne de la diagonale, plus les inégalités sont grandes.

### Le rapport interdécile
Rapport entre le revenu du 9ème décile (10% les plus riches) et le 1er décile (10% les plus pauvres).

## Les causes des inégalités

- **Capital vs travail** : les revenus du capital (dividendes, loyers) croissent plus vite que les salaires
- **Mondialisation** : comprime les salaires des travailleurs peu qualifiés dans les pays développés
- **Technologie** : polarisation du marché du travail (emplois qualifiés et très peu qualifiés, disparition des emplois intermédiaires)
- **Système fiscal** : fiscalité parfois régressive (TVA pèse plus sur les bas revenus)

## Thomas Piketty et le retour des inégalités

Dans *Le Capital au XXIe siècle* (2013), Piketty montre que depuis les années 1980, les inégalités de patrimoine augmentent dans les pays développés.

**Thèse :** r > g (rendement du capital > croissance économique) → les patrimoines croissent plus vite que les revenus → héritage redevient central.

## Les mécanismes de redistribution

### Redistribution verticale (des riches vers les pauvres)
- Impôt progressif sur le revenu
- Allocations sociales (chômage, invalides, minimum vital)

### Redistribution horizontale (entre groupes à risque)
- Assurance maladie, allocations familiales, pensions

## L''État-providence belge

La sécurité sociale belge est l''une des plus développées d''Europe :
- 5 "branches" : maladie, pensions, chômage, allocations familiales, accidents du travail
- Financée par cotisations sociales (patronales et salariales) + subsidiation de l''État
- **Taux de pauvreté** : après transferts, ≈ 12% en Belgique (UE : 17%)',
  (SELECT id FROM subjects WHERE name = 'Sciences économiques' AND level_id = (SELECT id FROM levels WHERE level_number = 5)),
  (SELECT id FROM levels WHERE level_number = 5),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'L''économie verte et le développement durable',
  'Comprendre les enjeux économiques du développement durable et les instruments pour une transition écologique.',
  'TEXT',
  '# Économie verte et développement durable

## Le concept de développement durable

**Définition (Rapport Brundtland, 1987) :**
"Un développement qui répond aux besoins du présent sans compromettre la capacité des générations futures à répondre à leurs propres besoins."

### Les trois piliers
1. **Économique** : croissance et efficacité économique
2. **Social** : équité, qualité de vie, cohésion sociale
3. **Environnemental** : préservation des ressources naturelles et de la biodiversité

Ces trois piliers doivent être équilibrés.

## Les défaillances du marché et les externalités

### Externalités négatives
Quand une activité économique produit des effets négatifs non payés par le producteur.

**Exemple :** Une usine qui pollue une rivière → les riverains en paient les coûts (santé, tourisme, pêche) mais l''usine ne les indemnise pas.

**Internalisation des externalités :** taxe Pigouvienne (taxe carbone) = faire payer au pollueur le coût social de sa pollution.

## Instruments de politique environnementale

### Taxe carbone
Prix mis sur le carbone → décourage les émissions de CO₂. UE : marché carbone (ETS) depuis 2005.

### Normes et réglementations
Limites d''émissions, standards d''efficacité énergétique, interdictions.

### Subventions aux technologies vertes
Panneaux solaires, voitures électriques, isolation thermique des bâtiments.

### Marchés de droits à polluer (cap & trade)
Plafond d''émissions global → les entreprises achètent et vendent des droits d''émission.

## La transition vers l''économie verte

### Les énergies renouvelables
En Belgique (2023) : ~35% de l''électricité vient de sources renouvelables (éolien offshore en mer du Nord, solaire). Objectif 2030 : 40%+.

### L''économie circulaire
Vs économie linéaire (extraire → produire → jeter) :
L''économie circulaire vise à **réutiliser, réparer, recycler** pour prolonger la vie des produits et minimiser les déchets.

### Les "emplois verts"
La transition écologique crée de nouveaux emplois : ingénieurs spécialisés en ENR, installateurs de panneaux solaires, rénovateurs thermiques... mais détruit aussi certains emplois (charbon, pétrole).',
  (SELECT id FROM subjects WHERE name = 'Sciences économiques' AND level_id = (SELECT id FROM levels WHERE level_number = 5)),
  (SELECT id FROM levels WHERE level_number = 5),
  true
);


-- ============================================================
-- NIVEAU 5 — Néerlandais
-- ============================================================

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Complexe zinnen en gevorderde grammatica',
  'Maîtriser la grammaire néerlandaise avancée : les phrases complexes, les subordonnées et la syntaxe.',
  'TEXT',
  '# Complexe grammatica en zinnen

## Bijzinnen (propositions subordonnées)

In het Nederlands worden bijzinnen na een verbindingswoord geplaatst.

**Basisregel:** In een bijzin staat het persoonsvorm achteraan!

→ "Ik weet **dat hij morgen komt**." (niet: *dat hij komt morgen*)

### Soorten bijzinnen

| Bijzin | Verbindingswoord | Voorbeeld |
|--------|-----------------|---------|
| Graad-oorzaak | want, omdat, doordat | Ik studeer **omdat** ik wil slagen. |
| Tijdsbijzin | toen, als, wanneer, nadat | **Nadat** hij had gegeten, las hij. |
| Voorwaardelijk | als, indien | **Als** het regent, blijf ik thuis. |
| Concessief | hoewel, ook al | **Hoewel** hij moe was, werkte hij. |
| Doel | opdat, zodat | Ik herhaal **zodat** je het begrijpt. |
| Betrekkelijk | die, dat, wat, wie | De man **die** spreekt, is mijn vader. |

## Betrekkelijke voornaamwoorden (pronoms relatifs)

- **die** : voor de-woorden en meervoud
- **dat** : voor het-woorden enkelvoud
- **wat** : voor onbepaalde antecedenten (alles, niets, iets, dat...)
- **wie** : voor personen na een voorzetsel

Voorbeelden:
- De vrouw **die** zingt = de-woord enkelvoud ✓
- Het kind **dat** lacht = het-woord enkelvoud ✓
- Alles **wat** hij zegt = onbepaald antecedent ✓

## Passief (la voix passive)

**Actief:** Ik eet de appel.
**Passief:** De appel wordt (door mij) gegeten.

Passief tegenwoordige tijd: worden + voltooid deelwoord
Passief verleden tijd: werd/werden + voltooid deelwoord

"Het huis **werd gebouwd** in 1920."

## Onpersoonlijk passief

Wanneer er geen lijdend voorwerp is:
"Er **werd gedanst** op het feest."

## Infinitief constructies

### Te + infinitief
"Het is moeilijk **te begrijpen**." (Il est difficile à comprendre)

### Om te + infinitief (but/conséquence)
"Hij studeert hard **om te slagen**." (pour réussir)
"Het is te moeilijk **om te leren**." (pour être appris)

## Woordvolgorde samengevat

In een hoofdzin: **S - V - rest** (SVO)
Bij inversie: **Bijw. - V - S - rest** (bijwoord vooraan)
In een bijzin: **S - rest - V** (werkwoord achteraan)',
  (SELECT id FROM subjects WHERE name = 'Néerlandais' AND level_id = (SELECT id FROM levels WHERE level_number = 5)),
  (SELECT id FROM levels WHERE level_number = 5),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Vlaamse en Nederlandse cultuur : maatschappelijke thema''s',
  'Approfondir sa connaissance de la culture néerlandophone et analyser des thèmes de société contemporains.',
  'TEXT',
  '# Vlaamse en Nederlandse cultuur

## Vlaanderen : identiteit en cultuur

Vlaanderen is de noordelijke regio van België, met een bevolking van circa 6,6 miljoen Nederlandssprekenden.

### Vlaamse identiteit
De Vlamingen hebben een sterke regionale identiteit, gevormd door:
- De taalstrijd van de 19de en 20ste eeuw (gelijkberechtiging van het Nederlands in België)
- De Vlaamse Beweging : culturele en politieke emancipatie
- De economische opbloei van Vlaanderen (van arm landbouwgebied tot hoogste BBP/hoofd in België)

### Cultuur en kunstenaars
- **Muziek :** Stromae, Balthazar, Bazart
- **Film :** Felix van Groeningen (*The Broken Circle Breakdown*)
- **Literatuur :** Flemish fiction (reeds behandeld)
- **Mode :** Antwerpen als modestad (Dries Van Noten, Ann Demeulemeester, Martin Margiela)
- **Architectuur :** Zaha Hadid (Port House Antwerpen)

## Nederland : cultuur en samenleving

### Typisch Nederlandse waarden
- **Doe-maar-gewoon** mentaliteit (anti-elitarisme)
- Directheid en openheid in communicatie
- Handelsgeest (VOC-mentaliteit)
- Tolerantie en gedoogbeleid

### Cultuurerfgoed
- Gouden Eeuw (17de): Rembrandt, Vermeer, Frans Hals
- Vincent van Gogh (19de)
- De Stijl (Mondriaan, Rietveld)

## Maatschappelijke thema''s in de Lage Landen

### De taalkwestie in België
- Taalgrens (officieel vastgelegd in 1963)
- Verfransing van Brussel
- Vlaamse partijen die meer autonomie eisen
- BHV-problematiek (Brussel-Halle-Vilvoorde)

### Klimaat en milieu
Nederland en het **zeespiegelprobleem** : 26% van Nederland ligt onder zeeniveau. Deltawerken (bescherming tegen overstromingen) zijn een ingenieurswonder.

België → de overstromingen van **juli 2021** in de Vesdre-vallei: het ergste waterdisaster in naoorlogse Belgische geschiedenis.

### Migratie en diversiteit
De Lage Landen zijn gastland voor grote gemeenschappen uit Marokko, Turkije, Congo, en meer recent Syrië, Oekraïne... Integratie, diversiteit en multiculturalisme zijn centrale maatschappelijke debatten.',
  (SELECT id FROM subjects WHERE name = 'Néerlandais' AND level_id = (SELECT id FROM levels WHERE level_number = 5)),
  (SELECT id FROM levels WHERE level_number = 5),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Schriftelijke productie : schrijven op niveau B2',
  'Atteindre le niveau B2 en production écrite en néerlandais : structurer des textes complexes et variés.',
  'TEXT',
  '# Schrijven op niveau B2

## Wat verwacht men op B2-niveau?

Op niveau **B2** (Vantage) van het Europees Referentiekader (ERK) kan je:
- Heldere, gedetailleerde teksten schrijven over een breed scala aan onderwerpen
- Verschillende standpunten over actuele onderwerpen uitleggen
- Schrijven voor diverse doelgroepen in verschillende stijlen

## Tekstgenres op B2-niveau

### Het betoog (al gezien op niveau 4)
Op B2 wordt er meer nuance verwacht:
- Meer complexe zinsstructuren
- Betere argumentatieve coherentie
- Gebruik van concessive structuren (hoewel, toch, desalniettemin)

### De formele brief of e-mail
**Aanvraagbrief (lettre de demande) :**
- Aanhef: *Geachte heer/mevrouw [naam],*
- Introductie van jezelf en doel van de brief
- Duidelijke vraag of verzoek met motivatie
- Beleefd afsluiten: *In afwachting van uw antwoord groet ik u vriendelijk,*

### Het verslag (rapport)
Een zakelijk verslag rapporteert feiten en bevindingen:
- Objectieve toon, vermijd persoonlijke meningen tenzij gevraagd
- Gebruik van kopjes en alinea''s voor leesbaarheid
- Concrete gegevens en voorbeelden

### Het artikel (krant, website)
- Pakkende kop (titre accrocheur)
- Inleiding met de kern van het nieuws
- Uitwerking met details, citaten en context

## Schrijftips voor B2

### Coherentie en cohesie
Zorg voor een **rode draad** doorheen je tekst.
Gebruik **transitiezinnen** tussen alinea''s:
- "Naast dit argument is er ook..."
- "Een ander belangrijk aspect is..."
- "Samenvattend kan men stellen dat..."

### Woordenschat variëren
Gebruik geen herhaling maar synoniemen:
- zeggen → beweren, stellen, betogen, aangeven, meedelen
- denken → menen, oordelen, van mening zijn, overtuigd zijn

### Zinslengte variëren
Wissel lange en korte zinnen af voor een betere leesbaarheid.

## Zelfevaluatie checklist B2

☐ Is de structuur duidelijk (inleiding, kern, besluit)?
☐ Zijn de argumenten goed uitgewerkt met voorbeelden?
☐ Is de woordenschat gevarieerd en passend bij de context?
☐ Zijn de zinnen grammaticaal correct (werkwoord achteraan in bijzin)?
☐ Is de toon consistent (formeel/informeel)?
☐ Is de spelling gecontroleerd?',
  (SELECT id FROM subjects WHERE name = 'Néerlandais' AND level_id = (SELECT id FROM levels WHERE level_number = 5)),
  (SELECT id FROM levels WHERE level_number = 5),
  true
);

