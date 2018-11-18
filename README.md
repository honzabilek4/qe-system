# QE system

## Running the project
Start up docker compose:
```
docker-compose up
```

Migrate database schema to lastest version:
```
npm run migrate:latest
```
For filling database with sample data run:
```
npm run seed:run
```