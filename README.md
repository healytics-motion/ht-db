# Healytics Motion — Database

PostgreSQL setup for Healytics Motion.

## Local Development

1. **Environment Setup:**
   - Copy `.env.example` to `.env`:
     ```bash
     cp .env.example .env
     ```
   - Open `.env` and set your desired `DB_PASSWORD`.

2. **Start Postgres:**
   ```bash
   docker compose up -d
   ```

## How Migrations Work
In this repository, migrations are handled **automatically** by Docker:
- Any `.sql` files placed in the `./migrations` directory are executed in alphabetical order **only the first time** the container's volume is created.
- `001_init.sql`: Sets up the latest table structures (Users, Articles, Gallery).
- `002_seed.sql`: Populates the database with the default admin and initial article.

**Note:** If you change these SQL files and want to re-run them, you must delete the existing volume:
```bash
docker compose down -v
docker compose up -d
```

## Database Credentials (Default)
- **Host:** localhost
- **Port:** 5432
- **User:** (As defined in .env)
- **Password:** (As defined in .env)
- **Database:** (As defined in .env)
