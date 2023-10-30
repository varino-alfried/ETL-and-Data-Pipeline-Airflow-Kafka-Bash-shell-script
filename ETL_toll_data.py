import airflow
from airflow import DAG
from airflow.utils.dates import days_ago
from airflow.operators.bash_operator import BashOperator
from datetime import timedelta

#Task 1.1 Define DAG arguments
default_args = {
    'owner': 'Varino Alfried',
    'start_date': days_ago(0),
    'email': 'varino@dummy.com',
    'email_on_failure': True,
    'email_on_retry': True,
    'retries': 1,
    'retry_delay': timedelta(minutes=5)
}

#Task 1.2 - Define the DAG
dag = DAG(
    dag_id = 'ETL_toll_data',
    schedule_interval = timedelta(days=1),
    default_args = default_args,
    description = 'Apache Airflow Final Assignment'
)

#Task 1.9 extract_transform_load
extract_transform_load = BashOperator(
    task_id = "ETL",
    bash_command = "/home/project/airflow/dags/Extract_Transform_data.sh",
    dag = dag
)

extract_transform_load