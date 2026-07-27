#!/bin/bash

# This script calculates the total revenue from the cleaned sales data.
awk -F',' '
    {
        revenue += $4 * $6
    }
    END {
        print "Total revenue:", revenue
    }
' data/processed/clean_sales.csv

# top 10 products by revenue
awk -F',' '
    {
        product[$3] += $4
    }
    END {
        for (i in product)
            print i, product[i]
    }
' data/processed/clean_sales.csv \
    | sort -k2 -nr \
    | head -10

# by country
awk -F',' '
    {
        country[$8] += $4 * $6
    }
    END {
        for (i in country)
            print i, country[i]
    }
' data/processed/clean_sales.csv \
    | sort -k2 -nr
