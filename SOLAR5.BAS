 DEFINT A-Z
DECLARE SUB komande ()
DECLARE SUB pojmovi ()
DECLARE SUB merkur ()
 DECLARE SUB solarus2 ()
 DECLARE SUB venera ()
 DECLARE SUB zemlja ()
  DECLARE SUB mars ()
  DECLARE SUB asteroi ()
  DECLARE SUB jupiter3 ()
  DECLARE SUB saturn3 ()
  DECLARE SUB uran ()
  DECLARE SUB neptun ()
  DECLARE SUB pluton ()
  DECLARE SUB opis ()
  DECLARE SUB tablice ()
  DECLARE SUB galx ()
  DECLARE SUB nemezis ()
  DECLARE SUB galxi ()
  DECLARE SUB crnarupa ()
  DECLARE SUB superno ()
  DECLARE SUB komande ()
  DECLARE SUB civilizacija ()
  DECLARE SUB kraj ()
SCREEN 12
'UKLJU¨IVANJE CAPS LOCK
    DEF SEG = 0
    KeyFlags = PEEK(1047)
    POKE 1047, &H0
    Status% = PEEK(&H417)
    POKE &H417, (Status% XOR &H40)
    DEF SEG

 CLS
 CIRCLE (400, 150), 10, 14, , , 1.1
 PAINT (400, 150), 14
'elip merkura
   CIRCLE (400, 150), 25, 1, , , 10 / 20
   CIRCLE (425, 150), 1, 4
'elip venere
   CIRCLE (400, 150), 35, 1, , , 10 / 20
   CIRCLE (400, 168), 1, 10
'elip zemlje
   CIRCLE (400, 150), 45, 1, , , 10 / 20
   CIRCLE (420, 170), 1, 2
'elip marsa
   CIRCLE (400, 150), 60, 1, , , 10 / 20
   CIRCLE (410, 180), 1, 4
'asteroidi
   CIRCLE (400, 150), 70, 6, , , 10 / 20
'elip jupitera
    CIRCLE (400, 150), 85, 1, , , 10 / 20
    CIRCLE (390, 192), 4, 8
    PAINT (390, 192), 8
'elip  saturna
    CIRCLE (400, 150), 105, 1, , , 10 / 20
    CIRCLE (410, 202), 3, 14
    PAINT (410, 202), 14
'elip urana
    CIRCLE (400, 150), 120, 1, , , 10 / 20
    CIRCLE (400, 90), 2, 11
    PAINT (400, 90), 11
'elip neptuna
    CIRCLE (400, 150), 130, 1, , , 10 / 20
    CIRCLE (430, 87), 2, 11
    PAINT (430, 87), 11
'elip pluta
    CIRCLE (405, 150), 133, 1, , , 10 / 18
    CIRCLE (329, 90), 1, 11
'komet
' CIRCLE (580, 150), 200, 7, , , 20 / 180
'naslov
    LOCATE 5, 5
    COLOR 4
    PRINT "  HACKBUSTERS inc. "; ""
    PRINT
    PRINT "        pretstavlja"
    PRINT
    PRINT "       SOLARUS  v.5 upg."
    FOR t = 1 TO 30
    A = 110: b = 250
    C = 110 + 90 * COS(3.14 * t / 5)
    D = 250 + 90 * SIN(3.14 * t / 20)
    LINE (A, b)-(C, D)
    NEXT t
    LOCATE 23, 9
    PRINT "PROGRAMIRAO"
    PRINT
    PRINT "        IVAN ROGOZ"
    DO
'    MUSIC$ = "MBO4L10AEAEAEAEAEAEAEDCCDCECECECEGGA"
'    PLAY MUSIC$

    LOOP WHILE INKEY$ = ""
    SOUND 500, 1
    solarus2

DEFSNG A-Z
SUB asteroi
  CLS
   COLOR 4
     CLS : CLS 1: CLS 0: CLS 2
    ' PAINT (310, 240), 0, 20
      PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT : PRINT
     PRINT TAB(36); ">ASTEROIDNI POJAS<"
     PRINT TAB(37); "  PLANETOIDI"
     PRINT "Asteroidni pojas se nalazi izme|u MARSA i JUPITERA."
     PRINT "Za njega se vjeruje da je nastao od planeta koji je iz nepoznatog razloga       ekspladirao."
     PRINT "Asteroidi su nepravilnih likova i vrlo opasni ako izi–u is svoje orbite."
     PRINT "NajveÜi asteroid je Ceres i promjer mu je 1 000 km"
     FOR t = 0 TO 1000
     CIRCLE (RND * 620, RND * 200), 1, 8
     NEXT t
     LOCATE 25, 1: PRINT "PRITISNI ENTER ZA POVRATAK"
     DO: LOOP WHILE INKEY$ = ""
    SOUND 500, 1
    solarus2

END SUB

SUB civilizacija
200  COLOR 4
CLS : CLS 1: CLS 2: CLS 0
PRINT "            >TIP I OPIS NAÊE CIVILIZACIJE<"

PRINT " TIP CIVILIZACIJE: 1.O J."
PRINT " DRUÊTVENI KOD: 4G4,"; CHR$(175); "¨ovjeüanstvo"; CHR$(174)
PRINT " ZVIJEZDA: G2V, r=9.844 kpc, 0=OO"; CHR$(248); "O5'24"; CHR$(126); ", O=206"; CHR$(248); " 28' 49"; CHR$(126)
LINE (343, 45)-(328, 78)
PRINT " PLANET: treÜi, a=1.5x1O*13 (1O + 13 nula) cm, M=1O*27 g,"
PRINT "                R=6.4x1O*8 cm, p=8.6x1O*4 s, P=3.2x1O*7 s"
PRINT " IZVANPLANETARNE KOLONIJE: nema"
PRINT " STAROST PLANETA: 4 590 374 O17 god."
PRINT " PRVI USPOSTAVLJEN KONTAKT: prije 38.3O god."
PRINT " DOBIVANJE PRVOG GALAKTI¨KOG KODA: zahtjevi u toku"
PRINT " BIOLOGIJA: C,N,O,S,H2,PO4"
PRINT "            Deoksiribonukleinske kiseline"
PRINT "            Bez genetskih proteza"
PRINT "            Mobilni heterotropi,simbioti s fotosintetskim autotropima"
PRINT "            Borave na povrÁini, monospecifiüni,polikromatski disaüi O2"
PRINT "            Fe-üelatirani tetrapiroli u tekuÜoj krvi"
PRINT "            Seksualni sisavci"
PRINT "            m=7x1O*4 g,t=2x1O*9 s"
PRINT "            Genomi: 4x1O*9"
PRINT " TEHNOLOGIJA: eksponencijalna/fosilana goriva/nuklearna orußja/"
PRINT "              organizirano ratovanje/zaga–ivanje okoline"
PRINT " KULTURA: otprilike 2OO nacionalnih drßava,6 globalnih sila,"
PRINT "          kulturno i tehnoloÁko objedinjavanje u tjeku"
PRINT " PREPARTUM/POSTPARTUM: 0.21"; CHR$(91); "18"; CHR$(93)
PRINT " INVIDUALNOST/OPèE: 0.31"; CHR$(91); "17"; CHR$(93)
PRINT " UMJETNI¨KO/TEHNOLOÊKO: 0.14"; CHR$(91); "11"; CHR$(93)
PRINT " VJEROJATNOST OPSTANKA CIVILIZACIJE(na 100 godina): 40%"
DO: LOOP WHILE INKEY$ = ""
 solarus2
END SUB

SUB crnarupa
500 CLS : CLS 0: CLS 1: CLS 2
COLOR 4
PRINT "       >CRNA RUPA<"
PRINT
PRINT " (POGLEDAJ SUPERNOVU) ZVIJEZDA MASE DVADESET SUNACA STEZAT ¨E SE SVE DOK NE"
PRINT " POPRIMI VELI¨INU LOS ANGELESA SA OKOLICOM."
PRINT " Sila gravitacije raste do 100 000 000 000 g.Tada zvijezda sklizne"
PRINT " kroz rupu u vremenu i prostoru koju je sama napravila tj.zvijezda"
PRINT " je nestala iz naÁeg svemira i postaje CRNA RUPA "
PRINT " Gravitacija tada postaje tako ogromna da niÁta nemoße pobjeÜi"
PRINT " joj pa üak ni svijetlost,zato se i zove crna rupa jer "
PRINT " svijetlost koju emitira crna rupa odmah se vraüa natrag tako da nema "
PRINT " nikakve svijetlosti kako bismo uprli prstom u vedro nebo i rekli"
PRINT " 'EVO ONO JE CRNA RUPA'"
PRINT " Kada bismo uzeli materiju od koje je gra–ena crna rupa u malu ßlicu"
PRINT " ta ßlica teßila bi kao MONT EVEREST."


    LOCATE 27, 1: PRINT "Pritisni M za napred a N za natrag"
    WHILE INKEY$ <> "": WEND
    DO
    k$ = UCASE$(INKEY$)
    LOOP UNTIL k$ = "N" OR k$ = "M"
    IF k$ >= "N" THEN galx ELSE 600
600 galx
END SUB

