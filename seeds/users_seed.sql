INSERT INTO users (email, password_hash)
VALUES
('ozy@things.com', crypt('password', gen_salt('bf')));
