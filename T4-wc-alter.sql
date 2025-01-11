/*****PLEASE ENTER YOUR DETAILS BELOW*****/
/*T4-wc-alter.sql*/

/*Student ID: 32745818*/
/*Student Name: Sittiporn Likanasudh*/
/*Unit Code: FIT2094*/
/*Applied Class No: 01*/

/* Comments for your marker:
1. The same cruise can have different maintenance date and maintenance type, which means that it can be considered as a repeating group. 
2. Created a new table to record the maintenance for ships with maintenance_id as PK and ship_code as FK.
*/

/*4(a)*/
ALTER TABLE cruise ADD passenger_booking_count NUMBER(6);

COMMENT ON COLUMN cruise.passenger_booking_count IS
    'Number of passengers booked on each cruise';

UPDATE cruise c
SET
    passenger_booking_count = (
        SELECT
            COUNT(manifest_id)
        FROM
            manifest m
        WHERE
            m.cruise_id = c.cruise_id
        GROUP BY
            cruise_id
    );

COMMIT;

/*4(b)*/
DROP TABLE maintenance CASCADE CONSTRAINTS PURGE;

CREATE TABLE maintenance (
    maintenance_id                NUMBER(6) NOT NULL,
    maintenance_start_date        DATE,
    maintenance_expected_end_date DATE,
    maintenance_type              VARCHAR(80),
    ship_code                     NUMBER(4) NOT NULL
);

COMMENT ON COLUMN maintenance.maintenance_id IS
    'Unique identifier for a ship maintenance';

COMMENT ON COLUMN maintenance.maintenance_start_date IS
    'The start date of the ship maintenance';

COMMENT ON COLUMN maintenance.maintenance_expected_end_date IS
    'The expected end date of the ship maintenance';

COMMENT ON COLUMN maintenance.maintenance_type IS
    'The maintenance type of the ship';

COMMENT ON COLUMN maintenance.ship_code IS
    'Identifier for ship';

ALTER TABLE maintenance ADD CONSTRAINT ship_maintenance_pk PRIMARY KEY ( maintenance_id
);

ALTER TABLE maintenance
    ADD CONSTRAINT maintenance_type_check CHECK ( maintenance_type IN ( 'Preventive or Scheduled Maintenance'
    , 'Corrective or Breakdown Maintenance', 'Condition Maintenance' ) );

ALTER TABLE maintenance
    ADD CONSTRAINT ship_code_fk FOREIGN KEY ( ship_code )
        REFERENCES ship ( ship_code );

/*4(c)*/
ALTER TABLE manifest ADD guardian_id NUMBER(6);

COMMENT ON COLUMN manifest.guardian_id IS
    'Unique identifier for a guardian';

UPDATE manifest m
SET
    guardian_id = (
        SELECT
            guardian_id
        FROM
            passenger p
        WHERE
            m.passenger_id = p.passenger_id
    );

COMMIT;