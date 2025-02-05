#!/bin/bash

DIR="sources"
SCHEMA="sources.schema.json"

echo "Validating all harvesting sources in $DIR/..."
for f in $DIR/*; do
    jsonschema -i "$f" $SCHEMA
done
echo "... done!"
