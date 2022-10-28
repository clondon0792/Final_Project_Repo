--Base SQL Insert statements for each table
--Replace {column_name} with corresponding values

INSERT INTO Gas VALUES 
    ({month}, {year}, {price});

INSERT INTO Region VALUES 
    ({region_num}, {region_name});

INSERT INTO Weather VALUES
    ({weather_id}, {weather_name});

INSERT INTO Light VALUES
    ({light_level}, {light_desc});

INSERT INTO Incident VALUES
    ({case_num}, {region_num}, {month}, {year}, {day}, {weather_id}, {light_level});

INSERT INTO Vehicle VALUES
    ({case_num}, {vehicle_num}, {fatality}, {alcohol});

INSERT INTO Restraint VALUES
    ({violation_id}, {case_num}, {vehicle_num}, {restraint});