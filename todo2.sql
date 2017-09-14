INSERT INTO todos (title, details, priority, created_at, completed_at)
  VALUES ('Finish Hunger by Roxanne Gay', 'Finish the book!', 2, now(), null);
  VALUES ('Finish Ego is the Enemy', 'Finish the book!', 2, '2017-08-18 9:30', now());
  VALUES ('Complete Gabble', 'Fold and organize clean clothes', 5, now(), null);
  VALUES ('Concert Tickets for Joseph', 'Purchase tickets for upcoming shows', 3, now(), null);
  VALUES ('Blog', 'Finish Monday blog entry', 4, '2017-11-12 9:50', now());
  VALUES ('Finish daily project!', 'Complete the daily project and then work on previous submissions.', 1, now(), '2017-08-18 9:30';
  VALUES ('Finish robots', 'Finish the book!', 2, now(), null);
  VALUES ('Fold clothes', 'Fold and organize clean clothes', 5, now(), null);
  VALUES ('Concert Tickets for Cher', 'Purchase tickets for upcoming shows', 3, now(), null);
  VALUES ('Listen to Carly Rae Jepson', 'Finish Monday blog entry', 3, now(), now());
  VALUES ('Finish my homework!', 'Complete the daily project and then work on previous submissions.', 1, now(), now());
  VALUES ('Laundry', 'Finish the book!', 1, now(), null);
  VALUES ('Fold clothes again', 'Fold and organize clean clothes', 1, now(), null);
  VALUES ('Concert Tickets', 'Purchase tickets for upcoming shows', 3, now(), null);
  VALUES ('Blog', 'Finish Monday blog entry', 4, '2017-08-18 9:30', now());
  VALUES ('Write a thank you card!', 'Complete the daily project and then work on previous submissions.', 1, now(), now());
  VALUES ('Watch Atomic Blonde', 'Finish the book!', 1, now(), null);
  VALUES ('Cook dinner', 'Fold and organize clean clothes', 5, now(), null);
  VALUES ('Concert Tickets for Gordi', 'Purchase tickets for upcoming shows', 3, now(), null);
  VALUES ('Blog again and again', 'Finish Monday blog entry', 4, now(), null);

SELECT * FROM todos WHERE priority = 3;

SELECT COUNT(completed_at IS NULL) FROM todos GROUP BY priority;

SELECT COUNT(*)
FROM todos
WHERE created_at > NOW()::date - 30
GROUP BY priority;

SELECT title, details, priority, created_at FROM todos
WHERE completed_at IS NULL
ORDER BY priority, created_at
LIMIT 1
