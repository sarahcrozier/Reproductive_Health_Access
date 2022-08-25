CREATE TABLE health_data (
    state varchar NOT NULL,
    abortion_status varchar NOT NULL,
    total_community_health_centers int NOT NULL,
    uninsured int   NOT NULL,
    insured int NOT NULL,
    maternal_mortality float NOT NULL,
    population int NOT NULL,
    no_doctor_visits float NOT NULL,
    mammogram float   NOT NULL,
    no_provider float NOT NULL,
    pap_smear float   NOT NULL,
    prescription_contraception varchar NOT NULL,
    otc_methods varchar NOT NULL,
    male_sterilization varchar NOT NULL,
    female_sterilization varchar NOT NULL,
    cost_sharing varchar NOT NULL,
	teen_births float NOT NULL,
	poverty_under_200 float NOT NULL
);

CREATE TABLE abortions_data (
    state varchar NOT NULL,
    percent_of_all_us_abortions float NOT NULL,
    percent_residents_traveling_outside_state float NOT NULL,
    abortions_occurring_state int NOT NULL,
    abortions_residence_state int NOT NULL
);

CREATE TABLE clinics (
	state varchar NOT NULL,
	no_services int NOT NULL,
	few_services int NOT NULL,
	restricted_services int NOT NULL,
	full_service int NOT NULL
);

CREATE TABLE land_area (
    state varchar NOT NULL,
    land_area_sqmi int NOT NULL
);

SELECT health_data.state,
    health_data.abortion_status,
    health_data.total_community_health_centers,
    health_data.uninsured,
    health_data.insured,
    health_data.maternal_mortality,
    health_data.population,
    health_data.no_doctor_visits,
    health_data.mammogram,
    health_data.no_provider,
    health_data.pap_smear,
    health_data.prescription_contraception,
    health_data.otc_methods,
    health_data.male_sterilization,
    health_data.female_sterilization,
    health_data.cost_sharing,
	health_data.teen_births,
	health_data.poverty_under_200,
    abortions_data.percent_of_all_us_abortions,
    abortions_data.percent_residents_traveling_outside_state,
    abortions_data.abortions_occurring_state,
    abortions_data.abortions_residence_state
INTO health_and_abortions
FROM health_data
INNER JOIN abortions_data
	ON health_data.state = abortions_data.state;

SELECT health_and_abortions.state,
	health_and_abortions.abortion_status,
    health_and_abortions.total_community_health_centers,
    health_and_abortions.uninsured,
    health_and_abortions.insured,
    health_and_abortions.maternal_mortality,
    health_and_abortions.population,
    health_and_abortions.no_doctor_visits,
    health_and_abortions.mammogram,
    health_and_abortions.no_provider,
    health_and_abortions.pap_smear,
    health_and_abortions.prescription_contraception,
    health_and_abortions.otc_methods,
    health_and_abortions.male_sterilization,
    health_and_abortions.female_sterilization,
    health_and_abortions.cost_sharing,
	health_and_abortions.teen_births,
	health_and_abortions.poverty_under_200,
    health_and_abortions.percent_of_all_us_abortions,
    health_and_abortions.percent_residents_traveling_outside_state,
    health_and_abortions.abortions_occurring_state,
    health_and_abortions.abortions_residence_state,
	clinics.no_services,
	clinics.few_services,
	clinics.restricted_services,
	clinics.full_service
INTO health_abortions_clinics
FROM health_and_abortions
INNER JOIN clinics
ON health_and_abortions.state = clinics.state;

SELECT health_abortions_clinics.state,
	health_abortions_clinics.abortion_status,
    health_abortions_clinics.total_community_health_centers,
    health_abortions_clinics.uninsured,
    health_abortions_clinics.insured,
    health_abortions_clinics.maternal_mortality,
    health_abortions_clinics.population,
    health_abortions_clinics.no_doctor_visits,
    health_abortions_clinics.mammogram,
    health_abortions_clinics.no_provider,
    health_abortions_clinics.pap_smear,
    health_abortions_clinics.prescription_contraception,
    health_abortions_clinics.otc_methods,
    health_abortions_clinics.male_sterilization,
    health_abortions_clinics.female_sterilization,
    health_abortions_clinics.cost_sharing,
	health_abortions_clinics.teen_births,
	health_abortions_clinics.poverty_under_200,
    health_abortions_clinics.percent_of_all_us_abortions,
    health_abortions_clinics.percent_residents_traveling_outside_state,
    health_abortions_clinics.abortions_occurring_state,
    health_abortions_clinics.abortions_residence_state,
	health_abortions_clinics.no_services,
	health_abortions_clinics.few_services,
	health_abortions_clinics.restricted_services,
	health_abortions_clinics.full_service,
    land_area.land_area_sqmi
INTO final_table
FROM health_abortions_clinics
INNER JOIN land_area
ON health_abortions_clinics.state = land_area.state;