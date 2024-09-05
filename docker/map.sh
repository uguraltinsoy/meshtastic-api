#!/bin/sh

echo "Running migrations"
npx prisma migrate dev

echo "Starting API"
exec node src/index.js ${MAP_OPTS}