SUB galx
  CLS 0

   LINE (30, 20)-(260, 180), 4, B
   LINE (590, 20)-(360, 180), 4, B
   LINE (30, 230)-(260, 385), 4, B
   LINE (590, 230)-(360, 385), 4, B
   CIRCLE (130, 65), 12, 6, , , 10 / 20
   CIRCLE (130, 65), 20, 1, , , 10 / 20
   CIRCLE (130, 65), 28, 1, , , 10 / 20
   CIRCLE (130, 65), 34, 1, , , 10 / 20
   CIRCLE (130, 65), 48, 1, , , 10 / 20
   CIRCLE (135, 65), 53, 1, , , 10 / 18
   CIRCLE (130, 65), 5, 14, , , 1.1
   PAINT (130, 65), 14
   CIRCLE (180, 160), 2, 12
   PAINT (180, 160), 12
   COLOR 4
   LOCATE 13, 14: PRINT "1-Nemezis"
    LINE (390, 140)-(560, 140), 4
    LINE (390, 140)-(390, 130), 4
    LINE (560, 140)-(560, 130), 4
    LINE (565, 125)-(565, 80)
    LINE (565, 125)-(560, 125)
    LINE (565, 80)-(560, 80)

    LOCATE 10, 57: PRINT "100 000 "
    LOCATE 13, 57: PRINT "2-Galaksija"
    CIRCLE (195, 305), 36, 8
    CIRCLE (80, 305), 30, 14, , , 100 / 180
    PAINT (100, 305), 14
    LINE (80, 288)-(160, 305), 14
    LINE (80, 322)-(160, 305), 14
    PAINT (120, 305), 14
    LOCATE 26, 14: PRINT "3-Crna Rupa"
    COLOR 4
    FOR t = 0 TO 80
    IF t = 30 THEN COLOR 1
  IF t = 50 THEN COLOR 14
    x = 480 + t * COS(t / 2)
    y = 305 + t * SIN(t / 2)
    LINE (480, 305)-(x, y)
    NEXT t
    COLOR 4
    LOCATE 26, 57: PRINT "4-Supernova"
    LOCATE 28, 1: PRINT "PRITISNI Q ZA POVRATAK"
    DO
    k$ = INKEY$
    SELECT CASE k$
    CASE "1": nemezis
    CASE "2": galxi
    CASE "3": crnarupa
    CASE "4": superno
    CASE "Q": solarus2
    END SELECT
    LOOP
   

END SUB

SUB galxi
140  CLS : CLS 0: CLS 1: CLS 2
  CLS 0
  CLS 1
  CLS 2
  COLOR 4
   PRINT "        >GALAKSIJA<"
   PRINT " OSNOVNI OBJEKTI OD KOJEG JE GRA—EN SVEMIR SU GALAKSIJE.GALAKSIJE SU SASTAVLJENE OD ZVIJEZDA.U JEDNOJ GALAKSIJI MO¶E BITI I VIÊE OD STOTINU MILIJARDI ZVIJEZDA."
   PRINT " VELI¨INA TIPI¨NE GALAKSIJE KREèE SE OD 10 000 DO 100 000 SVJETLOSNIH GODINA."
   PRINT " GALAKSIJE MOGU BITI RAZNIH OBLIKA.NAJ¨EÊ¨E SU SPIRALNE ALI IMA I KUGLASTIH,     NEPRAVILNIH itd."
   PRINT " GALAKSIJE SE UDALJAVAJU JEDNA OD DRUGE STRAHOVITOM BRZINOM.ÊTO JE POSLJEDICA    tz.'VELIKOG PRASKA'. O VELIKOM PRASKU POSTOJE SAMO TEORIJE JER O TOME NE        POSTOJE PISMENI ZAPISI TADA JOÊ NIJE NI BILO SVEMIRA A KAMOLI JOÊ I NAS  "
   PRINT " JEDNA OD TEORIJA OPISUJE VELIKI PRASAK KOJI POTJE¨E OD TAKO GUSTE I VRUèE       MATERIJE DA TO TEÊKO MO¶EMO PREDO¨ITI.TA SE MASA RAZLETJELA I VIDLJIVI JE       SVEMIR OSTATAK EKSPLOZIJE(VIDLJIVI JE SVEMIR JE PROSTOR KOJI MI VIDIMO SA       TELESKOPOM VID.SVEMIR JE KRUG OD PRILIKE 15 MILIJARDI SVJETLOSNIH GODINA."
   PRINT " NAMA NAJBLI¶A GALAKSIJA JE ANDROMEDA(UDALJENA 2 MILIJUNA SVJETLOSNIH GODINA)"
   PRINT : PRINT " NAÊA GALAKTIKA DUGA¨KA JE 100 000 SVJETLOSNIH A DEBELA JE 15 000 SVJETLOSNIH    GODINA"
    LOCATE 28, 1: PRINT "Pritisni M za napred a N za natrag"
    WHILE INKEY$ <> "": WEND
    DO
    k$ = UCASE$(INKEY$)
    LOOP UNTIL k$ = "N" OR k$ = "M"
    IF k$ = "N" THEN galx ELSE 150

150 SOUND 500, 1
    CLS : CLS 0: CLS 1: CLS 2
    COLOR 14
    DO
    t = t + 5
    x = 310 + t * SIN(t / 60) / 40
    y = 240 + t * COS(t / 2) / 40
    IF t >= 3000 THEN t = t + 10: COLOR 7
    PSET (x, y)
    LOOP UNTIL t >= 15000
    CIRCLE (310, 240), 80, 14: COLOR 4: LINE (360, 178)-(450, 90), 14: LINE (450, 90)-(400, 110), 14: LINE (450, 90)-(445, 120), 14: LOCATE 5, 2: PRINT " SREDIÊTE NAÊE GALAKSIJE.PRETPOSTAVLJA SE DA JE U SREDIÊTU 'CRNA RUPA'"
    CIRCLE (73, 245), 10, 14
    LINE (80, 251)-(100, 276), 14: LINE (100, 276)-(90, 255), 14: LINE (100, 276)-(75, 263), 14: LOCATE 19, 10: PRINT "NAÊE SUNCE"
    LINE (310, 240)-(310, 200), 4
    LINE (73, 240)-(73, 200), 4
    LINE (73, 200)-(310, 200), 4
    LOCATE 13, 11: PRINT "30 000 SVJETLOSNIH GODINA"
    DO: LOOP WHILE INKEY$ = ""
   

160 SOUND 500, 1
    galx

END SUB

SUB jupiter3
    CLS
'merkur
    CIRCLE (310, 220), 35, 1, , , 10 / 20
    CIRCLE (345, 220), 1, 4
'venera
    CIRCLE (310, 220), 45, 1, , , 10 / 20
    CIRCLE (310, 243), 2, 11
    PAINT (310, 243), 11
'zemlja
    CIRCLE (310, 220), 57, 1, , , 10 / 20
    CIRCLE (300, 248), 2, 11
    PAINT (300, 248), 11
'mars
    CIRCLE (310, 220), 70, 1, , , 10 / 20
    CIRCLE (310, 185), 2, 4
    PAINT (310, 185), 4
'sunce
    CIRCLE (310, 220), 16, 14
    PAINT (310, 220), 14
'planetoidi
    CIRCLE (310, 220), 80, 6, , , 10 / 20
'jupiter
    CIRCLE (310, 220), 95, 4, , , 10 / 20
    CIRCLE (403, 230), 5, 14
    PAINT (403, 230), 14
    CIRCLE (403, 232), 2, 4, , , 10 / 20
    PAINT (403, 232), 4
'saturn
    CIRCLE (310, 220), 115, 1, , , 10 / 20
    CIRCLE (365, 270), 4, 14
    PAINT (365, 270), 14
    CIRCLE (365, 270), 10, 8, , , 30 / 180
'uran
  CIRCLE (310, 220), 135, 1, , , 10 / 20
    CIRCLE (177, 210), 3, 10
    PAINT (177, 210), 10
'neptun
    CIRCLE (310, 220), 153, 1, , , 10 / 20
    CIRCLE (157, 220), 1, 11
'pluto
    CIRCLE (323, 220), 163, 1, , , 10 / 18
    CIRCLE (450, 163), 1, 11
    COLOR 4
    PRINT TAB(15); ">JUPITER<"
    PRINT : PRINT "Ek. promjer                 : 142 800 km."
    PRINT "Srednja gusto}a             : 1,3 g/cm3"
    PRINT "Srednja udaljenost od sunca : 778,3 Mil. km."
    PRINT "Vrjeme obilaska oko sunca   : 11,86 god."
    PRINT "Masa(MASA ZEMLJE = 1)       : 317,9"
    PRINT "Broj satelita               : 16"
    LOCATE 22, 1
    PRINT "Imena poznatijih satelita   : IO-EVROPA-GANIMED-KALISTO"
     LOCATE 25, 1: PRINT "PRITISNI ENTER ZA POVRATAK"
    DO: LOOP WHILE INKEY$ = ""
    SOUND 500, 1
    solarus2


END SUB

SUB komande
CLS : CLS 0: CLS 1: CLS 2
COLOR 4
PRINT "               >SOLARUS v.5<"
PRINT
PRINT
PRINT " DJELOVI SOLARUSA SU:"
PRINT " SLIKA SUN¨EVOG SISTEMA I ODABIR TEMA:"
PRINT "                 -MERKUR"
PRINT "                 -VENERA"
PRINT "                 -ZEMLJA"
PRINT "                 -MARS"
PRINT "                 -ASTEROIDNO PODRU¨JE"
PRINT "                 -JUPITER"
PRINT "                 -SATURN"
PRINT "                 -URAN"
PRINT "                 -NEPTUN"
PRINT "                 -PLUTON"
PRINT "                 -BOLJI TEKSTOVNI OPIS PLANETA UZ SLIKE"
PRINT "                 -POJMOVI"
PRINT "                 -TABLICE"
PRINT "                 -NAÊ TIP CIVILIZACIJE(STRU¨NO)"
PRINT "                 -NAJZANIMLJIVIJE TEME O GALAKSIJI:"
PRINT "                                        -NEMEZIS"
PRINT "                                        -GALAKSIJA"
PRINT "                                        -CRNA RUPA"
PRINT "                                        -SUPER NOVA"
PRINT : PRINT "PRITISNI ENTER ZA NATRAG"
DO: LOOP WHILE INKEY$ = ""
solarus2
END SUB

'
SUB kraj
    DEF SEG = 0
    Status% = PEEK(&H417)
    POKE &H417, (Status% XOR &H40)
    CLS : CLS 0: CLS 1: CLS 2: SYSTEM

END SUB

SUB mars
    CLS
'merkur
    CIRCLE (310, 220), 35, 1, , , 10 / 20
    CIRCLE (345, 220), 1, 4
'venera
    CIRCLE (310, 220), 45, 1, , , 10 / 20
    CIRCLE (310, 243), 2, 11
    PAINT (310, 243), 11
'zemlja
    CIRCLE (310, 220), 57, 1, , , 10 / 20
    CIRCLE (300, 248), 2, 11
    PAINT (300, 248), 11
'mars
    CIRCLE (310, 220), 70, 4, , , 10 / 20
    CIRCLE (310, 185), 2, 4
    PAINT (310, 185), 4
