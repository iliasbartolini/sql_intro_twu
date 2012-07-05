
DROP TABLE TERMS;

CREATE TABLE TERMS (
name VARCHAR( 100 ) primary key,
start DATE ,
end DATE
);

INSERT INTO TERMS (name, start, end) VALUES ('twu 27', '2012-07-01', '2012-07-24');
INSERT INTO TERMS (name, start, end) VALUES ('twu 28', '2012-08-01', '2012-08-24');

--this fails
INSERT INTO TERMS (name, start, end) VALUES ('twu 27', '2012-07-01', '2012-07-24');

