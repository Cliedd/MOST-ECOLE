# Guide d'installation — MOST ÉCOLE

## Environnements supportés

| Environnement   | Méthode recommandée                    |
|-----------------|----------------------------------------|
| Développement   | Local (JDK + Node + PostgreSQL Docker) |
| Staging/Prod    | Docker Compose ou Kubernetes           |
| CI/CD           | GitHub Actions → GHCR                 |

---

## 1. Installation en développement local

### 1.1 Prérequis

| Outil         | Version minimale | Installation                          |
|---------------|-----------------|---------------------------------------|
| Java JDK      | 17              | https://adoptium.net/                 |
| Maven         | 3.9 (via mvnw)  | Inclus (Maven Wrapper)                |
| Node.js       | 20 LTS          | https://nodejs.org/                   |
| npm           | 10+             | Inclus avec Node.js                   |
| Docker        | 24+             | https://www.docker.com/               |
| PostgreSQL    | 15              | Via Docker (ci-dessous)               |
| Git           | 2.40+           | https://git-scm.com/                  |

### 1.2 Cloner le dépôt

```bash
git clone https://github.com/votre-org/most-ecole.git
cd most-ecole
```

### 1.3 Démarrer PostgreSQL

```bash
docker run -d \
  --name mostecole_pg \
  -e POSTGRES_DB=mostecole_db \
  -e POSTGRES_USER=mostecole \
  -e POSTGRES_PASSWORD=devpassword \
  -p 5432:5432 \
  --restart unless-stopped \
  postgres:15-alpine
```

Vérification :
```bash
docker exec -it mostecole_pg psql -U mostecole -d mostecole_db -c '\dt'
# Les tables Flyway apparaissent après le premier démarrage du backend
```

### 1.4 Configurer les variables d'environnement

```bash
export JWT_SECRET="dev-secret-key-must-be-at-least-32-chars-long"
export SPRING_PROFILES_ACTIVE=dev
# Optionnel — ces valeurs sont dans application-dev.yml :
# SPRING_DATASOURCE_URL=jdbc:postgresql://localhost:5432/mostecole_db
# SPRING_DATASOURCE_USERNAME=mostecole
# SPRING_DATASOURCE_PASSWORD=devpassword
```

### 1.5 Démarrer le backend

```bash
cd backend
chmod +x mvnw          # Unix/Mac uniquement
./mvnw spring-boot:run -Dspring-boot.run.profiles=dev
```

Endpoints disponibles :
- API : http://localhost:8080/api
- Swagger UI : http://localhost:8080/swagger-ui.html
- Health : http://localhost:8080/actuator/health

Le premier démarrage applique automatiquement les migrations Flyway :
- **V1** — Création de tout le schéma (16 tables)
- **V2** — Données de référence (6 niveaux, 61 matières, admin par défaut)

### 1.6 Démarrer le frontend

```bash
cd frontend
npm install
npm run dev
```

Frontend disponible : http://localhost:3000

Le proxy Vite redirige `/api/*` → `http://localhost:8080`.

---

## 2. Compte administrateur par défaut

Créé automatiquement par la migration V2 :

```
Email    : admin@mostecole.be
Password : Admin@2025!
```

**Changez ce mot de passe immédiatement en production.**

---

## 3. Installation via Docker Compose

### 3.1 Créer le fichier .env

```bash
cat > .env << 'EOF'
POSTGRES_PASSWORD=votre_mot_de_passe_tres_securise
JWT_SECRET=votre_cle_jwt_aleatoire_minimum_32_caracteres
JWT_EXPIRATION_MS=86400000
CORS_ALLOWED_ORIGINS=https://votre-domaine.be
EOF
```

### 3.2 Lancer la stack complète

```bash
docker compose -f docker/docker-compose.yml up -d
```

Ordre de démarrage géré par healthchecks :
1. `postgres` → santé : `pg_isready`
2. `backend` → attend postgres sain → santé : `/actuator/health`
3. `frontend` → attend backend sain → nginx sur port 80

### 3.3 Vérifier les logs

```bash
docker compose -f docker/docker-compose.yml logs -f backend
docker compose -f docker/docker-compose.yml logs -f frontend
```

### 3.4 Arrêter

```bash
docker compose -f docker/docker-compose.yml down
# Conserver les données PostgreSQL :
docker compose -f docker/docker-compose.yml down --volumes  # ATTENTION : efface les données
```

---

## 4. Variables d'environnement

### Backend

| Variable                      | Défaut (dev)                              | Requis en prod |
|-------------------------------|-------------------------------------------|:--------------:|
| `SPRING_PROFILES_ACTIVE`      | `dev`                                     | ✅ (`prod`)    |
| `SPRING_DATASOURCE_URL`       | `jdbc:postgresql://localhost:5432/...`    | ✅             |
| `SPRING_DATASOURCE_USERNAME`  | `mostecole`                               | ✅             |
| `SPRING_DATASOURCE_PASSWORD`  | `devpassword`                             | ✅             |
| `JWT_SECRET`                  | —                                         | ✅             |
| `JWT_EXPIRATION_MS`           | `86400000` (24h)                          | ❌             |
| `CORS_ALLOWED_ORIGINS`        | `http://localhost:3000`                   | ✅             |

### Frontend (build-time)

| Variable        | Défaut   | Description                           |
|-----------------|----------|---------------------------------------|
| `VITE_API_URL`  | `/api`   | URL de base de l'API backend          |

---

## 5. CI/CD

Le pipeline GitHub Actions (`.github/workflows/ci-cd.yml`) effectue :

1. **PR / push `develop`** — Tests backend (PostgreSQL en service), build frontend
2. **Push `main`** — Tests + build + push images Docker vers GHCR

Images publiées :
```
ghcr.io/{owner}/mostecole-backend:{sha} / :latest
ghcr.io/{owner}/mostecole-frontend:{sha} / :latest
```

---

## 6. Résolution de problèmes courants

| Problème                              | Solution                                                  |
|---------------------------------------|-----------------------------------------------------------|
| `Connection refused 5432`             | Vérifier que le conteneur PostgreSQL tourne               |
| `JWT_SECRET must be set`              | Exporter la variable d'environnement JWT_SECRET           |
| `Flyway migration failed`             | Vérifier les logs, réparer la migration manuelle si besoin|
| `CORS error` en dev                   | Vérifier que Vite proxy pointe bien sur port 8080         |
| Frontend vide après build Docker      | Vérifier VITE_API_URL au moment du build                  |
| `401 Unauthorized` sur toutes les req | Token JWT expiré — se reconnecter                         |