'sunce
    CIRCLE (310, 220), 16, 14
    PAINT (310, 220), 14
'planetoidi
    CIRCLE (310, 220), 80, 6, , , 10 / 20
'jupiter
    CIRCLE (310, 220), 95, 1, , , 10 / 20
    CIRCLE (403, 230), 5, 14
    PAINT (403, 230), 14
    CIRCLE (403, 232), 2, 4, , , 10 / 20
    PAINT (403, 232), 4
'saturn
    CIRCLE (310, 220), 115, 1, , , 10 / 20
    CIRCLE (365, 270), 4, 14
    PAINT (365, 270), 14
    CIRCLE (365, 270), 10, 8, , , 30 / 180
'uran
    CIRCLE (310, 220), 135, 1, , , 10 / 20
    CIRCLE (177, 210), 3, 10
    PAINT (177, 210), 10
'neptun
    CIRCLE (310, 220), 153, 1, , , 10 / 20
    CIRCLE (157, 220), 1, 11
'pluto
    CIRCLE (323, 220), 163, 1, , , 10 / 18
    CIRCLE (450, 163), 1, 11
    COLOR 4
    PRINT TAB(15); ">MARS<"
    PRINT : PRINT "Ek. promjer                 : 6 787 km."
    PRINT "Srednja gusto}a             : 3,9 g/cm3"
    PRINT "Srednja udaljenost od sunca : 227,9 Mil. km."
    PRINT "Vrjeme obilaska oko sunca   : 1,88 god."
    PRINT "Masa(MASA ZEMLJE = 1)       : 0,108"
    PRINT "Broj satelita               : 2"
    LOCATE 22, 1
    PRINT "Imena satelita              : DEIMOS-FOBOS"
     LOCATE 25, 1: PRINT "PRITISNI ENTER ZA POVRATAK"
    DO: LOOP WHILE INKEY$ = ""
    SOUND 500, 1
    solarus2

END SUB

SUB merkur
    CLS
'merkur
    CIRCLE (310, 220), 35, 4, , , 10 / 20
    CIRCLE (345, 220), 1, 4
'venera
    CIRCLE (310, 220), 45, 1, , , 10 / 20
    CIRCLE (310, 243), 2, 11
    PAINT (310, 243), 11
'zemlja
    CIRCLE (310, 220), 57, 1, , , 10 / 20
    CIRCLE (300, 248), 2, 11
    PAINT (300, 248), 11
'mars
    CIRCLE (310, 220), 70, 1, , , 10 / 20
    CIRCLE (310, 185), 2, 4
    PAINT (310, 185), 4
'sunce
    CIRCLE (310, 220), 16, 14
    PAINT (310, 220), 14
'planetoidi
    CIRCLE (310, 220), 80, 6, , , 10 / 20
'jupiter
    CIRCLE (310, 220), 95, 1, , , 10 / 20
    CIRCLE (403, 230), 5, 14
    PAINT (403, 230), 14
    CIRCLE (403, 232), 2, 4, , , 10 / 20
    PAINT (403, 232), 4
'saturn
    CIRCLE (310, 220), 115, 1, , , 10 / 20
    CIRCLE (365, 270), 4, 14
    PAINT (365, 270), 14
    CIRCLE (365, 270), 10, 8, , , 30 / 180
'uran
    CIRCLE (310, 220), 135, 1, , , 10 / 20
    CIRCLE (177, 210), 3, 10
    PAINT (177, 210), 10
'neptun
    CIRCLE (310, 220), 153, 1, , , 10 / 20
    CIRCLE (157, 220), 1, 11
'pluto
    CIRCLE (323, 220), 163, 1, , , 10 / 18
    CIRCLE (450, 163), 1, 11
    COLOR 4
    PRINT TAB(15); ">MERKUR<"
    PRINT : PRINT "Ek. promjer                 : 4 880 km."
    PRINT "Srednja gusto}a             : 5,4 g/cm3"
    PRINT "Srednja udaljenost od sunca : 57,9 Mil. km."
    PRINT "Vrjeme obilaska oko sunca   : 0,24 god."
    PRINT "Masa(MASA ZEMLJE = 1)       : 0,055"
    PRINT "Broj satelita               : ------"
    LOCATE 25, 1: PRINT "PRITISNI ENTER ZA POVRATAK"
    DO: LOOP WHILE INKEY$ = ""
    SOUND 500, 1
    solarus2

END SUB

SUB nemezis
178  CLS
  CLS 1
  CLS 2
  CLS 0
   COLOR 4
   PRINT "               >NEMEZIS<     "
   PRINT
   PRINT "NEMEZIS je teoretska(zvjezda za koju se nezna dali postoji)"
   PRINT "Ime je dobila od grüke boginje odmazde ili sudbinske osvete."
   PRINT "Na udaljenosti od 20 tisuÜa milijardi kilometra nalazi se Oortov kometni oblak"
   PRINT "Iz tog oblaka ponekad se otisne koja kometa prema naÁem suncu.No to se doga–a   rijetko."
   PRINT "Kada se Nemezis bude vraÜala u sunüev sustav prolazit üe kroz Oortov oblak i    donjeti par kometa"
   PRINT "koje üe tada jurnuti prema suncu.Taj scenari dogodit üe se za otprilike         15 milijuna godina"
   PRINT "NaÁe sunce ot prilike 10 puta masivnije(veÜe)Nemezis.Nemezis se kreüe po"
   PRINT "izdußenoj putanji oko zajedniükog srediÁta sa suncem"
    LOCATE 28, 1: PRINT "Pritisni M za napred a N za natrag"
    WHILE INKEY$ <> "": WEND
    DO
    k$ = UCASE$(INKEY$)
    LOOP UNTIL k$ = "N" OR k$ = "M"
    IF k$ = "N" THEN solarus2 ELSE 180

180 SOUND 500, 1
    CLS 0
    DIM A%(1 TO 1000)
    CIRCLE (20, 20), 2, 12
    PAINT (20, 20), 12
    GET (5, 5)-(35, 35), A%
    CLS
    RAD = 3.1419527# / 180
'STAVLJANJE
    CIRCLE (320, 150), 5, 14, , , 1.1
    PAINT (320, 150), 14
'asteroidi
    CIRCLE (320, 150), 12, 6, , , 10 / 20
'elip jupitera
     CIRCLE (320, 150), 20, 1, , , 10 / 20
'elip  saturna
     CIRCLE (320, 150), 28, 1, , , 10 / 20
'elip urana
     CIRCLE (320, 150), 34, 1, , , 10 / 20
'elip neptuna
     CIRCLE (320, 150), 48, 1, , , 10 / 20
'elip pluta
     CIRCLE (325, 150), 53, 1, , , 10 / 18
    CIRCLE (325, 150), 64, 6, , , 100 / 180
    DO
    A = A + 1
    X1 = 315 + 120 * SIN(A * (RAD))
    Y1 = 240 + 200 * COS(A * (RAD))
    PUT (INT(X1), INT(Y1)), A%, PSET
    IF A = 350 THEN GOSUB Vrijeme
    IF A = 481 THEN GOSUB Udalj
    IF INKEY$ = "Q" THEN galx
    LOOP

Udalj:
 COLOR 4
 LINE (325, 150)-(425, 150), 4
 LINE (415, 145)-(425, 150)
 LINE (415, 155)-(425, 150)
 PRINT "Nemezis se suncu najbliße priblißi na pola svjetlosne godine"
 PRINT "(4 732 303 819 000 Km)"
 SLEEP 4
 LINE (325, 150)-(425, 150), 0
 LINE (415, 145)-(425, 150), 0
 LINE (415, 155)-(425, 150), 0

 PRINT : PRINT "PRITISNI Q ZA IZLAZAK"
 IF INKEY$ = "Q" THEN RETURN
Vrijeme:
  COLOR 4
  LOCATE 1, 1: PRINT "Nemezis obi–e oko sunca jednom u 26 MILIJUNA GODINA"
  SLEEP 2
  RETURN

END SUB

SUB neptun
    CLS
'merkur
    CIRCLE (310, 220), 35, 1, , , 10 / 20
    CIRCLE (345, 220), 1, 4
'venera
    CIRCLE (310, 220), 45, 1, , , 10 / 20
    CIRCLE (310, 243), 2, 11
    PAINT (310, 243), 11
'zemlja
    CIRCLE (310, 220), 57, 1, , , 10 / 20
    CIRCLE (300, 248), 2, 11
    PAINT (300, 248), 11
'mars
    CIRCLE (310, 220), 70, 1, , , 10 / 20
    CIRCLE (310, 185), 2, 4
    PAINT (310, 185), 4
'sunce
    CIRCLE (310, 220), 16, 14
    PAINT (310, 220), 14
'planetoidi
    CIRCLE (310, 220), 80, 6, , , 10 / 20
'jupiter
    CIRCLE (310, 220), 95, 1, , , 10 / 20
    CIRCLE (403, 230), 5, 14
    PAINT (403, 230), 14
    CIRCLE (403, 232), 2, 4, , , 10 / 20
    PAINT (403, 232), 4
'saturn
    CIRCLE (310, 220), 115, 1, , , 10 / 20
    CIRCLE (365, 270), 4, 14
    PAINT (365, 270), 14
    CIRCLE (365, 270), 10, 8, , , 30 / 180
'uran
    CIRCLE (310, 220), 135, 1, , , 10 / 20
    CIRCLE (177, 210), 3, 10
    PAINT (177, 210), 10
'neptun
    CIRCLE (310, 220), 153, 4, , , 10 / 20
    CIRCLE (157, 220), 1, 11
'pluto
    CIRCLE (323, 220), 163, 1, , , 10 / 18
    CIRCLE (450, 163), 1, 11
    COLOR 4
    PRINT TAB(15); ">NEPTUN<"
    PRINT : PRINT "Ek. promjer                 : 49 500 km."
    PRINT "Srednja gusto}a             : 1,7 g/cm3"
    PRINT "Srednja udaljenost od sunca : 4 496,6 Mil. km."
    PRINT "Vrjeme obilaska oko sunca   : 164,8 god."
    PRINT "Masa(MASA ZEMLJE = 1)       : 17,2"
    PRINT "Broj satelita               : 8"
    LOCATE 23, 1
    PRINT "Imena najpoznatijih satelita: TRITON"
     LOCATE 25, 1: PRINT "PRITISNI ENTER ZA POVRATAK"
    DO: LOOP WHILE INKEY$ = ""
    SOUND 500, 1
    solarus2

