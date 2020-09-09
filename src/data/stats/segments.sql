-- Word count by frequency segment.
SELECT frequency_per_billion, count(lemma)
FROM (
         SELECT lemma,
                length,
                CASE
                    WHEN frequency_per_billion > 50000 THEN
                        50000
                    WHEN frequency_per_billion > 10000 THEN
                        10000
                    WHEN frequency_per_billion > 5000 THEN
                        5000
                    WHEN frequency_per_billion > 3000 THEN
                        3000
                    WHEN frequency_per_billion > 2000 THEN
                        2000
                    WHEN frequency_per_billion > 1500 THEN
                        1500
                    WHEN frequency_per_billion > 1000 THEN
                        1000
                    WHEN frequency_per_billion > 750 THEN
                        750
                    WHEN frequency_per_billion > 500 THEN
                        500
                    WHEN frequency_per_billion > 400 THEN
                        400
                    WHEN frequency_per_billion > 320 THEN
                        320
                    END as frequency_per_billion
         FROM entries
         WHERE class = 3
           AND length > 2
           AND length < 15)
GROUP BY frequency_per_billion
ORDER BY frequency_per_billion DESC;

-- Word count by frequency segment and word length.
SELECT length, frequency_per_billion, count(lemma)
FROM (
         SELECT lemma,
                length,
                CASE
                    WHEN frequency_per_billion > 50000 THEN
                        50000
                    WHEN frequency_per_billion > 10000 THEN
                        10000
                    WHEN frequency_per_billion > 5000 THEN
                        5000
                    WHEN frequency_per_billion > 3000 THEN
                        3000
                    WHEN frequency_per_billion > 2000 THEN
                        2000
                    WHEN frequency_per_billion > 1500 THEN
                        1500
                    WHEN frequency_per_billion > 1000 THEN
                        1000
                    WHEN frequency_per_billion > 750 THEN
                        750
                    WHEN frequency_per_billion > 500 THEN
                        500
                    WHEN frequency_per_billion > 400 THEN
                        400
                    WHEN frequency_per_billion > 320 THEN
                        320
                    END as frequency_per_billion
         FROM entries
         WHERE class = 3
           AND length > 2
           AND length < 15)
GROUP BY length, frequency_per_billion
ORDER BY length, frequency_per_billion DESC;
