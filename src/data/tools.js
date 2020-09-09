// Split the database content in block of roughly 1k words (2 < length < 14).
// See ./stats/segments.sql
const frequencySegments = [
  { upper: 10_000_000, lower: 50_000 },
  { upper: 50_000, lower: 10_000 },
  { upper: 10_000, lower: 5000 },
  { upper: 5000, lower: 3000 },
  { upper: 3000, lower: 2000 },
  { upper: 2000, lower: 1500 },
  { upper: 1500, lower: 1000 },
  { upper: 1000, lower: 750 },
  { upper: 750, lower: 500 },
  { upper: 500, lower: 400 },
  { upper: 400, lower: 320 },
];

// Let's see how lengths 12, 13 and 14 do during the reviews.
const lengths = [3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14];

export function sampleNouns() {
  return frequencySegments
    .map((segment) => {
      return lengths
        .map((len) => {
          return `SELECT lemma, NULL AS reviews FROM
            (SELECT lemma
                FROM (SELECT * FROM main.entries
                WHERE class = 3
                    AND frequency_per_billion < ${segment.upper}
                    AND frequency_per_billion >= ${segment.lower}
                    AND length = ${len})
            ORDER BY RANDOM()
            LIMIT 3)\n`;
        })
        .join("UNION\n");
    })
    .join("UNION\n");
}