END SUB

SUB opis
5  CLS
  CLS
  CLS 1
  CLS 2
  CLS 0
    CLS
    COLOR 4
    CIRCLE (420, 250), 80, 4
    PAINT (420, 250), 4
   
    PRINT TAB(36); ">MERKUR<"
    PRINT
    PRINT "Merkur je planet najblißi suncu i njegova temperatura se kad-kad popne i do "
    PRINT "400/c.Tamna strana je mnogo hladnija.Dan na MERKURU traje 59 zemljinih dana."
    PRINT "Planet nema atmosfere,osim sloja plina Áto ga okrußuje."
    LOCATE 13, 2: PRINT "OSOBNI PLANOTOVI PODACI"
    LOCATE 16, 2: PRINT "Ekv.promjer            : 4 880  /Km"
    LOCATE 17, 2: PRINT "Srednja gusto}a        : 5,4  g/cm3"
    LOCATE 18, 2: PRINT "Broj satelita          : ----------"
    LOCATE 19, 2: PRINT "Vrj. obilaska oko sunca: 0,24 /god."
    LOCATE 20, 2: PRINT "Masa(masa zemlje = 1)  : 0,055     "
    LOCATE 26, 1: PRINT "Pritisni M za napred a N za natrag"
    WHILE INKEY$ <> "": WEND
    DO
    k$ = UCASE$(INKEY$)
    LOOP UNTIL k$ = "N" OR k$ = "M"
    IF k$ = "N" THEN solarus2 ELSE 10
 
10  SOUND 500, 1
    CLS : CLS 1: CLS 0: CLS 2
    PRINT TAB(36); ">VENERA<"
    PRINT
    PRINT "Venera je drugi planet po redu od sunca.To je preteßno kiÁovit planet."
    PRINT "Njegova povrÁina je pustinja a zbog visokih temperatura niti jedna kap kiÁe ne stigne na tlo."
    PRINT "te zbog stalnih kiÁa Venerina atmosfera prekrivena oblacima velike gustoÜe,"
    PRINT "Áto onemoguÜava posmatranje njezinog tla.Ono Áto je karakteristiÜno za VENERU"
     PRINT "je to da je njezin dan dulji od njezine godine.Godina traje 225 zemaljskih"
     PRINT "dana ,a dan traje 244 zemaljska dana."
     LOCATE 13, 2: PRINT "OSOBNI PLANETOVI PODACI"
     LOCATE 16, 2: PRINT "Ekv. promjer              : 12 104 /Km"
     LOCATE 17, 2: PRINT "Broj satelita             : ----------"
     LOCATE 18, 2: PRINT "Srednja gusto~a           : 5,2 g/cm3 "
     LOCATE 19, 2: PRINT "Vrje. obilaska oko sunca  : 0,62 /god."
     LOCATE 20, 2: PRINT "Masa (masa zemlja = 1)    : 0,815     "
     CIRCLE (450, 270), 100, 1
     PAINT (420, 270), 1
    LOCATE 26, 1: PRINT "Pritisni M za napred a N za natrag"
    WHILE INKEY$ <> "": WEND
    DO
    k$ = UCASE$(INKEY$)
    LOOP UNTIL k$ = "N" OR k$ = "M"
    IF k$ = "N" THEN 5 ELSE 20
   
20  SOUND 500, 1
     CLS : CLS 1: CLS 0: CLS 2
     PRINT TAB(36); ">ZEMLJA<"
     PRINT
     PRINT "Zemlja je treÜi planet od sunca i do sada najvaßniji,jer samo za njega znamo da je nastanjen."
     PRINT "Na ZEMLJI postoje dvije polutke"
     PRINT "kopnena(49%KOPNO-51%MORE),vodena(91%MORE-9%KOPNO)"
     PRINT "Temperatura tla je od -50 (POLOVI)do +80(sahare)"
     PRINT "Zemljina godina traje 365,25 dana a dan 23 sata i 56 minuta,"
  PRINT "Zemlja ima svoj satelit MJESEC(DETALJNIJE POSLJE)"
     LOCATE 13, 2: PRINT "OSOBNI PLANETOVI PODACI"
     LOCATE 16, 2: PRINT "Ekv. promjer            : 12 756 /Km"
     LOCATE 17, 2: PRINT "Broj satelita           : 1         "
     LOCATE 18, 2: PRINT "Ime satelita            : MJESEC    "
     LOCATE 19, 2: PRINT "Srednja gusto~a         : 5,5 g/cm3 "
     LOCATE 20, 2: PRINT "Vrj. obilaska oko sunca : 1 /god.   "
     LOCATE 21, 2: PRINT "Masa(masa zemlje = 1)  : 1         "
     CIRCLE (450, 300), 100, 1
     PAINT (450, 300), 1
     CIRCLE (600, 200), 24, 6
     PAINT (600, 200), 6
    LOCATE 26, 1: PRINT "Pritisni M za napred a N za natrag"
    WHILE INKEY$ <> "": WEND
    DO
    k$ = UCASE$(INKEY$)
    LOOP UNTIL k$ = "N" OR k$ = "M"
    IF k$ = "N" THEN 10 ELSE 30
 
30   SOUND 500, 1
     CLS : CLS 1: CLS 0: CLS 2
     PRINT TAB(36); ">MARS<"
     PRINT
     PRINT "Mars je  Üetvrti planet od sunca.Mars je jedan od najmisterioznih planeta sun~evog sistema."
     PRINT "Moßda zbog toga Áto je na njemu prona–eni kanjoni kojima je (kako se pretpostavlja)"
     PRINT " prije tekla voda i da je na tom planetu osim na naÁem postojao ßivot."
     PRINT "Mars je jedan od rjetkih planeta na koji je ßivot moguÜ i danas."
     PRINT "Marsova atmosfera je rje–a nego zemljina i sastoji se uglavnom od CO2."
     PRINT "Marsova povrÁina je crvena a stari grci su ga zvali i bogom RATA"
     PRINT "Mars ima dva vrlo mala satelita  FOBOS I DEIMOS ,sateliti su vrlo crni "
     PRINT "Áto je onemoguüavalo njihov pronalazak prije."
     LOCATE 14, 2: PRINT " OSOBNI PLANETOVI PODACI"
     LOCATE 16, 2: PRINT "Ekv. promjer             : 6 787 Km"
     LOCATE 17, 2: PRINT "Broj satelita            : 2"
     LOCATE 18, 2: PRINT "Imena satelita           : DEMOS-FOBOS"
     LOCATE 19, 2: PRINT "Srednja gusto~a          : 3,9 g/cm3  "
     LOCATE 20, 2: PRINT "Vrj.obilaska oko sunca   : 1,88 /god."
     LOCATE 21, 2: PRINT "Masa (MASA ZEMLJA = 1)   : 0,108   "
     CIRCLE (450, 300), 90, 4
     PAINT (450, 300), 4
     CIRCLE (600, 250), 12, 6
     PAINT (600, 250), 6
     CIRCLE (300, 350), 13, 6
     PAINT (300, 350), 6
    LOCATE 26, 1: PRINT "Pritisni M za napred a N za natrag"
    WHILE INKEY$ <> "": WEND
    DO
    k$ = UCASE$(INKEY$)
    LOOP UNTIL k$ = "N" OR k$ = "M"
    IF k$ = "N" THEN 20 ELSE 50
   
    
50   SOUND 500, 1
     CLS : CLS 1: CLS 0: CLS 2
     PRINT TAB(36); ">JUPITER<"
     PRINT
  PRINT "Jupiter je  peti i najveÜi planet u sunüevom sistemu"
     PRINT "Jupiter je poznat po svojim dvijem mrljama ,CRVENA I CRNA.CRVENA je veÜa,"
     PRINT "ali CRNA je brßa.U CRVENU mrlju moße stati nekoliko zemlja.Jupiter nema"
     PRINT "üvrstog tla to jest on se sastoji od gustog plina ili vodika(od istog plina"
     PRINT "koji se nalazi u unutra{njosti zvjezda ili sunca).Jupiter ima 16 satelita"
     PRINT "                 IME        PROMJER"
     PRINT "najvaßniji su:    IO         3640/km  (O IO POSLJE)"
     PRINT "                  EVROPA     3 125/km (O EVROPI POSLJE)"
     PRINT "                  GANIMED    5 275/km"
     PRINT "                  KALISTO    4 850/km"
     LOCATE 13, 2: PRINT "OSOBNI PLANETOVI PODATKI"
     LOCATE 15, 2: PRINT "Ekv.promjer              : 142 800 Km"
     PRINT " Broj satelita          : 16 "
     PRINT " Imena (NAJ)va`nijih    : IO-EVROPA"
     PRINT "                          GANIMED-KALISTO"
     PRINT " Srednja gusto~a        : 1,3  g/cm3"
     PRINT " Vrj. obilaska oko sunca: 11,86 god."
     PRINT " Masa(MASA ZEMLJE = 1)  : 317,9 "

     CIRCLE (450, 300), 121, 14
     PAINT (450, 300), 14
     CIRCLE (480, 310), 15, 0, , , 100 / 180
     PAINT (480, 310), 0
     CIRCLE (380, 260), 25, 12, , , 100 / 180
     PAINT (380, 260), 12
     CIRCLE (310, 300), 1, 8
     CIRCLE (305, 280), 1, 8
     CIRCLE (320, 240), 1, 8
     CIRCLE (250, 260), 1, 8
     CIRCLE (260, 360), 1, 8
     CIRCLE (250, 340), 1, 8
     CIRCLE (250, 400), 1, 8
     CIRCLE (150, 240), 1, 8
     CIRCLE (560, 200), 1, 8
     CIRCLE (605, 400), 1, 8
     CIRCLE (610, 300), 1, 8
     CIRCLE (620, 200), 1, 8
     CIRCLE (620, 240), 1, 8
     CIRCLE (616, 301), 1, 8
     CIRCLE (610, 380), 1, 8
     CIRCLE (620, 330), 1, 8
    LOCATE 26, 1: PRINT "Pritisni M za napred a N za natrag"
    WHILE INKEY$ <> "": WEND
    DO
    k$ = UCASE$(INKEY$)
    LOOP UNTIL k$ = "N" OR k$ = "M"
    IF k$ = "N" THEN 30 ELSE 60
   
