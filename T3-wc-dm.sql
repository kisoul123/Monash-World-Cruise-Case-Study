/*****PLEASE ENTER YOUR DETAILS BELOW*****/
/*T3-wc-dm.sql*/

/*Student ID: 32745818*/
/*Student Name: Sittiporn Likanasudh*/
/*Unit Code: FIT2094*/
/*Applied Class No: 01*/

/* Comments for your marker:
Assuming that even though Dominik canceled the booking, it doesn't mean that he can't rebook again. 
*/

/*3(a)*/
DROP SEQUENCE passenger_seq;

DROP SEQUENCE manifest_seq;

CREATE SEQUENCE passenger_seq START WITH 100 INCREMENT BY 1;

CREATE SEQUENCE manifest_seq START WITH 100 INCREMENT BY 1;

/*3(b)*/
INSERT INTO passenger (
    passenger_id,
    passenger_fname,
    passenger_lname,
    passenger_dob,
    passenger_gender,
    passenger_contact,
    guardian_id
) VALUES (
    passenger_seq.NEXTVAL,
    'Dominik',
    'Davies',
    TO_DATE('27-Sep-1984', 'dd-Mon-yyyy'),
    'M',
    '0493336312',
    NULL
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    manifest_seq.NEXTVAL,
    passenger_seq.CURRVAL,
    (
        SELECT
            cruise_id
        FROM
            cruise
        WHERE
                lower(cruise_name) = lower('Melbourne to Auckland')
            AND to_char(cruise_departure_datetime, 'dd-Mon-yyyy hh24:mi') = '23-Oct-2022 10:00'
    ),
    NULL,
    (
        SELECT
            ship_code
        FROM
            cabin
        WHERE
            cabin_no = 210
    ),
    210
);

INSERT INTO passenger (
    passenger_id,
    passenger_fname,
    passenger_lname,
    passenger_dob,
    passenger_gender,
    passenger_contact,
    guardian_id
) VALUES (
    passenger_seq.NEXTVAL,
    'Henrietta',
    'Davies',
    TO_DATE('21-Jan-2007', 'dd-Mon-yyyy'),
    'F',
    NULL,
    (
        SELECT
            passenger_id
        FROM
            passenger
        WHERE
                lower(passenger_fname) = lower('Dominik')
            AND lower(passenger_lname) = lower('Davies')
    )
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    manifest_seq.NEXTVAL,
    passenger_seq.CURRVAL,
    (
        SELECT
            cruise_id
        FROM
            cruise
        WHERE
                lower(cruise_name) = lower('Melbourne to Auckland')
            AND to_char(cruise_departure_datetime, 'dd-Mon-yyyy hh24:mi') = '23-Oct-2022 10:00'
    ),
    NULL,
    (
        SELECT
            ship_code
        FROM
            cabin
        WHERE
            cabin_no = 210
    ),
    210
);

INSERT INTO passenger (
    passenger_id,
    passenger_fname,
    passenger_lname,
    passenger_dob,
    passenger_gender,
    passenger_contact,
    guardian_id
) VALUES (
    passenger_seq.NEXTVAL,
    'Poppy',
    'Davies',
    TO_DATE('09-Apr-2008', 'dd-Mon-yyyy'),
    'F',
    NULL,
    (
        SELECT
            passenger_id
        FROM
            passenger
        WHERE
                lower(passenger_fname) = lower('Dominik')
            AND lower(passenger_lname) = lower('Davies')
    )
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    manifest_seq.NEXTVAL,
    passenger_seq.CURRVAL,
    (
        SELECT
            cruise_id
        FROM
            cruise
        WHERE
                lower(cruise_name) = lower('Melbourne to Auckland')
            AND to_char(cruise_departure_datetime, 'dd-Mon-yyyy hh24:mi') = '23-Oct-2022 10:00'
    ),
    NULL,
    (
        SELECT
            ship_code
        FROM
            cabin
        WHERE
            cabin_no = 210
    ),
    210
);

COMMIT;

/*3(c)*/

DELETE FROM manifest
WHERE
    cruise_id = (
        SELECT
            cruise_id
        FROM
            cruise
        WHERE
                lower(cruise_name) = lower('Melbourne to Auckland')
            AND cruise_departure_datetime = (
                SELECT
                    cruise_departure_datetime
                FROM
                    cruise
                WHERE
                    to_char(cruise_departure_datetime, 'dd-Mon-yyyy hh24:mi') = '23-Oct-2022 10:00'
            )
            AND passenger_id = (
                SELECT
                    passenger_id
                FROM
                    passenger
                WHERE
                        lower(passenger_fname) = lower('Poppy')
                    AND lower(passenger_lname) = lower('Davies')
            )
    );

UPDATE manifest
SET
    cabin_no = 113
WHERE
    passenger_id = (
        SELECT
            passenger_id
        FROM
            passenger
        WHERE
                lower(passenger_fname) = lower('Dominik')
            AND lower(passenger_lname) = lower('Davies')
    );

UPDATE manifest
SET
    cabin_no = 113
WHERE
    passenger_id = (
        SELECT
            passenger_id
        FROM
            passenger
        WHERE
                lower(passenger_fname) = lower('Henrietta')
            AND lower(passenger_lname) = lower('Davies')
    );

COMMIT; 

/*3(d)*/

DELETE FROM manifest
WHERE
    cruise_id = (
        SELECT
            cruise_id
        FROM
            cruise
        WHERE
                lower(cruise_name) = lower('Melbourne to Auckland')
            AND cruise_departure_datetime = (
                SELECT
                    cruise_departure_datetime
                FROM
                    cruise
                WHERE
                    to_char(cruise_departure_datetime, 'dd-Mon-yyyy hh24:mi') = '23-Oct-2022 10:00'
            )
            AND passenger_id = (
                SELECT
                    passenger_id
                FROM
                    passenger
                WHERE
                        lower(passenger_fname) = lower('Dominik')
                    AND lower(passenger_lname) = lower('Davies')
            )
    );

DELETE FROM manifest
WHERE
    cruise_id = (
        SELECT
            cruise_id
        FROM
            cruise
        WHERE
                lower(cruise_name) = lower('Melbourne to Auckland')
            AND cruise_departure_datetime = (
                SELECT
                    cruise_departure_datetime
                FROM
                    cruise
                WHERE
                    to_char(cruise_departure_datetime, 'dd-Mon-yyyy hh24:mi') = '23-Oct-2022 10:00'
            )
            AND passenger_id = (
                SELECT
                    passenger_id
                FROM
                    passenger
                WHERE
                        lower(passenger_fname) = lower('Henrietta')
                    AND lower(passenger_lname) = lower('Davies')
            )
    );

COMMIT;