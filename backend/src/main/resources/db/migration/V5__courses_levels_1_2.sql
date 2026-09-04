-- ============================================================
-- MOST ÉCOLE – Cours niveaux 1 et 2 (matières restantes)
-- V5__courses_levels_1_2.sql
-- ============================================================

-- ============================================================
-- NIVEAU 1 – FRANÇAIS (4 cours)
-- ============================================================
INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Les types de phrases et la ponctuation',
  'Identifier et utiliser les quatre types de phrases en français avec une ponctuation correcte.',
  'TEXT',
  'En français, toute phrase exprime quelque chose de précis. On distingue quatre types de phrases selon ce qu''elle exprime.

## Les quatre types de phrases

**La phrase déclarative** énonce un fait ou une opinion. Elle se termine par un point (.).
Exemple : *Le soleil brille sur Bruxelles ce matin.*

**La phrase interrogative** pose une question. Elle se termine par un point d''interrogation (?).
- Interrogation totale (réponse oui/non) : *Est-ce que tu aimes lire ?*
- Interrogation partielle (mot interrogatif) : *Où habites-tu ? Quand pars-tu ?*

**La phrase exclamative** exprime une émotion forte (joie, surprise, colère). Elle se termine par un point d''exclamation (!).
Exemple : *Quelle belle journée ! Comme c''est magnifique !*

**La phrase impérative** donne un ordre, un conseil ou une interdiction. Le verbe est à l''impératif, sans sujet exprimé.
Exemple : *Fermez vos cahiers. Ne cours pas dans les couloirs.*

## La forme affirmative et négative

Chaque type de phrase peut être :
- **Affirmative** : *Je mange une pomme.*
- **Négative** : *Je ne mange pas de pomme.* (ne…pas, ne…jamais, ne…plus, ne…rien)

## La ponctuation

| Signe | Nom | Usage |
|-------|-----|-------|
| . | Point | Fin de phrase déclarative |
| ? | Point d''interrogation | Fin de question |
| ! | Point d''exclamation | Fin d''exclamative ou impérative |
| , | Virgule | Pause légère, liste d''éléments |
| : | Deux-points | Avant une explication ou une liste |
| « » | Guillemets | Citation ou dialogue |

## Exercices

1. Transforme en interrogative : *Il fait beau. Tu as fini tes devoirs.*
2. Mets à la forme négative : *Elle parle néerlandais. Nous avons vu ce film.*
3. Identifie le type de chaque phrase : *Viens ici ! Est-ce que tu m''entends ? Je ne t''entends pas.*',
  (SELECT id FROM subjects WHERE name = 'Français' AND level_id = (SELECT id FROM levels WHERE level_number = 1)),
  (SELECT id FROM levels WHERE level_number = 1),
  true
),
(
  'Les classes de mots : nom, verbe, adjectif, adverbe',
  'Reconnaître et utiliser les principales classes de mots pour analyser une phrase simple.',
  'TEXT',
  'Chaque mot d''une phrase appartient à une **classe grammaticale** (nature). Les connaître permet d''analyser et de construire des phrases correctes.

## Les classes de mots variables

**Le nom** désigne une personne, un animal, une chose, un lieu ou une idée.
- Nom commun : *chat, maison, bonheur, ville* (avec article, minuscule)
- Nom propre : *Bruxelles, Marie, la Belgique* (majuscule, souvent sans article)
- S''accorde en genre (masculin/féminin) et en nombre (singulier/pluriel).

**Le verbe** exprime une action ou un état. C''est le noyau de la phrase. Il se conjugue selon la personne, le nombre et le temps.
Exemples : *courir, être, avoir, manger, penser*

**L''adjectif qualificatif** donne une caractéristique au nom.
- Épithète : *une belle maison, un grand jardin* (placé à côté du nom)
- Attribut : *Cette maison est belle.* (via un verbe d''état)
- S''accorde en genre et en nombre avec le nom : *un chat noir / des chats noirs / une chatte noire*

**Le déterminant** accompagne le nom et l''introduit.
- Article défini : *le, la, les, l''*
- Article indéfini : *un, une, des*
- Adjectif possessif : *mon, ma, mes, ton, son…*
- Adjectif démonstratif : *ce, cet, cette, ces*

**Le pronom** remplace un nom pour éviter la répétition.
- Personnel : *je, tu, il, elle, nous, vous, ils, elles*

## Les classes de mots invariables

**L''adverbe** modifie un verbe, un adjectif ou un autre adverbe. Il ne change jamais de forme.
- Formation courante : adjectif + **-ment** → *lent → lentement, heureux → heureusement*
- Exemples : *très, beaucoup, ici, toujours, jamais, rapidement*

**La préposition** introduit un groupe nominal et exprime une relation.
- Exemples : *à, de, dans, sur, sous, avec, pour, par, entre, vers*

**La conjonction** unit deux éléments.
- Coordination : *et, ou, ni, mais, or, donc, car*
- Subordination : *que, quand, parce que, si, bien que*

## Analyse d''exemple

*Le petit chien court rapidement dans le jardin.*
- *Le* → déterminant | *petit* → adjectif | *chien* → nom | *court* → verbe | *rapidement* → adverbe | *dans* → préposition | *le jardin* → groupe nominal',
  (SELECT id FROM subjects WHERE name = 'Français' AND level_id = (SELECT id FROM levels WHERE level_number = 1)),
  (SELECT id FROM levels WHERE level_number = 1),
  true
),
(
  'Le présent et le futur simple de l''indicatif',
  'Conjuguer correctement les verbes au présent et au futur simple pour tous les groupes.',
  'TEXT',
  'La conjugaison est l''adaptation du verbe à la personne et au temps. Le présent et le futur simple sont deux temps essentiels.

## Le présent de l''indicatif

Le présent exprime : une action actuelle (*Je mange*), une habitude (*Chaque matin, je prends le bus*), une vérité générale (*L''eau bout à 100°C*), ou un futur proche (*Je pars demain*).

### Les trois groupes

**1er groupe (-er)** : chanter, manger, parler…
Terminaisons : -e, -es, -e, -ons, -ez, -ent
*Je chante, tu chantes, il chante, nous chantons, vous chantez, ils chantent*

**2e groupe (-ir / -issons)** : finir, grandir, choisir…
Terminaisons : -is, -is, -it, -issons, -issez, -issent
*Je finis, tu finis, il finit, nous finissons, vous finissez, ils finissent*

**3e groupe (irréguliers)** : être, avoir, aller, faire, venir, voir, pouvoir, vouloir, prendre…
- *être* : je suis, tu es, il est, nous sommes, vous êtes, ils sont
- *avoir* : j''ai, tu as, il a, nous avons, vous avez, ils ont
- *aller* : je vais, tu vas, il va, nous allons, vous allez, ils vont
- *faire* : je fais, tu fais, il fait, nous faisons, vous faites, ils font

## Le futur simple

Exprime une action future. **Formation** : infinitif + terminaisons du futur.

Terminaisons : **-ai, -as, -a, -ons, -ez, -ont**

Exemples :
- *parler* → je parlerai, tu parleras, il parlera, nous parlerons, vous parlerez, ils parleront
- *finir* → je finirai, tu finiras…

**Radicaux irréguliers au futur (à mémoriser) :**
- *être* → ser- : je serai | *avoir* → aur- : j''aurai
- *aller* → ir- : j''irai | *faire* → fer- : je ferai
- *venir* → viendr- : je viendrai | *voir* → verr- : je verrai
- *pouvoir* → pourr- : je pourrai | *vouloir* → voudr- : je voudrai

## Distinction présent / futur proche / futur simple

- Présent : *Je mange maintenant.*
- Futur proche (aller + infinitif) : *Je vais manger dans 5 minutes.* (immédiat)
- Futur simple : *Je mangerai demain à midi.* (plus lointain)',
  (SELECT id FROM subjects WHERE name = 'Français' AND level_id = (SELECT id FROM levels WHERE level_number = 1)),
  (SELECT id FROM levels WHERE level_number = 1),
  true
),
(
  'Lire et comprendre un texte : stratégies efficaces',
  'Développer des stratégies de lecture active pour comprendre et analyser tout type de texte.',
  'TEXT',
  'Lire efficacement, c''est comprendre le sens global d''un texte, identifier l''essentiel et répondre à des questions précises.

## Avant de lire : la lecture survol

Avant de lire attentivement, **survole** le texte :
- Lis le titre et les sous-titres
- Regarde les images, légendes, tableaux
- Note la source (auteur, date, type de publication)
- Identifie le type de texte : narratif, descriptif, informatif, argumentatif

## Pendant la lecture : la lecture active

**1. Lis paragraphe par paragraphe** et identifie l''idée principale de chacun.

**2. Pose-toi les questions QQOQCP** : Qui ? Quoi ? Où ? Quand ? Comment ? Pourquoi ?

**3. Repère les connecteurs logiques** qui structurent le texte :
- Addition : *de plus, en outre, également*
- Opposition : *mais, cependant, en revanche, toutefois*
- Cause : *car, parce que, en effet*
- Conséquence : *donc, ainsi, c''est pourquoi*

**4. La structure d''un texte narratif :**
- Situation initiale (qui, où, quand ?)
- Élément perturbateur (un problème surgit)
- Péripéties (comment les personnages réagissent)
- Résolution (le problème est résolu)
- Situation finale

## Le vocabulaire inconnu

Quand tu rencontres un mot inconnu :
1. **Contexte** : les mots autour donnent souvent des indices
2. **Structure du mot** : préfixe (dé-, in-, re-) + radical + suffixe (-tion, -eur, -able)
3. **Dictionnaire** en dernier recours

## Après la lecture

- **Reformule** l''idée principale en une ou deux phrases
- **Réponds aux questions** : littérales (réponse directement dans le texte) ou inférentielles (à déduire)
- **Donne ton avis** en citant le texte pour appuyer ta réponse',
  (SELECT id FROM subjects WHERE name = 'Français' AND level_id = (SELECT id FROM levels WHERE level_number = 1)),
  (SELECT id FROM levels WHERE level_number = 1),
  true
);

-- ============================================================
-- NIVEAU 1 – NÉERLANDAIS (3 cours)
-- ============================================================
INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Het alfabet, de uitspraak en eerste woordenschat',
  'Apprendre l''alphabet néerlandais, les règles de prononciation et les premiers mots essentiels.',
  'TEXT',
  'Le néerlandais est la langue officielle de la Flandre et des Pays-Bas. En Belgique, le maîtriser est un atout majeur pour le marché du travail.

## Het alfabet (L''alphabet)

L''alphabet néerlandais a 26 lettres. Certaines se prononcent différemment du français :
- **G** : son guttural venant du fond de la gorge → *goed, groot, gaan*
- **J** : se prononce comme "y" → *ja, jij, jaar*
- **UI** : son unique entre "eu" et "ui" → *huis (maison), tuin (jardin)*
- **IJ/EI** : se prononcent "aï" → *zijn, mijn, ijsje*
- **OE** : se prononce "ou" → *goed, boek, moeder*
- **W** : entre "v" et "w" → *water, wij*

## Salutations (Begroetingen)

- Goedemorgen ! → Bonjour (matin)
- Goedemiddag ! → Bonjour (après-midi)
- Goedenavond ! → Bonsoir
- Hallo ! / Dag ! → Salut !
- Tot ziens ! / Doei ! → Au revoir !
- Hoe gaat het ? → Comment vas-tu ?
- Goed, dank je ! → Bien, merci !

## Chiffres (Getallen) 1–20

1-één, 2-twee, 3-drie, 4-vier, 5-vijf, 6-zes, 7-zeven, 8-acht, 9-negen, 10-tien,
11-elf, 12-twaalf, 13-dertien, 14-veertien, 15-vijftien, 16-zestien, 17-zeventien, 18-achttien, 19-negentien, 20-twintig

## Couleurs (Kleuren)

rood (rouge), blauw (bleu), geel (jaune), groen (vert), wit (blanc), zwart (noir), oranje (orange), paars (violet), roze (rose), bruin (marron), grijs (gris)

