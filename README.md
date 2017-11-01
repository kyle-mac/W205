# W205 Assignment 1

General Notes:

1.) After starting hadoop on my AWS instance and changing to user w205 I cloned downed this repo, hence the path was cloned to home/user/w205/W205.  From there cd into W205/excercise_1/loading_and_modelling and run load_data_lake.sh to put the csv files and then execute the hive_base_ddl.sql within the same folder.

2.) The ERD can be found within the loading and modelling directory

3.) For my transforming process I seperated my sql into two execution files as I wanted to create main tables for exploratory analysis and sub-tables for easy joins and calculations used in 1-4.  For this reason, transforming_part_1.sql needs to be run prior to transforming_part_2.sql

