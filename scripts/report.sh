#!/bin/bash

REPORT="reports/sales_report.txt"

echo "E-COMMERCE SALES REPORT" > $REPORT
echo "======================" >> $REPORT

date >> $REPORT

echo "" >> $REPORT
echo "Statistics:" >> $REPORT

./scripts/analysis.sh >> $REPORT

echo "Report generated"