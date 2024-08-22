-- SELECTS


-- Einzeltabellen
SELECT * FROM design.cats;
SELECT * FROM servants;

-- Kreuzprodukt (Kartesisches Produkt)
SELECT * FROM design.cats JOIN design.servants;

-- Inner Join 1 / Gesamte Tabelle
SELECT
    *
FROM design.cats INNER JOIN design.servants
ON design.cats.id = design.servants.cats_id
;

-- Inner Join 2 / (Wer dient wem?)
SELECT
    cat_name AS Katze,
    servant_name AS Diener
FROM design.cats INNER JOIN design.servants
ON design.cats.id = design.servants.cats_id
WHERE cat_name = "Grizabella";


