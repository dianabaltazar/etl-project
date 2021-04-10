# etl-project

ETL Project
The purpose of the project was to create a database that contains information on crime in the United States, specifically a table that contains statistics on police officers who have been killed, another on civilian victims who have been killed by police officers, and a third table containing the population. The tables contain information by state and by year from 2000 to 2016.
For the development of the project, the work team selected data.world and www.census.gov as the source of the datasets.

Extraction:
From data.world, the files all_data.csv and Police_Fatalities.csv were extracted with information on police officers killed in the line of duty and civilians killed by police officers, respectively.
Two csv files were extracted from www.censu.gov with information on the population of the United States, one of them from 2000 to 2009 and the other from 2010 to 2020.

Transformation:
For the transformation of the tables it was necessary:
- Filter the tables to leave only the necessary columns for the final tables.
- Perform column splits to create columns with the states and the year in which the events occurred.
- Group tables based on the states and the years in which the events occurred, counting the records that belong to each group.
- Merge tables to create a table of two that compose it.
- Concatenate the two population tables.
For the transformation stage, Python Pandas was used in Jupyter Notebook.

Load:
The final step was to create a SQL database where the three tables were loaded with the prepared information.
For this stage, the pgAdmin editor was used.
The database is called deaths_db
The three tables generated are police_deaths, fatalities, and population. 

