# Animations

## Inleiding
Tijdens de ontwerpfase kwamen de CMD studenten met het idee om animaties toe te voegen in onze app. Dit leek de ict'ers ook een goed idee, echter waren wij bang dat dit erg veel extra werk zou zijn. We wisten dit niet zeker, omdat we nog nooit animaties hadden toegevoegd in een Swift app, maar dit idee hadden we.

## Hypothese
Ik verwacht dat het animeren in Swift erg lastig is. In css/js (de manier hoe het in Ionic bijv. moet) vind ik dit ook altijd lastig.

## Testopzet
Ik ga met behulp van [deze tutorial](https://medium.com/ios-os-x-development/uiview-animation-in-swift-3-2b499abb58c5) en internet (Stack Overflow ect.) proberen een 'basis' animatie werkend te krijgen. Wanneer dit makkelijk gaat zal ik met de rest van mijn groep overleggen welke animatie we in onze app willen gaan gebruiken en proberen die uit te werken.

## Resultaat
Het implementeren van de basis animatie (een UIView kleur aanpassen en een UIView groter maken). Was erg simpel, hier was ik binnen 5 minuten al mee klaar.
Ik ben toen in overleg met mijn projectgroep begonnen aan het uitwerken van een aan het project relevante animatie: een kado wat uitpakt. Dit staat symbool voor de beloning die de klant kiest. Uiteindelijk zal de beloning uit het kado komen.

Het maken van deze animatie bleek ook goed te doen. Het was in het begin even uitzoeken hoe ik 'custom' animaties kon maken i.p.v. een voorgedefineerde animatie. Ik heb hier een 'wiggle' transformatie gebruikt.

Bij het openen van het kado kantelt de deksel van het kado naar beneden. Tevens heb ik hier nog een [confetti Pod](https://github.com/sudeepag/SAConfettiView) aan toegevoegd welke de confetti op het scherm toont.

![alt text](https://github.com/BillyJean1/Kevin-Broeren/raw/master/Week%206/PoC%201/images/app.gif "Animatie app")
