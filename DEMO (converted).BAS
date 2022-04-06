SCREEN 7
REM COLOR 12, 8
a = 1: b = 1: c = 1: d = 1
x = 100
y = 110
x1 = 110
y1 = 110
10
CIRCLE (x, y), 30, 1
CIRCLE (x, y), 31, 1
CIRCLE (x, y), 80, 2
CIRCLE (x, y), 81, 2
CIRCLE (x, y), 110, 4
CIRCLE (x, y), 111, 4
REM FOR i = 1 TO 10
REM NEXT i
CIRCLE (x, y), 30, 0
CIRCLE (x, y), 31, 0
CIRCLE (x, y), 80, 0
CIRCLE (x, y), 81, 0
CIRCLE (x, y), 110, 0
CIRCLE (x, y), 111, 0
CIRCLE (x1, y1), 30, 12
CIRCLE (x1, y1), 80, 10
CIRCLE (x1, y1), 110, 9
CIRCLE (x1, y1), 31, 12
CIRCLE (x1, y1), 81, 10
CIRCLE (x1, y1), 111, 9
REM FOR i = 1 TO 10
REM NEXT i
CIRCLE (x1, y1), 30, 0
CIRCLE (x1, y1), 80, 0
CIRCLE (x1, y1), 110, 0
CIRCLE (x1, y1), 31, 0
CIRCLE (x1, y1), 81, 0
CIRCLE (x1, y1), 111, 0
x = x + 4 * a
y = y - 4 * b
x1 = x1 - 2 * c
y1 = y1 - 3 * d
IF x > 300 OR x < 50 THEN a = -a
IF y > 120 OR y < 50 THEN b = -b
IF x1 > 300 OR x1 < 50 THEN c = -c
IF y1 > 120 OR y1 < 50 THEN d = -d
GOTO 10