## Se présenter (Zich voorstellen)

- Ik heet ... → Je m''appelle ...
- Mijn naam is ... → Mon nom est ...
- Ik ben ... jaar oud → J''ai ... ans
- Ik woon in ... → J''habite à ...
- Ik ga naar school in ... → Je vais à l''école à ...

**Exemple :**
*— Hallo ! Hoe heet jij ?*
*— Ik heet Lena. Ik ben twaalf jaar oud. Ik woon in Brussel.*',
  (SELECT id FROM subjects WHERE name = 'Néerlandais' AND level_id = (SELECT id FROM levels WHERE level_number = 1)),
  (SELECT id FROM levels WHERE level_number = 1),
  true
),
(
  'De lidwoorden, de naamwoorden en het meervoud',
  'Comprendre les articles de/het et former le pluriel des noms néerlandais.',
  'TEXT',
  'En néerlandais, il n''y a que **deux genres** : les noms masculins/féminins (article *de*) et les noms neutres (article *het*).

## Articles définis : DE et HET

**DE** accompagne les noms masculins et féminins (≈2/3 des noms) :
*de man* (l''homme), *de vrouw* (la femme), *de tafel* (la table), *de school* (l''école), *de auto* (la voiture)

**HET** accompagne les noms neutres (≈1/3 des noms) :
*het kind* (l''enfant), *het boek* (le livre), *het huis* (la maison), *het water* (l''eau)

**Astuce** : Les diminutifs (terminant en *-je* ou *-tje*) sont TOUJOURS **het** :
*het meisje* (la fille), *het hondje* (le petit chien), *het boekje* (le petit livre)

**Article indéfini : EEN** (un/une — pour tous les genres) :
*een man, een vrouw, een kind, een boek*

## Formation du pluriel

| Règle | Exemple |
|-------|---------|
| La plupart des noms → + **-en** | boek → boek**en**, tafel → tafel**en** |
| Voyelle courte → doublons consonne + **-en** | man → mann**en**, kat → katt**en** |
| Terminaison -el/-em/-er/-en → + **-s** | tafel → tafel**s**, kamer → kamer**s** |
| Terminaison -je → + **-s** | meisje → meisje**s** |

Au pluriel → TOUJOURS **de** (jamais het au pluriel) :
*het kind → de kinderen, het boek → de boeken*

## La famille (De familie)

| Néerlandais | Français |
|-------------|---------|
| de vader | le père |
| de moeder | la mère |
| de broer | le frère |
| de zus | la sœur |
| de opa/grootvader | le grand-père |
| de oma/grootmoeder | la grand-mère |
| het kind | l''enfant |
| de zoon | le fils |
| de dochter | la fille |',
  (SELECT id FROM subjects WHERE name = 'Néerlandais' AND level_id = (SELECT id FROM levels WHERE level_number = 1)),
  (SELECT id FROM levels WHERE level_number = 1),
  true
),
(
  'De werkwoorden in de tegenwoordige tijd',
  'Conjuguer les verbes néerlandais réguliers au présent et mémoriser les verbes irréguliers essentiels.',
  'TEXT',
  'La conjugaison au présent (tegenwoordige tijd) en néerlandais est plus simple qu''en français.

## Trouver le radical (stam)

Infinitif → enlever **-en** → radical
- werken → **werk** | spelen → **speel** (→ spel) | lopen → **loop** (→ lop)

## Terminaisons du présent

| Personne | Terminaison | werken |
|----------|-------------|--------|
| ik (je) | radical seul | ik werk |
| jij/je (tu) | radical + **t** | jij werkt |
| hij/zij/het | radical + **t** | hij werkt |
| wij/we (nous) | infinitif | wij werken |
| jullie (vous) | infinitif | jullie werken |
| zij/ze (ils) | infinitif | zij werken |

**Exception :** Quand *jij/je* est après le verbe (inversion), le verbe perd son **-t** :
*Jij werkt.* → *Werk jij ?*

## Verbes irréguliers essentiels

**Zijn (être) :**
ik ben, jij bent, hij is, wij zijn, jullie zijn, zij zijn

**Hebben (avoir) :**
ik heb, jij hebt, hij heeft, wij hebben, jullie hebben, zij hebben

**Gaan (aller) :**
ik ga, jij gaat, hij gaat, wij gaan, jullie gaan, zij gaan

**Kunnen (pouvoir) :**
ik kan, jij kunt/kan, hij kan, wij kunnen, jullie kunnen, zij kunnen

## Vocabulaire scolaire (School)

| Néerlandais | Français |
|-------------|---------|
| de klas | la classe |
| het schrift | le cahier |
| het boek | le livre |
| de leraar / lerares | le/la professeur(e) |
| het huiswerk | les devoirs |
| leren | apprendre/étudier |
| schrijven | écrire |
| lezen | lire |
| begrijpen | comprendre |

**Exemples :** *Ik leer elke dag Nederlands. De lerares geeft les in de klas. Wij maken ons huiswerk thuis.*',
  (SELECT id FROM subjects WHERE name = 'Néerlandais' AND level_id = (SELECT id FROM levels WHERE level_number = 1)),
  (SELECT id FROM levels WHERE level_number = 1),
  true
);

-- ============================================================
-- NIVEAU 1 – ANGLAIS (3 cours)
-- ============================================================
INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Greetings and the verb TO BE',
  'Learn how to greet people in English and use the verb "to be" in all forms.',
  'TEXT',
  'English is one of the most widely spoken languages in the world. Learning it opens doors to international communication, science, and culture.

## Greetings (Salutations)

**Formal greetings:**
- Good morning! → Bonjour (matin)
- Good afternoon! → Bonjour (après-midi)
- Good evening! → Bonsoir
- How do you do? → Enchanté(e) (très formel)

**Informal greetings:**
- Hi! / Hello! → Salut !
- How are you? → Comment vas-tu ?
- I''m fine, thanks! → Je vais bien, merci !
- What''s up? → Quoi de neuf ?

**Saying goodbye:**
- Goodbye! / Bye! → Au revoir !
- See you tomorrow! → À demain !
- Have a nice day! → Bonne journée !

## The verb TO BE (être)

The verb "to be" is the most important verb in English. It is irregular.

| Pronoun | Verb | Contraction | French |
|---------|------|-------------|--------|
| I | am | I''m | je suis |
| You | are | You''re | tu es |
| He | is | He''s | il est |
| She | is | She''s | elle est |
| It | is | It''s | c''est (chose/animal) |
| We | are | We''re | nous sommes |
| You | are | You''re | vous êtes |
| They | are | They''re | ils/elles sont |

**Negative:** add "not" → I am not = I''m not | He is not = He isn''t | They are not = They aren''t

**Questions:** invert subject and verb → Are you from Belgium? Is she your teacher?

**Short answers:** Yes, I am. / No, I''m not. | Yes, she is. / No, she isn''t.

## Introducing yourself

*Hi! My name is Lena. I''m 12 years old. I''m from Liège, in Belgium. I''m a student. My favourite subjects are English and science. I''m not very good at maths, but I love sports!*

Now introduce yourself using "to be".',
  (SELECT id FROM subjects WHERE name = 'Anglais' AND level_id = (SELECT id FROM levels WHERE level_number = 1)),
  (SELECT id FROM levels WHERE level_number = 1),
  true
),
(
  'The Present Simple — habits and daily routine',
  'Use the present simple to talk about habits, facts, and daily routines.',
  'TEXT',
  'The present simple is the most basic and most used tense in English. It describes habits, facts, and regular actions.

## Forming the Present Simple

**Affirmative:**
- I / You / We / They + verb (base form): *I eat, we play, they live*
- He / She / It + verb + **-s** (or -es): *he eat**s**, she watch**es**, it go**es***

**Spelling rules for he/she/it:**
- Most verbs → add **-s**: work → works, play → plays
- Verbs ending in -s, -sh, -ch, -x, -o → add **-es**: watch → watches, go → goes
- Verbs ending in consonant + y → change y to **-ies**: study → studies, carry → carries

**Negative:** do not (don''t) / does not (doesn''t) + verb
- I don''t like Mondays. / She doesn''t eat meat. / They don''t understand.

**Questions:** Do / Does + subject + verb?
- Do you like chocolate? → Yes, I do. / No, I don''t.
- Does he play football? → Yes, he does. / No, he doesn''t.

## Time expressions

every day, always, usually, often, sometimes, rarely, never, on Mondays, at weekends, in the morning

## Daily routine vocabulary

wake up, get up, have breakfast, go to school, study, have lunch, do homework, watch TV, go to bed

**Example paragraph:**
*I usually wake up at 7 o''clock. I have breakfast with my family. I go to school by bus. At school, I study maths, science and languages. I don''t like maths very much, but I love English! After school, I do my homework. I go to bed at 9:30.*

## Common irregular verbs (he/she/it forms)
have → **has** | go → **goes** | do → **does** | say → **says**',
  (SELECT id FROM subjects WHERE name = 'Anglais' AND level_id = (SELECT id FROM levels WHERE level_number = 1)),
  (SELECT id FROM levels WHERE level_number = 1),
  true
),
(
  'Numbers, colours and describing people and things',
  'Learn numbers, colours and adjectives to describe objects and people in English.',
  'TEXT',
  'Describing things and people is one of the most essential skills in any language.

## Numbers (Les chiffres)

**1–20:** one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen, twenty

**Tens:** thirty, forty, fifty, sixty, seventy, eighty, ninety, one hundred

**Compound:** 21 = twenty-one | 35 = thirty-five | 99 = ninety-nine

**Ordinal numbers:** 1st-first, 2nd-second, 3rd-third, 4th-fourth, 5th-fifth…

## Colours (Les couleurs)

red, blue, yellow, green, orange, purple, pink, brown, black, white, grey, gold, silver

**Using colours:** *The sky is blue. My bag is black. She has green eyes.*

## Adjectives — describing people and things

In English, adjectives come **BEFORE** the noun: *a tall boy, a beautiful garden, an interesting book*

| English | French |
|---------|--------|
| big / large | grand / gros |
| small / little | petit |
| tall | grand (personne) |
| short | petit / court |
| old | vieux |
| young | jeune |
| new | nouveau |
| hot / cold | chaud / froid |
| fast / slow | rapide / lent |
| happy / sad | heureux / triste |
| beautiful | beau / belle |
| interesting | intéressant |
| difficult / easy | difficile / facile |

**Describing people:**
*I am tall and slim. I have short brown hair and blue eyes. I am friendly and sometimes a bit shy.*

**Describing objects:**
*My schoolbag is big and black. It has many pockets. My pencil case is small and red.*

## Practice
Describe your bedroom using 5 adjectives and 3 colours:
*My bedroom is... The walls are... My bed is...*',
  (SELECT id FROM subjects WHERE name = 'Anglais' AND level_id = (SELECT id FROM levels WHERE level_number = 1)),
  (SELECT id FROM levels WHERE level_number = 1),
  true
);

-- ============================================================
-- NIVEAU 1 – HISTOIRE ET GÉOGRAPHIE (3 cours)
-- ============================================================
INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'La Préhistoire et l''Antiquité : des origines à Rome',
  'Comprendre les grandes étapes de la Préhistoire et de l''Antiquité, des premiers hommes à la chute de l''Empire romain.',
  'TEXT',
  'L''histoire de l''humanité commence bien avant l''écriture. Nous explorons les premières civilisations humaines.

## La Préhistoire (avant -3300 av. J.-C.)

**Le Paléolithique (-3 000 000 à -10 000 av. J.-C.)**
- Hommes **nomades** : chasse et cueillette
- Outils en pierre taillée (silex)
- Contrôle du feu (vers -400 000 av. J.-C.)
- Art rupestre : Lascaux (France), Altamira (Espagne)
- Homo sapiens apparu vers -300 000

**Le Néolithique (-10 000 à -3300 av. J.-C.)**
- Révolution : les hommes deviennent **sédentaires**
- Invention de l''agriculture (blé, orge) et de l''élevage
- Construction de villages permanents
- Mégalithes : Stonehenge, dolmens et menhirs en Belgique

