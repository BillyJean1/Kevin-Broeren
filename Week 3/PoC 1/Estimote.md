# Automated assistant in a chat

## Inleiding
In dit onderzoek wil ik gaan onderzoeken of en hoe beacons een rol zouden kunnen spelen in een oplossing om de crowd control te verbeteren.

## Hypothese
Ik weet dat Apple vrij streng is met het openzetten/implementeren van API's.

## Testopzet
Ik heb via Johan Korten 2 setjes Estimote Location Beacons geregeld. Ik ga kijken of deze beacons op Android en iOS werken. Vervolgens ga ik kijken of er al een bestaande app is die ik kan gebruiken voor het testen van afstanden van de beacons en wat voor informatie ik verder nog uit de beacons kan halen.

## Resultaat
Estimote, de maker van de beacons, heeft zelf een [gratis app](https://itunes.apple.com/us/app/estimote/id686915066?mt=8) welke gebruikt kan worden om beacons in de buurt te scannen. Met deze app heb ik alle 6 de beacons kunnen vinden. De beacons werden in een radar getoond en vervolgens kon ik de afstand er van zien. Naast de afstand kun je ook o.a. de temperatuur meten en de lichtintensiteit, echter is dit voor in de Efteling wellicht niet interessant.

Dit idee zouden we in de Efteling kunnen toepassen door beacons op bepaalde lokaties te plaatsen zodat we kunnen zien wie er "in range" van de beacon is en op basis daarvan bepalen of hij/zij wel of niet een verzoek om naar een bepaalde lokatie te gaan krijgt. Dit zou een betere oplossing dan 'GPS' kunnen zijn omdat GPS evt. gespoofd kan worden en dat met beacons een stuk lastiger is. Hierdoor voorkom je dat mensen thuis al punten gaan verzamelen als ze een volgende dag pas naar de Efteling gaan.

![alt text](https://github.com/BillyJean1/Kevin-Broeren/raw/master/Week%203/PoC%201/images/app.png "De Estimote app")

Ik heb ook geprobeerd om zelf een app te maken. Echter krijg ik een foutmelding over permissies over Bluetooth/lokatie. De app zou hier echter zelf al om moeten vragen omdat ik deze in de .plist heb staan. Ik heb op de GitHub van Estimote aangegeven dat ik met dit probleem zit. Mits ik binnen een week een reactie krijg ga ik hier wellicht volgende week nog mee verder.

![alt text](https://github.com/BillyJean1/Kevin-Broeren/raw/master/Week%203/PoC%201/images/app_own.png "De Estimote app")
