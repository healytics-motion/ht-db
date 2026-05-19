# Healytics Motion — Database

PostgreSQL setup for Healytics Motion.

## Local Development

Copy `.env.sample` to `.env` and set your credentials:

```bash
cp .env.sample .env
docker compose up -d
```

## Migrations

SQL files in `./migrations` are executed alphabetically on first container start. To re-run after changes:

```bash
docker compose down -v
docker compose up -d
```

## Default Credentials

| Field    | Value      |
|----------|------------|
| Host     | localhost  |
| Port     | 5432       |
| User     | postgres   |
| Password | postgres   |
| Database | ht_db      |
