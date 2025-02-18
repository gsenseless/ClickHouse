-- Tags: no-backward-compatibility-check:22.5.1

SELECT
    number
FROM
    numbers(10)
GROUP BY
    GROUPING SETS
    (
        number,
        number % 2
    )
    WITH ROLLUP; -- { serverError NOT_IMPLEMENTED }

SELECT
    number
FROM
    numbers(10)
GROUP BY
    GROUPING SETS
    (
        number,
        number % 2
    )
    WITH CUBE; -- { serverError NOT_IMPLEMENTED }
