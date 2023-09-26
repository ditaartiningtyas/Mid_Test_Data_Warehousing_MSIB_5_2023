-- membuat tabel email_list
create table email_list (
	id int primary key,
	email varchar
);

-- memasukkan data id dan email pada email_list
INSERT INTO email_list (id, email) VALUES
('1','abc@gmail.com'),
('2','def@gmail.com'),
('3','abc@yahoo.com'),
('4','abc@gmail.com'),
('5','def@gmail.com'),
('6','def@gmail.com'),
('7','abc@bing.com');

-- kueri SQL untuk menemukan semua email duplikat yang diberikan dalam input.
SELECT email
FROM email_list
GROUP BY email
HAVING COUNT(email) > 1;

