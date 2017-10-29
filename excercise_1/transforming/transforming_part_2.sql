CREATE TABLE hospital_care AS SELECT effective_care_transform.hospital_name, effective_care_transform.state, SUM(effective_care_transform.measure_rank) as provider_score 
FROM effective_care_transform 
GROUP BY effective_care_transform.hospital_name, effective_care_transform.state 
ORDER BY provider_score ASC;

CREATE TABLE state_care_scores AS SELECT effective_care_state_transform.state, SUM(effective_care_state_transform.measure_rank) as state_score
FROM effective_care_state_transform
GROUP BY effective_care_state_transform.state
ORDER BY state_score ASC;
