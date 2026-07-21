#!/bin/bash
echo "Downloading data..."
url="https://archive.ics.uci.edu/static/public/352/online+retail.zip"
wget -O ../data/raw/online_retail.zip "$url"
unzip -o ../data/raw/online_retail.zip -d ../data/raw/
echo "Data downloaded and extracted to ../data/raw/"