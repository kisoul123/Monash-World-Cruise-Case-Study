/*****PLEASE ENTER YOUR DETAILS BELOW*****/
/*T2-wc-insert.sql*/

/*Student ID: 32745818*/
/*Student Name: Sittiporn Likanasudh*/
/*Unit Code: FIT2094*/
/*Applied Class No: 01*/

/* Comments for your marker:
12 Nov 2004 -> 18 years old

*/

/* Task 2 Load the PASSENGER and MANIFEST tables with your own*/
/* test data following the data requirements expressed in the brief*/

/* =======================================*/
/* PASSENGER*/
/* =======================================*/
INSERT INTO passenger (
    passenger_id,
    passenger_fname,
    passenger_lname,
    passenger_dob,
    passenger_gender,
    passenger_contact,
    guardian_id
) VALUES (
    1,
    'Tony',
    'Van',
    TO_DATE('18-Jan-2001', 'dd-Mon-yyyy'),
    'M',
    '0478713647',
    NULL
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
    2,
    'Marcello',
    'Dinardo',
    TO_DATE('23-Jun-1999', 'dd-Mon-yyyy'),
    'M',
    '0484902934',
    NULL
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
    3,
    'Kevin',
    'Nguyen',
    TO_DATE('29-Jul-2002', 'dd-Mon-yyyy'),
    'M',
    '0419203849',
    NULL
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
    4,
    'Samuel',
    'Din',
    TO_DATE('15-Sep-1998', 'dd-Mon-yyyy'),
    'M',
    '0492819204',
    NULL
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
    5,
    'Ashley',
    'Simmons',
    TO_DATE('11-Oct-1998', 'dd-Mon-yyyy'),
    'F',
    '0432159687',
    NULL
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
    6,
    'Paul',
    'George',
    TO_DATE('30-Nov-1996', 'dd-Mon-yyyy'),
    'M',
    '0421498695',
    NULL
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
    7,
    'Phoebe',
    'Joong',
    TO_DATE('08-Dec-1995', 'dd-Mon-yyyy'),
    'F',
    '0432869409',
    NULL
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
    8,
    'Alice',
    'Tran',
    TO_DATE('24-Feb-1997', 'dd-Mon-yyyy'),
    'F',
    '0429485698',
    NULL
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
    9,
    'Jordan',
    'Mackenzie',
    TO_DATE('10-Aug-1990', 'dd-Mon-yyyy'),
    'M',
    '0432495678',
    NULL
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
    10,
    'Sittiporn',
    'Likanasudh',
    TO_DATE('30-May-2001', 'dd-Mon-yyyy'),
    'M',
    '0429456720',
    NULL
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
    11,
    'Christine',
    'Delehaunty',
    TO_DATE('21-Mar-2006', 'dd-Mon-yyyy'),
    'F',
    '0423586783',
    1
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
    12,
    'Anita',
    'Jackson',
    TO_DATE('01-Nov-2010', 'dd-Mon-yyyy'),
    'F',
    '0492848576',
    2
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
    13,
    'Alan',
    'Wong',
    TO_DATE('04-Jul-2011', 'dd-Mon-yyyy'),
    'M',
    '0439685921',
    3
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
    14,
    'Winnie',
    'Ooi',
    TO_DATE('27-Oct-2011', 'dd-Mon-yyyy'),
    'F',
    '0492104957',
    4
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
    15,
    'Zachary',
    'Brown',
    TO_DATE('24-Apr-2013', 'dd-Mon-yyyy'),
    'M',
    '0432194859',
    5
);

/* =======================================*/
/* MANIFEST*/
/* =======================================*/
INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    1,
    11,
    1,
    TO_DATE('02-Apr-2022 08:00', 'dd-Mon-yyyy hh24:mi'),
    101,
    1001
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    2,
    12,
    2,
    TO_DATE('16-Apr-2022 07:30', 'dd-Mon-yyyy hh24:mi'),
    102,
    2001
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    3,
    13,
    3,
    TO_DATE('16-Apr-2022 08:15', 'dd-Mon-yyyy hh24:mi'),
    103,
    110
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    4,
    14,
    8,
    NULL,
    105,
    8031
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    5,
    1,
    6,
    TO_DATE('18-Sep-2022 08:45', 'dd-Mon-yyyy hh24:mi'),
    101,
    1002
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    6,
    2,
    6,
    TO_DATE('18-Sep-2022 09:30', 'dd-Mon-yyyy hh24:mi'),
    101,
    2002
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    7,
    3,
    3,
    NULL,
    103,
    112
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    8,
    4,
    5,
    NULL,
    102,
    2002
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    9,
    5,
    2,
    TO_DATE('16-Apr-2022 08:05', 'dd-Mon-yyyy hh24:mi'),
    102,
    2004
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    10,
    5,
    6,
    TO_DATE('18-Sep-2022 09:00', 'dd-Mon-yyyy hh24:mi'),
    101,
    1011
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    11,
    6,
    4,
    TO_DATE('07-May-2022 12:30', 'dd-Mon-yyyy hh24:mi'),
    101,
    1013
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    12,
    6,
    1,
    TO_DATE('02-Apr-2022 09:00', 'dd-Mon-yyyy hh24:mi'),
    101,
    1003
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    13,
    7,
    4,
    TO_DATE('07-May-2022 12:45', 'dd-Mon-yyyy hh24:mi'),
    101,
    1001
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    14,
    8,
    5,
    NULL,
    102,
    2003
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    15,
    9,
    1,
    TO_DATE('02-Apr-2022 09:30', 'dd-Mon-yyyy hh24:mi'),
    101,
    1013
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    16,
    10,
    8,
    NULL,
    105,
    9015
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    17,
    15,
    3,
    TO_DATE('16-Apr-2022 08:20', 'dd-Mon-yyyy hh24:mi'),
    103,
    213
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    18,
    3,
    4,
    TO_DATE('07-May-2022 13:50', 'dd-Mon-yyyy hh24:mi'),
    101,
    1011
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    19,
    6,
    5,
    TO_DATE('08-May-2022 09:50', 'dd-Mon-yyyy hh24:mi'),
    102,
    2012
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    20,
    11,
    2,
    NULL,
    102,
    2014
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    21,
    9,
    4,
    TO_DATE('07-May-2022 13:20', 'dd-Mon-yyyy hh24:mi'),
    101,
    3001
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    22,
    8,
    7,
    NULL,
    103,
    210
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    23,
    5,
    8,
    NULL,
    105,
    9015
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    24,
    13,
    8,
    NULL,
    105,
    10102
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    25,
    15,
    6,
    TO_DATE('18-Sep-2022 8:15', 'dd-Mon-yyyy hh24:mi'),
    101,
    3002
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    26,
    7,
    6,
    TO_DATE('18-Sep-2022 9:45', 'dd-Mon-yyyy hh24:mi'),
    101,
    2001
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    27,
    12,
    5,
    NULL,
    102,
    4002
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    28,
    1,
    8,
    NULL,
    105,
    9015
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    29,
    4,
    6,
    TO_DATE('18-Sep-2022 9:20', 'dd-Mon-yyyy hh24:mi'),
    101,
    2022
);

INSERT INTO manifest (
    manifest_id,
    passenger_id,
    cruise_id,
    manifest_board_datetime,
    ship_code,
    cabin_no
) VALUES (
    30,
    2,
    7,
    TO_DATE('23-Oct-2022 8:40', 'dd-Mon-yyyy hh24:mi'),
    103,
    213
);

COMMIT;