## L''Antiquité (-3300 à 476 ap. J.-C.)

**Premières civilisations**
- **Mésopotamie** (actuel Irak) : invention de l''écriture cunéiforme (-3300)
- **Égypte** : pharaons, pyramides, écriture hiéroglyphique

**La Grèce antique**
- Cités-États (polis) : Athènes (démocratie), Sparte (militarisme)
- Philosophes : Socrate, Platon, Aristote
- Jeux Olympiques depuis -776 av. J.-C.

**L''Empire romain (-753 av. J.-C. à 476 ap. J.-C.)**
- De cité à empire : Jules César, Auguste, Constantin
- La Belgique romaine : province de *Belgica* — villes de Tournai (Tornacum) et Tongres (Aduatuca Tungrorum)
- 476 ap. J.-C. : chute de l''Empire romain d''Occident → fin de l''Antiquité

## Frise chronologique

| Période | Dates |
|---------|-------|
| Paléolithique | -3 000 000 à -10 000 |
| Néolithique | -10 000 à -3300 |
| Antiquité | -3300 à 476 ap. J.-C. |
| Moyen Âge | 476 à 1453 |',
  (SELECT id FROM subjects WHERE name = 'Histoire et géographie' AND level_id = (SELECT id FROM levels WHERE level_number = 1)),
  (SELECT id FROM levels WHERE level_number = 1),
  true
),
(
  'Lire une carte : orientation, légende et relief belge',
  'Apprendre à lire une carte géographique et découvrir les trois régions naturelles de la Belgique.',
  'TEXT',
  'Une carte est une représentation simplifiée et codifiée d''un espace géographique. Savoir la lire est essentiel.

## Les éléments d''une carte

1. **Titre** : ce que représente la carte
2. **Légende** : explication des symboles et couleurs (indispensable !)
3. **Échelle** : rapport entre distance sur la carte et distance réelle (ex. 1/100 000 = 1 cm → 1 km)
4. **Orientation** : flèche indiquant le Nord
5. **Coordonnées** (latitude/longitude) pour localiser précisément

## Les 4 points cardinaux

Nord (N) – Sud (S) – Est (E) – Ouest (O/W)
Intermédiaires : NE, NO, SE, SO
**Moyen mnémotechnique :** *Never Eat Soggy Waffles* (N-E-S-W)

## Le relief de la Belgique

La Belgique présente trois régions naturelles du Nord-Ouest au Sud-Est :

**1. Plaine côtière et Campine (Nord)**
- Altitude : 0–30 m, relief plat
- Polders, dunes côtières, agriculture intensive

**2. Plateau central (Centre)**
- Altitude : 100–200 m, légèrement vallonné
- Principales rivières : Meuse, Sambre, Escaut
- Région la plus peuplée : Bruxelles, Liège, Namur, Gand

**3. Ardenne et Gaume (Sud)**
- Altitude : 200–694 m (Signal de Botrange = point culminant)
- Forêts denses, vallées profondes (Ourthe, Semois, Amblève)
- Tourisme, randonnée

## Principales rivières

- **La Meuse** : naît en France, traverse Namur et Liège
- **L''Escaut** : traverse Tournai et Gand, se jette en mer du Nord
- **La Sambre** : passe par Charleroi, affluent de la Meuse',
  (SELECT id FROM subjects WHERE name = 'Histoire et géographie' AND level_id = (SELECT id FROM levels WHERE level_number = 1)),
  (SELECT id FROM levels WHERE level_number = 1),
  true
),
(
  'La population et les régions belges',
  'Analyser les indicateurs démographiques et comprendre l''organisation territoriale de la Belgique.',
  'TEXT',
  'La géographie humaine étudie comment les humains occupent et organisent l''espace.

## Les indicateurs démographiques

**Densité de population** = habitants ÷ superficie (km²)
- Belgique : 11,6 M habitants / 30 528 km² ≈ **380 hab/km²** (une des plus élevées d''Europe)

**Natalité** : naissances pour 1 000 habitants/an
**Mortalité** : décès pour 1 000 habitants/an
**Accroissement naturel** = natalité − mortalité
**Espérance de vie** : en Belgique ≈ 81 ans

## Les trois Régions belges

La Belgique est un **État fédéral** divisé en 3 Régions :

| Région | Capitale administrative | Langue(s) | Superficie | Population |
|--------|------------------------|-----------|------------|------------|
| Région flamande | Bruxelles* | Néerlandais | 13 522 km² | 6,7 M |
| Région wallonne | Namur | Français + Allemand | 16 844 km² | 3,7 M |
| Bruxelles-Capitale | Bruxelles | Français + Néerlandais | 161 km² | 1,2 M |

## Les grandes villes belges

- **Bruxelles** (1,2 M) : capitale nationale et européenne (UE, OTAN)
- **Anvers** (530 000) : 2e port d''Europe, centre du diamant
- **Gand** (265 000) : ville médiévale, capitale culturelle flamande
- **Liège** (200 000) : centre industriel et universitaire wallon
- **Bruges** (120 000) : "Venise du Nord", patrimoine UNESCO

## Répartition de la population

- **Forte densité** : axe Bruxelles–Liège–Charleroi (sillon industriel)
- **Faible densité** : Ardenne (forêts, relief difficile)
- **Urbanisation** : 98% des Belges vivent en zones urbaines ou semi-urbaines
- L''**étalement urbain** : les villes s''étendent sur les campagnes environnantes',
  (SELECT id FROM subjects WHERE name = 'Histoire et géographie' AND level_id = (SELECT id FROM levels WHERE level_number = 1)),
  (SELECT id FROM levels WHERE level_number = 1),
  true
);

-- ============================================================
-- NIVEAU 1 – ÉDUCATION PHYSIQUE (2 cours)
-- ============================================================
INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Sécurité, échauffement et qualités physiques fondamentales',
  'Comprendre les règles de sécurité en EPS et les quatre qualités physiques de base.',
  'TEXT',
  'L''éducation physique (EPS) développe ton corps et ta santé. La sécurité et l''échauffement sont toujours prioritaires.

## Règles de sécurité en EPS

**Avant l''activité :**
- S''échauffer obligatoirement (5–10 min)
- Porter des vêtements de sport adaptés et des chaussures attachées
- Enlever tous les bijoux (risque de blessure)
- Signaler toute douleur ou problème de santé à l''enseignant

**Pendant :**
- Respecter les règles et les consignes
- Ne jamais bousculer ou faire trébucher un camarade volontairement
- En cas de blessure : s''arrêter et prévenir l''enseignant immédiatement

**Après :**
- Retour au calme progressif (marche lente, étirements statiques)
- S''hydrater (boire de l''eau)

## Les 4 qualités physiques fondamentales

**1. Endurance cardiovasculaire** : maintenir un effort prolongé (course, vélo, natation). Améliore le cœur et les poumons.
- Développement : jogging régulier, sports collectifs
- Test : Course Cooper (12 min) ou Léger-Boucher

**2. Force musculaire** : vaincre une résistance. Protège les articulations, améliore la posture.
- Développement : pompes, tractions, squats, abdominaux

**3. Souplesse (flexibilité)** : amplitude de mouvement des articulations. Prévient les blessures.
- Développement : étirements statiques (20–30 s), yoga, danse

**4. Vitesse** : déplacement ou réaction le plus rapide possible.
- Développement : sprints courts, jeux de réaction

## Protocole d''échauffement standard (10 min)

1. Mise en train (3 min) : marche rapide ou trot léger
2. Mobilisation articulaire (3 min) : chevilles, genoux, hanches, épaules, cou
3. Augmentation du rythme cardiaque (4 min) : montées de genoux, talons-fesses, petits sauts
**Ne jamais sauter l''échauffement** : risque de déchirures et d''élongations.',
  (SELECT id FROM subjects WHERE name = 'Éducation physique' AND level_id = (SELECT id FROM levels WHERE level_number = 1)),
  (SELECT id FROM levels WHERE level_number = 1),
  true
),
(
  'Introduction aux sports collectifs : basket, foot, volley',
  'Découvrir les règles de base et les techniques fondamentales des sports collectifs pratiqués en EPS.',
  'TEXT',
  'Les sports collectifs développent la coopération, la communication et le fair-play.

## Le basketball

**Principe :** 2 équipes de 5. Marquer plus de paniers (hauteur : 3,05 m). 4×10 minutes.

**Règles essentielles :**
- Pas de marcher (max. 2 pas sans dribbler)
- Dribbler avec une seule main à la fois
- Faute = contact irrégulier sur le corps de l''adversaire
- 3 secondes max dans la raquette adverse
- Valeur : 1 pt (lancer franc), 2 pts (sous la ligne), 3 pts (derrière la ligne des 3 pts)

**Techniques de base :** dribble regard levé, passe poitrine, passe rebond, tir en suspension

## Le football

**Principe :** 2 équipes de 11. Mettre le ballon dans le but adverse. 2×45 minutes.

**Règles essentielles :**
- Hors-jeu : attaquant derrière la dernière ligne de défense au moment de la passe
- Faute → coup franc ou penalty (dans la surface de réparation)
- Carton jaune = avertissement | carton rouge = expulsion
- Le gardien peut utiliser les mains dans sa surface

**Techniques de base :** conduite de balle, passe (intérieur du pied), tir, contrôle

## Le volleyball

**Principe :** 2 équipes de 6. Envoyer le ballon dans le camp adverse (filet). Set = 25 pts (2 pts d''écart).

**Règles essentielles :**
- Maximum 3 touches par équipe
- Pas de tenu (le ballon ne reste pas dans les mains)
- Rotation des joueurs à chaque point au service

**Techniques :**
- Manchette : avant-bras joints, frappe sur l''avant-bras (réception)
- Passe (touche) : doigts en triangle au-dessus de la tête
- Service par-en-bas (débutant) ou flottant (avancé)

## Le fair-play

Respecter les règles, les arbitres et les adversaires. Encourager ses coéquipiers. Ne pas tricher ni protester excessivement.',
  (SELECT id FROM subjects WHERE name = 'Éducation physique' AND level_id = (SELECT id FROM levels WHERE level_number = 1)),
  (SELECT id FROM levels WHERE level_number = 1),
  true
);

-- ============================================================
-- NIVEAU 1 – ÉDUCATION ARTISTIQUE (2 cours)
-- ============================================================
INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Les couleurs et la composition artistique',
  'Comprendre le cercle chromatique et les principes de base de la composition visuelle.',
  'TEXT',
  'L''art visuel repose sur des éléments fondamentaux : la couleur et la composition.

## La théorie des couleurs

**Couleurs primaires** (ne s''obtiennent pas par mélange) : rouge, jaune, bleu

**Couleurs secondaires** (mélange de deux primaires) :
- Rouge + Jaune = **Orange**
- Jaune + Bleu = **Vert**
- Bleu + Rouge = **Violet**

**Couleurs complémentaires** (opposées sur le cercle chromatique) → contraste maximum :
- Rouge ↔ Vert | Bleu ↔ Orange | Jaune ↔ Violet

**Couleurs chaudes** : rouge, orange, jaune → énergie, chaleur
**Couleurs froides** : bleu, vert, violet → calme, fraîcheur

**Valeur :**
- Ajouter du **blanc** → teinte plus claire
- Ajouter du **noir** → teinte plus sombre
- Ajouter du **gris** → teinte désaturée

## Les éléments de composition

**La ligne** : droite, courbe, diagonale → guide le regard, crée du mouvement
**La forme** : géométrique (cercle, carré, triangle) ou organique (formes naturelles)
**L''espace** : premier plan / plan intermédiaire / arrière-plan → illusion de profondeur
**Le rythme** : répétition d''éléments → cadence visuelle
**La règle des tiers** : diviser l''image en grille 3×3. Placer les éléments importants aux intersections = composition équilibrée.

## Introduction à l''histoire de l''art

