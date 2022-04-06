SCREEN 12
DIM kut(100)
DIM boja(100)
DIM c(100)
DIM xrel(100), yrel(100), x(100), y(100)
sl = 0
10
x = 320
y = 400

CLS
RANDOMIZE TIMER
sl = INT(RND * 2) + 1
pauza = INT(RND * 100000) + 100: REM  500000
FOR br = 1 TO pauza
NEXT br
kut1 = RND * 1 + 1
c = RND * 4 + 6
xrel = COS(kut1) * c
yrel = SIN(kut1) * c
FOR b = 1 TO 50
x = x - xrel
y = y - yrel
xrel = xrel - xrel / 1000
yrel = yrel - .15
PSET (x, y)
FOR br = 1 TO 1000
NEXT br
PSET (x, y), 0
NEXT b
broj = INT(RND * 30) + 20

FOR br = 1 TO broj
kut(br) = RND * 6.25
c(br) = RND * broj / 5 + 1
boja(br) = INT(RND * 14) + 1
xrel(br) = COS(kut(br)) * c(br)
yrel(br) = SIN(kut(br)) * c(br)
x(br) = x
y(br) = y
NEXT br
FOR br1 = 1 TO 25
FOR br = 1 TO broj
x(br) = x(br) - xrel(br)
y(br) = y(br) - yrel(br)
xrel(br) = xrel(br) - xrel(br) / 1000
yrel(br) = yrel(br) - .35
IF sl = 2 THEN PSET (x(br), y(br)), boja(br)
IF sl = 1 THEN LINE (x(br), y(br))-(x(br) + 2, y(br) + 3), boja(br), BF
NEXT br
IF sl = 1 THEN
 FOR br = 1 TO broj
 LINE (x(br), y(br))-(x(br) + 3, y(br) + 3), 0, BF
 NEXT br
END IF
NEXT br1
GOTO 10
