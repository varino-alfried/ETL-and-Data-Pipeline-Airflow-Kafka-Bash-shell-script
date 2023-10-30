# Building ETL and Data Pipeline using (Airflow-Kafka-Bash shell script)
### First download the datasets using (sudo wget):
![download the datasets using (sudo wget)](https://github.com/varino-alfried/ETL-and-Data-Pipeline-Airflow-Kafka-Bash-shell-script-/blob/cb3fdf3267f715b213dbf2b027a693cd89792046/1-downloading%20the%20dataset.png)
### And then extracting the downloaded file using (tar -xvf):
![And then extracting the downloaded file using (tar -xvf)](https://github.com/varino-alfried/ETL-and-Data-Pipeline-Airflow-Kafka-Bash-shell-script-/blob/cb3fdf3267f715b213dbf2b027a693cd89792046/2-Extracting%20the%20downloaded%20file.png)
## Task 1.1 – Define DAG arguments:
![Task 1.1 – Define DAG arguments](https://github.com/varino-alfried/ETL-and-Data-Pipeline-Airflow-Kafka-Bash-shell-script-/blob/cb3fdf3267f715b213dbf2b027a693cd89792046/3-Define%20DAG%20aruments.png)
## Task 1.2 - Define the DAG:
![Task 1.2 - Define the DAG](https://github.com/varino-alfried/ETL-and-Data-Pipeline-Airflow-Kafka-Bash-shell-script-/blob/cb3fdf3267f715b213dbf2b027a693cd89792046/4-Define%20the%20DAG.png)
## Task 1.3 – Create a shell script and Unzip the data:
![Task 1.3 – Create a shell script and Unzip the data](https://github.com/varino-alfried/ETL-and-Data-Pipeline-Airflow-Kafka-Bash-shell-script-/blob/cb3fdf3267f715b213dbf2b027a693cd89792046/5-Shell%20Script%20to%20unzip%20the%20data.png)
### Read through the file ‘fileformats.txt’ to understand the column details:
![Read through the file ‘fileformats.txt’ to understand the column details](https://github.com/varino-alfried/ETL-and-Data-Pipeline-Airflow-Kafka-Bash-shell-script-/blob/cb3fdf3267f715b213dbf2b027a693cd89792046/6-read%20through%20the%20txt%20file.png)
## Task 1.4 - extract the fields `Rowid`, `Timestamp`, `Anonymized Vehicle number`, and `Vehicle type` from the `vehicle-data.csv` file and save them into a file named `csv_data.csv`:
![Task 1.4 - extract the fields `Rowid`, `Timestamp`, `Anonymized Vehicle number`, and `Vehicle type` from the `vehicle-data.csv` file and save them into a file named `csv_data.csv`](https://github.com/varino-alfried/ETL-and-Data-Pipeline-Airflow-Kafka-Bash-shell-script-/blob/cb3fdf3267f715b213dbf2b027a693cd89792046/7-extracting%20from%20csv.png)
## Task 1.5 - extract the fields `Number of axles`, `Tollplaza id`, and `Tollplaza code` from the `tollplaza-data.tsv` file and save it into a file named `tsv_data.csv`:
![Task 1.5 - extract the fields `Number of axles`, `Tollplaza id`, and `Tollplaza code` from the `tollplaza-data.tsv` file and save it into a file named `tsv_data.csv`](https://github.com/varino-alfried/ETL-and-Data-Pipeline-Airflow-Kafka-Bash-shell-script-/blob/cb3fdf3267f715b213dbf2b027a693cd89792046/8-extracting%20from%20tsv.png)
##### Replaced all (globally) the tabs (\t) to , delimiter in the TSV using sed s/\t/,/g’  
## Task 1.6 - extract the fields `Type of Payment code`, and `Vehicle Code` from the fixed width file `payment-data.txt` and save it into a file named `fixed_width_data.csv`:
![Task 1.6 - extract the fields `Type of Payment code`, and `Vehicle Code` from the fixed width file `payment-data.txt` and save it into a file named `fixed_width_data.csv](https://github.com/varino-alfried/ETL-and-Data-Pipeline-Airflow-Kafka-Bash-shell-script-/blob/cb3fdf3267f715b213dbf2b027a693cd89792046/9-extracting%20from%20fixed%20width%20file.png)
## Task 1.7 – Merging all CSV files into one file.
![Task 1.7 – Merging all CSV files into one file](https://github.com/varino-alfried/ETL-and-Data-Pipeline-Airflow-Kafka-Bash-shell-script-/blob/cb3fdf3267f715b213dbf2b027a693cd89792046/10-Merging%20all%20CSVs%20into%20one%20csv.png)
## Task 1.8 transform the vehicle_type field in `extracted_data.csv` into capital letters and save it into a file named `transformed_data.csv` in the staging directory.
![Task 1.8 transform the vehicle_type field in `extracted_data.csv` into capital letters and save it into a file named `transformed_data.csv` in the staging directory](https://github.com/varino-alfried/ETL-and-Data-Pipeline-Airflow-Kafka-Bash-shell-script-/blob/cb3fdf3267f715b213dbf2b027a693cd89792046/11-Transforming%20data.png)
##### Copy the shell script to /home/project/airflow/dags:
##### cp Extract_Transform_data.sh /home/project/airflow/dags
## Task 1.9 create a task extract_transform_load in the ETL_toll_data.py to call the shell script.
![Task 1.9 create a task extract_transform_load in the ETL_toll_data.py to call the shell script](https://github.com/varino-alfried/ETL-and-Data-Pipeline-Airflow-Kafka-Bash-shell-script-/blob/cb3fdf3267f715b213dbf2b027a693cd89792046/12-Create%20a%20task%20to%20call%20the%20shell%20script.png)
## Task 1.10 Submit the DAG:
![Task 1.10 Submit the DAG](https://github.com/varino-alfried/ETL-and-Data-Pipeline-Airflow-Kafka-Bash-shell-script-/blob/cb3fdf3267f715b213dbf2b027a693cd89792046/13-Submit%20the%20DAG.png)
## Task 1.11 Unpause the DAG:
![Task 1.11 Unpause the DAG](https://github.com/varino-alfried/ETL-and-Data-Pipeline-Airflow-Kafka-Bash-shell-script-/blob/cb3fdf3267f715b213dbf2b027a693cd89792046/14-Unpause%20the%20DAG.png)
## Airflow DAG:
![Airflow DAG](https://github.com/varino-alfried/ETL-and-Data-Pipeline-Airflow-Kafka-Bash-shell-script-/blob/cb3fdf3267f715b213dbf2b027a693cd89792046/15-Airflow%20DAG.png)

<hr>

### Download & Extract Kafka:
![Download & Extract Kafka](https://github.com/varino-alfried/ETL-and-Data-Pipeline-Airflow-Kafka-Bash-shell-script-/blob/369f65f462a3abd62a8193fcabc6d66c3813304a/16-download%20and%20extract%20Kafka.png)
### Start MySQL Server:
![Start MySQL Server](https://github.com/varino-alfried/ETL-and-Data-Pipeline-Airflow-Kafka-Bash-shell-script-/blob/369f65f462a3abd62a8193fcabc6d66c3813304a/17-Start%20MySQL%20Server.png)
### Connect to the MySQL Server and create a database:
![Connect to the MySQL Server and create a database](https://github.com/varino-alfried/ETL-and-Data-Pipeline-Airflow-Kafka-Bash-shell-script-/blob/369f65f462a3abd62a8193fcabc6d66c3813304a/18-Connect%20to%20MySQL%20and%20Create%20a%20database.png)
### Install the python module kafka-python & mysql-connector-python:
![Install the python module kafka-python & mysql-connector-python](https://github.com/varino-alfried/ETL-and-Data-Pipeline-Airflow-Kafka-Bash-shell-script-/blob/369f65f462a3abd62a8193fcabc6d66c3813304a/19-Install%20kafka-python%20and%20mysql-connector.png)
## Task 2.1 – Start Zookeeper:
![Task 2.1 – Start Zookeeper](https://github.com/varino-alfried/ETL-and-Data-Pipeline-Airflow-Kafka-Bash-shell-script-/blob/369f65f462a3abd62a8193fcabc6d66c3813304a/20-start%20zookeeper.png)
## Task 2.2 – Start Kafka Server:
![Task 2.2 – Start Kafka](https://github.com/varino-alfried/ETL-and-Data-Pipeline-Airflow-Kafka-Bash-shell-script-/blob/369f65f462a3abd62a8193fcabc6d66c3813304a/21-start%20kafka.png)
## Task 2.3 - Create a topic named toll:
![Task 2.3 - Create a topic named toll](https://github.com/varino-alfried/ETL-and-Data-Pipeline-Airflow-Kafka-Bash-shell-script-/blob/369f65f462a3abd62a8193fcabc6d66c3813304a/21-create%20a%20topic%20named%20toll.png)
## Task 2.4 – Download the Toll Traffic Simulator:
![Task 2.4 – Download the Toll Traffic Simulator](https://github.com/varino-alfried/ETL-and-Data-Pipeline-Airflow-Kafka-Bash-shell-script-/blob/369f65f462a3abd62a8193fcabc6d66c3813304a/22-%20download%20traffic%20simulator.png)
## Task 2.5 – Configure the Toll Traffic Simulator:
![Task 2.5 – Configure the Toll Traffic Simulator](https://github.com/varino-alfried/ETL-and-Data-Pipeline-Airflow-Kafka-Bash-shell-script-/blob/369f65f462a3abd62a8193fcabc6d66c3813304a/23-Configure%20the%20traffic%20simulator.png)
## Task 2.6 – Run the Toll Traffic Simulator:
![Task 2.6 – Run the Toll Traffic Simulator](https://github.com/varino-alfried/ETL-and-Data-Pipeline-Airflow-Kafka-Bash-shell-script-/blob/369f65f462a3abd62a8193fcabc6d66c3813304a/24-Run%20the%20traffic%20sumulator.png)
## Task 2.7 – Download & Configure streaming_data_reader.py:
![Task 2.7 – Download & Configure streaming_data_reader.py](https://github.com/varino-alfried/ETL-and-Data-Pipeline-Airflow-Kafka-Bash-shell-script-/blob/369f65f462a3abd62a8193fcabc6d66c3813304a/25-Download%20and%20configuring%20streaming%20data%20reader.png)
## Task 2.8 – Run streaming_data_reader.py:
![Task 2.8 – Run streaming_data_reader.py](https://github.com/varino-alfried/ETL-and-Data-Pipeline-Airflow-Kafka-Bash-shell-script-/blob/369f65f462a3abd62a8193fcabc6d66c3813304a/26-running%20streaming%20data%20reader.png)
## Task 2.9 – Quality Check of the streaming data pipeline:
![Task 2.9 – Health Check of the streaming data pipeline](https://github.com/varino-alfried/ETL-and-Data-Pipeline-Airflow-Kafka-Bash-shell-script-/blob/369f65f462a3abd62a8193fcabc6d66c3813304a/27-Quality%20check%20on%20the%20steaming%20data%20pipeline.png)
