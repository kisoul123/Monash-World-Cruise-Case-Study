/*****PLEASE ENTER YOUR DETAILS BELOW*****/
/*T1-wc-schema.sql*/

/*Student ID: 32745818*/
/*Student Name: Sittiporn Likanasudh*/
/*Unit Code: FIT2094*/
/*Applied Class No: 01*/

/* Comments for your marker:

*/

/* Task 1 Add Create table statements for the Missing TABLES below*/
/* Ensure all column comments, and constraints (other than FK's)*/
/* are included. FK constraints are to be added at the end of this script*/

/* PASSENGER*/
CREATE TABLE passenger (
    passenger_id      NUMBER(6) NOT NULL,
    passenger_fname   VARCHAR2(30),
    passenger_lname   VARCHAR2(30),
    passenger_dob     DATE NOT NULL,
    passenger_gender  CHAR(1) NOT NULL,
    passenger_contact CHAR(10),
    guardian_id       NUMBER(6)
);

COMMENT ON COLUMN passenger.passenger_id IS
    'Unique identifer for a passenger';

COMMENT ON COLUMN passenger.passenger_fname IS
    'Passenger first name';

COMMENT ON COLUMN passenger.passenger_lname IS
    'Passenger last name';

COMMENT ON COLUMN passenger.passenger_dob IS
    'Passenger date of birth';

COMMENT ON COLUMN passenger.passenger_gender IS
    'Passenger gender (M for Male, F for female, or X for non-binary/indeterminate/intersex/unspecified/other)'
    ;

COMMENT ON COLUMN passenger.passenger_contact IS
    'Passenger contact number';

COMMENT ON COLUMN passenger.guardian_id IS
    'Unique identifier for a guardian';

ALTER TABLE passenger ADD CONSTRAINT passenger_pk PRIMARY KEY ( passenger_id );

ALTER TABLE passenger
    ADD CONSTRAINT ck_passenger_gender CHECK ( passenger_gender IN ( 'M', 'F', 'X' ) )
    ;

ALTER TABLE passenger ADD CONSTRAINT uq_passenger_contact UNIQUE ( passenger_contact )
;

/* MANIFEST*/
CREATE TABLE manifest (
    manifest_id             NUMBER(7) NOT NULL,
    passenger_id            NUMBER(6) NOT NULL,
    cruise_id               NUMBER(6) NOT NULL,
    manifest_board_datetime DATE,
    ship_code               NUMBER(4) NOT NULL,
    cabin_no                NUMBER(5) NOT NULL
);

COMMENT ON COLUMN manifest.manifest_id IS
    'Unique identifier for a manifest';

COMMENT ON COLUMN manifest.passenger_id IS
    'Unique identifier for a passenger';

COMMENT ON COLUMN manifest.cruise_id IS
    'Cruise identifier - used only for a single cruise';

COMMENT ON COLUMN manifest.manifest_board_datetime IS
    'Date/time passenger boarded ship';

COMMENT ON COLUMN manifest.ship_code IS
    'Identifier for ship';

COMMENT ON COLUMN manifest.cabin_no IS
    'Cabin number on given ship';

ALTER TABLE manifest ADD CONSTRAINT manifest_pk PRIMARY KEY ( manifest_id );

ALTER TABLE manifest ADD CONSTRAINT manifest_un UNIQUE ( passenger_id,
                                                         cruise_id );

/* Add all missing FK Constraints below here*/
ALTER TABLE passenger
    ADD CONSTRAINT passenger_guardian FOREIGN KEY ( guardian_id )
        REFERENCES passenger ( passenger_id );

ALTER TABLE manifest
    ADD CONSTRAINT passenger_manifest FOREIGN KEY ( passenger_id )
        REFERENCES passenger ( passenger_id );

ALTER TABLE manifest
    ADD CONSTRAINT cruise_manifest FOREIGN KEY ( cruise_id )
        REFERENCES cruise ( cruise_id );

ALTER TABLE manifest
    ADD CONSTRAINT ship_manifest FOREIGN KEY ( ship_code,
                                               cabin_no )
        REFERENCES cabin ( ship_code,
                           cabin_no );