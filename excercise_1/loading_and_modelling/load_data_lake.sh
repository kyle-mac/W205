#Note from within home/205 I cloned down the W205 project from git
#Then I ran cd W205/excercise_1/loading_and_modelling/
#From there I ran this load_data_lake.sh script

tail -n +2 "Hospital General Information.csv" > hospitals.csv
tail -n +2 "hvbp_hcahps_05_28_2015.csv" > surveys_responses.csv
tail -n +2 "Timely and Effective Care - Hospital.csv" > effective_care.csv
tail -n +2 "Timely and Effective Care - State.csv" > effective_care_state.csv
tail -n +2 "Readmissions and Deaths - Hospital.csv" > readmissions.csv
tail -n +2 "Readmissions and Deaths - State.csv" > readmissions_state.csv
tail -n +2 "Measure Dates.csv" > Measures.csv

su -  w205
hdfs dfs -mkdir /user/w205/hospital_compare
hdfs dfs -mkdir /user/w205/hospital_compare/hospitals
hdfs dfs -mkdir /user/w205/hospital_compare/surveys_responses
hdfs dfs -mkdir /user/w205/hospital_compare/effective_care
hdfs dfs -mkdir /user/w205/hospital_compare/effective_care_state
hdfs dfs -mkdir /user/w205/hospital_compare/readmissions
hdfs dfs -mkdir /user/w205/hospital_compare/readmissions_state
hdfs dfs -mkdir /user/w205/hospital_compare/Measures

hdfs dfs -put hospitals.csv /user/w205/hospital_compare/hospitals
hdfs dfs -put surveys_responses.csv /user/w205/hospital_compare/surveys_responses
hdfs dfs -put effective_care.csv /user/w205/hospital_compare/effective_care
hdfs dfs -put effective_care_state.csv /user/w205/hospital_compare/effective_care_state
hdfs dfs -put readmissions.csv /user/w205/hospital_compare/readmissions
hdfs dfs -put readmissions_state.csv /user/w205/hospital_compare/readmissions_state
hdfs dfs -put Measures.csv /user/w205/hospital_compare/Measures
