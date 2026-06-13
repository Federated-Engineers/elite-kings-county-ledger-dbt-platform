#!/bin/bash

set -e

echo "Running dbt commands"

dbt run \
    --project-dir kings_county_dbt_project \
    --profiles-dir kings_county_dbt_project
