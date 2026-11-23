#!/usr/bin/env bash

if [[ $# -ne 1 ]]; then
    echo "Error: Please provide exactly one input file." >&2
    exit 2
fi

input_file="$1"

if [[ ! -f "$input_file" || ! -r "$input_file" ]]; then
    echo "Error: Input file does not exist or is not readable: $input_file" >&2
    exit 1
fi

if ! mkdir -p results; then
    echo "Error: Cannot create results directory." >&2
    exit 1
fi

filename=$(basename "$input_file")
output_file="results/${filename}.txt"

echo "Creating a space-separated version of $input_file ..."

if ! tr ',' ' ' < "$input_file" > "$output_file"; then
    echo "Error: Conversion failed." >&2
    exit 1
fi

echo "Done! Output saved to $output_file"
exit 0