60   SOUND 500, 1
     CLS : CLS 1: CLS 0: CLS 2
     PRINT TAB(36); ">SATURN<"
     PRINT
     PRINT "Saturn je Áesti i drugi po veliüini planet u sunüevom sistemu.On je "
     PRINT "isto plinovit div kao i JUPITER.KarakteristiÜno za SATURN su njegovi prstenovi"
     PRINT "koji se sastoje od leda i praÁine koje je uhvaüeno u divovsku gravitaciju"
     PRINT "planeta."
     PRINT "Saturn ima 17 satelita "
     PRINT "a najvaßniji je :TITAN/PROMJER JE  5 150 km"
     LOCATE 11, 2: PRINT "OSOBNI PLANETOVI PODATKI"
     LOCATE 13, 2: PRINT "Ekv.promjer              : 120 000 Km. "
     PRINT " Broj satelita            : 17 "
     PRINT " Imena (NAJ)va`nijih      : TITAN"
     PRINT " Srednja gusto~a          : 0,7 g/cm3"
     PRINT " Vrj. obilaska oko sunca  : 29,46 god."
     PRINT " Masa(MASA ZEMLJE = 1)    : 95,2 "

     FOR E = 150 TO 170
     CIRCLE (400, 370), E, 7, , , 60 / 180
     NEXT E
     FOR h = 185 TO 210
     CIRCLE (400, 370), h, 14, , , 60 / 180
     NEXT h
     FOR G = 220 TO 235
     CIRCLE (400, 370), G, 6, , , 60 / 180
     NEXT G
     CIRCLE (400, 370), 100, 8
     PAINT (400, 370), 8
     FOR D = 150 TO 170
     CIRCLE (400, 370), D, 7, 3, , 60 / 180
     NEXT D
     FOR z = 185 TO 210
     CIRCLE (400, 370), z, 14, 3, , 60 / 180
     NEXT z
     FOR J = 220 TO 235
     CIRCLE (400, 370), J, 6, 3, , 60 / 180
     NEXT J
    LOCATE 28, 1: PRINT "Pritisni M za napred a N za natrag"
    WHILE INKEY$ <> "": WEND
    DO
    k$ = UCASE$(INKEY$)
    LOOP UNTIL k$ = "N" OR k$ = "M"
    IF k$ = "N" THEN 50 ELSE 70
    
70   SOUND 500, 1
     CLS : CLS 1: CLS 0: CLS 2
     PRINT TAB(36); ">URAN<"
     PRINT
     PRINT "URAN je sedmi i jedan od 3 najneistraßenijih planeta sunüevog sustava."
     PRINT "Uranov dan traje 10 sati i 49 minuta a jedna uranova godina na zemlji"
     PRINT "iznosi 84 godine.Uran ima 15  satelita."
     PRINT "Uran je od sunca udaljen 19,2 astronomske jeadinice"
     PRINT "Najvaßniji satelit je Triton a promjer mu je 3700"
     LOCATE 9, 2: PRINT "OSOBNI PLANETOVI PODATKI"
     LOCATE 11, 2: PRINT "Ekv.promjer              : 51 800 Km."
     PRINT " Broj satelita            : 15"
     PRINT " Srednja gusto~a          : 1,2 g/cm3"
     PRINT " Vrj. obilaska oko sunca  : 84,01 god."
     PRINT " Masa(MASA ZEMLJE = 1)    : 14,6"

     FOR h = 0 TO 2
     CIRCLE (400, 350), 150 + h, 7, , , 60 / 180
     CIRCLE (400, 350), 160 + h, 7, , , 60 / 180
     CIRCLE (400, 350), 170 + h, 7, , , 60 / 180
     CIRCLE (400, 350), 180 + h, 7, , , 60 / 180
     CIRCLE (400, 350), 190 + h, 7, , , 60 / 180
     CIRCLE (400, 350), 200 + h, 7, , , 60 / 180
     CIRCLE (400, 350), 210 + h, 7, , , 60 / 180
     CIRCLE (400, 350), 220 + h, 7, , , 60 / 180
     CIRCLE (400, 350), 230 + h, 7, , , 60 / 180
     NEXT h

     CIRCLE (400, 350), 100, 2
     PAINT (400, 350), 2
     FOR D = 0 TO 2
     CIRCLE (400, 350), 150 + D, 7, 3, , 60 / 180
     CIRCLE (400, 350), 160 + D, 7, 3, , 60 / 180
     CIRCLE (400, 350), 170 + D, 7, 3, , 60 / 180
     CIRCLE (400, 350), 180 + D, 7, 3, , 60 / 180
     CIRCLE (400, 350), 190 + D, 7, 3, , 60 / 180
     CIRCLE (400, 350), 200 + D, 7, 3, , 60 / 180
     CIRCLE (400, 350), 210 + D, 7, 3, , 60 / 180
     CIRCLE (400, 350), 220 + D, 7, 3, , 60 / 180
     CIRCLE (400, 350), 230 + D, 7, 3, , 60 / 180
     NEXT D
    LOCATE 28, 1: PRINT "Pritisni M za napred a N za natrag"
    WHILE INKEY$ <> "": WEND
    DO
    k$ = UCASE$(INKEY$)
    LOOP UNTIL k$ = "N" OR k$ = "M"
    IF k$ = "N" THEN 60 ELSE 80
  
80   SOUND 500, 1
     CLS : CLS 1: CLS 0: CLS 2
     PRINT TAB(36); ">NEPTUN<"
     PRINT
     PRINT "Neptun je osmi i tako–er ülan 3 najneistraßenih planeta sunüevog sustava."
     PRINT "Neptun je udaljen od sunca 30,1 astronomsku jedinicu."
     PRINT "Planetov dan traje 15 sati i 48 minuta a jedna godina 165 zemaljskih godina."
     PRINT "Neptun ima 8 satelita."
     LOCATE 9, 1: PRINT "OSOBNI PLANETOVI PODATKI"
     LOCATE 11, 1: PRINT "Ek. promjer                : 45 900 Km."
     LOCATE 12, 1: PRINT "Srednja gusto}a            : 1,7 g/cm3 "
     PRINT "Vrijeme obilaska oko sunca : 164,8 god."
     PRINT "Udanjenost od sunca        : 4 496,6 mil. Km."
     PRINT "Broj satelita              : 8 "
     PRINT "Imena (NAJ)va`nijih        : TRITON"
     PRINT "Masa(MASA ZEMLJE = 1)      : 17,2"

     CIRCLE (410, 350), 110, 9
     PAINT (410, 350), 9
     FOR h = 0 TO 4
     CIRCLE (590, 330), h, 6
     CIRCLE (230, 340), h, 6
     NEXT h
    LOCATE 26, 1: PRINT "Pritisni M za napred a N za natrag"
    WHILE INKEY$ <> "": WEND
    DO
    k$ = UCASE$(INKEY$)
    LOOP UNTIL k$ = "N" OR k$ = "M"
    IF k$ = "N" THEN 70 ELSE 90
     
90  SOUND 500, 1
     CLS : CLS 1: CLS 0: CLS 2
     PRINT TAB(36); ">PLUTON<"
     PRINT
     PRINT "Pluton je deveti ali i ne posljednji planet u sunüevom sustavu."
     PRINT "On je tako–er ülan neistraßenih 3."
     PRINT "On je moßda i najmanj planet u sunüevom sustavu osim Merkura."
     PRINT "Njegov dan traje 6,5 zemljinih dana a godima 248,5 zemljinih godina."
     PRINT "Pluton je od sunca udaljen 39,4 astronomskih jedinica."
     PRINT "PovrÁina plutona je preteßno led (zale–eni metan-plin)."
  PRINT "Sunce se tamo vidi kao da je jedna od zvjezda samo malo svjetlija."

     LOCATE 13, 1: PRINT "OSOBNI PLANETOVI PODACI"
     LOCATE 15, 1: PRINT "Ek. promjer                : 2 300 Km."
     PRINT "Srednja gusto}a            : 1,8 g/cm3 "
     PRINT "Vrijeme obilaska oko sunca : 247,7 god."
     PRINT "Udanjenost od sunca        : 5 900 mil. Km."
     PRINT "Broj satelita              : 1 "
     PRINT "Masa(MASA ZEMLJE = 1)      : 0,002 "
     PRINT "Ime satelita               : HARON"
     CIRCLE (410, 240), 40, 7
     PAINT (410, 240), 7
    LOCATE 26, 1: PRINT "Pritisni M za napred a N za natrag"
    WHILE INKEY$ <> "": WEND
    DO
    k$ = UCASE$(INKEY$)
    LOOP UNTIL k$ = "N" OR k$ = "M"
    IF k$ = "N" THEN 80 ELSE 100
    
