/*
 The following are needed for the application to run prior to models being created
 */
CREATE TABLE IF NOT EXISTS coins(coinid INT,
    name VARCHAR(255),
    nameplural VARCHAR(255),
    value DOUBLE,
    quantity INT);

CREATE SEQUENCE IF NOT EXISTS hibernate_sequence;
-- GAH
/*
 This is the actual seed data
 */
DELETE
FROM coins;

INSERT INTO coins (coinid, name, nameplural, value, quantity)
           VALUES (1, 'Quarter', 'Quarters', 0.25, 1),
                  (2, 'Dime', 'Dimes', 0.10, 1),
                  (3, 'Dollar', 'Dollars', 1.00, 5),
                  (4, 'Nickel', 'Nickels', 0.05, 3),
                  (5, 'Dime', 'Dimes', 0.10, 7),
                  (6, 'Dollar', 'Dollars', 1.00, 1),
                  (7, 'Penny', 'Pennies', 0.01, 10);

/*
We must tell hibernate the ids that have already been used.
The number must be larger than the last used id.
15 > 7 so we are good!
 */

alter sequence hibernate_sequence restart with 15;