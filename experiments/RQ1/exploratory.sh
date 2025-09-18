#!/bin/bash

# Exploratory Multiturn with completeness threshold 90, max turn 4
seq 0 163 | parallel --bar -j 48 '
echo "Processing task ID: {}"
python generate_and_test_postconditions_general.py \
    --mode multiturn \
    --task-id HumanEval/{} \
    --max-turns 4 \
    --completeness-threshold 90 \
    --output-dir output/new-multiturn/run-with-completeness-threshold_90/max4/ \
    || {
    echo "Error processing task ID: {}" >&2
    exit 1
}
'