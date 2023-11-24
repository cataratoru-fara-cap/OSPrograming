#! /bin/bash
cmonth=$(date +%-m)
for ((month = cmonth;month<=12;month++)); do
	echo "$(date --date 2020-"$month"-01 +%B)"
done

echo "introduce month in 01-12 format"
read cmonth
for ((month = cmonth;month<=12;month++)); do
        echo "$(date --date 2020-"$month"-01 +%B)"
done
