SELECT effective_care.provider_id, effective_care.hospital_name, effective_care.state, effective_care.condition, effective_care.measure_id,
effective_care.measure_name, effective_care.score, readmissions.compared_to_national AS readmission_compared_to_national, readmissions.score AS readmission_score
FROM effective_care
LEFT JOIN readmissions ON (effective_care.provider_id = readmissions.provider_id and effective_care.measure_id = readmissions.measure_id)
