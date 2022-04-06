SCREEN 12
x% = 1
y% = 1
ax% = 1
ay% = 1
DO

IF x% > 640 THEN ax% = -1
IF x% < 0 THEN ax% = 1
IF y% > 480 THEN ay% = -1
IF y% < 0 THEN
ay% = 2
COLOR RND(1) * 15
END IF
x% = x% + ax%
y% = y% + ay%
CIRCLE (x%, y%), 1
LOOP

