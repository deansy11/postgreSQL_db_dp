CREATE TABLE todos (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details TEXT NULL,
  priority INTEGER NOT NULL DEFAULT 1,
  created_at TIMESTAMP NOT NULL,
  completed_at TIMESTAMP NULL
);

INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('Finish my homework!', 'Complete the daily project and then work on previous submissions.', 1, now(), now());
INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('Finish World War Z', 'Finish the book!', 2, now(), null);
INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('Fold clothes', 'Fold and organize clean clothes', 5, now(), null);
INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('Concert Tickets', 'Purchase tickets for upcoming shows', 3, now(), null);
INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES ('Blog', 'Finish Monday blog entry', 4, now(), null);

SELECT * FROM todos WHERE completed_at IS NULL;

SELECT * FROM todos WHERE priority > 1;

UPDATE todos SET

DELETE * todos WHERE completed_at IS NOT NULL;



Write an UPDATE statement to complete one todo by its id. Your ids may differ, so you will choose the id to up.
Write a DELETE statement to delete all completed todos.
