-- membuat tabel_input
create table input_table (
	id int primary key,
	num int
);

-- memasukkan data id dan num pada tabel_input
INSERT INTO input_table (id, num) VALUES
('1','1'),
('2','2'),
('3','2'),
('4','2'),
('5','2'),
('6','1'),
('7','1'),
('8','1'),
('9','1');

-- membuat kueri SQL untuk menemukan semua angka yang muncul setidaknya 3 kali berturut-turut.

WITH Sequences AS (
  SELECT
    num,
    id,
    ROW_NUMBER() OVER (ORDER BY id) - ROW_NUMBER() OVER (PARTITION BY num ORDER BY id) AS grp
  FROM
    input_table
)

SELECT DISTINCT num
FROM Sequences
GROUP BY num, grp
HAVING COUNT(*) >= 3
ORDER BY num;


