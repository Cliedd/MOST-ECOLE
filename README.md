# MOST ÉCOLE 🎓

> Plateforme d'enseignement secondaire en ligne pour la Belgique (FWB)

Plateforme pédagogique numérique couvrant les **6 niveaux du secondaire** et la
**préparation au concours d'entrée en médecine FWB** (Biologie, Chimie, Physique,
Mathématiques, Raisonnement & Communication).

---

## Stack technique

| Couche    | Technologies                                                  |
|-----------|---------------------------------------------------------------|
| Backend   | Java 17, Spring Boot 3.2.5, Spring Security + JWT, Flyway    |
| Base de données | PostgreSQL 15, Hibernate / JPA                          |
| Frontend  | React 18, Vite 5, Material-UI v5, Redux Toolkit, Recharts    |
| DevOps    | Docker, Docker Compose, GitHub Actions, GHCR                 |

---

## Démarrage rapide

### Prérequis

- Java 17+
- Node.js 20+
- Docker & Docker Compose (optionnel)
- PostgreSQL 15 (ou via Docker)

### Développement local

```bash
# PostgreSQL via Docker
docker run -d --name mostecole_pg \
  -e POSTGRES_DB=mostecole_db \
  -e POSTGRES_USER=mostecole \
  -e POSTGRES_PASSWORD=devpassword \
  -p 5432:5432 postgres:15-alpine

# Backend
cd backend
export JWT_SECRET="dev-secret-key-minimum-32-characters"
./mvnw spring-boot:run -Dspring-boot.run.profiles=dev
# API → http://localhost:8080
# Swagger → http://localhost:8080/swagger-ui.html

# Frontend (autre terminal)
cd frontend
npm install
npm run dev
# → http://localhost:3000
```

**Compte admin par défaut**

```
Email    : admin@mostecole.be
Password : Admin@2025!
```

### Production (Docker Compose)

```bash
# Copier et configurer les variables d'environnement
cat > .env << 'EOF'
POSTGRES_PASSWORD=votre_mot_de_passe_securise
JWT_SECRET=votre_cle_jwt_minimum_32_caracteres
CORS_ALLOWED_ORIGINS=https://mostecole.be
EOF

docker compose -f docker/docker-compose.yml up -d
# → http://localhost (nginx → frontend + /api → backend)
```

---

## Structure du projet

```
MOST-ECOLE/
├── backend/
│   ├── src/main/java/com/mostecole/
│   │   ├── MostEcoleApplication.java
│   │   ├── config/        # Security, OpenAPI
│   │   ├── controller/    # REST controllers (Auth, Level, Course, Admin…)
│   │   ├── dto/           # Request/Response records
│   │   ├── entity/        # JPA entities + enums
│   │   ├── exception/     # GlobalExceptionHandler, custom exceptions
│   │   ├── repository/    # JPA repositories
│   │   └── service/       # Business logic (AuthService…)
│   └── src/main/resources/
│       ├── application.yml          # Base config
│       ├── application-dev.yml      # Dev profile
│       ├── application-prod.yml     # Prod profile
│       └── db/migration/            # Flyway V1 (schema) + V2 (seed)
│
├── frontend/
│   └── src/
│       ├── api/           # Axios instances + API functions
│       ├── components/    # Layout + UI components
│       ├── hooks/         # useAuth, useFetch
│       ├── pages/         # Public + auth + student + teacher + admin
│       ├── store/         # Redux slices
│       └── utils/         # formatters, validators (Yup)
│
├── docker/
│   ├── Dockerfile.backend
│   ├── Dockerfile.frontend
│   ├── nginx.conf
│   └── docker-compose.yml
│
├── .github/workflows/ci-cd.yml
├── SOURCES.md        # Legal content inventory & official curriculum sources
└── PROJECT_STATUS.md # Sprint completion status & TODO
```

---

## Rôles utilisateurs

| Rôle           | Accès                                                       |
|----------------|-------------------------------------------------------------|
| `ROLE_STUDENT` | Dashboard, cours, quiz, progrès, RDV, prépa concours       |
| `ROLE_TEACHER` | Dashboard enseignant, création cours, gestion élèves       |
| `ROLE_PARENT`  | Suivi de la progression de l'enfant                        |
| `ROLE_ADMIN`   | Gestion utilisateurs, référentiels curriculaires, stats     |

---

## API Reference

La documentation interactive est disponible via Swagger UI :

```
http://localhost:8080/swagger-ui.html
```

Principaux endpoints :

```
POST   /api/auth/register          Créer un compte
POST   /api/auth/login             Connexion (retourne JWT)

GET    /api/levels                 Lister les 6 niveaux
GET    /api/levels/{id}/subjects   Matières d'un niveau

GET    /api/courses                Lister les cours (filtres: levelId, subjectId)
GET    /api/courses/{id}           Détail d'un cours
POST   /api/courses                Créer un cours (TEACHER/ADMIN)

GET    /api/progress/student/{id}  Progression d'un élève
GET    /api/medical-exam           Ressources concours médecine

GET    /api/admin/statistics       Statistiques globales (ADMIN)
GET    /api/admin/users            Tous les utilisateurs (ADMIN)
```

---

## Conformité légale

- Le contenu pédagogique utilise **uniquement** les référentiels officiels FWB, SEGEC et WBE.
- Les manuels commerciaux (Van In, De Boeck, Plantyn) **ne sont pas reproduits**.
- Voir [`SOURCES.md`](./SOURCES.md) pour l'inventaire complet.

---

## Contribuer

1. Fork du dépôt
2. Créer une branche : `git checkout -b feature/ma-fonctionnalite`
3. Commit : `git commit -m 'feat: description courte'`
4. Push & Pull Request

---

*MOST ÉCOLE — Équipe pédagogique, Belgique 🇧🇪*
