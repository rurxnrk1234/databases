https://school.programmers.co.kr/learn/courses/30/lessons/59034
-- select 이해
select * from ANIMAL_INS;

최댓값 구하기
https://school.programmers.co.kr/learn/courses/30/lessons/59415
SELECT MAX(DATETIME) from ANIMAL_INS;

이름이 없는 동물의 아이디
https://school.programmers.co.kr/learn/courses/30/lessons/59039
SELECT ANIMAL_ID FROM ANIMAL_INS
WHERE NAME IS NULL;

역순 정렬하기
https://school.programmers.co.kr/learn/courses/30/lessons/59035
SELECT NAME, DATETIME 
from animal_ins
order by animal_id desc;

이름이 있는 동물의 아이디
https://school.programmers.co.kr/learn/courses/30/lessons/59407
SELECT ANIMAL_ID FROM ANIMAL_INS
WHERE NAME IS NOT NULL;

아픈 동물 찾기
https://school.programmers.co.kr/learn/courses/30/lessons/59036
SELECT ANIMAL_ID, NAME 
FROM ANIMAL_INS
WHERE INTAKE_CONDITION = 'Sick'

어린 동물 찾기
https://school.programmers.co.kr/learn/courses/30/lessons/59037
SELECT ANIMAL_ID, NAME FROM ANIMAL_INS
WHERE INTAKE_CONDITION != 'Aged'

동물의 아이디와 이름
https://school.programmers.co.kr/learn/courses/30/lessons/59403
SELECT ANIMAL_ID,NAME FROM ANIMAL_INS;

여러 기준으로 정렬하기
https://school.programmers.co.kr/learn/courses/30/lessons/59404
SELECT ANIMAL_ID,NAME,DATETIME FROM ANIMAL_INS
ORDER BY NAME, DATETIME DESC;

상위 n개 레코드
https://school.programmers.co.kr/learn/courses/30/lessons/59405
SELECT NAME 
FROM ANIMAL_INS 
WHERE DATETIME IN ( SELECT MIN (DATETIME) FROM ANIMAL_INS);
-- SELECT NAME
-- FROM ANIMAL_INS
-- ORDER BY DATETIME
-- LIMIT 1