- **Impressionnisme** (fin XIXe) : Monet, Renoir → lumière, touches de couleur, instant capturé
- **Surréalisme** (XXe) : Dali, **René Magritte** (belge !) → rêve, inconscient, images étranges
- **Art abstrait** : Kandinsky, Mondrian → formes et couleurs sans représentation réaliste

**René Magritte** (1898–1967) : artiste belge le plus célèbre. "La Trahison des images" (1929) : une pipe peinte avec la légende *"Ceci n''est pas une pipe"* — réflexion sur la représentation et la réalité.',
  (SELECT id FROM subjects WHERE name = 'Éducation artistique' AND level_id = (SELECT id FROM levels WHERE level_number = 1)),
  (SELECT id FROM levels WHERE level_number = 1),
  true
),
(
  'Le dessin d''observation et les techniques graphiques',
  'Développer l''observation et maîtriser les techniques de base : contour, ombrage, perspective.',
  'TEXT',
  'Dessiner, c''est avant tout **observer**. Apprendre à vraiment voir ce qui est devant soi est la première compétence à développer.

## La méthode du dessin d''observation

1. **Observer** 1 minute avant de dessiner : proportions, formes globales, ombres
2. **Formes simples** : décompose l''objet en cercles, rectangles, triangles (tracé léger)
3. **Contour** : affine progressivement en te référant à l''objet réel
4. **Détails** : uniquement après que la forme globale est satisfaisante
5. **Ombres et lumières** : identifie la source lumineuse et ajoute les ombres

## Les techniques de base

**Le contour :** Ligne qui délimite une forme. Varie l''épaisseur (appuie plus fort pour les zones sombres).

**Le hachage (hatching) :** Lignes parallèles pour créer une zone d''ombre. Plus serrées = plus sombre.

**Le contre-hachage (cross-hatching) :** Croisement de lignes dans deux directions → ombres denses.

**L''estompage :** Frotter le crayon ou le fusain pour créer des dégradés progressifs.

## La perspective

La perspective crée l''illusion de profondeur sur une surface plane.

**Règle de taille :** Plus un objet est loin, plus il paraît petit.
**Perspective à 1 point de fuite :** Toutes les lignes convergent vers un seul point (couloir, route).
**Perspective à 2 points de fuite :** Deux points sur la ligne d''horizon (bâtiments vus de l''angle).

## Proportions du visage humain

- Les yeux sont à **mi-hauteur** de la tête (pas en haut !)
- Espace entre les yeux = 1 œil de largeur
- Le nez : à mi-distance entre les yeux et le menton
- La bouche : à 1/3 entre le nez et le menton

## Les crayons

HB = usage général | 2B–6B = doux, traits sombres | H–2H = durs, traits légers
Fusain = trait expressif, facile à estomper | Gomme blanche = efface proprement',
  (SELECT id FROM subjects WHERE name = 'Éducation artistique' AND level_id = (SELECT id FROM levels WHERE level_number = 1)),
  (SELECT id FROM levels WHERE level_number = 1),
  true
);

-- ============================================================
-- NIVEAU 1 – PHILOSOPHIE ET CITOYENNETÉ / EPC (2 cours)
-- ============================================================
INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Vivre ensemble : droits, devoirs et règles sociales',
  'Comprendre pourquoi les sociétés ont des règles et comment droits et devoirs organisent la vie collective.',
  'TEXT',
  'Nous vivons en société, en communauté avec d''autres. Pour que la vie commune soit possible et juste, des règles sont nécessaires.

## Pourquoi des règles ?

Sans règles : ni feux rouges, ni lois contre le vol, ni règles dans les sports → chaos.
Les règles permettent de : protéger les individus, organiser la vie collective, garantir la justice, résoudre les conflits pacifiquement.

## Types de règles

**Informelles (sociales)** : non écrites, mais partagées par un groupe.
- Saluer en entrant, ne pas parler la bouche pleine, céder sa place dans le bus

**Formelles (juridiques)** : écrites dans des lois.
- La **Constitution belge** : loi fondamentale qui organise l''État
- Le **Code pénal** : définit les infractions et les sanctions
- Le **ROI** (règlement d''ordre intérieur) de ton école

## Droits et devoirs

**Droit** : faculté reconnue (tu peux faire ou bénéficier de quelque chose)
**Devoir** : obligation (tu dois faire quelque chose)

**Droits des enfants (Convention internationale des droits de l''enfant — CIDE, 1989) :**
- Droit à l''éducation et aux loisirs
- Droit à la santé et aux soins
- Droit à la protection contre la violence et l''exploitation
- Droit d''exprimer son opinion

**Devoirs des élèves :**
- Assister aux cours, respecter les enseignants et camarades, ne pas tricher

## Égalité et équité

**Égalité** : mêmes droits pour tous (quelle que soit l''origine, le sexe, la religion)
**Équité** : adapter les règles pour que tout le monde parte sur un pied d''égal (ex. : aménagements pour élèves en situation de handicap)
En Belgique, la **Constitution** garantit l''égalité devant la loi (art. 10 et 11).

## Résoudre un conflit

1. Dialogue → écouter, exprimer sans agressivité
2. Médiation → tierce personne neutre
3. Arbitrage → autorité qui tranche
4. Recours légal → tribunal (en dernier recours)',
  (SELECT id FROM subjects WHERE name = 'Philosophie et citoyenneté (EPC)' AND level_id = (SELECT id FROM levels WHERE level_number = 1)),
  (SELECT id FROM levels WHERE level_number = 1),
  true
),
(
  'Diversité culturelle, identité et stéréotypes',
  'Explorer la diversité des cultures en Belgique et comprendre la formation des préjugés et stéréotypes.',
  'TEXT',
  'La Belgique est un pays multiculturel : plus de 160 nationalités y coexistent. Comprendre et respecter la diversité est essentiel.

## Qu''est-ce que la culture ?

La **culture** est l''ensemble des croyances, valeurs, traditions, langues, arts et modes de vie partagés par un groupe humain. Elle se transmet de génération en génération et évolue.

**Éléments constitutifs :** langue, religion, traditions, fêtes, nourriture, arts, codes sociaux (façon de saluer, de s''habiller…)

## L''identité

**Identité personnelle** : caractéristiques propres (prénom, histoire, traits de caractère, goûts)
**Identité sociale** : groupes auxquels on appartient (famille, nationalité, religion, langue, profession)

Nous avons toutes et tous une identité **multiple et complexe** : personne ne se réduit à une seule caractéristique.

## Stéréotypes et préjugés

**Stéréotype** : image simplifiée et généralisante d''un groupe. Ne correspond pas à la réalité individuelle.
- *"Les Belges mangent des frites tout le temps"*
- *"Les filles ne sont pas douées en maths"*

**Préjugé** : opinion négative formée sans connaissance réelle. Peut mener à la **discrimination**.

**Discrimination** : traitement inégal et défavorable à cause d''une appartenance à un groupe (origine, sexe, religion, handicap…). C''est **illégal en Belgique** (loi du 10 mai 2007).

**Le racisme** : discrimination basée sur l''origine ethnique ou la couleur de peau.

## Combattre les préjugés

1. Remettre en question ses propres idées reçues
2. S''informer auprès de sources fiables et diversifiées
3. Rencontrer et écouter des personnes différentes de soi
4. Dénoncer les propos discriminatoires (ne pas rester passif·ve)
5. Valoriser la diversité comme une richesse culturelle

En Belgique, **UNIA** (Centre Interfédéral pour l''Égalité des Chances) lutte contre toutes les formes de discrimination.',
  (SELECT id FROM subjects WHERE name = 'Philosophie et citoyenneté (EPC)' AND level_id = (SELECT id FROM levels WHERE level_number = 1)),
  (SELECT id FROM levels WHERE level_number = 1),
  true
);

-- ============================================================
-- NIVEAU 1 – FORMATION SOCIALE ET ÉCONOMIQUE (2 cours)
-- ============================================================
INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Les métiers et les secteurs d''activité économique',
  'Découvrir la diversité des métiers et comprendre l''organisation de l''économie en secteurs.',
  'TEXT',
  'Le monde du travail est vaste. Comprendre comment il est organisé aide à réfléchir à son avenir professionnel.

## Les trois secteurs de l''économie

**Secteur primaire** : extraction et exploitation des ressources naturelles.
- Agriculture, élevage, pêche, sylviculture, mines et carrières
- En Belgique : agriculture intensive (céréales, betteraves), horticulture
- Emplois : agriculteur, pêcheur, forestier

**Secteur secondaire** : transformation des matières premières en produits finis.
- Industrie, construction, artisanat
- En Belgique : chimie (Solvay, UCB), sidérurgie, agroalimentaire, construction
- Emplois : ouvrier, ingénieur, technicien, maçon, menuisier

**Secteur tertiaire** : fourniture de services (sans création d''objet physique).
- Commerce, santé, éducation, transport, banque, administration, tourisme
- En Belgique : >75% de l''emploi → secteur dominant
- Emplois : médecin, enseignant, avocat, comptable, infirmier, vendeur

**Secteur quaternaire** (parfois distingué) : recherche, information, nouvelles technologies.
- Emplois : informaticien, chercheur, data analyst, ingénieur en IA

## Diversité des métiers

**Santé :** médecin, infirmier/ière, pharmacien, kinésithérapeute, dentiste
**Enseignement :** instituteur/trice, professeur, éducateur
**Sciences/Tech :** ingénieur, biologiste, chimiste, informaticien, vétérinaire
**Arts/Communication :** journaliste, graphiste, comédien, musicien, photographe
**Services :** cuisinier, hôtelier, coiffeur, mécanicien

## Formation et qualifications

- **Enseignement professionnel (EP)** : formation pratique à un métier
- **Enseignement technique (ET)** : théorie + pratique
- **Enseignement général (EG)** : prépare aux études supérieures
- **Hautes Écoles/Universités** : médecin (7 ans), avocat (5 ans), ingénieur (5 ans)

## L''entrepreneuriat

Un **entrepreneur** crée sa propre entreprise. Il prend des risques mais organise son travail librement.
Statuts en Belgique : indépendant (personne physique) ou société (SRL, SA, SNC…)',
  (SELECT id FROM subjects WHERE name = 'Formation sociale et économique' AND level_id = (SELECT id FROM levels WHERE level_number = 1)),
  (SELECT id FROM levels WHERE level_number = 1),
  true
),
(
  'Les besoins fondamentaux et la consommation responsable',
  'Identifier les besoins humains et adopter une approche critique et responsable de la consommation.',
  'TEXT',
  'Chaque jour, nous consommons des biens et services pour satisfaire nos besoins. Savons-nous distinguer besoin et désir ?

## Les besoins fondamentaux

**Besoins physiologiques** : manger, boire, dormir, respirer, se soigner, se vêtir, se loger.
**Besoins de sécurité** : sécurité physique, économique, santé.
**Besoins sociaux** : aimer/être aimé, appartenir à un groupe, communiquer.
**Besoins d''estime** : confiance en soi, respect, reconnaissance.
**Besoins d''accomplissement** : réaliser son potentiel, apprendre, créer.

(Pyramide de Maslow : base = besoins physiologiques → sommet = accomplissement)

## Besoin vs désir

**Besoin** : objectif, partagé par tous. Tout le monde a besoin de manger.
**Désir** : subjectif. Vouloir les dernières baskets de marque = désir, pas besoin.

## La consommation responsable — les 3R

1. **Réduire** : acheter moins mais mieux. Éviter le gaspillage alimentaire.
2. **Réutiliser** : réparer plutôt que jeter. Acheter d''occasion.
3. **Recycler** : trier ses déchets pour qu''ils soient retraités.

**Autres pratiques :**
- Acheter local → réduire les transports, soutenir l''économie locale
- Acheter équitable → garantir un prix juste aux producteurs des pays du Sud

## Les labels

| Label | Signification |
|-------|---------------|
| Max Havelaar / Fairtrade | Commerce équitable |
| Bio / Agriculture biologique | Sans pesticides de synthèse |
| Écolabel européen (fleur verte) | Faible impact environnemental |

## La publicité et l''esprit critique

La publicité crée des désirs artificiels. Pour ne pas se laisser manipuler :
- Identifie les techniques (célébrités, promotions limitées, images idéalisées)
- Demande-toi : *Est-ce un besoin ou un désir ? En ai-je vraiment besoin ?*
- Compare les prix avant d''acheter',
  (SELECT id FROM subjects WHERE name = 'Formation sociale et économique' AND level_id = (SELECT id FROM levels WHERE level_number = 1)),
  (SELECT id FROM levels WHERE level_number = 1),
  true
);

