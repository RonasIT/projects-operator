#!/bin/bash

function migrate_status() {
  php artisan migrate:status | tr '[:space:]' '[\n*]' | grep -i -c Pending
}

function migrate() {
  php artisan migrate --force
}

function rollback() {
   php artisan migrate:rollback --step $1
}

INITIAL_COUNT_PENDING_MIGRATIONS=$(migrate_status)

(
  migrate
)
errorCode=$?
if [ $errorCode -ne 0 ]; then
  COUNT_PENDING_MIGRATIONS_AFTER_MIGRATE=$(migrate_status)

  if [ "$INITIAL_COUNT_PENDING_MIGRATIONS" -ne "$COUNT_PENDING_MIGRATIONS_AFTER_MIGRATE" ]; then
    ROLLBACK_STEP=$(expr $INITIAL_COUNT_PENDING_MIGRATIONS - $COUNT_PENDING_MIGRATIONS_AFTER_MIGRATE)
    rollback $ROLLBACK_STEP
  fi

  exit $errorCode
fi
