![Headline](Images/Access%20to%20Reproductive%20Services%20in%20the%20US.png)

# Table of Contents 

<!-- vscode-markdown-toc -->
* [Overview](#Overview)
* [Data](#Data)
* [Machine Learning](#Machine_Learning)
* [Storyboard](#Storyboard)
* [Working Agreement](#Working)
* [Further Study](#AdditionalStudy)
* [Additional Resources](#AdditionalResources)


<!-- vscode-markdown-toc-config
	numbering=true
	autoSave=true
	/vscode-markdown-toc-config -->
<!-- /vscode-markdown-toc -->

# <a name='Overview'></a>Overview

The purpose of this project is to identify the current state of access to reproductive health available in the United States. 

## Key Questions
* Which states have adequate access to reproductive health services?
* Which states lack access to reproductive health services?
* Where are locations that would benifit from reproductive health centers to address the lack of access to care?

# <a name='Data'></a>Data
### Preliminary Sources:

* https://crisispregnancycentermap.com/

    Data was scraped to identify centers that do not actually provide any reproductive health services. 

* https://www.kff.org/state-category/womens-health/

    Data pertaining to indicators of health access to care, including insurance status, preventitive care, abortion access, teen pregnancy, maternal mortality.

* https://www.plannedparenthood.org/
    
    Data pertaining to current planned parenthood clinics.

* https://www.census.gov/geographies/reference-files/2010/geo/state-area.html

    Census data showing the geography land area of each state. 

* https://data.guttmacher.org/states

    All abortion data per state for number of abortions, out of state travel for abortions, state of abortion occurrence.  

### Cleaned Data

 We looked through the rows and columns, checking for any data that did not seem resonable, we discussed any missing data and the best approach for each catagory. For example, California and New Hampshire stopped collecting abortion data in 1997 and Maryland stopped collecting in 2006. Guttmacher Institute conducts its own survey with known abortion clinics to provide data on abortions for these states which we inserted into our abortions table. The data from KFF, Guttmacher, Planned Parenthood, and Crisis Pregnancy Center Map was cleaned using pandas in jupyter notebook and Excel/Google Sheets. These files were then made into four tables to create our ERD.

### ERD
The data is organized into databases as followed: 

![ERD](Images/Updated_Reproductive_Health_ERD.png)*Reproductive Health ERD*

This database began with four tables: health_data from KFF, abortions_data from Guttmacher, clinics data from Crisis Pregnancy Centers and Planned Parenthood, and land_area from the Census. These four tables were imported into pgAdmin and joined using a INNER JOIN SQL statements. The final table was then exported to be used for machine learning. Our SQL Alchemy connections can be found in the jupyter notebooks titled Provisional_Machine_Learning_Model, Cleaning_Abortions_Guttmacher, Clustering, and MLM_MLR. 

### Analysis
* Data Exploration: The preliminary data sources were download individually for each independent variable. The data was then cleaned. The health data collected was organized into one table (health_data).  The data for crisis centers and current reproductive clinics (clinics) was scraped from the web.  Abortion data (abortions) was downloaded from Guttmarker. Additionally, a table from the Census was created to claculate population and land-area of each state(land_area). The data was than cleaned and unneeded or empty cells were removed. Data between the tables was standardized for lables and state names. 

* Data Processing: 
The database contains 51 rows of data (50 states + Washington D.C.) and 26 columns. Those columns are:
- Abortion Policy Tracker which contains a brief summary of each states' abortion policy as of August 2, 2022. Data is reported as categorical with 6 categories.
- Community Health Centers which are federally-funded health clinics that also provide women's health services. Data is reported as integers - the number of clinics in 2020.
- Health Insurance Coverage of Women Ages 19 to 64. Insured women reported receive insurance through: employers, non-group, Medicaid, Medicare, military. Some women were also reported as uninsured. Data is reported as integers in 2020.
- Maternal mortality rate was manually calculated from two data sets. One contained maternal deaths for the years 2018 to 2020 and the other number of live births for 2020. We divided maternal deaths by total births and multiplied by 100,000.
- Population reported as integers for 2019.
- The percentage of women who reported not seeing a doctor in the past 12 months due to cost for 2020.
- The percentage of women age 40 and older who report having had a mammogram within the past two years for 2020.
- The percentage of women who reported having no personal doctor or health care provider in 2020.
- The percentage of women ages 18 to 64 who reported having a pap smear within the past three years from 2018 to 2020.
- The state requirements as of May 1, 2022 for insurance coverage of contraceptives including: prescription contraception, over-the-counter methods, male sterilization, female sterilization, and prohibiting cost sharing.
- Teen birth rate per 1,000 teens ages 15-19 in 2020. 
- Distribution of total population by federal poverty level for those 200% and below for 2019.
- Abortion data providing percentages of all U.S. abortions by state of occurrence for 2020, percentage of residents obtaining abortions who traveled out of state for care in 2020, the number of abortions by state of occurrence for 2020, and the number of abortions by state of residence for 2020.
- Clinics and levels of services provided: no services (known as fake pregnancy centers), few services, restricted services, and full service.
- Land area by square kilometers for each state. 


![Join Images](Resources/images/SQL_JOIN_final_table.PNG)

* Data Analysis: The prelimary data was analyzed as a team. As there are only 51 states it is resonable to do the prelimanary work manually using Excel. Further analysis was done in Jupyter Notebook by using a clustering algorithm, and then a regression model. 

# <a name='Usage'></a>Machine Learning
### Preliminary 
- We began our machine learning using the unsupervised learning method of clustering using K-means. This process grouped similar objects together and yield group similar data points together and discover underlying patterns. The model yielded 5 groups of reproductive health care access.  
![Elbow Curve](Images/mlm_elbow_curve.png)
![Cluster1](Images/mlm_kcluster_01.png)
![Cluster2](Images/mlm_kcluster_02.png)
![Cluster3](Images/mlm_kcluster_03.png)
![Cluster4](Images/mlm_kcluster_04.png)


- Preliminary feature engineering and feature selection: 

### Data Split, Train and Test
- We than used multiple logistic regression to predict how many more community health clinics an area would need in order to fit with the model that was was trained of the areas that had adequate coverage. 

### Model choice
- We choose multiple linear regression. There are multiple independent variables which make this model the most logial to determin the number of clinics that each state needs to add.
- Limitations: When using all the independent variables the output for the model prediction is not logical. All of the data process are not on the same normalized scale.
- Benefits: This model allows us to look at multiple data sources 

# <a name='Storyboard'></a>Storyboard
- We will use Plotly, JavaScript and Tablue, to create an interactive data visualization for the web. The completed work will be displayed in a portfolio using Gitpages.

- Interactive Features: This interactive web visualization will allow users to select a state and see graphic visualization of the level of access to reproductive healthcare.

[Wire Frame for Storyboard](https://docs.google.com/presentation/d/1fNeITHeLO5w1hP_-IijeZu9O0GGq6SPZkKJ5YKQ_M7E/edit#slide=id.p)

# <a name='Working'></a>Working Agreements
* We agree to be kind and professional.
* We will meet via zoom 30 minutes before each class.
* We will schedule additional meetings as needed, included but not limited to Sunday work sessions from 2-5 pm. 
* We will communicate urgent issues via text.
* We will communicate non-urgent issues via Slack
* We will save documents to our shared Google drive. 
* We agree to push our work to our branch to allow others to review our work. 
* We will update Jamboard to show the flow of our work.

# <a name='Further Study'></a>Further Study
* We would need to continue to collect data that would show clinics that are closing and do not offer services to clients. 

* This study is still showing that some states need less clinics. It would be a valuable further study to analyz the factors that contribute to more clinics being needed certain areas. Further analysis using other machine learning models would lead to even more valuable results. 


# <a name='AdditionalResources'></a>Additional Resources
[Group Google Shared Drive ](https://drive.google.com/drive/u/0/folders/1aURcy_XHSeTBuxBs2TyEmiRUIgIQ5zvV)

[Google Slides Presentation](https://docs.google.com/presentation/d/1kcj6kuOmC0LJDoqfipSAFfxEbHqrjBkker1FSNAJY7w/edit#slide=id.p)

