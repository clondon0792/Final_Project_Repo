-- SQL Queries to create the database
CREATE TABLE Gas (
    month CHAR(3),
    year INT,
    price DECIMAL NOT NULL,
    CONSTRAINT gas_pk PRIMARY KEY (month, year)
);

CREATE TABLE Region (
    region_num INT PRIMARY KEY,
    region_name VARCHAR(30) NOT NULL
);

CREATE TABLE Weather(
    weather_id INT PRIMARY KEY,
    weather_name VARCHAR(25) NOT NULL
);

CREATE TABLE Light(
    light_level INT PRIMARY KEY,
    light_desc VARCHAR(15) NOT NULL
);

CREATE TABLE Incident (
    case_num INT PRIMARY KEY,
    region_num INT,
    month CHAR(3) NOT NULL,
    year INT NOT NULL,
    day VARCHAR(10) NOT NULL,
    weather_id INT,
    light_level INT,
    CONSTRAINT Incident-Region_fk FOREIGN KEY(region_num) REFERENCES Region (region_num),
    CONSTRAINT Incident-Weather_fk FOREIGN KEY(weather_id) REFERENCES Weather (weather_id),
    CONSTRAINT Incident-Light_fk FOREIGN KEY(light_level) REFERENCES Light (light_level)
);

CREATE TABLE Vehicle (
    case_num INT,
    vehicle_num INT,
    fatality BOOLEAN NOT NULL,
    restraint BOOLEAN NOT NULL,
    alcohol BOOLEAN NOT NULL,
    CONSTRAINT Vehicle-Incident_fk FOREIGN KEY(case_num) REFERENCES Incident(case_num),
    CONSTRAINT Vehicle_pk PRIMARY KEY (case_num, vehicle_num)
);