/*
Rumeysa Talu 
29.06.2018
created transaction_benchmark.pkb

*\

CREATE OR REPLACE PACKAGE hr.gettime AS
    PROCEDURE insertname (
        inputnumber   IN NUMBER,
        pin_value     IN NUMBER
    );

    PROCEDURE calculatetime (
        pin_operation IN NUMBER
    );

END gettime;
/