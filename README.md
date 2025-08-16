# Healytics Motion — Database

PostgreSQL schema, migrations, and seed data for Healytics Motion.

## Local Development

1. Install Docker & Docker Compose.
2. Start Postgres:
   ```bash
   docker compose up -d
   ```
3. Test it: (password: postgres)
    ```bash
    psql -h localhost -U postgres -d ht_db
    ```
