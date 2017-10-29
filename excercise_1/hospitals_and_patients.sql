SELECT corr(cast(a.hcahps_base_score as int),cast(a.provider_score as int)) as hospital_survey_correlation FROM (SELECT hospital_care.*, surveys_responses.hcahps_base_score FROM hospital_care LEFT JOIN surveys_responses ON (hospital_care.hospital_name = surveys_responses.hospital_name) WHERE hcahps_base_score != "NULL") a
