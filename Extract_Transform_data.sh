#Task 1.3 - Create a shell script
#! /bin/bash

#Unzip the data
echo "Unzipping the data ..."
tar -xvf tolldata.tgz

#Task 1.4 - extract data from csv
echo "Extracting data from CSV ..."
cut -d"," -f1-4 /home/project/airflow/dags/vehicle-data.csv > /home/project/airflow/dags/csv_data.csv

#Task 1.5 - extract data from tsv
echo "Extracting data from TSV ... (replacing all taps to , delimiter)"
cut -f5-7 |sed 's/\t/,/g' /home/project/airflow/dags/tollplaza.tsv > /home/project/airflow/dags/tsv_data.csv

#Task 1.6 - extract data from txt
echo "Extracting data from txt ..."
cut -c 60-63,64-68 /home/project/airflow/dags/payment-data.txt | sed 's/  */,/g' > /home/project/airflow/dags/fixed_width_data.csv

#Task 1.7 - consolidate data
echo "Merging all the CSVs ..."
paste -d"," csv_data.csv tsv_data.csv fixed_width_data.csv > extracted_data.csv

#Task 1.8 - tranfsorm data
echo "Tranfsorming data ..."
tr '[a-z]' '[A-Z]' < /home/project/airflow/dags/extracted_data.csv > /home/project/airflow/dags/finalassignment/staging/transformed_data.csv

