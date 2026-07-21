#!/bin/bash
INPUT="../data/raw/online_retail.csv"
OUTPUT="../data/processed/clean_sales.csv"

echo "Cleaning data..."

grep -v "^$" $INPUT | grep -v "C" > $OUTPUT

echo "Cleaning finished"