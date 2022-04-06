SCREEN 12
DIM h(1000), u(1000)
CIRCLE (30, 30), 30, 7
PAINT (3, 30), 7
GET (1, 1)-(60, 60), h
CLS
GET (1, 1)-(60, 60), u
CLS
s = 1
d = 1
x = 50
y = 50

s1 = -1
d1 = -1
x1 = 250
y1 = 240

LINE (10, 10)-(630, 470), 1, B
PAINT (1, 1), 1

DO
x = x + s
y = y + d

PUT (x, y), h
IF x > 565 THEN s = -1
IF y > 405 THEN d = -1
IF x < 25 THEN s = 1
IF y < 25 THEN d = 1

x1 = x1 + s1
y1 = y1 + d1

PUT (x1, y1), h
IF x1 > 565 THEN s1 = -1
IF y1 > 405 THEN d1 = -1
IF x1 < 25 THEN s1 = 1
IF y1 < 25 THEN d1 = 1

IF (x1 >= x AND x1 <= x + 60 AND y1 >= y AND y1 <= y + 60) OR (x <= x1 AND x >= x1 + 60 AND y <= y1 AND y >= y1 + 60) THEN

 IF s = 1 THEN d = -1
 IF s = -1 THEN d = 1
 IF d = 1 THEN s = -1
 IF d = -1 THEN s = 1

 IF s1 = 1 THEN d1 = -1
 IF s1 = -1 THEN d1 = 1
 IF d1 = 1 THEN s1 = -1
 IF d1 = -1 THEN s1 = 1


END IF
PUT (x1, y1), u, XOR
PUT (x, y), u, XOR
LOOP UNTIL INKEY$ = CHR$(27)

