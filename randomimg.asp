<%
dim arrImage()
Dim intLowerBound    ' Lower bound of the random number range
Dim intUpperBound    ' Upper bound of the random number range

Dim intRangeSize     ' Size of the range
Dim sngRandomValue   ' A random value from 0 to intRangeSize
Dim intRandomInteger ' Our final result - random integer to return

'********************************************************************
'***   intLowerBound must be 0                                    ***
'***   intUpperBound is 1 less than the total images              ***
'***   If there are 3 images to rotate, then intUpperBound is 2   ***
'********************************************************************
intLowerBound = 0
intUpperBound = 10

If intLowerBound > intUpperBound Then
	Dim iTemp
	iTemp = intLowerBound
	intLowerBound = intUpperBound
	intUpperBound = iTemp
End If

Randomize()

intRangeSize = intUpperBound - intLowerBound + 1

redim arrImage(intRangeSize)
dim x

sngRandomValue = intRangeSize * Rnd()

sngRandomValue = sngRandomValue + intLowerBound

x = Int(sngRandomValue)

'******************************************
'***   ADD IMAGE AND LINK PATHS BELOW   ***
'***   ARRAY MUST START WITH 0          ***
'******************************************

arrImage(0) = "<a href='about/howPACERhelps.asp' title='New to PACER Center? We are here to help'><img src='images/homePage/main1.jpg' alt='Family sitting and smiling; mom and dad behind son in front, who is holding his little sister.' /></a>"
arrImage(1) = "<a href='about/howPACERhelps.asp' title='New to PACER Center? We are here to help'><img src='images/homePage/main2.jpg' alt='Mother receiving a kiss on the cheek from her young son' /></a>"
arrImage(2) = "<a href='about/howPACERhelps.asp' title='New to PACER Center? We are here to help'><img src='images/homePage/main4.jpg' alt='Two young teens and a mentor laying in the grass, looking up with bright smiles' /></a>"
arrImage(3) = "<a href='about/howPACERhelps.asp' title='New to PACER Center? We are here to help'><img src='images/homePage/main5.jpg' alt='Close up of a mom, holding young son; both smiling' /></a>"
arrImage(4) = "<a href='about/howPACERhelps.asp' title='New to PACER Center? We are here to help'><img src='images/homePage/main6.jpg' alt='Young girl wearing a bandana, tilting her head and smiling' /></a>"
arrImage(5) = "<a href='about/howPACERhelps.asp' title='New to PACER Center? We are here to help'><img src='images/homePage/main7.jpg' alt='Close up of an infant with a big smile' /></a>"
arrImage(6) = "<a href='about/howPACERhelps.asp' title='New to PACER Center? We are here to help'><img src='images/homePage/main8.jpg' alt='Young teen with Down Syndrome, looking off to the side, reflecting' /></a>"
arrImage(7) = "<a href='about/howPACERhelps.asp' title='New to PACER Center? We are here to help'><img src='images/homePage/main9.jpg' alt='Close up of a father, holding young son; both smiling' /></a>"
arrImage(8) = "<a href='about/howPACERhelps.asp' title='New to PACER Center? We are here to help'><img src='images/homePage/main10.jpg' alt='Young girl with Down Syndrome smiling brightly' /></a>"
arrImage(9) = "<a href='about/howPACERhelps.asp' title='New to PACER Center? We are here to help'><img src='images/homePage/main11.jpg' alt='Young boy in a wheelchair with his hands up in the air and a big grin' /></a>"
arrImage(10) = "<a href='about/howPACERhelps.asp' title='New to PACER Center? We are here to help'><img src='images/homePage/main12.jpg' alt='Young boy with Down Syndrome smiling and proudly holding up a newly won trophy' /></a>"
%>