100  SOUND 500, 1
     CLS : CLS 1: CLS 0: CLS 2
  PRINT TAB(36); ">SUNCE<"
     PRINT
     PRINT "Sunce je najvaßniji objekt u sunüevom sistemu."
     PRINT "sunce daje energiju za ßivot zemlji i obasjava go svojim zrakamo "
     PRINT "Áto mi na zemlji nazivamo danom."
     PRINT "Sunce ima promjer od 1 392 000 km to je oko 109 puta viÁe od promjera zemlje,"
     PRINT "a teße je od zemlje za 333 000 puta.SrediÁte sunca proizvodi strahovitu"
     PRINT "toplinu oko 14 000 000 'C.PovrÁina sunca se zove  FOTOSFERA ,mnogo je"
  PRINT "hladnija od unutraÁnjosti ali joÁ uvjek strahovito vruÜa(oko 6000'C)."
     PRINT "Üesto iz unutraÁnjosti izbijaju oblaci ußarenog plina .To se naziva"
     PRINT "SUNüEVA PROTUBERANCA.Sunce se okrene  jednom oko svoje osi za 25 dana."
     PRINT "Na suncu se joÁ nalaze i punüeve pjege .One izgledaju crno jer su dosta hladnije"
     PRINT " od svoga okoliÁa za 2000'C.U sunüevoj atmosferi stvaraju se SUN¨EVE BALJE."
     PRINT "To su velike eksplozije plina a u jednu od njih moße stati i preko 10 zemalja."

     PAINT (310, 240), 0, 20
     PRINT "Sunce u jezgri obavlja nuklearnu fiziju (spajanje atoma)prilikom toga spajanja u okoloinu "
     PRINT "se otpuÁtaju NEUTRINIJI.Te üestice nemaju naboja(rjetko reagiraju sa drugim tvarima)"
     PRINT "Ali nauünici su napravili bazen sa teÁkom vodom i postavili na zidove bazena"
     PRINT "vrlo osjetljive senzore(umjetno OKO)i kada neutrini udari u atom vode  siÜuÁna"
     PRINT "eksplozija nastane koju ljutsko oko nemoße vidjeti nego samo senzori."

     PRINT "Svjetlosti treba viÁe vremena da do–e iz unutraÁnjosti sunca nego neutriniju,"
     PRINT "svjetlost üe prodjeti milijun godina nakon reakcije a neutrini odmah nakon spajanja."
     PRINT "Pomoüu neutrinija moße se predvidjeti sunüeva aktivnost kakva üe biti za"
     PRINT " milijun godina"
    LOCATE 27, 1: PRINT "Pritisni M za napred a N za natrag"
    WHILE INKEY$ <> "": WEND
    DO
    k$ = UCASE$(INKEY$)
    LOOP UNTIL k$ = "N" OR k$ = "M"
    IF k$ >= "N" THEN 90 ELSE 110
    
110  SOUND 500, 1
     CLS : CLS 1: CLS 0: CLS 2
    solarus2

END SUB

SUB pluton
    CLS
'merkur
    CIRCLE (310, 220), 35, 1, , , 10 / 20
    CIRCLE (345, 220), 1, 4
'venera
    CIRCLE (310, 220), 45, 1, , , 10 / 20
    CIRCLE (310, 243), 2, 11
    PAINT (310, 243), 11
'zemlja
    CIRCLE (310, 220), 57, 1, , , 10 / 20
    CIRCLE (300, 248), 2, 11
    PAINT (300, 248), 11
'mars
    CIRCLE (310, 220), 70, 1, , , 10 / 20
    CIRCLE (310, 185), 2, 4
    PAINT (310, 185), 4
'sunce
    CIRCLE (310, 220), 16, 14
    PAINT (310, 220), 14
'planetoidi
    CIRCLE (310, 220), 80, 6, , , 10 / 20
'jupiter
    CIRCLE (310, 220), 95, 1, , , 10 / 20
  CIRCLE (403, 230), 5, 14
    PAINT (403, 230), 14
    CIRCLE (403, 232), 2, 4, , , 10 / 20
    PAINT (403, 232), 4
'saturn
    CIRCLE (310, 220), 115, 1, , , 10 / 20
    CIRCLE (365, 270), 4, 14
    PAINT (365, 270), 14
    CIRCLE (365, 270), 10, 8, , , 30 / 180
'uran
    CIRCLE (310, 220), 135, 1, , , 10 / 20
    CIRCLE (177, 210), 3, 10
    PAINT (177, 210), 10
'neptun
    CIRCLE (310, 220), 153, 1, , , 10 / 20
    CIRCLE (157, 220), 1, 11
'pluto
    CIRCLE (323, 220), 163, 4, , , 10 / 18
    CIRCLE (450, 163), 1, 11
    COLOR 4
    PRINT TAB(15); ">PLUTON<"
    PRINT : PRINT "Ek. promjer                 : 2 300 km."
    PRINT "Srednja gusto}a             : 1,8 g/cm3"
    PRINT "Srednja udaljenost od sunca : 5 900 Mil. km."
  PRINT "Vrjeme obilaska oko sunca   : 247,7 god."
    PRINT "Masa(MASA ZEMLJE = 1)       : 0,002"
    PRINT "Broj satelita               : 1"
    PRINT "Ime satelita                : HARON"
     LOCATE 25, 1: PRINT "PRITISNI ENTER ZA POVRATAK"
    DO: LOOP WHILE INKEY$ = ""
    SOUND 500, 1
    solarus2


END SUB

SUB pojmovi
CLS : CLS 1: CLS 2: CLS 0
COLOR 4
PRINT "           >POJMOVI<"
PRINT
PRINT " U SOLARUSU SUSRE¨EMO OVE POJMOVE:"
PRINT
PRINT " DEOKSIRIBONUKLEINSKE KISELINE - "
PRINT " HETEROTROPI - "
PRINT " AUTOTROPI - "
PRINT " MONOSPECIFI¨NI -"
PRINT " POLIKROMATSKI - RAZLI¨ITI"
PRINT " GENOMI - SVEUKUPNOST GENA KOJI SU SADR¶ANI U POLOVICI KROMOSOMA"
PRINT " SVJETLOSNA GODINA - PUT KOJI SVIJETLOST PREVALI U GODINU DANA"
PRINT "                     9469807000000 Km."
PRINT " TEÊKA VODA - VODA KOJA JE VRLO "
DO: LOOP WHILE INKEY$ = ""
solarus2
END SUB

SUB saturn3
    CLS
'merkur
    CIRCLE (310, 220), 35, 1, , , 10 / 20
    CIRCLE (345, 220), 1, 4
'venera
    CIRCLE (310, 220), 45, 1, , , 10 / 20
    CIRCLE (310, 243), 2, 11
    PAINT (310, 243), 11
'zemlja
    CIRCLE (310, 220), 57, 1, , , 10 / 20
    CIRCLE (300, 248), 2, 11
    PAINT (300, 248), 11
'mars
    CIRCLE (310, 220), 70, 1, , , 10 / 20
    CIRCLE (310, 185), 2, 4
  PAINT (310, 185), 4
'sunce
    CIRCLE (310, 220), 16, 14
    PAINT (310, 220), 14
'planetoidi
    CIRCLE (310, 220), 80, 6, , , 10 / 20
'jupiter
    CIRCLE (310, 220), 95, 1, , , 10 / 20
    CIRCLE (403, 230), 5, 14
    PAINT (403, 230), 14
    CIRCLE (403, 232), 2, 4, , , 10 / 20
    PAINT (403, 232), 4
'saturn
    CIRCLE (310, 220), 115, 4, , , 10 / 20
    CIRCLE (365, 270), 4, 14
    PAINT (365, 270), 14
    CIRCLE (365, 270), 10, 8, , , 30 / 180
'uran
    CIRCLE (310, 220), 135, 1, , , 10 / 20
    CIRCLE (177, 210), 3, 10
    PAINT (177, 210), 10
'neptun
    CIRCLE (310, 220), 153, 1, , , 10 / 20
    CIRCLE (157, 220), 1, 11
'pluto
    CIRCLE (323, 220), 163, 1, , , 10 / 18
    CIRCLE (450, 163), 1, 11
    COLOR 4
    PRINT TAB(15); ">SATURN<"
    PRINT : PRINT "Ek. promjer                 : 120 000 km."
    PRINT "Srednja gusto}a             : 0,7 g/cm3"
    PRINT "Srednja udaljenost od sunca : 1 427 Mil. km."
    PRINT "Vrjeme obilaska oko sunca   : 29,46 god."
    PRINT "Masa(MASA ZEMLJE = 1)       : 95,2"
    PRINT "Broj satelita               : 17"
    LOCATE 22, 1
    PRINT "Imena poznatijih satelita   : TITAN"
     LOCATE 25, 1: PRINT "PRITISNI ENTER ZA POVRATAK"
    DO: LOOP WHILE INKEY$ = ""
    SOUND 500, 1
    solarus2


END SUB

SUB solarus2



    CLS : CLS 0: CLS 1: CLS 2
'merkur
  CIRCLE (310, 200), 35, 1, , , 10 / 20
    CIRCLE (345, 200), 1, 4
'venera
    CIRCLE (310, 200), 45, 1, , , 10 / 20
    CIRCLE (310, 223), 2, 11
    PAINT (310, 223), 11
'zemlja
    CIRCLE (310, 200), 57, 1, , , 10 / 20
    CIRCLE (300, 228), 2, 11
    PAINT (300, 228), 11
'mars
    CIRCLE (310, 200), 70, 1, , , 10 / 20
    CIRCLE (310, 165), 2, 4
  PAINT (310, 165), 4
'sunce
    CIRCLE (310, 200), 16, 14
    PAINT (310, 200), 14
'planetoidi
    CIRCLE (310, 200), 80, 6, , , 10 / 20
'jupiter
    CIRCLE (310, 200), 95, 1, , , 10 / 20
  CIRCLE (403, 210), 5, 14
    PAINT (403, 210), 14
    CIRCLE (403, 212), 2, 4, , , 10 / 20
    PAINT (403, 212), 4
'saturn
    CIRCLE (310, 200), 115, 1, , , 10 / 20
  CIRCLE (365, 250), 4, 14
    PAINT (365, 250), 14
    CIRCLE (365, 250), 10, 8, , , 30 / 180
'uran
    CIRCLE (310, 200), 135, 1, , , 10 / 20
    CIRCLE (177, 190), 3, 10
    PAINT (177, 190), 10
'neptun
    CIRCLE (310, 200), 153, 1, , , 10 / 20
    CIRCLE (157, 200), 1, 11
'pluto
    CIRCLE (323, 200), 163, 1, , , 10 / 18
    CIRCLE (450, 143), 1, 11
