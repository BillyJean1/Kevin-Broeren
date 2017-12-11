# Energie gebruik bij Location services

## Inleiding
In dit onderzoek wil ik kijken of ik het opvragen van locaties energie zuiniger kan maken.

## Hypothese
Gezien GPS gebruik erg veel batterij kost (relatief) en we veel met de locatie gaan doen verwacht ik dat ik het energie gebruik erg kan verminderen (ik verwacht 50%) door op dit gebied onderzoek te doen. Ik heb ooit gehoord over locaties via WiFi, dus ik verwacht dat ik hier op uit ga komen.

## Testopzet
Ik ga allereerst onderzoek doen naar artikelen online over hoe ik dit zou kunnen doen. Vervolgens wil ik een soorgelijke app maken als in mijn eerste PoC (LocateMe) maar dan met het energie gebruik in mind. Ik wil dan deze 2 apps met elkaar vergelijken om zo te achterhalen wat het verschil is in energie gebruik.

## Resultaat
Bij het zoeken naar energy efficiency m.b.t. location services in iOS kwam ik al snel de [Energy Efficiency Guide](https://developer.apple.com/library/content/documentation/Performance/Conceptual/EnergyGuide-iOS/LocationBestPractices.html) van Apple tegen. Deze heb ik doorgenomen en het blijkt dat ik hierdoor al een heel eind ben met het efficient verkrijgen van de locatie(s).

Ik heb deze guide gevolgd en een klein concept van de uiteindelijke app opgezet. Ik heb eens goed nagedacht over wanneer de locatie daadwerkelijk nodig is en heb het idee gekregen om iedereen altijd alle suggestie updates te sturen, en dan in-app pas te controleren of deze relevant is voor die gebruiker. Op deze manier hoef je dan maar 1x de locatie op te vragen (per app) om te checken of 1 van de suggesties nuttig is.

Wanneer iemand een suggestie accepteerd moeten we continu in de gaten gaan houden of iemand in de buurt is van de geaccepteerde suggestie. Hier heb ik er voor gekozen wel continu de locatie te updaten, maar alleen voor 'significant changes' te kijken (dus niet voor elke kleine 5 meter verandering een locatie te updaten). Wanneer iemand aangekomen is bij de suggestie worden de punten toegekend (in de uiteindelijke app) en wordt de locatie-monitoring gestopt.

Tevens heb ik de nauwkeurigheid op 100 meter gezet, wat ook weer minder energie kost.

Ik kan mijn hypothese niet volledig accepteren of verwerpen, omdat ik niet het energiegebruik kan achterhalen van de telefoon. Deze zou in XCode getoond moeten worden, echter blijft dit 'zero' bij beide projecten. Echter heb ik het aantal keren dat de locatie wordt opgehaald drastisch verlaagd waardoor dit toch een behoorlijke invloed zal hebben op het energie gebruik en ik naar verwachting de hypothese toch kan accepteren.
