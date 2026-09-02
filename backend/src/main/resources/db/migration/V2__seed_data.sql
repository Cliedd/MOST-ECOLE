-- ============================================================
-- MOST ÉCOLE – Données de référence (seed)
-- V2__seed_data.sql
-- Agent 3 (ModeleDonnees) – données initiales
-- ============================================================

-- ============================================================
-- Niveaux scolaires (1ère à 6ème secondaire)
-- ============================================================
INSERT INTO levels (level_number, degree_name, description) VALUES
(1, '1er degré – observation', 'Première année du secondaire – tronc commun'),
(2, '1er degré – observation', 'Deuxième année du secondaire – tronc commun'),
(3, '2e degré – orientation',  'Troisième année du secondaire – orientation'),
(4, '2e degré – orientation',  'Quatrième année du secondaire – orientation'),
(5, '3e degré – détermination','Cinquième année du secondaire – détermination'),
(6, '3e degré – détermination','Sixième année du secondaire (Rhéto) – préparation CESS + concours médecine');

-- ============================================================
-- Matières du tronc commun (1er et 2e degrés – niveaux 1 à 4)
-- ============================================================

-- Niveau 1
INSERT INTO subjects (name, description, level_id) VALUES
('Mathématiques',                    'Nombres, géométrie, algèbre de base',                           1),
('Français',                         'Langue et littérature françaises',                               1),
('Sciences',                         'Éveil scientifique – biologie, physique, chimie intégrées',      1),
('Néerlandais',                      'Langue moderne 1 – néerlandais',                                 1),
('Anglais',                          'Langue moderne 2 – anglais',                                     1),
('Histoire et géographie',           'Initiation à l''histoire et à la géographie',                    1),
('Éducation physique',               'Sport et motricité',                                             1),
('Éducation artistique',             'Arts plastiques, musique, expression corporelle',                 1),
('Philosophie et citoyenneté (EPC)', 'Éducation à la philosophie et à la citoyenneté',                 1),
('Formation sociale et économique',  'FSE – tronc commun 1er degré',                                   1);

-- Niveau 2
INSERT INTO subjects (name, description, level_id) VALUES
('Mathématiques',                    'Nombres, géométrie, algèbre',                                    2),
('Français',                         'Langue et littérature françaises',                               2),
('Sciences',                         'Biologie, physique, chimie',                                     2),
('Néerlandais',                      'Langue moderne 1 – néerlandais',                                 2),
('Anglais',                          'Langue moderne 2 – anglais',                                     2),
('Histoire et géographie',           'Histoire et géographie',                                         2),
('Éducation physique',               'Sport et motricité',                                             2),
('Philosophie et citoyenneté (EPC)', 'EPC',                                                            2),
('Formation sociale et économique',  'FSE – tronc commun 1er degré',                                   2);

-- Niveau 3
INSERT INTO subjects (name, description, level_id) VALUES
('Mathématiques',                    'Algèbre, fonctions, géométrie',                                  3),
('Français',                         'Langue et littérature',                                          3),
('Biologie',                         'Sciences du vivant',                                             3),
('Physique',                         'Mécanique, électricité, optique',                                3),
('Chimie',                           'Atomes, molécules, réactions',                                   3),
('Néerlandais',                      'Langue moderne 1 – néerlandais',                                 3),
('Anglais',                          'Langue moderne 2 – anglais',                                     3),
('Histoire',                         'Histoire',                                                       3),
('Géographie',                       'Géographie',                                                     3),
('Formation sociale et économique',  'FSE UAA1 – Normes et société',                                   3);

-- Niveau 4
INSERT INTO subjects (name, description, level_id) VALUES
('Mathématiques générales',          'Algèbre-Analyse, géométrie analytique, statistiques',            4),
('Mathématiques fortes',             'Mathématiques renforcées – 6h/semaine',                          4),
('Français',                         'Langue et littérature',                                          4),
('Biologie',                         'Génétique, écologie, physiologie',                               4),
('Physique',                         'Thermodynamique, ondes, électromagnétisme',                      4),
('Chimie',                           'Chimie organique de base, liaisons',                             4),
('Néerlandais',                      'Langue moderne 1 – néerlandais',                                 4),
('Anglais',                          'Langue moderne 2 – anglais',                                     4),
('Histoire',                         'Histoire contemporaine',                                         4),
('Formation sociale et économique',  'FSE UAA2 – Budget et droit',                                     4);

-- Niveau 5
INSERT INTO subjects (name, description, level_id) VALUES
('Mathématiques générales 4h',       'UAA FWB – Mathématiques générales 4 périodes/semaine',           5),
('Mathématiques générales 6h',       'UAA FWB – Mathématiques générales 6 périodes/semaine',           5),
('Français',                         'Langue et littérature',                                          5),
('Biologie',                         'Biologie cellulaire, métabolisme, génétique',                    5),
('Physique',                         'Électromagnétisme, optique ondulatoire, mécanique',              5),
('Chimie',                           'Chimie organique, thermochimie',                                 5),
('Néerlandais',                      'Langue moderne 1 – niveau avancé',                               5),
('Anglais',                          'Langue moderne 2 – niveau avancé',                               5),
('Histoire',                         'Histoire contemporaine et critique',                             5),
('Sciences économiques',             'Microéconomie, macroéconomie',                                   5),
('Formation sociale et économique',  'FSE UAA3 – La consommation / UAA5 – Marché du travail',         5);

-- Niveau 6 (Rhéto)
INSERT INTO subjects (name, description, level_id) VALUES
('Mathématiques générales 4h',       'Mathématiques générales terminales – 4 périodes',                6),
('Mathématiques générales 6h',       'Mathématiques générales terminales – 6 périodes',                6),
('Français',                         'Littérature et expression – préparation CESS',                   6),
('Biologie – Concours médecine',     'Biologie niveau concours d''entrée médecine/dentisterie FWB',    6),
('Physique – Concours médecine',     'Physique niveau concours d''entrée médecine/dentisterie FWB',    6),
('Chimie – Concours médecine',       'Chimie niveau concours d''entrée médecine/dentisterie FWB',      6),
('Raisonnement – Concours médecine', 'Analyse critique de l''information – concours médecine FWB',     6),
('Néerlandais',                      'Langue moderne 1 – niveau C1',                                   6),
('Anglais',                          'Langue moderne 2 – niveau B2/C1',                                6),
('Histoire',                         'Histoire – terminale',                                           6),
('Formation sociale et économique',  'FSE UAA6 – Le citoyen et l''État',                               6);

-- ============================================================
-- Compte administrateur par défaut (à changer en production!)
-- Mot de passe: Admin@MostEcole2025 (BCrypt)
-- ============================================================
INSERT INTO users (email, password_hash, first_name, last_name, role) VALUES
('admin@mostecole.be',
 '$2a$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQyCMT9qNq5a3Zp5FtKVqKq2i',
 'Admin',
 'MOST ÉCOLE',
 'ROLE_ADMIN');