-- ============================================================
-- NIVEAU 2 — Mathématiques
-- ============================================================

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Géométrie plane : figures et propriétés',
  'Étude des triangles, quadrilatères et cercles avec leurs propriétés fondamentales.',
  'TEXT',
  '# Géométrie plane

## Les triangles

Un triangle est une figure à trois côtés et trois angles. La somme des angles d''un triangle est toujours **180°**.

### Types de triangles
- **Équilatéral** : trois côtés égaux, trois angles de 60°
- **Isocèle** : deux côtés égaux, deux angles égaux à la base
- **Rectangle** : un angle droit (90°), la relation de Pythagore s''applique : a² + b² = c²
- **Scalène** : trois côtés de longueurs différentes

### Théorème de Pythagore
Dans un triangle rectangle : **(côté opposé)² + (côté adjacent)² = (hypoténuse)²**

Exemple : si les deux cathètes mesurent 3 cm et 4 cm, l''hypoténuse mesure √(9 + 16) = √25 = **5 cm**.

## Les quadrilatères

| Figure | Propriétés |
|--------|-----------|
| Carré | 4 côtés égaux, 4 angles droits |
| Rectangle | 2 paires de côtés égaux, 4 angles droits |
| Losange | 4 côtés égaux, angles opposés égaux |
| Parallélogramme | 2 paires de côtés parallèles et égaux |
| Trapèze | 1 paire de côtés parallèles |

## Le cercle

- **Centre** : point équidistant de tous les points du cercle
- **Rayon (r)** : distance du centre à la circonférence
- **Diamètre (d)** : d = 2r
- **Périmètre** : C = 2πr ≈ 6,28r
- **Aire** : A = πr²

## Périmètres et aires

| Figure | Périmètre | Aire |
|--------|-----------|------|
| Carré (côté a) | 4a | a² |
| Rectangle (l × L) | 2(l + L) | l × L |
| Triangle (base b, hauteur h) | a + b + c | (b × h) / 2 |
| Cercle (rayon r) | 2πr | πr² |

## Exercice type

Un jardin rectangulaire mesure 12 m de long et 8 m de large. Calculez son périmètre et son aire.
- Périmètre = 2(12 + 8) = **40 m**
- Aire = 12 × 8 = **96 m²**',
  (SELECT id FROM subjects WHERE name = 'Mathématiques' AND level_id = (SELECT id FROM levels WHERE level_number = 2)),
  (SELECT id FROM levels WHERE level_number = 2),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Puissances, racines carrées et calcul numérique',
  'Maîtriser les puissances entières et les racines carrées pour le calcul scientifique.',
  'TEXT',
  '# Puissances et racines carrées

## Les puissances

Une puissance représente une multiplication répétée.

**Notation :** aⁿ se lit "a à la puissance n" = a × a × a × ... (n fois)

### Règles de calcul
- **Produit** : aⁿ × aᵐ = aⁿ⁺ᵐ → ex. 3² × 3³ = 3⁵ = 243
- **Quotient** : aⁿ ÷ aᵐ = aⁿ⁻ᵐ → ex. 5⁴ ÷ 5² = 5² = 25
- **Puissance de puissance** : (aⁿ)ᵐ = aⁿˣᵐ → ex. (2³)² = 2⁶ = 64
- **Puissance zéro** : a⁰ = 1 (pour tout a ≠ 0)
- **Puissance négative** : a⁻ⁿ = 1/aⁿ → ex. 2⁻³ = 1/8

### Puissances de 10
Les puissances de 10 permettent d''écrire les grands et petits nombres :
- 10³ = 1 000 (kilo-)
- 10⁶ = 1 000 000 (méga-)
- 10⁻³ = 0,001 (milli-)
- 10⁻⁶ = 0,000001 (micro-)

**Notation scientifique :** 6 400 000 = 6,4 × 10⁶

## Les racines carrées

La racine carrée de a (notée √a) est le nombre positif dont le carré vaut a.

√a = b signifie b² = a et b ≥ 0

### Racines usuelles
| a | √a |
|---|-----|
| 1 | 1 |
| 4 | 2 |
| 9 | 3 |
| 16 | 4 |
| 25 | 5 |
| 100 | 10 |

### Règles de calcul
- √(a × b) = √a × √b
- √(a/b) = √a / √b
- (√a)² = a

## Application : distance entre deux points

La distance entre les points A(x₁, y₁) et B(x₂, y₂) se calcule par :
d(A,B) = √[(x₂-x₁)² + (y₂-y₁)²]

Exemple : A(1, 2) et B(4, 6)
d = √[(4-1)² + (6-2)²] = √[9 + 16] = √25 = **5 unités**',
  (SELECT id FROM subjects WHERE name = 'Mathématiques' AND level_id = (SELECT id FROM levels WHERE level_number = 2)),
  (SELECT id FROM levels WHERE level_number = 2),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Équations du premier degré à une inconnue',
  'Résoudre des équations et inéquations du premier degré et interpréter les résultats.',
  'TEXT',
  '# Équations du premier degré

## Qu''est-ce qu''une équation ?

Une équation est une égalité contenant une inconnue (souvent notée x). Résoudre une équation, c''est trouver la valeur de x qui rend l''égalité vraie.

**Exemple :** 2x + 5 = 13

## Méthode de résolution

**Principe :** On effectue les mêmes opérations des deux côtés du signe égal pour isoler x.

### Étapes :
1. Regrouper les termes avec x d''un côté
2. Regrouper les nombres de l''autre côté
3. Diviser par le coefficient de x

**Exemple :** 2x + 5 = 13
- 2x = 13 - 5
- 2x = 8
- x = 8 ÷ 2
- **x = 4**

**Vérification :** 2(4) + 5 = 8 + 5 = 13 ✓

## Cas particuliers

### Équation avec parenthèses
3(x + 2) = 15
- 3x + 6 = 15
- 3x = 9
- x = 3

### Équation avec x des deux côtés
5x - 3 = 2x + 9
- 5x - 2x = 9 + 3
- 3x = 12
- x = 4

## Inéquations du premier degré

Une inéquation contient un signe d''inégalité : <, >, ≤, ≥

**Règle importante :** Quand on multiplie ou divise par un nombre négatif, le sens de l''inégalité s''inverse !

**Exemple :** 2x - 4 > 6
- 2x > 10
- x > 5

L''ensemble des solutions : ]5 ; +∞[

## Applications concrètes

**Problème :** Un cinéma vend des places à 9€. Il y a une réduction de 15€ pour les groupes. Une classe a dépensé 84€. Combien d''élèves sont venus ?

Équation : 9x - 15 = 84
- 9x = 99
- x = 11 élèves',
  (SELECT id FROM subjects WHERE name = 'Mathématiques' AND level_id = (SELECT id FROM levels WHERE level_number = 2)),
  (SELECT id FROM levels WHERE level_number = 2),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Statistiques descriptives : tableaux et graphiques',
  'Collecter, organiser et interpréter des données statistiques à l''aide d''indicateurs.',
  'TEXT',
  '# Statistiques descriptives

## Introduction

La statistique est la science de la collecte, de l''organisation et de l''interprétation des données. Elle nous permet de comprendre le monde à partir de chiffres.

## Vocabulaire de base

- **Population** : ensemble étudié (ex. élèves d''une école)
- **Individu** : chaque élément de la population
- **Variable** : caractéristique observée (ex. taille, note, couleur de cheveux)
- **Effectif** : nombre de fois qu''une valeur apparaît
- **Fréquence** : effectif / effectif total (en % si × 100)

## Tableau de données

| Notes (/20) | Effectif | Fréquence |
|-------------|---------|-----------|
| 8-10 | 5 | 20% |
| 11-13 | 8 | 32% |
| 14-16 | 9 | 36% |
| 17-20 | 3 | 12% |
| **Total** | **25** | **100%** |

## Les graphiques

### Diagramme en bâtons
Utilisé pour des données **discrètes** (valeurs isolées). Chaque bâton représente un effectif.

### Histogramme
Utilisé pour des données **regroupées en classes**. La surface de chaque rectangle est proportionnelle à l''effectif.

### Diagramme circulaire (camembert)
Chaque secteur représente une fréquence. Angle du secteur = fréquence × 360°.

## Indicateurs statistiques

### Moyenne
Somme de toutes les valeurs ÷ nombre de valeurs

Exemple : notes 12, 14, 10, 16, 13 → Moyenne = (12+14+10+16+13)/5 = **13**

### Médiane
Valeur centrale une fois les données rangées en ordre croissant.

5 valeurs rangées : 10, 12, 13, 14, 16 → Médiane = **13** (3ème valeur)

### Mode (valeur la plus fréquente)
Dans la série 3, 5, 5, 7, 5, 9 → Mode = **5**

### Étendue
Valeur maximale - valeur minimale = 16 - 10 = **6**

## Application

Une enquête sur le temps de trajet (en minutes) de 10 élèves donne :
15, 20, 10, 25, 20, 30, 15, 20, 10, 15

Calcul de la moyenne = (15+20+10+25+20+30+15+20+10+15)/10 = **18 minutes**',
  (SELECT id FROM subjects WHERE name = 'Mathématiques' AND level_id = (SELECT id FROM levels WHERE level_number = 2)),
  (SELECT id FROM levels WHERE level_number = 2),
  true
);


-- ============================================================
-- NIVEAU 2 — Français
-- ============================================================

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Analyse grammaticale de la phrase',
  'Identifier les fonctions grammaticales : sujet, prédicat, compléments dans des phrases complexes.',
  'TEXT',
  '# Analyse grammaticale de la phrase

## La phrase et ses constituants

En français, chaque phrase est composée de différents éléments qui ont chacun une **fonction** précise.

## Le groupe nominal sujet (GNS)

Le sujet est l''élément **dont on parle** dans la phrase. Il répond à la question « Qui est-ce qui ? » ou « Qu''est-ce qui ? » placée avant le verbe.

**Astuce de détection :** C''est + [sujet] + qui + verbe → "C''est le chien qui court."

### Accord du verbe avec le sujet
Le verbe s''accorde TOUJOURS en personne et en nombre avec son sujet.

Exemples :
- Les enfants **jouent** dans le parc. (3ème personne du pluriel)
- Mon ami et moi **partons** demain. (1ère personne du pluriel)

## Le groupe verbal prédicat

Le prédicat est ce que l''on dit du sujet. Il contient obligatoirement un **verbe conjugué**.

## Les compléments

### Compléments essentiels (du verbe)
Ils ne peuvent pas être supprimés ni déplacés.
- **COD** (Complément d''Objet Direct) : répond à « Qui ? » ou « Quoi ? » après le verbe
  → Il mange **une pomme**. (Quoi ? une pomme)
- **COI** (Complément d''Objet Indirect) : introduit par une préposition (à, de...)
  → Il pense **à ses amis**. (À qui ? à ses amis)

### Compléments circonstanciels (CC)
Ils apportent des informations sur les circonstances. Ils sont **mobiles et supprimables**.
- **Lieu** : Il joue **dans le jardin**.
- **Temps** : Il part **demain matin**.
- **Manière** : Elle travaille **avec soin**.
- **Cause** : Il est absent **à cause de la maladie**.

## Exercice d''application

Analysez : "Chaque matin, Marie lit attentivement les journaux de son père."

