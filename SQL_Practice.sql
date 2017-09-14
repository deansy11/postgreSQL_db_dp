-- Gist. For each of the questions below, add the following information to your gist:
-- The original question text
-- Your final SQL query (which you must have run and validated on the included database)
-- The number of results returned (if more than one)
-- The specific datum returned for each field (if one row returned)


-- Find all time entries.
SELECT * FROM time_entries

-- Find the developer who joined most recently.
SELECT name FROM developers ORDER BY  joined_on DESC LIMIT 1


-- Find the number of projects for each client.
SELECT COUNT(id), client_id
FROM  projects
GROUP BY client_id 


-- Find all time entries, and show each one's client name next to it.


-- Find all developers in the "Ohio sheep" group.
