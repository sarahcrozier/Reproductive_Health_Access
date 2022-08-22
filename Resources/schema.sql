CREATE TABLE states_data (
    State varchar NOT NULL,
    Abortion_Status varchar   NOT NULL,
    Total_Community_Health_Centers int NOT NULL,
    Uninsured int   NOT NULL,
    Total_Insured int NOT NULL,
    Maternal_Mortality float NOT NULL,
    Population int NOT NULL,
    No_Doctor_Visits float NOT NULL,
    Mammogram float   NOT NULL,
    No_Provider float NOT NULL,
    Pap_Smear float   NOT NULL,
    Prescription_Contraception varchar NOT NULL,
    OTC_Methods varchar NOT NULL,
    Male_Sterilization varchar NOT NULL,
    Female_Sterilization varchar NOT NULL,
    Cost_Sharing varchar NOT NULL,
	Teen_Births float NOT NULL,
	Poverty_under_200 float NOT NULL
);

CREATE TABLE abortions_data (
    State varchar NOT NULL,
    Percent_of_all_US_abortions float NOT NULL,
    Percent_residents_traveling_outside_state float NOT NULL,
    abortions_occurring_state int NOT NULL,
    abortions_residence_state int NOT NULL
);

CREATE TABLE clinics (
	State varchar NOT NULL,
	no_services int NOT NULL,
	few_services int NOT NULL,
	restricted_services int NOT NULL,
	full_service int NOT NULL
);

CREATE TABLE land_area (
    state varchar NOT NULL,
    land_area_sqmi int NOT NULL
);


SELECT states_data.State,
    states_data.Abortion_Status,
    states_data.Total_Community_Health_Centers,
    states_data.Uninsured,
    states_data.Total_Insured,
    states_data.Maternal_Mortality,
    states_data.Population,
    states_data.No_Doctor_Visits,
    states_data.Mammogram,
    states_data.No_Provider,
    states_data.Pap_Smear,
    states_data.Prescription_Contraception,
    states_data.OTC_Methods,
    states_data.Male_Sterilization,
    states_data.Female_Sterilization,
    states_data.Cost_Sharing,
	states_data.Teen_Births,
	states_data.poverty_under_200,
    abortions_data.Percent_of_all_US_abortions,
    abortions_data.Percent_residents_traveling_outside_state,
    abortions_data.abortions_occurring_state,
    abortions_data.abortions_residence_state
INTO states_and_abortions
FROM states_data
INNER JOIN abortions_data
ON states_data.State = abortions_data.state;

SELECT states_and_abortions.state,
	states_and_abortions.Abortion_Status,
    states_and_abortions.Total_Community_Health_Centers,
    states_and_abortions.Uninsured,
    states_and_abortions.Total_Insured,
    states_and_abortions.Maternal_Mortality,
    states_and_abortions.Population,
    states_and_abortions.No_Doctor_Visits,
    states_and_abortions.Mammogram,
    states_and_abortions.No_Provider,
    states_and_abortions.Pap_Smear,
    states_and_abortions.Prescription_Contraception,
    states_and_abortions.OTC_Methods,
    states_and_abortions.Male_Sterilization,
    states_and_abortions.Female_Sterilization,
    states_and_abortions.Cost_Sharing,
	states_and_abortions.Teen_Births,
	states_and_abortions.poverty_under_200,
    states_and_abortions.Percent_of_all_US_abortions,
    states_and_abortions.Percent_residents_traveling_outside_state,
    states_and_abortions.abortions_occurring_state,
    states_and_abortions.abortions_residence_state,
	clinics.no_services,
	clinics.few_services,
	clinics.restricted_services,
	clinics.full_service
INTO final_table
FROM states_and_abortions
INNER JOIN clinics
ON states_and_abortions.state = clinics.state;