DEFINT A-Z
SCREEN 12
x(1) = 41
y(1) = 30
x(2) = 600
y(2) = 30
x(3) = 600
y(3) = 320
x(4) = 400
y(4) = 430
x(5) = 41
y(5) = 410
x(6) = 320
y(6) = 240
FOR br = 1 TO 6
a(br) = 1
b(br) = -1
NEXT br
10
FOR br = 1 TO 6
x(br) = x(br) + 1 * a(br) + y(br) * a(br) / 40
y(br) = y(br) + 1 * b(br) + x(br) * b(br) / 40
IF x(br) > 600 OR x(br) < 40 THEN a(br) = -a(br)
IF y(br) > 460 OR y(br) < 20 THEN b(br) = -b(br)
NEXT br
LINE (x(1), y(1))-(x(2), y(2)), 10
LINE (x(2), y(2))-(x(3), y(3)), 10
LINE (x(3), y(3))-(x(4), y(4)), 10
LINE (x(4), y(4))-(x(5), y(5)), 10
LINE (x(5), y(5))-(x(6), y(6)), 10
LINE (x(6), y(6))-(x(1), y(1)), 10
FOR br = 1 TO 8000
NEXT br
LINE (x(1), y(1))-(x(2), y(2)), 0
LINE (x(2), y(2))-(x(3), y(3)), 0
LINE (x(3), y(3))-(x(4), y(4)), 0
LINE (x(4), y(4))-(x(5), y(5)), 0
LINE (x(5), y(5))-(x(6), y(6)), 0
LINE (x(6), y(6))-(x(1), y(1)), 0
GOTO 10