'glavni dio -pitanja
    COLOR 4
   LOCATE 23, 1
    PRINT "A-MERKUR"
    PRINT "B-VENERA"
    PRINT "C-ZEMLJA"
    PRINT "D-MARS"
    LOCATE 23, 15
    PRINT "E-ASTEROIDNO PODRUèJE"
    LOCATE 24, 15
    PRINT "F-JUPITER"
    LOCATE 25, 15
    PRINT "G-SATURN"
    LOCATE 26, 15
    PRINT "H-URAN"
    LOCATE 23, 40
    PRINT "I-NEPTUN"
    LOCATE 24, 40
    PRINT "J-PLUTON"
    LOCATE 25, 40
    PRINT "K-POGLED"
    LOCATE 26, 40
    PRINT "L-TABLICE"
    LOCATE 23, 55
    PRINT "O-OSNOVE GALAKSIJA"
    LOCATE 24, 55
    PRINT "P-TIP CIVILIZACIJE(TEÊKO)"
    LOCATE 25, 55
    PRINT "R-POJMOVI"
    LOCATE 26, 55
    PRINT "T-SOLARUS 5 upg."
    LOCATE 27, 55
    PRINT "Q- KRAJ PROGRAMA"
    DO
    k$ = INKEY$
    SELECT CASE k$
    CASE "A":  merkur
    CASE "B": venera
    CASE "C": zemlja
    CASE "D": mars
    CASE "E": asteroi
    CASE "F": jupiter3
    CASE "G": saturn3
    CASE "H": uran
    CASE "I": neptun
    CASE "J": pluton
    CASE "K": opis
    CASE "L": tablice
    CASE "O": galx
    CASE "P": civilizacija
    CASE "R": pojmovi
    CASE "T": komande
    CASE "Q": kraj
    END SELECT
    LOOP

END SUB

SUB superno
125  CLS : CLS 0: CLS 1: CLS 2
   COLOR 4
   PRINT "        >SUPERNOVA<"
   PRINT
   PRINT "SVAKU SUNCE NA NEBU ¨EKA VIÊE MANJE ISTA SUDBINA,POSTAT ¨E SUPERNOVA"
   PRINT "ZA SJAJ SVAKE ZVIJEZDE POTREBNO JE GORIVO(VODIK) ZA NUKLEARNU FUZIJU(NUKLEARNI  REAKTOR)"
   PRINT "PRI KRAJU SVOG ROKA(6 MILIJARDI GODINA)TRAJANJA SAV VODIK PRETVORI SE U HELI"
   PRINT ",PODRU¨JE FUZIJE VODIKA POLAGANO SE SELI PREMA VANJSKIM SLOJEVIMA POPUT NIZA    LJUSKI ,SVE DOK NE DO—E NA PODRU¨JE ¨IJA JE TEMPERATURA ISPOD 10 MIL.STUPNJEVA"
   PRINT "TADA SE NUKLEARNA PEè ISKLJU¨UJE SAMA OD SEBE.GRAVITACISKA SILA ¨E SE POVE¨ATI IDOèI èE DO STEZANJA(POVE¨AT ¨E SVOJU TEMPERATURU I TLAK) JEZGRE HELI èE SE PO¨ETI LJEPITI JEDNA ZA DRUGU('KUKICE' NJIHOVIH NUKLEARNIH SILA KRATGOG DOSEG PO¨ET  èE DJELOVATI UNATO¨ ODBOJNIH ELEKTRI¨NIH SILA)PEPEO SAD POSTAJE GORIVO"
   PRINT "TIM PROCESOM STVARAJU SE ELEMENTI UGLJIKA I KISIKA, I TAKO SE SUNCE OSKRBLJAVA  DODATNOM ENERGIJOM ZA SVOJ RAD(NA KRATKO I OGRANI¨ENO VRIJEME)"
    PRINT "TADA ZVIJEZDA POSTAJE CRVENI DIV,VANJSKE LJUSKE SE HLADE I RASTE¶U SE DO TIH    RAZMJERA DA GRAVITACIJA NA POVRÊINI SUNCA TOLIKO OSLABI DA SA PLINOVI SA        POVRÊINE PROÊIRITI PO SVEMIRU."
    PRINT "KADA ZVIJEZDA POTROÊI SVE ZALIHE GORIVA DOLAZI KOLAPS.ZVIJEZDA SE U PAR STOTINKI SEKUNDE SKUPI NA NAJMANJU MOGU¨U VELI¨INU"
    PRINT "STOTINKU SEKUNDE POSLJE SAKUPLJANJA ZVJEZDA POSTAJE SUPERNOVA,NAJVE¨A EXPLOZIJA KOJU JE ¨OVJEK IKADA VIDIO"
    PRINT "NEKE SUPERNOVE SVJETLE PO TJEDAN DANA A NEKE PO JEDAN SAT.EXPLOZIJA JEDNE ZVIJEZDE PROIZVODI"
    PRINT "VE¨U SVIJETLOST NEGO CIJELA GALAKSIJA U KOJOJ JE TA ZVIJEZDA SMJEÊTENA"
    PRINT : PRINT : PRINT
    LOCATE 28, 1: PRINT "Pritisni M za napred a N za natrag"
    WHILE INKEY$ <> "": WEND
    DO
    k$ = UCASE$(INKEY$)
    LOOP UNTIL k$ = "N" OR k$ = "M"
    IF k$ >= "N" THEN solarus2 ELSE 121

121  CLS : CLS 1: CLS 0: CLS 2
  COLOR 4
   PRINT TAB(36); ">SUPERNOVA<"
   CIRCLE (40, 240), 40, 4
   PAINT (40, 240), 4
   SLEEP 2
    FOR A = 40 TO 80 STEP .5
    CIRCLE (40, 240), A, 4
    NEXT A
    FOR t = 80 TO 40 STEP -1
    CIRCLE (40, 240), t, 0
    NEXT t
    CLS
    PRINT TAB(36); ">SUPERNOVA<"

    CIRCLE (40, 240), 5, 7
    PAINT (40, 240), 7
    FOR z = 100 TO 750 STEP 10
    CIRCLE (40, 240), z, 0
    CIRCLE (40, 240), z + 40, 14
    CIRCLE (40, 240), z - 40, 1
    CIRCLE (40, 240), z - 60, 0
    NEXT z
    LOCATE 28, 1: PRINT "Pritisni M za napred a N za natrag"
    WHILE INKEY$ <> "": WEND
    DO
    k$ = UCASE$(INKEY$)
    LOOP UNTIL k$ = "N" OR k$ = "M"
    IF k$ >= "N" THEN 125 ELSE 120
 
120  SOUND 500, 1
    CLS 0
    CIRCLE (90, 390), 13, 4
    PAINT (90, 390), 4
    CIRCLE (280, 390), 30, 4
    PAINT (280, 390), 4
    CIRCLE (500, 390), 45, 4
    PAINT (500, 390), 4
    CIRCLE (320, 150), 104, 4
    PAINT (320, 150), 4
    LOCATE 20, 2: PRINT "NAÊE SUNCE"
    LOCATE 20, 23: PRINT " 4 PUTA VE¨A ZVIJEZDA"
    LOCATE 20, 50: PRINT "6 PUT VE¨A ZVIJEZDA"
    LOCATE 2, 2: PRINT "8 PUTA VE¨A ZVIJEZDA"
    LINE (5, 300)-(615, 299), 2, BF
    LINE (5, 300)-(180, 475), 2, B
    LINE (387, 300)-(615, 475), 2, B
    LINE (5, 5)-(615, 475), 2, B
    VIEW (7, 7)-(614, 299)
    DO: LOOP WHILE INKEY$ = ""
    SOUND 500, 1
  CLS 1
    FOR t = 0 TO 600 STEP 2
    IF t = 30 THEN COLOR 1
    IF t = 50 THEN COLOR 4
    IF t = 100 THEN COLOR 14
    x = 310 + t * COS(t / 2)
    y = 140 + t * SIN(t / 2)
    LINE (310, 140)-(x, y)
    NEXT t
    COLOR 4
    LOCATE 2, 2: PRINT " Zvijezda 8 puta veüa od sunca prije ce eksplodirati od naÁe jer brße "
    LOCATE 3, 2: PRINT " troÁi svoje gorivo"
    SLEEP 4
    SOUND 500, 1
    VIEW (389, 302)-(614, 474)
    CLS 1
    FOR t = 0 TO 200 STEP 2
    IF t = 30 THEN COLOR 1
    IF t = 50 THEN COLOR 4
    IF t = 60 THEN COLOR 14
  A = 110: b = 90
    x = A + t * COS(t / 2)
    y = b + t * SIN(t / 2)
    LINE (A, b)-(x, y)
    NEXT t
    SLEEP 4
    SOUND 500, 1
    VIEW (182, 302)-(386, 474)
    CLS 1
    FOR t = 0 TO 150 STEP 2
    IF t = 30 THEN COLOR 1
    IF t = 50 THEN COLOR 4
    IF t = 100 THEN COLOR 14
    A = 100: b = 85
    x = A + t * COS(t / 2)
    y = b + t * SIN(t / 2)
    LINE (A, b)-(x, y)
    NEXT t
    SLEEP 4
    SOUND 500, 1
    VIEW (7, 302)-(178, 473)
    FOR F = 0 TO 30 STEP .5
    CIRCLE (84, 89), 13 + F, 4
    NEXT F
   
691 FOR k = 0 TO 30 STEP .5
    CIRCLE (84, 89), 50 - k, 0
    NEXT k
  
700 CLS 1
    CIRCLE (84, 89), 3, 7
    PAINT (84, 89), 7
    COLOR 4
    LOCATE 20, 2: PRINT "NASTAO BJELI PATULJAK"
    DO: LOOP WHILE INKEY$ = ""
    VIEW (1, 1)-(619, 479)
    SLEEP 4
    SOUND 500, 1
        
    CLS 1
    CLS
    CLS 2
    CLS 0
    LOCATE 28, 1: PRINT "Pritisni M za napred a N za natrag"
    WHILE INKEY$ <> "": WEND
    DO
    k$ = UCASE$(INKEY$)
    LOOP UNTIL k$ = "N" OR k$ = "M"
    IF k$ >= "N" THEN 121 ELSE 130
  
130 galx

END SUB

