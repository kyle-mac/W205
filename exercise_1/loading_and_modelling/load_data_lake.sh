tail -n +2 "Hospital General Information.csv" > hospitals.csv
tail -n +2 "Timely and Effective Care - Hospital.csv" > effective_care.csv
tail -n +2 "Readmissions and Deaths - Hospital.csv" > readmissions.csv
tail -n +2 "Measure Dates.csv" > Measures.csv
tail -n +2 "hvbp_hcahps_05_28_2015.csv" > surveys_responses.csv
tail -n +2 "Readmissions and Deaths - State.csv" > readmissions_state.csv
tail -n +2 "Timely and Effective Care - State.csv" > effective_care_state.csv
tail -n +2 "Readmissions and Deaths - State.csv" > readmissions_state.csv
tail -n +2 "Timely and Effective Care - State.csv" > effective_care_state.csv

fs put --*.csv --/user/w205/hospital_compare
