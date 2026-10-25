USE hocdatabase;

ALTER TABLE students
ADD COLUMN score DECIMAL(4,2);
DESCRIBE students;
UPDATE students SET score = 8.5 WHERE MaSinhVien = 1;
UPDATE students SET score = 7.5 WHERE MaSinhVien = 2;
UPDATE students SET score = 6.5 WHERE MaSinhVien = 4;
UPDATE students SET score = 8.0 WHERE MaSinhVien = 5;

SELECT * FROM students;

-- Hien thi ma sinh vien, ho ten
SELECT MaSinhVien, UPPER(HoTen) AS HoTen
FROM students;

-- Hien thi ho ten va tuoi
SELECT HoTen, YEAR(CURDATE()) - YEAR(NgaySinh) AS Tuoi
FROM students;

-- Hien thi diem trung binh
SELECT ROUND(score, 1) AS DiemTrungBinh
FROM students;

-- Hien thi tong so sinh vien, diem cao nhat va thap nhat
SELECT 
COUNT(*) AS TongSoSinhVien,
MAX(score) AS DiemCaoNhat,
MIN(score) AS DienThapNhat
FROM students;