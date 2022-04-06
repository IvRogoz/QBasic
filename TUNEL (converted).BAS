SCREEN 12
a = 2
10
CIRCLE (280, 240), 20 + a
a = a + 3
CIRCLE (280, 240), 50 + a
a = a + 3
CIRCLE (280, 240), 85 + a
a = a + 3
CIRCLE (280, 240), 125 + a
a = a + 3
CIRCLE (280, 240), 172 + a
REM
a = a - 12
CIRCLE (280, 240), 20 + a, 0
a = a + 3
CIRCLE (280, 240), 50 + a, 0
a = a + 3
CIRCLE (280, 240), 85 + a, 0
a = a + 3
CIRCLE (280, 240), 125 + a, 0
a = a + 3
CIRCLE (280, 240), 172 + a, 0
REM  FOR b = 1 TO 200000
REM NEXT b
IF a > 25 THEN GOTO 20
GOTO 10
20 a = a - 23
GOTO 10