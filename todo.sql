CREATE TABLE todos (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details TEXT NULL,
  priority INTEGER NOT NULL DEFAULT 1,
  created_at TIMESTAMP NOT NULL,
  completed_at TIMESTAMP NULL
);

INSERT INTO todolistdb (title, details, priority, created_at, completed_at) VALUES todos ('Finish my homework!', 'Complete the daily project and then work on previous submissions.', 1, now(), now());
INSERT INTO todolistdb (title, details, priority, created_at, completed_at) VALUES todos ('Finish World War Z', 'Finish the book!', 2, now(), );
INSERT INTO todolistdb (title, details, priority, created_at, completed_at) VALUES todos ('Fold clothes', 'Fold and organize clean clothes', 5, now(), );
INSERT INTO todolistdb (title, details, priority, created_at, completed_at) VALUES todos ('Concert Tickets', 'Purchase tickets for upcoming shows', 3, now(), );
INSERT INTO todolistdb (title, details, priority, created_at, completed_at) VALUES todos ('Blog', 'Finish Monday blog entry', 4, now(), );

SELECT * FROM todos WHERE completed_at IS NULL;

SELECT * FROM todos WHERE priority > 1;
