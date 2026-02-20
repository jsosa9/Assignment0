/*
making table based on csv header
as_of_year,respondent_id,agency_name,agency_abbr,agency_code,loan_type_name,loan_type,property_type_name,property_type,loan_purpose_name,loan_purpose,owner_occupancy_name,owner_occupancy,loan_amount_000s,preapproval_name,preapproval,action_taken_name,action_taken,msamd_name,msamd,state_name,state_abbr,state_code,county_name,county_code,census_tract_number,applicant_ethnicity_name,applicant_ethnicity,co_applicant_ethnicity_name,co_applicant_ethnicity,applicant_race_name_1,applicant_race_1,applicant_race_name_2,applicant_race_2,applicant_race_name_3,applicant_race_3,applicant_race_name_4,applicant_race_4,applicant_race_name_5,applicant_race_5,co_applicant_race_name_1,co_applicant_race_1,co_applicant_race_name_2,co_applicant_race_2,co_applicant_race_name_3,co_applicant_race_3,co_applicant_race_name_4,co_applicant_race_4,co_applicant_race_name_5,co_applicant_race_5,applicant_sex_name,applicant_sex,co_applicant_sex_name,co_applicant_sex,applicant_income_000s,purchaser_type_name,purchaser_type,denial_reason_name_1,denial_reason_1,denial_reason_name_2,denial_reason_2,denial_reason_name_3,denial_reason_3,rate_spread,hoepa_status_name,hoepa_status,lien_status_name,lien_status,edit_status_name,edit_status,sequence_number,population,minority_population,hud_median_family_income,tract_to_msamd_income,number_of_owner_occupied_units,number_of_1_to_4_family_units,application_date_indicator 

anything with 000s is a text, through debugging when making the table those lengths have been too long 

the varlengths i've gotten for the varChar are from the documents that outlines the csv, it lacks all information of the columns in the csv but it helped 
*/

create table Preliminary (
As_of_Year varChar(4),
Respondent_ID varChar(10),
agency_name TEXT,
agency_abbr varChar(10),
Agency_Code varChar(1),
loan_type_name TEXT,
Loan_Type varChar(1),
property_type_name TEXT,
Property_Type varChar(1),
loan_purpose_name TEXT,
Loan_Purpose varChar(1),
owner_occupancy_name TEXT,
Occupancy varChar(1),
Loan_Amount TEXT,
preapproval_name TEXT,
Preapproval varChar(1),
action_taken_name TEXT,
Action_Type varChar(1),
msamd_name TEXT,
MSA_MD varChar(5),
state_name TEXT,
state_abbr varChar(2),
State_Code varChar(2),
county_name TEXT,
County_Code varChar(3),
Census_Tract_Number varChar(7),
applicant_ethnicity_name TEXT,
Applicant_Ethnicity varChar(1),
co_applicant_ethnicity_name TEXT,
Co_Applicant_Ethnicity varChar(1),
applicant_race_name_1 TEXT,
Applicant_Race_1 varChar(1),
applicant_race_name_2 TEXT,
Applicant_Race_2 varChar(1),
applicant_race_name_3 TEXT,
Applicant_Race_3 varChar(1),
applicant_race_name_4 TEXT,
Applicant_Race_4 varChar(1),
applicant_race_name_5 TEXT,
Applicant_Race_5 varChar(1),
co_applicant_race_name_1 TEXT,
Co_Applicant_Race_1 varChar(1),
co_applicant_race_name_2 TEXT,
Co_Applicant_Race_2 varChar(1),
co_applicant_race_name_3 TEXT,
Co_Applicant_Race_3 varChar(1),
co_applicant_race_name_4 TEXT,
Co_Applicant_Race_4 varChar(1),
co_applicant_race_name_5 TEXT,
Co_Applicant_Race_5 varChar(1),
applicant_sex_name TEXT,
Applicant_Sex varChar(1),
co_applicant_sex_name TEXT,
Co_Applicant_Sex varChar(1),
Applicant_Income TEXT,
purchaser_type_name TEXT,
Purchaser_Type varChar(1),
denial_reason_name_1 TEXT,
Denial_Reason_1 varChar(1),
denial_reason_name_2 TEXT,
Denial_Reason_2 varChar(1),
denial_reason_name_3 TEXT,
Denial_Reason_3 varChar(1),
rate_spread varChar(5),
hoepa_status_name TEXT,
HOEPA_Status varChar(1),
lien_status_name TEXT,
Lien_Status varChar(1),
edit_status_name TEXT,
Edit_Status varChar(1),
sequence_number varChar(7),
population varChar(8),
minority_population TEXT,
hud_median_family_income varChar(8),
tract_to_msamd_income TEXT,
number_of_owner_occupied_units varChar(8),
number_of_1_to_4_family_units varChar(8),
application_date_indicator varChar(1)
);

/* 
sql to add data from the csv into the table
don't have permissions for copy so i'm using \copy

this should work if you have the file in the downloads folder and change the netid to yours 
*/
\copy Preliminary from '/common/home/js4069/Downloads/hmda_2017_nj_all-records_labels.csv' with (FORMAT CSV, HEADER);