- **Sujet** : Marie
- **CC de temps** : Chaque matin
- **Verbe** : lit
- **COD** : les journaux
- **CC de manière** : attentivement
- **Complément du nom** : de son père',
  (SELECT id FROM subjects WHERE name = 'Français' AND level_id = (SELECT id FROM levels WHERE level_number = 2)),
  (SELECT id FROM levels WHERE level_number = 2),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Les temps du passé : imparfait et passé composé',
  'Distinguer l''imparfait du passé composé et les employer correctement selon le contexte narratif.',
  'TEXT',
  '# Imparfait et passé composé

## Deux temps du passé aux valeurs distinctes

En français, **l''imparfait** et le **passé composé** expriment tous deux des événements passés, mais leurs valeurs sont différentes.

## L''imparfait

### Formation
Radical du présent (nous) + terminaisons : **-ais, -ais, -ait, -ions, -iez, -aient**

| Personne | Être | Avoir | Faire |
|----------|------|-------|-------|
| je | étais | avais | faisais |
| tu | étais | avais | faisais |
| il/elle | était | avait | faisait |
| nous | étions | avions | faisions |
| vous | étiez | aviez | faisiez |
| ils/elles | étaient | avaient | faisaient |

### Valeurs de l''imparfait
1. **Description dans le passé** : Il faisait beau. La maison était grande.
2. **Action habituelle ou répétée** : Chaque été, nous allions à la mer.
3. **Action en cours** (arrière-plan d''un récit) : Il dormait quand le téléphone sonna.

## Le passé composé

### Formation
Auxiliaire (avoir ou être) au présent + participe passé

**Auxiliaire ÊTRE** : verbes de mouvement et d''état (aller, venir, partir, arriver, rester, naître, mourir, sortir, entrer, monter, descendre, tomber, retourner) + tous les verbes pronominaux.

→ Accord du participe passé avec le sujet quand auxiliaire être.

**Auxiliaire AVOIR** : tous les autres verbes.

### Valeurs du passé composé
1. **Action achevée** à un moment précis : J''ai mangé à midi.
2. **Action dont l''effet se prolonge** dans le présent : J''ai appris le français (= je le sais maintenant).

## Imparfait vs Passé composé

| Imparfait | Passé composé |
|-----------|---------------|
| Action longue / durée | Action courte / ponctuelle |
| Arrière-plan | Premier plan |
| État / habitude | Événement précis |

**Exemple narratif :**
Il **faisait** (imparfait - arrière-plan) nuit noire quand soudain un cri **retentit** (passé composé - événement).',
  (SELECT id FROM subjects WHERE name = 'Français' AND level_id = (SELECT id FROM levels WHERE level_number = 2)),
  (SELECT id FROM levels WHERE level_number = 2),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Les figures de style : enrichir son expression',
  'Reconnaître et utiliser les principales figures de style dans les textes littéraires.',
  'TEXT',
  '# Les figures de style

## Pourquoi les figures de style ?

Les figures de style sont des procédés d''écriture qui permettent de rendre le langage plus **expressif, imagé et persuasif**. Elles sont présentes dans la littérature, mais aussi dans la publicité et le discours quotidien.

## Les figures de comparaison

### La comparaison
Elle compare deux éléments à l''aide d''un **outil comparatif** : comme, tel que, pareil à, semblable à...

→ "Il est **courageux comme un lion**."
(Comparé = il | Outil = comme | Comparant = lion)

### La métaphore
Comme la comparaison SANS l''outil comparatif. Elle affirme que quelque chose **est** une autre chose.

→ "C''est un **lion** au combat." (Il est courageux, implicitement)
→ "La vie est un **long fleuve tranquille**."

## Les figures d''insistance

### L''anaphore
Répétition d''un mot ou groupe de mots **en début de phrase ou de vers**.

→ "J''irai, j''irai, j''irai jusqu''au bout de mes rêves."

### La gradation
Succession de termes **de plus en plus** (ou moins en moins) intenses.

→ "Il entendit un murmure, une voix, un cri, une clameur."

### L''hyperbole
Exagération volontaire pour souligner une idée.

→ "Je meurs de faim !" / "C''est mille fois plus beau qu''avant."

## Les figures de substitution

### La personnification
On attribue des caractéristiques humaines à une chose ou un animal.

→ "Le vent **hurle** dans la nuit." / "La forêt **respire** doucement."

### L''allégorie
Une idée abstraite représentée par une image concrète.

→ La Justice représentée par une femme aux yeux bandés tenant une balance.

## Méthode d''analyse

Pour analyser une figure de style :
1. Nommer la figure
2. Citer les mots concernés
3. Expliquer l''effet produit sur le lecteur',
  (SELECT id FROM subjects WHERE name = 'Français' AND level_id = (SELECT id FROM levels WHERE level_number = 2)),
  (SELECT id FROM levels WHERE level_number = 2),
  true
);


-- ============================================================
-- NIVEAU 2 — Néerlandais
-- ============================================================

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Perfectum en imperfectum : les temps du passé en néerlandais',
  'Former et employer le perfectum (passé composé) et l''imperfectum (imparfait) en néerlandais.',
  'TEXT',
  '# Perfectum en Imperfectum

## Het Perfectum (Voltooide Tegenwoordige Tijd)

Le perfectum correspond au passé composé français. Il se forme avec l''auxiliaire **hebben** ou **zijn** + le participe passé.

### Formation du participe passé (voltooid deelwoord)
- Pour les verbes réguliers : **ge + stam + t/d**
- La règle **''t kofschip** détermine si l''on écrit **t** ou **d** à la fin.

**Règle ''t kofschip :** Si la dernière lettre du radical fait partie de : **t, k, f, s, c, h, p** → on ajoute **t**. Sinon → on ajoute **d**.

| Infinitif | Radical | Fin | Participe |
|-----------|---------|-----|-----------|
| werken | werk | k → t | gewerkt |
| leven | leef | f → t | geleefd |
| maken | maak | k → t | gemaakt |

### Auxiliaires : hebben ou zijn ?
- **Hebben** : pour la plupart des verbes
- **Zijn** : pour les verbes de mouvement/changement d''état (gaan, komen, rijden, vallen, worden...)

Exemples :
- Ik **heb gewerkt**. (J''ai travaillé.)
- Hij **is gegaan**. (Il est allé.)

## Het Imperfectum (Onvoltooid Verleden Tijd)

Correspond à l''imparfait français. Utilisé pour les récits écrits et descriptions passées.

### Formation des verbes réguliers
- Radical + **te/tte** (si ''t kofschip) ou **de/dde**

| Infinitif | Radical | Imperfectum |
|-----------|---------|-------------|
| werken | werk | ik werkte |
| leven | leef | ik leefde |

### Verbes irréguliers importants

| Infinitief | Imperfectum | Perfectum |
|-----------|-------------|-----------|
| zijn | was/waren | is geweest |
| hebben | had/hadden | heeft gehad |
| gaan | ging/gingen | is gegaan |
| komen | kwam/kwamen | is gekomen |

## Quand utiliser lequel ?

- **Perfectum** : dans la langue parlée pour des actions passées
- **Imperfectum** : dans les textes écrits (romans, journaux) et avec certains verbes (hebben, zijn, kunnen, willen, mogen, moeten)',
  (SELECT id FROM subjects WHERE name = 'Néerlandais' AND level_id = (SELECT id FROM levels WHERE level_number = 2)),
  (SELECT id FROM levels WHERE level_number = 2),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'De bijvoeglijke naamwoorden : les adjectifs en néerlandais',
  'Apprendre la déclinaison des adjectifs et leur place dans la phrase néerlandaise.',
  'TEXT',
  '# De bijvoeglijke naamwoorden

## Qu''est-ce qu''un adjectif ?

Un adjectif (bijvoeglijk naamwoord) qualifie un nom. En néerlandais, sa forme varie selon le contexte.

## Les règles de déclinaison

### Règle de base
L''adjectif prend un **-e** dans la plupart des cas. Mais il reste **invariable** dans des situations précises.

### Quand l''adjectif reste sans -e (invariable) ?
L''adjectif ne prend PAS de -e quand :
1. Il est attribut (après een verbe d''état : zijn, worden, blijven...)
   → De auto is **groot**. (La voiture est grande.)

2. Il précède un substantif **de genre neutre** (het-woord) avec l''article indéfini **een** :
   → een **groot** huis (une grande maison) — huis est het-woord
   → een **klein** kind (un petit enfant)

### Quand l''adjectif prend -e ?
Dans tous les autres cas :
- Avec un de-woord + een/de : de **grote** auto / een **grote** auto
- Avec un het-woord + het : het **grote** huis
- Au pluriel : **grote** huizen / **grote** auto''s

## Tableau récapitulatif

| Contexte | de-woord | het-woord |
|----------|----------|-----------|
| Défini (de/het) | de grote auto | het grote huis |
| Indéfini (een) | een grote auto | een groot huis |
| Attribut | De auto is groot | Het huis is groot |
| Pluriel | grote auto''s | grote huizen |

## Comparatif et superlatif

| Positif | Comparatif | Superlatif |
|---------|-----------|-----------|
| groot (grand) | groter | het grootst(e) |
| klein (petit) | kleiner | het kleinst(e) |
| goed (bon) | beter | het best(e) |
| veel (beaucoup) | meer | het meest(e) |

Exemple : "Dit huis is **groter** dan dat huis." (Cette maison est plus grande que cette maison-là.)',
  (SELECT id FROM subjects WHERE name = 'Néerlandais' AND level_id = (SELECT id FROM levels WHERE level_number = 2)),
  (SELECT id FROM levels WHERE level_number = 2),
  true
);


-- ============================================================
-- NIVEAU 2 — Anglais
-- ============================================================

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Past Simple : actions completed in the past',
  'Form and use the Past Simple tense for finished actions and events in the past.',
  'TEXT',
  '# Past Simple Tense

## What is the Past Simple?

The Past Simple is used to talk about **finished actions** at a specific time in the past.

**Key time expressions:** yesterday, last week/month/year, in 2020, ago, when I was young...

## Regular Verbs

### Formation: verb + **-ed**

| Infinitive | Past Simple |
|-----------|-------------|
| walk | walked |
| play | played |
| watch | watched |
| study | studied |
| stop | stopped |

### Spelling rules
- Most verbs: add -ed → talk → talked
- Verb ends in -e: add -d → like → liked
- Verb ends in consonant + y: change y → i, add -ed → study → studied
- Short verbs (CVC pattern): double the consonant → stop → stopped

## Irregular Verbs (très important à mémoriser)

| Infinitive | Past Simple | Translation |
|-----------|-------------|-------------|
| be | was/were | être |
| have | had | avoir |
| go | went | aller |
| come | came | venir |
| see | saw | voir |
| do | did | faire |
| say | said | dire |
| get | got | obtenir/devenir |
| make | made | faire/fabriquer |
| know | knew | savoir/connaître |

## Sentences: Affirmative, Negative, Question

### Affirmative
Subject + Past Simple verb
→ "She **walked** to school." / "He **went** home."

### Negative
Subject + **did not (didn''t)** + infinitive
→ "She **didn''t walk** to school." / "He **didn''t go** home."

### Question
**Did** + subject + infinitive + ?
→ "**Did** she **walk** to school?" / "**Did** he **go** home?"

Short answers: Yes, she **did**. / No, she **didn''t**.

## Practice Dialogue

A: **Did** you **watch** a film last night?
B: Yes, I **did**. I **watched** an action movie.
A: **Did** you **like** it?
B: No, I **didn''t**. It **was** too long!',
  (SELECT id FROM subjects WHERE name = 'Anglais' AND level_id = (SELECT id FROM levels WHERE level_number = 2)),
  (SELECT id FROM levels WHERE level_number = 2),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Present Continuous vs Present Simple',
  'Distinguish between Present Simple (habits) and Present Continuous (actions happening now).',
  'TEXT',
  '# Present Continuous vs Present Simple

## Two Present Tenses

English has two main present tenses, and it is important to know when to use each one.

## Present Simple

### Form: subject + base verb (+ s/es for he/she/it)

