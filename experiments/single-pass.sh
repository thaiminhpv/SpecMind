#!/bin/bash


seq 0 163 | parallel --bar -j 48 '
echo "Processing task ID: {}"
python generate_and_test_postconditions.py \
    --task-id "HumanEval/{}" \
    --max-attempts 1 \
    --output-dir "output/new-singlepass/run-with-completeness-threshold_90/max4/" \
|| {
    echo "Error processing task ID: {}" >&2
    exit 1
}
'