# Four Sources of Data
 - KFF (Kaiser Family Foundation) https://www.kff.org/
    Kaiser Family Foundation is a nonprofit that focuses on national health issues, develops and runs its own policy analysis, journalism, and communications programs. (Note: not a foundation, family foundation, or associated with Kaiser Permanente.)
 - Guttmacher Institute https://www.guttmacher.org/ 
    A research and policy organization committed to advancing sexual and reproductive health and rights worldwide.
 - United States Census Bureau https://www.census.gov/geographies/reference-files/2010/geo/state-area.html
 - Crisis Pregnancy Centers Map https://crisispregnancycentermap.com/
    Crisis Pregnancy Centers are known as fake women's health centers. They primarily aim to prevent people from having abortions.

Notes
51 rows - includes D.C. as separate state
26 columns

In reference to the columns in Resources/Clean_data/final_reproductive_table.csv

## Abortion Policy Tracker
A summary of each states' abortion policy as of August 2, 2022, after Roe v. Wade was overturned.
Data reported as categorical - 6 categories

## Community Health Centers
Community Health Centers (CHCs) are federally supported health care center that provide a variety of services including women's health.
Data reported as integers - number of Community Health Centers in 2020

## Health Insurance Coverage of Women Ages 19-64
Insured women receiving insurance from:
- employer
- non-group 
- medicaid
- medicare
- military

And Uninsured
Data reported as integers - number employed in 2020

## Maternal Mortality
Calculated by: the number of maternal deaths in a calendar year divided by the number of live births for the same period, multiplied by 100,000
- Number of deaths *data is for 2018 to 2020
- Total Number of Births for 2020
Data reported as integers, then float after calculation

## Population
Population of each state reported as integers for 2019

## Women Who Report Not Seeing a Doctor in the Past 12 Months Due to Cost
Data reported as percent for 2020

## Women Age 40 and Older Who Report Having Had a Mammogram Within the Past Two Years
Data reported as percent for 2020

## Women Who Report Having No Personal Doctor/Health Care Provider
Data reported as percent for 2020

## Women Ages 18-64 Who Report Having a Pap Smear within the Past Three Years
Data reported as percent for 2018-2020

## State Requirements for Insurance Coverage of Contraceptives
- State Requires Coverage of Prescription Contraception
- State Requires Coverage of Over-the-Counter Methods
- State Requires Coverage of Male Sterilization
- State Requires Coverage of Female Sterilization
- State Prohibits Cost Sharing
Data reported as binary values - Yes or No as of May 1, 2022

## Teen Birth Rate per 1,000 Population Ages 15-19
Data reported as float for 2020

## Distribution of Total Population by Federal Poverty Level
Summed the columns for under 100% and 100-199%
Data reported as float for 2019

## Abortion Data
- Percent of all U.S. abortions, by state of occurrence for 2020
- Percent of residents obtaining abortions who traveled out of state for care for 2020
- Number of abortions, by state of occurrence for 2020
- Number of abortions by state of residence for 2020

California and New Hampshire stopped collecting abortion data in 1997. Maryland stopped collecting abortion data in 2006. Guttmacher Institutde conducts a survey with known abortion providers to collect estimates on abortion data, including for California, Maryland, and New Hampshire. This survey does have limits however, as we do not know how many individuals are traveling from out of state to obtain abortions in these states. 

## Clinics and Levels of Service Provided
- No Service pertains to Crisis Pregnancy Centers

## Land Area 
From the U.S. Census we pulled land area by square miles for each state. 

Limitations to our data
- Varying date ranges: abortion policies are current, all other data is 2018-2020
- Maternal mortality should be calculated using deaths for one calendar year, our data covers 3 years