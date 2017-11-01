SELECT effective_care.measure_name, variance(effective_care.score) as variance_level FROM effective_care GROUP BY effective_care.measure_name SORT BY variance_level DESC LIMIT 10
