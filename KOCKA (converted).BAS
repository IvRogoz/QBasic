Screen 12
a% = 300
c = .05
koef = 1
10
c = c + .00005
a% = a% + 1 * koef
If a% > 500 Or a% < 100 Then koef = -koef
kut = kut + c * koef
If kut > 6.28 Then kut = 0
x% = Cos(kut) * 80 + a%
y% = Sin(kut) * 20 + 250
x1% = Cos(kut + 1.57) * 80 + a%
y1% = Sin(kut + 1.57) * 20 + 250
x2% = Cos(kut + 3.14) * 80 + a%
y2% = Sin(kut + 3.14) * 20 + 250
x3% = Cos(kut + 4.71) * 80 + a%
y3% = Sin(kut + 4.71) * 20 + 250
b% = 15
If y% < 250 And y1% < 250 Then b% = 8
If (y% < 250 And y1% > 250) Or (y% > 250 And y1% < 250) Then b% = 7
Line (x%, y%)-(x1%, y1%), b%
Line (x%, y% - 100)-(x1%, y1% - 100), b%
Line (x%, y%)-(x%, y% - 100), b%
b% = 15
If y1% < 250 And y2% < 250 Then b% = 8
If (y1% < 250 And y2% > 250) Or (y1% > 250 And y2% < 250) Then b% = 7
Line (x1%, y1%)-(x2%, y2%), b%
Line (x1%, y1% - 100)-(x2%, y2% - 100), b%
Line (x1%, y1%)-(x1%, y1% - 100), b%
b% = 15
If y2% < 250 And y3% < 250 Then b% = 8
If (y2% < 250 And y3% > 250) Or (y2% > 250 And y3% < 250) Then b% = 7
Line (x2%, y2%)-(x3%, y3%), b%
Line (x2%, y2% - 100)-(x3%, y3% - 100), b%
Line (x2%, y2%)-(x2%, y2% - 100), b%
b% = 15
If y3% < 250 And y% < 250 Then b% = 8
If (y3% < 250 And y% > 250) Or (y3% > 250 And y% < 250) Then b% = 7
Line (x3%, y3%)-(x%, y%), b%
Line (x3%, y3% - 100)-(x%, y% - 100), b%
Line (x3%, y3%)-(x3%, y3% - 100), b%
b% = 15
For br = 1 To 1000
Next br
Line (x%, y%)-(x1%, y1%), 0
Line (x1%, y1%)-(x2%, y2%), 0
Line (x2%, y2%)-(x3%, y3%), 0
Line (x3%, y3%)-(x%, y%), 0
Line (x%, y%)-(x%, y% - 100), 0
Line (x1%, y1%)-(x1%, y1% - 100), 0
Line (x2%, y2%)-(x2%, y2% - 100), 0
Line (x3%, y3%)-(x3%, y3% - 100), 0
Line (x%, y% - 100)-(x1%, y1% - 100), 0
Line (x1%, y1% - 100)-(x2%, y2% - 100), 0
Line (x2%, y2% - 100)-(x3%, y3% - 100), 0
Line (x3%, y3% - 100)-(x%, y% - 100), 0
GoTo 10
