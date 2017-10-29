CREATE TABLE effective_care_transform AS SELECT *, RANK() OVER (PARTITION BY measure_id ORDER BY (effective_care.score)) as measure_rank 
FROM effective_care 
WHERE effective_care.measure_id IN ('AMI_2', 'AMI_10', 'IMM_2', ' SCIP_INF_1') 
AND effective_care.score !='Not Available';

CREATE TABLE effective_care_state_transform AS SELECT *, RANK() OVER (PARTITION BY effective_care_state.measure_id 
ORDER BY (effective_care_state.score)) as measure_rank FROM effective_care_state 
WHERE effective_care_state.measure_id IN ('AMI_2', 'AMI_10', 'IMM_2', ' SCIP_INF_1') 
AND effective_care_state.score !='Not Available';
