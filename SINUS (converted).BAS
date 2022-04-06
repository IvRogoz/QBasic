SCREEN 12
PI = 3.141592654#
c = 200
FOR Alfa = 1 TO 360 STEP 1
y = c * (SIN(Alfa * (PI / 180)))
x = c * (COS(Alfa * (PI / 180)))
CIRCLE (320, 240), 2
LINE (320, 240)-(320 + x, 240 - y)
FOR br = 1 TO 1000
NEXT br
REM LINE (320, 240)-(320 + x, 240 - y), 0
NEXT Alfa