### Uses:
1. **Habits and routines:** I **eat** breakfast at 7am. She **takes** the bus every day.
2. **Facts and general truths:** Water **boils** at 100°C. The sun **rises** in the east.
3. **Permanent situations:** He **lives** in Brussels.

### Frequency adverbs (go with Present Simple):
always, usually, often, sometimes, rarely, never, every day

## Present Continuous

### Form: subject + **am/is/are** + verb + **-ing**

| Subject | Auxiliary | Verb-ing |
|---------|----------|----------|
| I | am | working |
| He/She/It | is | eating |
| We/You/They | are | playing |

### Uses:
1. **Actions happening RIGHT NOW:** I **am writing** in my notebook. She **is sleeping**.
2. **Temporary situations:** He **is staying** with his aunt this week.
3. **Future plans (arranged):** We **are meeting** tomorrow at 3pm.

## Comparison Table

| Present Simple | Present Continuous |
|----------------|-------------------|
| every day / always | now / at the moment |
| habits / facts | temporary / in progress |
| She walks to school. | She is walking right now. |
| He works at a bank. | He is working late today. |

## Signal Words

**Simple:** every day, usually, often, never, always, on Mondays
**Continuous:** now, at the moment, currently, today, this week, look! listen!

## Common Mistakes

❌ "I am knowing the answer." → Stative verbs (know, like, want, believe, have) do NOT use -ing!
✓ "I **know** the answer."',
  (SELECT id FROM subjects WHERE name = 'Anglais' AND level_id = (SELECT id FROM levels WHERE level_number = 2)),
  (SELECT id FROM levels WHERE level_number = 2),
  true
);


-- ============================================================
-- NIVEAU 2 — Histoire et géographie
-- ============================================================

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Le Moyen Âge : société féodale et monde chrétien',
  'Comprendre l''organisation de la société médiévale, le rôle de l''Église et les croisades.',
  'TEXT',
  '# Le Moyen Âge (Ve – XVe siècle)

## Repères chronologiques

- **476** : Chute de l''Empire romain d''Occident → début du Moyen Âge
- **800** : Couronnement de Charlemagne
- **1096-1270** : Les Croisades
- **1348** : Peste noire en Europe
- **1453** : Chute de Constantinople → fin du Moyen Âge

## La société féodale

La société médiévale est organisée en **trois ordres** :
1. **Ceux qui prient** : le clergé (papes, évêques, moines, prêtres)
2. **Ceux qui combattent** : la noblesse (rois, seigneurs, chevaliers)
3. **Ceux qui travaillent** : les paysans (serfs et vilains) — la grande majorité

### La pyramide féodale
Le roi → les grands seigneurs (ducs, comtes) → les vassaux (chevaliers) → les paysans

Les relations féodales reposent sur des liens de **fidélité** : le seigneur protège ses vassaux qui lui doivent en retour service militaire et redevances.

### Le château fort
Le château est à la fois résidence seigneuriale et centre de défense. Il évolue de la motte castrale en bois au château de pierre avec donjon, douves et pont-levis.

## L''Église au Moyen Âge

L''Église catholique joue un rôle **central** dans la vie médiévale :
- Elle fixe le calendrier (fêtes, jeûnes)
- Elle gère l''éducation (écoles cathédrales, universités)
- Elle possède de nombreuses terres
- Elle encadre les naissances, mariages et morts

**Le pape** est la figure spirituelle et parfois politique la plus puissante d''Europe.

## Les croisades (1096-1270)

Les croisades sont des expéditions militaires organisées par les chrétiens d''Europe pour reprendre Jérusalem aux musulmans.

- **1ère Croisade (1096)** : prise de Jérusalem (1099)
- Multiples expéditions sur deux siècles
- Conséquences : échanges commerciaux et culturels avec l''Orient, tensions entre chrétiens et musulmans

## La Belgique au Moyen Âge

Le territoire de l''actuelle Belgique est divisé en **principautés** : Flandre, Brabant, Liège (principauté épiscopale), Hainaut, Namur. La ville de **Bruges** devient un grand centre commercial européen au XIIIe siècle.',
  (SELECT id FROM subjects WHERE name = 'Histoire et géographie' AND level_id = (SELECT id FROM levels WHERE level_number = 2)),
  (SELECT id FROM levels WHERE level_number = 2),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Les grandes découvertes et l''expansion européenne',
  'Comprendre les causes et conséquences des explorations du XVe et XVIe siècle.',
  'TEXT',
  '# Les grandes découvertes (XVe-XVIe siècle)

## Contexte et motivations

À la fin du Moyen Âge, les Européens cherchent de nouvelles routes commerciales pour accéder aux richesses d''Asie (épices, soieries, or), car les routes terrestres sont contrôlées par les Turcs ottomans.

### Trois motivations principales
1. **Commerciales** : trouver des épices, de l''or, de l''ivoire
2. **Religieuses** : évangéliser les peuples non-chrétiens
3. **Scientifiques** : curiosité, amélioration des techniques de navigation

## Les techniques nouvelles

- **La caravelle** : navire rapide et manœuvrable
- **Le gouvernail d''étambot** : meilleure direction
- **La boussole** (venue de Chine) : orientation fiable
- **L''astrolabe** : mesure de la latitude
- **Les cartes marines (portulans)** : représentations précises des côtes

## Les grandes expéditions

| Date | Explorateur | Nation | Réalisation |
|------|-------------|--------|-------------|
| 1487 | Bartolomeu Dias | Portugal | Cap de Bonne-Espérance |
| 1492 | Christophe Colomb | Espagne | Amérique (Caraïbes) |
| 1498 | Vasco de Gama | Portugal | Route des Indes via l''Afrique |
| 1519-1522 | Magellan/Elcano | Espagne | Premier tour du monde |

## L''Amérique avant et après

Les civilisations amérindiennes (Aztèques, Incas, Mayas) sont détruites par les **conquistadors** espagnols : Hernán Cortés au Mexique (1519), Francisco Pizarro au Pérou (1532).

**Conséquences dramatiques :**
- Mort de 90% des populations indigènes (maladies, violence, travail forcé)
- Traite des esclaves africains pour remplacer la main-d''œuvre
- Transfert massif de richesses vers l''Europe

## Impact sur l''Europe

- Afflux d''or et d''argent → inflation
- Nouveaux aliments : pomme de terre, maïs, tomate, chocolat, tabac
- Début du capitalisme commercial
- L''Atlantique devient la nouvelle mer centrale du commerce mondial',
  (SELECT id FROM subjects WHERE name = 'Histoire et géographie' AND level_id = (SELECT id FROM levels WHERE level_number = 2)),
  (SELECT id FROM levels WHERE level_number = 2),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Géographie physique : continents, océans et grandes zones climatiques',
  'Localiser les grands ensembles géographiques mondiaux et comprendre leur répartition climatique.',
  'TEXT',
  '# Géographie mondiale : continents et climats

## Les continents et océans

### Les 7 continents (par superficie)
1. **Asie** – 44,6 millions km² – le plus peuplé (4,7 milliards)
2. **Afrique** – 30,3 millions km²
3. **Amérique du Nord** – 24,7 millions km²
4. **Amérique du Sud** – 17,8 millions km²
5. **Antarctique** – 14 millions km² (inhabité)
6. **Europe** – 10,5 millions km²
7. **Océanie/Australie** – 9 millions km²

### Les 5 océans
1. **Pacifique** – le plus grand (165 millions km²)
2. **Atlantique** – sépare Europe/Afrique des Amériques
3. **Indien** – entre Afrique, Asie et Australie
4. **Arctique** – autour du pôle Nord
5. **Antarctique** – autour du pôle Sud

## Les grandes zones climatiques

La répartition des climats suit la **latitude** (distance à l''équateur).

| Zone | Latitude | Température | Précipitations |
|------|----------|-------------|----------------|
| Équatorial | 0°-10° | Chaud toute l''année (25-30°C) | Très abondantes |
| Tropical | 10°-23° | Chaud + saison sèche | Saison humide marquée |
| Désertique | 20°-30° | Très chaud/froid la nuit | Quasi nulles |
| Méditerranéen | 30°-45° | Été sec et chaud, hiver doux | Pluies en hiver |
| Tempéré | 45°-60° | 4 saisons marquées | Pluies réparties |
| Froid/Continental | 50°-70° | Hivers très rigoureux | Faibles |
| Polaire | >70° | Glacial toute l''année | Très faibles |

## Les zones de végétation correspondantes

- **Forêt équatoriale** (Congo, Amazonie) : biodiversité maximale
- **Savane** (Afrique subsaharienne) : herbes hautes, arbres isolés
- **Désert** (Sahara, Atacama) : végétation quasi absente
- **Forêt méditerranéenne** (maquis, garrigue)
- **Forêt tempérée** (Europe de l''Ouest, Belgique)
- **Taïga** (Russie, Canada) : forêt de conifères
- **Toundra** (Arctique) : mousses, lichens

## La Belgique dans son contexte
La Belgique est en zone tempérée océanique : hivers doux, étés modérés, précipitations régulières toute l''année (~800 mm/an à Bruxelles).',
  (SELECT id FROM subjects WHERE name = 'Histoire et géographie' AND level_id = (SELECT id FROM levels WHERE level_number = 2)),
  (SELECT id FROM levels WHERE level_number = 2),
  true
);


-- ============================================================
-- NIVEAU 2 — Éducation physique
-- ============================================================

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Endurance et condition physique générale',
  'Développer les capacités aérobies et comprendre les principes d''entraînement de l''endurance.',
  'TEXT',
  '# Endurance et condition physique

## Qu''est-ce que l''endurance ?

L''endurance est la capacité à maintenir un effort physique sur une **longue durée**. C''est la base de toute activité sportive et un indicateur important de la santé cardiovasculaire.

## Les systèmes énergétiques

Lors d''un effort, le corps utilise deux systèmes principaux :

### Système aérobie (avec oxygène)
- Utilisé lors d''efforts **longs et modérés** (course de fond, vélo, natation)
- Brûle des glucides ET des lipides
- Produit peu de fatigue à court terme
- Favorise la santé cardiorespiratoire

### Système anaérobie (sans oxygène)
- Utilisé lors d''efforts **courts et intenses** (sprint, saut)
- Brûle uniquement des glucides
- Produit de l''acide lactique → douleurs musculaires

## La fréquence cardiaque (FC)

Le cœur s''adapte à l''effort en battant plus vite.

**Fréquence cardiaque maximale (FCmax) :** 220 - âge
Pour un élève de 14 ans : FCmax ≈ 206 battements/minute

### Zones d''entraînement
| Zone | % FCmax | Effet |
|------|---------|-------|
| Récupération | 50-60% | Récupération active |
| Endurance fondamentale | 60-70% | Améliore l''endurance de base |
| Développement aérobie | 70-80% | Augmente le VO₂max |
| Seuil anaérobie | 80-90% | Améliore la résistance à la fatigue |

## Tests d''endurance

### Test de Léger-Boucher (navette)
Le test de navette (bip test) mesure le niveau d''endurance. On court entre deux lignes au rythme d''un signal sonore qui s''accélère progressivement.

### Le jogging en circuit
- Échauffement : 5-10 min de marche/trot léger
- Effort : 20-30 min à allure régulière
- Récupération : 5 min de retour au calme + étirements

## Principes d''amélioration

1. **Progressivité** : augmenter graduellement la durée et l''intensité
2. **Régularité** : s''entraîner au moins 3 fois/semaine
3. **Récupération** : laisser le corps se reconstruire entre les séances
4. **Variété** : alterner les types d''efforts pour éviter l''ennui et les blessures',
  (SELECT id FROM subjects WHERE name = 'Éducation physique' AND level_id = (SELECT id FROM levels WHERE level_number = 2)),
  (SELECT id FROM levels WHERE level_number = 2),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Techniques de base en sports de raquette',
  'Apprendre les fondamentaux du tennis de table et du badminton : prises, déplacements et coups de base.',
  'TEXT',
  '# Sports de raquette : tennis de table et badminton

## Le tennis de table (ping-pong)

