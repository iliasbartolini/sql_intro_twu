
CREATE TABLE PARTICIPANTS (
name VARCHAR( 100 ) primary key,
term VARCHAR( 100 )
);

INSERT INTO PARTICIPANTS (name, term) VALUES ('Agalya L', 'twu 27');

INSERT INTO PARTICIPANTS (name, term) VALUES ('April', 'twu 27');

INSERT INTO PARTICIPANTS (name, term) VALUES ('Ashok', 'twu 27');

INSERT INTO PARTICIPANTS (name, term) VALUES ('Roy', 'twu 28');

INSERT INTO PARTICIPANTS (name, term) VALUES ('Trevor', 'twu 28');

SELECT * FROM PARTICIPANTS;

--projection
SELECT name FROM PARTICIPANTS;

--ORDER BY
SELECT * FROM PARTICIPANTS
ORDER BY name;

SELECT * FROM PARTICIPANTS
ORDER BY name DESC;

--WHERE
SELECT * FROM PARTICIPANTS WHERE term = 'twu 27';

--count(), min(), max()
SELECT count(*) FROM PARTICIPANTS WHERE term = 'twu 27';
SELECT max(term) FROM PARTICIPANTS;
SELECT min(name) FROM PARTICIPANTS WHERE term = 'twu 27';

--JOIN
SELECT * FROM 
PARTICIPANTS p, TERMS t
WHERE p.term = t.name
AND t.start > '2012-07-15';

--GROUP BY 
SELECT count(*) FROM 
PARTICIPANTS p, TERMS t
WHERE p.term = t.name
AND t.name = 'twu 27'
GROUP BY t.end;

