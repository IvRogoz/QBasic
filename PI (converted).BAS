SCREEN 12
boja = 1
boja1 = 5
VIEW (200, 100)-(400, 300)
CIRCLE (100, 100), 100, boja
PRINT
PRINT "          P R O G R A M  Z A  I Z R A C U N A V A NJ E  B R O J A  PI"
a = 0
b = 0
c = 101
p = 0
10
LOCATE 21
IF c > 10 THEN
 PRINT TAB(26); "Broj hitaca : "; a
 PRINT
 PRINT TAB(26); "Broj pogodaka : "; b
 PRINT
 c = 0
END IF
IF e > 50 THEN
 LOCATE 25
 PRINT TAB(26); "PI :"; p
 e = 0
END IF
IF d > 1000 THEN
 boja = boja + 1
 boja1 = boja1 + .1
 IF boja1 >= 15 THEN boja1 = 1
 IF boja = 2 THEN boja = boja + 2
 IF boja = 15 THEN boja = 1
 CIRCLE (100, 100), 100, boja
 CIRCLE (100, 100), 99, boja
 d = 0
END IF
IF f = 10000 THEN
 SOUND 2000, 1
 SOUND 30000, 1
 SOUND 2000, 1
 f = 0
END IF
RANDOMIZE TIMER
x = (RND * 199.456) + .456
y = (RND * 199.456) + .456
PSET (x, y), boja1
a = a + 1
c = c + 1
d = d + 1
e = e + 1
f = f + 1
IF x * x + y * y < 40000& THEN b = b + 1
p = 4 * b / a
GOTO 10