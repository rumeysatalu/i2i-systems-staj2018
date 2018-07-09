/*
Rumeysa Talu 
29.06.2018
created transaction_benchmark.pkb

*\

CREATE OR REPLACE PACKAGE BODY hr.gettime AS

    PROCEDURE insertname (
        inputnumber   IN NUMBER,
        pin_value     IN NUMBER
    ) AS
        operation   NUMBER;
    BEGIN
        IF
            ( pin_value = 1 )
        THEN
            FOR loop_counter IN 1..inputnumber LOOP
                INSERT INTO intern ( name ) VALUES ( 'Rumeysa' );

            END LOOP;

        ELSIF ( pin_value = 2 ) THEN
            FOR loop_counter IN 1..inputnumber LOOP
                DELETE FROM intern
                WHERE
                    name = 'Rumeysa';

            END LOOP;
        ELSIF ( pin_value = 3 ) THEN
            FOR loop_counter IN 1..inputnumber LOOP
                UPDATE intern
                SET
                    name = 'Talu';

            END LOOP;
        END IF;
    END insertname;

    PROCEDURE calculatetime (
        pin_operation IN NUMBER
    ) AS
        first_number   NUMBER;
        final_number   NUMBER;
    BEGIN
        first_number := dbms_utility.get_time;
        IF
            ( pin_operation = 1 )
        THEN
            ROLLBACK;
        ELSIF ( pin_operation = 2 ) THEN
            commit;
        END IF;

        final_number := dbms_utility.get_time;
        dbms_output.put_line( (final_number) - (first_number) );
    END calculatetime;

END gettime;
/

EXECUTE gettime.insertname(100,3);

EXECUTE gettime.calculatetime(1);

SELECT * FROM intern;