### Matériel
- **La raquette** : composée d''un bois recouvert de caoutchouc (lisse ou grainé)
- **La balle** : 40 mm de diamètre, en plastique blanc ou orange
- **La table** : 274 × 152,5 cm, hauteur 76 cm, ligne centrale pour le double

### Les prises de raquette
1. **Prise "shake hand"** (poignée de main) : la plus courante en Europe, polyvalente
2. **Prise "porte-plume"** : utilisée en Asie, excellente pour les coups en revers

### Les coups de base
- **Service** : lancer la balle à 16 cm, frapper sur la table côté service, passer le filet
- **Coup droit** (forehand) : bras dominant, mouvement en arc de bas en haut
- **Revers** (backhand) : côté non-dominant, contact devant le corps
- **Lift (topspin)** : rotation avant = balle accélère après rebond
- **Coupé (chop)** : rotation arrière = balle ralentit et rebondit bas

### Les déplacements
Rester au centre de la table, genoux légèrement fléchis, pieds écartés à largeur d''épaules.

## Le badminton

### Matériel
- **La raquette** : légère (80-100g), cordée
- **Le volant** : 16 plumes fixées sur une base en liège ou plastique
- **Le terrain** : 13,4 × 6,1 m (simple), 13,4 × 6,7 m (double)

### Les coups principaux
- **Service court** : rase le filet, tombe près de la ligne de service
- **Service long** : haute trajectoire, tombe près du fond de terrain
- **Dégagement (clear)** : envoyer le volant loin au fond
- **Smash** : frappe puissante de haut vers le bas
- **Amorti (drop)** : tombe juste après le filet

### Règles essentielles
- Le service se fait toujours de bas en haut
- On ne peut pas laisser le volant toucher le sol de son côté
- Un point marqué à chaque échange (système rally point)',
  (SELECT id FROM subjects WHERE name = 'Éducation physique' AND level_id = (SELECT id FROM levels WHERE level_number = 2)),
  (SELECT id FROM levels WHERE level_number = 2),
  true
);


-- ============================================================
-- NIVEAU 2 — Philosophie et citoyenneté (EPC)
-- ============================================================

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Liberté et responsabilité : être libre, c''est quoi ?',
  'Réfléchir philosophiquement à la notion de liberté et à ses limites dans la vie en société.',
  'TEXT',
  '# Liberté et responsabilité

## Qu''est-ce que la liberté ?

La liberté est l''une des valeurs fondamentales de notre société. Mais qu''est-ce que cela signifie vraiment d''être **libre** ?

### Deux conceptions principales

**1. La liberté négative** (être libre de...)
Être libre, c''est l''absence de contraintes extérieures. Je suis libre quand personne ne m''empêche de faire ce que je veux.

Exemple : Je suis libre de choisir mes vêtements, ma musique, mes amis.

**2. La liberté positive** (être libre de faire quelque chose)
Être libre, c''est avoir les moyens réels de réaliser ses choix. Un enfant affamé n''est pas réellement libre de choisir s''il mange.

## Les limites de la liberté

### La liberté s''arrête où commence celle des autres
La formule classique : "Ma liberté s''arrête là où commence celle des autres."

Exemple : J''ai la liberté de jouer de la musique, mais je ne peux pas le faire à 3h du matin dans un appartement en perturbant mes voisins.

### La loi comme cadre
Dans une démocratie, la loi fixe les limites de la liberté pour permettre la **vie en commun**. Elle protège à la fois les libertés individuelles et le bien commun.

## La responsabilité

La liberté et la responsabilité sont inséparables : **être libre, c''est être responsable de ses choix**.

### Types de responsabilité
- **Morale** : responsabilité devant sa propre conscience
- **Juridique** : responsabilité devant la loi
- **Sociale** : responsabilité envers les autres membres de la société

## Le libre arbitre

Les philosophes débattent depuis des siècles : sommes-nous vraiment libres ?

- **Déterminisme** : nos choix seraient déterminés par notre génétique, notre éducation, notre environnement → illusion de liberté
- **Libertarisme philosophique** : nous avons une réelle capacité de choisir, indépendamment des causes extérieures
- **Compatibilisme** : liberté et déterminisme sont conciliables — être libre, c''est agir selon ses désirs propres, même si ces désirs ont des causes.

## Discussion : cas pratiques

1. Un élève qui copie lors d''un examen est-il vraiment libre de le faire ?
2. Une personne addictive à une substance est-elle libre ?
3. Peut-on être libre dans une société ?',
  (SELECT id FROM subjects WHERE name = 'Philosophie et citoyenneté (EPC)' AND level_id = (SELECT id FROM levels WHERE level_number = 2)),
  (SELECT id FROM levels WHERE level_number = 2),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'La démocratie : histoire et fonctionnement',
  'Comprendre l''origine, les principes et les institutions de la démocratie en Belgique.',
  'TEXT',
  '# La démocratie

## Origines : Athènes antique

Le mot **démocratie** vient du grec : *demos* (peuple) + *kratos* (pouvoir). C''est le gouvernement du peuple, par le peuple, pour le peuple.

La démocratie naît à Athènes au Ve siècle av. J.-C. Mais attention : seuls les citoyens athéniens libres et de sexe masculin participaient. Les femmes, les esclaves et les étrangers en étaient exclus.

## Les principes fondamentaux

1. **Souveraineté populaire** : le pouvoir appartient au peuple
2. **Égalité de tous les citoyens** devant la loi
3. **Séparation des pouvoirs** (Montesquieu, XVIIIe siècle)
4. **Liberté d''expression**, de la presse, de réunion
5. **Pluralisme politique** : plusieurs partis, opinions respectées
6. **État de droit** : même les gouvernants doivent respecter la loi

## La séparation des pouvoirs

| Pouvoir | Détenu par | Rôle |
|---------|-----------|------|
| Législatif | Parlement (élus) | Voter les lois |
| Exécutif | Gouvernement | Appliquer les lois |
| Judiciaire | Tribunaux | Juger et sanctionner |

## La démocratie en Belgique

La Belgique est une **démocratie représentative parlementaire** et une **monarchie constitutionnelle**.

### Les élections
- Tous les 4-5 ans pour le Parlement fédéral, les parlements régionaux et le Parlement européen
- **Vote obligatoire** en Belgique (unique en Europe occidentale)
- Âge minimum : **18 ans** pour voter et être élu

### Niveaux de pouvoir en Belgique
- **Fédéral** (Bruxelles) : défense, sécurité sociale, fiscalité
- **Régional** (Wallonie, Flandre, Bruxelles-Capitale) : économie, emploi, urbanisme
- **Communautaire** (FWB, Vl. Gemeenschap) : enseignement, culture, jeunesse

## Menaces sur la démocratie

- La montée des **populismes** et des discours anti-démocratiques
- La **désinformation** et les fake news qui faussent le débat public
- L''**abstentionnisme** et le désintérêt pour la politique
- La **corruption** qui détourne le pouvoir de l''intérêt général',
  (SELECT id FROM subjects WHERE name = 'Philosophie et citoyenneté (EPC)' AND level_id = (SELECT id FROM levels WHERE level_number = 2)),
  (SELECT id FROM levels WHERE level_number = 2),
  true
);


-- ============================================================
-- NIVEAU 2 — Formation sociale et économique
-- ============================================================

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'L''économie de marché : offre, demande et prix',
  'Comprendre les mécanismes de base du marché et la formation des prix dans une économie.',
  'TEXT',
  '# L''économie de marché

## Qu''est-ce qu''un marché ?

Un **marché** est un lieu (physique ou virtuel) où se rencontrent des **offreurs** (vendeurs) et des **demandeurs** (acheteurs) pour échanger des biens ou services contre de l''argent.

## L''offre

L''**offre** est la quantité de biens ou services que les producteurs sont prêts à vendre à un certain prix.

**Loi de l''offre :** Quand le prix augmente, les producteurs proposent plus → la courbe d''offre est **croissante**.

Facteurs influençant l''offre :
- Coût de production (matières premières, salaires)
- Technologie disponible
- Nombre de producteurs sur le marché

## La demande

La **demande** est la quantité de biens ou services que les acheteurs souhaitent acquérir à un certain prix.

**Loi de la demande :** Quand le prix augmente, les acheteurs achètent moins → la courbe de demande est **décroissante**.

Facteurs influençant la demande :
- Revenus des ménages
- Prix des produits substituables
- Goûts et préférences
- Publicité

## L''équilibre du marché

Le **prix d''équilibre** est le prix auquel la quantité offerte = la quantité demandée.

- Si le prix est **trop haut** → surplus (invendu) → les vendeurs baissent les prix
- Si le prix est **trop bas** → pénurie (rupture de stock) → les prix remontent

## Types de marchés

| Type | Nombre de vendeurs | Exemples |
|------|-------------------|---------|
| Concurrence parfaite | Très nombreux | Agriculture, marchés alimentaires |
| Oligopole | Quelques-uns | Téléphonie, pétrole |
| Monopole | Un seul | Chemins de fer (SNCB), eau |

## Le marché du travail en Belgique

- **Chômage** (fin 2023) : environ 11% en Wallonie, 2,5% en Flandre
- **Salaire minimum** (RMMMG 2024) : environ 2 070 €/mois brut
- Les syndicats négocient les salaires via la **concertation sociale**',
  (SELECT id FROM subjects WHERE name = 'Formation sociale et économique' AND level_id = (SELECT id FROM levels WHERE level_number = 2)),
  (SELECT id FROM levels WHERE level_number = 2),
  true
);

INSERT INTO courses (title, description, content_type, content_text, subject_id, level_id, is_published) VALUES
(
  'Le budget des ménages : revenus, dépenses et épargne',
  'Apprendre à gérer un budget personnel et comprendre les choix économiques des familles belges.',
  'TEXT',
  '# Le budget des ménages

## Qu''est-ce qu''un budget ?

Un **budget** est un tableau récapitulatif des **recettes** (revenus) et des **dépenses** prévues sur une période (mois, année). Il permet de planifier ses finances et d''éviter les difficultés.

## Les revenus d''un ménage

### Revenus du travail
- **Salaire** : rémunération d''un employé
- **Traitement** : rémunération d''un fonctionnaire
- **Bénéfice** : revenu d''un travailleur indépendant ou entrepreneur

### Revenus de transfert (solidarité sociale)
- Allocations de chômage
- Pensions de retraite
- Allocations familiales
- Revenus d''intégration sociale (RIS)

### Revenus du patrimoine
- Loyers perçus
- Dividendes d''actions
- Intérêts sur épargne

## Les dépenses d''un ménage

### Besoins primaires (incontournables)
- Logement (loyer ou remboursement de prêt) : ~30% du budget
- Alimentation : ~15-20%
- Énergie (électricité, chauffage) : ~8-10%
- Transport : ~12%

### Dépenses secondaires
- Vêtements, loisirs, vacances
- Épargne, assurances
- Soins de santé (partiellement remboursés en Belgique)

## L''épargne

**Épargne = Revenus - Dépenses**

L''épargne permet de :
1. Faire face aux imprévus (fonds d''urgence)
2. Réaliser des projets futurs
3. Préparer la retraite

**Taux d''épargne** des ménages belges : environ 15-18% de leur revenu disponible.

## Exercice pratique : budget mensuel

| Poste | Recettes | Dépenses |
|-------|---------|---------|
| Salaire net | 2 200 € | |
| Loyer | | 750 € |
| Courses alimentaires | | 400 € |
| Énergie | | 150 € |
| Transport | | 120 € |
| Téléphone | | 30 € |
| Loisirs | | 200 € |
| **Épargne** | | **550 €** |
| **Total** | **2 200 €** | **2 200 €** |

## La protection sociale en Belgique

La **sécurité sociale** belge protège les ménages contre les risques : maladie, chômage, vieillesse. Elle est financée par les **cotisations sociales** (patronales et salariales).',
  (SELECT id FROM subjects WHERE name = 'Formation sociale et économique' AND level_id = (SELECT id FROM levels WHERE level_number = 2)),
  (SELECT id FROM levels WHERE level_number = 2),
  true
);

