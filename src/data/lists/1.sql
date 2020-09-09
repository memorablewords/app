SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3
              AND frequency_per_billion < 10000000
              AND frequency_per_billion >= 50000
              AND length = 3)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3
              AND frequency_per_billion < 10000000
              AND frequency_per_billion >= 50000
              AND length = 4)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3
              AND frequency_per_billion < 10000000
              AND frequency_per_billion >= 50000
              AND length = 5)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3
              AND frequency_per_billion < 10000000
              AND frequency_per_billion >= 50000
              AND length = 6)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3
              AND frequency_per_billion < 10000000
              AND frequency_per_billion >= 50000
              AND length = 7)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3
              AND frequency_per_billion < 10000000
              AND frequency_per_billion >= 50000
              AND length = 8)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3
              AND frequency_per_billion < 10000000
              AND frequency_per_billion >= 50000
              AND length = 9)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3
              AND frequency_per_billion < 10000000
              AND frequency_per_billion >= 50000
              AND length = 10)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3
              AND frequency_per_billion < 10000000
              AND frequency_per_billion >= 50000
              AND length = 11)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3
              AND frequency_per_billion < 10000000
              AND frequency_per_billion >= 50000
              AND length = 12)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3
              AND frequency_per_billion < 10000000
              AND frequency_per_billion >= 50000
              AND length = 13)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3
              AND frequency_per_billion < 10000000
              AND frequency_per_billion >= 50000
              AND length = 14)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 50000 AND frequency_per_billion >= 10000 AND length = 3)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 50000 AND frequency_per_billion >= 10000 AND length = 4)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 50000 AND frequency_per_billion >= 10000 AND length = 5)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 50000 AND frequency_per_billion >= 10000 AND length = 6)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 50000 AND frequency_per_billion >= 10000 AND length = 7)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 50000 AND frequency_per_billion >= 10000 AND length = 8)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 50000 AND frequency_per_billion >= 10000 AND length = 9)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 50000 AND frequency_per_billion >= 10000 AND length = 10)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 50000 AND frequency_per_billion >= 10000 AND length = 11)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 50000 AND frequency_per_billion >= 10000 AND length = 12)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 50000 AND frequency_per_billion >= 10000 AND length = 13)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 50000 AND frequency_per_billion >= 10000 AND length = 14)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 10000 AND frequency_per_billion >= 5000 AND length = 3)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 10000 AND frequency_per_billion >= 5000 AND length = 4)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 10000 AND frequency_per_billion >= 5000 AND length = 5)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 10000 AND frequency_per_billion >= 5000 AND length = 6)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 10000 AND frequency_per_billion >= 5000 AND length = 7)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 10000 AND frequency_per_billion >= 5000 AND length = 8)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 10000 AND frequency_per_billion >= 5000 AND length = 9)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 10000 AND frequency_per_billion >= 5000 AND length = 10)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 10000 AND frequency_per_billion >= 5000 AND length = 11)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 10000 AND frequency_per_billion >= 5000 AND length = 12)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 10000 AND frequency_per_billion >= 5000 AND length = 13)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 10000 AND frequency_per_billion >= 5000 AND length = 14)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 5000 AND frequency_per_billion >= 3000 AND length = 3)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 5000 AND frequency_per_billion >= 3000 AND length = 4)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 5000 AND frequency_per_billion >= 3000 AND length = 5)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 5000 AND frequency_per_billion >= 3000 AND length = 6)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 5000 AND frequency_per_billion >= 3000 AND length = 7)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 5000 AND frequency_per_billion >= 3000 AND length = 8)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 5000 AND frequency_per_billion >= 3000 AND length = 9)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 5000 AND frequency_per_billion >= 3000 AND length = 10)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 5000 AND frequency_per_billion >= 3000 AND length = 11)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 5000 AND frequency_per_billion >= 3000 AND length = 12)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 5000 AND frequency_per_billion >= 3000 AND length = 13)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 5000 AND frequency_per_billion >= 3000 AND length = 14)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 3000 AND frequency_per_billion >= 2000 AND length = 3)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 3000 AND frequency_per_billion >= 2000 AND length = 4)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 3000 AND frequency_per_billion >= 2000 AND length = 5)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 3000 AND frequency_per_billion >= 2000 AND length = 6)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 3000 AND frequency_per_billion >= 2000 AND length = 7)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 3000 AND frequency_per_billion >= 2000 AND length = 8)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 3000 AND frequency_per_billion >= 2000 AND length = 9)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 3000 AND frequency_per_billion >= 2000 AND length = 10)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 3000 AND frequency_per_billion >= 2000 AND length = 11)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 3000 AND frequency_per_billion >= 2000 AND length = 12)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 3000 AND frequency_per_billion >= 2000 AND length = 13)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 3000 AND frequency_per_billion >= 2000 AND length = 14)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 2000 AND frequency_per_billion >= 1500 AND length = 3)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 2000 AND frequency_per_billion >= 1500 AND length = 4)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 2000 AND frequency_per_billion >= 1500 AND length = 5)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 2000 AND frequency_per_billion >= 1500 AND length = 6)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 2000 AND frequency_per_billion >= 1500 AND length = 7)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 2000 AND frequency_per_billion >= 1500 AND length = 8)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 2000 AND frequency_per_billion >= 1500 AND length = 9)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 2000 AND frequency_per_billion >= 1500 AND length = 10)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 2000 AND frequency_per_billion >= 1500 AND length = 11)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 2000 AND frequency_per_billion >= 1500 AND length = 12)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 2000 AND frequency_per_billion >= 1500 AND length = 13)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 2000 AND frequency_per_billion >= 1500 AND length = 14)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 1500 AND frequency_per_billion >= 1000 AND length = 3)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 1500 AND frequency_per_billion >= 1000 AND length = 4)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 1500 AND frequency_per_billion >= 1000 AND length = 5)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 1500 AND frequency_per_billion >= 1000 AND length = 6)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 1500 AND frequency_per_billion >= 1000 AND length = 7)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 1500 AND frequency_per_billion >= 1000 AND length = 8)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 1500 AND frequency_per_billion >= 1000 AND length = 9)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 1500 AND frequency_per_billion >= 1000 AND length = 10)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 1500 AND frequency_per_billion >= 1000 AND length = 11)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 1500 AND frequency_per_billion >= 1000 AND length = 12)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 1500 AND frequency_per_billion >= 1000 AND length = 13)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 1500 AND frequency_per_billion >= 1000 AND length = 14)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 1000 AND frequency_per_billion >= 750 AND length = 3)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 1000 AND frequency_per_billion >= 750 AND length = 4)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 1000 AND frequency_per_billion >= 750 AND length = 5)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 1000 AND frequency_per_billion >= 750 AND length = 6)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 1000 AND frequency_per_billion >= 750 AND length = 7)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 1000 AND frequency_per_billion >= 750 AND length = 8)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 1000 AND frequency_per_billion >= 750 AND length = 9)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 1000 AND frequency_per_billion >= 750 AND length = 10)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 1000 AND frequency_per_billion >= 750 AND length = 11)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 1000 AND frequency_per_billion >= 750 AND length = 12)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 1000 AND frequency_per_billion >= 750 AND length = 13)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 1000 AND frequency_per_billion >= 750 AND length = 14)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 750 AND frequency_per_billion >= 500 AND length = 3)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 750 AND frequency_per_billion >= 500 AND length = 4)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 750 AND frequency_per_billion >= 500 AND length = 5)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 750 AND frequency_per_billion >= 500 AND length = 6)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 750 AND frequency_per_billion >= 500 AND length = 7)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 750 AND frequency_per_billion >= 500 AND length = 8)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 750 AND frequency_per_billion >= 500 AND length = 9)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 750 AND frequency_per_billion >= 500 AND length = 10)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 750 AND frequency_per_billion >= 500 AND length = 11)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 750 AND frequency_per_billion >= 500 AND length = 12)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 750 AND frequency_per_billion >= 500 AND length = 13)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 750 AND frequency_per_billion >= 500 AND length = 14)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 500 AND frequency_per_billion >= 400 AND length = 3)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 500 AND frequency_per_billion >= 400 AND length = 4)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 500 AND frequency_per_billion >= 400 AND length = 5)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 500 AND frequency_per_billion >= 400 AND length = 6)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 500 AND frequency_per_billion >= 400 AND length = 7)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 500 AND frequency_per_billion >= 400 AND length = 8)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 500 AND frequency_per_billion >= 400 AND length = 9)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 500 AND frequency_per_billion >= 400 AND length = 10)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 500 AND frequency_per_billion >= 400 AND length = 11)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 500 AND frequency_per_billion >= 400 AND length = 12)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 500 AND frequency_per_billion >= 400 AND length = 13)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 500 AND frequency_per_billion >= 400 AND length = 14)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 400 AND frequency_per_billion >= 320 AND length = 3)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 400 AND frequency_per_billion >= 320 AND length = 4)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 400 AND frequency_per_billion >= 320 AND length = 5)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 400 AND frequency_per_billion >= 320 AND length = 6)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 400 AND frequency_per_billion >= 320 AND length = 7)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 400 AND frequency_per_billion >= 320 AND length = 8)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 400 AND frequency_per_billion >= 320 AND length = 9)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 400 AND frequency_per_billion >= 320 AND length = 10)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 400 AND frequency_per_billion >= 320 AND length = 11)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 400 AND frequency_per_billion >= 320 AND length = 12)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 400 AND frequency_per_billion >= 320 AND length = 13)
      ORDER BY RANDOM()
      LIMIT 3)
UNION
SELECT lemma, NULL AS reviews
FROM (SELECT lemma
      FROM (SELECT *
            FROM main.entries
            WHERE class = 3 AND frequency_per_billion < 400 AND frequency_per_billion >= 320 AND length = 14)
      ORDER BY RANDOM()
      LIMIT 3);