SUB tablice
175 CLS : CLS 1: CLS 0: CLS 2
    COLOR 4
    PRINT TAB(33); "PODACI O PLANETIMA"
    PRINT TAB(33); "UNUTAR ASTEROIDNOG POJASA"
    PRINT
    COLOR 2
    PRINT TAB(12); "                          >MERKUR<        >VENERA<        >ZEMLJA<        >MARS<"
    COLOR 4
    PRINT "PROMJER/km                 4 880           12 104          12 756          6 787"
    PRINT "--------------------------------------------------------------------------------"
    PRINT "UDALJENOST"
    PRINT "OD SUNCA"
    PRINT " 6*0/km                    57,9            108,2           149,6           227,9"
    PRINT "--------------------------------------------------------------------------------"
    PRINT "VRJEME OBILASKA"
    PRINT "OKO"
    PRINT "SUNCA U god.               0,24            0,62            1               1,88"
    PRINT "--------------------------------------------------------------------------------"
    PRINT "MASA                       0,055           0,815           1               0,108"
    PRINT "--------------------------------------------------------------------------------"
    PRINT "BROJ SATELITA               ////            ////           1               2"
    PRINT "--------------------------------------------------------------------------------"
    PRINT "MASA ZEMLJE = 1"

    PRINT : PRINT : PRINT : PRINT : PRINT : PRINT
    LOCATE 28, 1: PRINT "Pritisni M za napred a N za natrag"
    WHILE INKEY$ <> "": WEND
    DO
    k$ = UCASE$(INKEY$)
    LOOP UNTIL k$ = "N" OR k$ = "M"
    IF k$ = "N" THEN solarus2 ELSE 171
   
171  SOUND 500, 1
    CLS : CLS 0: CLS 1: CLS 2
 
    PAINT (310, 240), 0, 20
    CLS
    PRINT TAB(33); "PODACI O PLANETIMA"
    PRINT TAB(33); "IZVAN ASTEROIDNOG POJASA"
    PRINT : PRINT
    COLOR 2
    PRINT "                >JUPITER<      >SATURN<      >URAN<      >NEPTUN<      >PLUTON<"
    COLOR 4
    PRINT "PROMJER/km       142 800        120 000      51 800      49 500          2 300"
    PRINT "------------------------------------------------------------------------------"
    PRINT "UDALJENOST"
    PRINT "OD SUNCA         778,3          1 427        2 869,6     4 496,6         5 900  "
    PRINT "6*0/km"
    PRINT "------------------------------------------------------------------------------"
    PRINT "VRJEME OBILASKA"
    PRINT "OKO               11,86          29,46        84,01       164,8          247,7"
    PRINT "SUNCA U god."
    PRINT "------------------------------------------------------------------------------"
    PRINT "MASA              317,9          95,2         14,6        17,2           0,002 "
    PRINT "------------------------------------------------------------------------------"
    PRINT "BROJ SATELITA     16             17            5          8              1"
    PRINT "------------------------------------------------------------------------------"
    PRINT "JEDNA ASTRONOMSKA JEDINICA JE JEDNAKA UDALJENOSTI ZEMLJE OD SUNCA"
    PRINT "ASTRONOMSKA JEDINICA=149 600000"
    PRINT : PRINT : PRINT : PRINT : PRINT : PRINT
    PRINT "Pritisni N za natrag a M za napred"
    WHILE INKEY$ <> "": WEND
    DO
    k$ = UCASE$(INKEY$)
    LOOP UNTIL k$ = "N" OR k$ = "M"
    IF k$ = "N" THEN 175 ELSE 170
    
170    SOUND 500, 1
    solarus2

END SUB

SUB uran
    CLS
'merkur
  CIRCLE (310, 220), 35, 1, , , 10 / 20
    CIRCLE (345, 220), 1, 4
'venera
    CIRCLE (310, 220), 45, 1, , , 10 / 20
    CIRCLE (310, 243), 2, 11
    PAINT (310, 243), 11
'zemlja
    CIRCLE (310, 220), 57, 1, , , 10 / 20
    CIRCLE (300, 248), 2, 11
    PAINT (300, 248), 11
'mars
    CIRCLE (310, 220), 70, 1, , , 10 / 20
    CIRCLE (310, 185), 2, 4
    PAINT (310, 185), 4
'sunce
    CIRCLE (310, 220), 16, 14
    PAINT (310, 220), 14
'planetoidi
    CIRCLE (310, 220), 80, 6, , , 10 / 20
'jupiter
    CIRCLE (310, 220), 95, 1, , , 10 / 20
    CIRCLE (403, 230), 5, 14
    PAINT (403, 230), 14
    CIRCLE (403, 232), 2, 4, , , 10 / 20
    PAINT (403, 232), 4
'saturn
    CIRCLE (310, 220), 115, 1, , , 10 / 20
    CIRCLE (365, 270), 4, 14
    PAINT (365, 270), 14
    CIRCLE (365, 270), 10, 8, , , 30 / 180
'uran
    CIRCLE (310, 220), 135, 4, , , 10 / 20
    CIRCLE (177, 210), 3, 10
    PAINT (177, 210), 10
'neptun
    CIRCLE (310, 220), 153, 1, , , 10 / 20
    CIRCLE (157, 220), 1, 11
'pluto
    CIRCLE (323, 220), 163, 1, , , 10 / 18
    CIRCLE (450, 163), 1, 11
    COLOR 4
  PRINT TAB(15); ">URAN<"
    PRINT : PRINT "Ek. promjer                 : 51 800 km."
    PRINT "Srednja gusto}a             : 1,2 g/cm3"
    PRINT "Srednja udaljenost od sunca : 2 869,6 Mil. km."
    PRINT "Vrjeme obilaska oko sunca   : 84,01 god."
    PRINT "Masa(MASA ZEMLJE = 1)       : 14,6"
    PRINT "Broj satelita               : 15"
     LOCATE 25, 1: PRINT "PRITISNI ENTER ZA POVRATAK"
    DO: LOOP WHILE INKEY$ = ""
    SOUND 500, 1
    solarus2

END SUB

SUB venera
    CLS
'merkur
  CIRCLE (310, 220), 35, 1, , , 10 / 20
    CIRCLE (345, 220), 1, 4
'venera
    CIRCLE (310, 220), 45, 4, , , 10 / 20
    CIRCLE (310, 243), 2, 11
    PAINT (310, 243), 11
'zemlja
    CIRCLE (310, 220), 57, 1, , , 10 / 20
    CIRCLE (300, 248), 2, 11
    PAINT (300, 248), 11
'mars
    CIRCLE (310, 220), 70, 1, , , 10 / 20
    CIRCLE (310, 185), 2, 4
    PAINT (310, 185), 4
'sunce
    CIRCLE (310, 220), 16, 14
    PAINT (310, 220), 14
'planetoidi
    CIRCLE (310, 220), 80, 6, , , 10 / 20
'jupiter
    CIRCLE (310, 220), 95, 1, , , 10 / 20
    CIRCLE (403, 230), 5, 14
    PAINT (403, 230), 14
    CIRCLE (403, 232), 2, 4, , , 10 / 20
    PAINT (403, 232), 4
'saturn
    CIRCLE (310, 220), 115, 1, , , 10 / 20
    CIRCLE (365, 270), 4, 14
  PAINT (365, 270), 14
    CIRCLE (365, 270), 10, 8, , , 30 / 180
'uran
    CIRCLE (310, 220), 135, 1, , , 10 / 20
    CIRCLE (177, 210), 3, 10
    PAINT (177, 210), 10
'neptun
    CIRCLE (310, 220), 153, 1, , , 10 / 20
    CIRCLE (157, 220), 1, 11
'pluto
  CIRCLE (323, 220), 163, 1, , , 10 / 18
    CIRCLE (450, 163), 1, 11
    COLOR 4
    PRINT TAB(15); ">VENERA<"
    PRINT : PRINT "Ek. promjer                 : 12 104 km."
    PRINT "Srednja gusto}a             : 5,2 g/cm3"
    PRINT "Srednja udaljenost od sunca : 108,2 Mil. km."
    PRINT "Vrjeme obilaska oko sunca   : 0,62 god."
    PRINT "Masa(MASA ZEMLJE = 1)       : 0,815"
    PRINT "Broj satelita               : ------"
    LOCATE 25, 1: PRINT "PRITISNI ENTER ZA POVRATAK"
    DO: LOOP WHILE INKEY$ = ""
    SOUND 500, 1
    solarus2

END SUB

SUB zemlja
    CLS
'merkur
    CIRCLE (310, 220), 35, 1, , , 10 / 20
    CIRCLE (345, 220), 1, 4
'venera
    CIRCLE (310, 220), 45, 1, , , 10 / 20
    CIRCLE (310, 243), 2, 11
    PAINT (310, 243), 11
'zemlja
    CIRCLE (310, 220), 57, 4, , , 10 / 20
    CIRCLE (300, 248), 2, 11
    PAINT (300, 248), 11
'mars
    CIRCLE (310, 220), 70, 1, , , 10 / 20
    CIRCLE (310, 185), 2, 4
    PAINT (310, 185), 4
'sunce
    CIRCLE (310, 220), 16, 14
    PAINT (310, 220), 14
'planetoidi
    CIRCLE (310, 220), 80, 6, , , 10 / 20
'jupiter
    CIRCLE (310, 220), 95, 1, , , 10 / 20
    CIRCLE (403, 230), 5, 14
    PAINT (403, 230), 14
    CIRCLE (403, 232), 2, 4, , , 10 / 20
    PAINT (403, 232), 4
'saturn
    CIRCLE (310, 220), 115, 1, , , 10 / 20
    CIRCLE (365, 270), 4, 14
    PAINT (365, 270), 14
    CIRCLE (365, 270), 10, 8, , , 30 / 180
'uran
    CIRCLE (310, 220), 135, 1, , , 10 / 20
    CIRCLE (177, 210), 3, 10
    PAINT (177, 210), 10
'neptun
    CIRCLE (310, 220), 153, 1, , , 10 / 20
    CIRCLE (157, 220), 1, 11
'pluto
    CIRCLE (323, 220), 163, 1, , , 10 / 18
    CIRCLE (450, 163), 1, 11
    COLOR 4
    PRINT TAB(15); ">ZEMLJA<"
    PRINT : PRINT "Ek. promjer                 : 12 756 km."
    PRINT "Srednja gusto}a             : 5,5 g/cm3"
    PRINT "Srednja udaljenost od sunca : 149,6 Mil. km."
    PRINT "Vrjeme obilaska oko sunca   : 1 god."
    PRINT "Masa(MASA ZEMLJE = 1)       : 1"
    PRINT "Broj satelita               : 1"
     LOCATE 25, 1: PRINT "PRITISNI ENTER ZA POVRATAK"
    DO: LOOP WHILE INKEY$ = ""
    SOUND 500, 1
    solarus2


END SUB

