SCREEN 12
a = 1: b = 1: d = 1: f = 1
x = 30
y = 50
c = 0
10
br = br + 1 * a
d = d + 1
c = c + .2 * f + .01
CIRCLE (x, y), 1 + c, 1
CIRCLE (x, y), 2 + c, 2
CIRCLE (x, y), 3 + c, 3
CIRCLE (x, y), 4 + c, 4
REM CIRCLE (x, y), 5 + c, 5
REM CIRCLE (x, y), 6 + c, 6
REM CIRCLE (x, y), 7 + c, 7
CIRCLE (x, y), 8 + c, 8
x = x + 1.1 * a
y = y + 1.35 * b
IF x > 620 OR x < 20 THEN a = -a
IF y > 440 OR y < 30 THEN b = -b
IF br > 9980 THEN END
IF d > 50 THEN f = -f
IF d > 50 THEN d = 1
GOTO 10