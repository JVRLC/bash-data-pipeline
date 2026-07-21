#!/bin/bash
INPUT="../data/raw/online_retail.csv"
OUTPUT="../data/processed/clean_sales.csv"

echo "Cleaning data..."

grep -v "^$" $INPUT | grep -v "C" > $OUTPUT
echo " there are $( grep "^C" $INPUT | wc -l ) canceled orders in the dataset"
echo " thre are $( grep "^$" $INPUT | wc -l ) empty rows in the dataset"
echo "Cleaning finished"