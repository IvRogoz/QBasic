SCREEN 12
DIM x%(500), y%(500), xrel(500), yrel(500), kut(500), c%(500)
FOR br% = 1 TO 500
 x%(br%) = INT(RND * 540) + 50
 y%(br%) = INT(RND * 440) + 20
 xr% = x%(br%) - 320
 yr% = 240 - y%(br%)
 c%(br%) = INT(RND * 9) + 3
 IF xr% <> 0 AND yr% <> 0 THEN kut(br%) = ATN(yr% / xr%)
 IF xr% = 0 AND yr% < 0 THEN kut(br%) = kut(br%) + 4.712
 IF xr% = 0 AND yr% > 0 THEN kut(br%) = kut(br%) + 1.571
 IF xr% < 0 THEN kut(br%) = kut(br%) + 3.141
 IF kut(br%) < 0 THEN kut(br%) = kut(br%) + 6.283
 IF kut(br%) > 6.283 THEN kut(br%) = kut(br%) - 6.283
 xrel(br%) = COS(kut(br%)) * c%(br%)
 yrel(br%) = SIN(kut(br%)) * c%(br%)
NEXT br%
10
FOR br% = 1 TO 500
x%(br%) = x%(br%) + xrel(br%)
y%(br%) = y%(br%) - yrel(br%)
xrel(br%) = xrel(br%) + xrel(br%) / 100
yrel(br%) = yrel(br%) + yrel(br%) / 100
yrel(br%) = yrel(br%) - 1
IF x%(br%) > 640 OR x%(br%) < 0 OR y%(br%) > 480 OR y%(br%) < 0 THEN
 x%(br%) = INT(RND * 340) + 150
 y%(br%) = INT(RND * 240) + 120
 xr% = x%(br%) - 320
 yr% = 240 - y%(br%)
 c%(br%) = INT(RND * 9) + 3
 IF xr% <> 0 AND yr% <> 0 THEN kut(br%) = ATN(yr% / xr%)
 IF xr% = 0 AND yr% < 0 THEN kut(br%) = kut(br%) + 4.712
 IF xr% = 0 AND yr% > 0 THEN kut(br%) = kut(br%) + 1.571
 IF xr% < 0 THEN kut(br%) = kut(br%) + 3.141
 IF kut(br%) < 0 THEN kut(br%) = kut(br%) + 6.283
 IF kut(br%) > 6.283 THEN kut(br%) = kut(br%) - 6.283
 xrel(br%) = COS(kut(br%)) * c%(br%)
 yrel(br%) = SIN(kut(br%)) * c%(br%)
END IF
PSET (x%(br%), y%(br%))
NEXT br%
FOR br1 = 1 TO 1500
NEXT br1
FOR br% = 1 TO 500
PSET (x%(br%), y%(br%)), 0
NEXT br%
GOTO 10