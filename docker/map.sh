#!/bin/sh

echo "Running migrations"
npx prisma migrate dev

echo "Starting api"
exec node src/index.js ${MAP_OPTS}
