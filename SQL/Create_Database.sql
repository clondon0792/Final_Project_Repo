-- SQL Queries to create the database
-- Because of some issue with the datatype with importing, numerical data has to be stored as strings for now. 
-- Additionally, these strings do not compare properly for foreign keys, so those have been disabled for now

CREATE TABLE Gas (
    month VARCHAR(2),
    year CHAR(4),
    price DECIMAL NOT NULL,
    CONSTRAINT gas_pk PRIMARY KEY (month, year)
);

CREATE TABLE Region (
    region_num VARCHAR(2) PRIMARY KEY,
    region_name VARCHAR(75) NOT NULL
);

CREATE TABLE Weather(
    weather_id VARCHAR(2) PRIMARY KEY,
    weather_name VARCHAR(25) NOT NULL
);

CREATE TABLE Light(
    light_level VARCHAR(2) PRIMARY KEY,
    light_desc VARCHAR(25) NOT NULL
);

CREATE TABLE Incident (
    case_num VARCHAR(16) PRIMARY KEY,
    region_num CHAR(1),
    rural_urban CHAR(1),
    rural_urban_desc VARCHAR(25),
    month VARCHAR(2) NOT NULL,
    year CHAR(4) NOT NULL,
    day VARCHAR(10) NOT NULL,
    weather_id VARCHAR(2),
    light_level VARCHAR(2)
    --CONSTRAINT Incident_Region_fk FOREIGN KEY(region_num) REFERENCES Region (region_num),
    --CONSTRAINT Incident_Weather_fk FOREIGN KEY(weather_id) REFERENCES Weather (weather_id),
    --CONSTRAINT Incident_Light_fk FOREIGN KEY(light_level) REFERENCES Light (light_level)
);

CREATE TABLE Vehicle (
    case_num VARCHAR(16),
    vehicle_num VARCHAR(2),
    fatality BOOLEAN NOT NULL,
    alcohol BOOLEAN NOT NULL,
    --CONSTRAINT Vehicle_Incident_fk FOREIGN KEY(case_num) REFERENCES Incident(case_num),
    CONSTRAINT Vehicle_pk PRIMARY KEY (case_num, vehicle_num)
);

CREATE TABLE Violation (
    violation_id VARCHAR(16),
    case_num VARCHAR(16),
    vehicle_num VARCHAR(2),
    violation_code VARCHAR(3),
    violation_desc VARCHAR(120),
    CONSTRAINT Restraint_pk PRIMARY KEY(violation_id)
    --CONSTRAINT Restraint_Vehicle_fk FOREIGN KEY(case_num, vehicle_num) REFERENCES Vehicle(case_num, vehicle_num)
);