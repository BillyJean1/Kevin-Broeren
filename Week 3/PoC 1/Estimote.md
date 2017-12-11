# Automated assistant in a chat

## Inleiding
In dit onderzoek wil ik gaan onderzoeken of en hoe beacons een rol zouden kunnen spelen in een oplossing om de crowd control te verbeteren.

## Hypothese
Ik weet dat Apple vrij streng is met het openzetten/implementeren van hardware API's. Tevens werken de beacons volgensmij met een soort van Bluetooth achtige technologie. In de lessen van DIA hebben we al eens met Swift en Bluetooth gewerkt, dit was toen ook nog best een gedoe om werkend te krijgen, gezien je met o.a. packet loss zat en met het adverteren als Bluetooth device wat lastig kon zijn. Daarom denk ik dat het nog wel eens lastig kan worden om deze beacons in Swift op iOS werkend te krijgen.

## Testopzet
Ik heb via Johan Korten 2 setjes Estimote Location Beacons geregeld. Ik ga kijken of deze beacons op Android en iOS werken. Vervolgens ga ik kijken of er al een bestaande app is die ik kan gebruiken voor het testen van afstanden van de beacons en wat voor informatie ik verder nog uit de beacons kan halen.

## Resultaat
Estimote, de maker van de beacons, heeft zelf een [gratis app](https://itunes.apple.com/us/app/estimote/id686915066?mt=8) welke gebruikt kan worden om beacons in de buurt te scannen. Met deze app heb ik alle 6 de beacons kunnen vinden. De beacons werden in een radar getoond en vervolgens kon ik de afstand er van zien. Naast de afstand kun je ook o.a. de temperatuur meten en de lichtintensiteit, echter is dit voor in de Efteling wellicht niet interessant.

Dit idee zouden we in de Efteling kunnen toepassen door beacons op bepaalde lokaties te plaatsen zodat we kunnen zien wie er "in range" van de beacon is en op basis daarvan bepalen of hij/zij wel of niet een verzoek om naar een bepaalde lokatie te gaan krijgt. Dit zou een betere oplossing dan 'GPS' kunnen zijn omdat GPS evt. gespoofd kan worden en dat met beacons een stuk lastiger is. Hierdoor voorkom je dat mensen thuis al punten gaan verzamelen als ze een volgende dag pas naar de Efteling gaan.

![alt text](https://github.com/BillyJean1/Kevin-Broeren/raw/master/Week%203/PoC%201/images/app.PNG "De Estimote app")

Ik heb ook geprobeerd om zelf een app te maken. Echter krijg ik een foutmelding over permissies over Bluetooth/locatie. De app zou hier echter zelf al om moeten vragen omdat ik deze in de .plist heb staan. Ik heb [op de GitHub van Estimote](https://github.com/Estimote/iOS-SDK/issues/274) aangegeven dat ik met dit probleem zit. Mits ik binnen een week een reactie krijg ga ik hier wellicht volgende week nog mee verder.

Ondertussen hebben de makers van Estimote [een reactie](https://github.com/Estimote/iOS-SDK/issues/274#issuecomment-348951429) geplaatst:

    Hey IncognitoCore 👋
    Thank you for bringing that up!
    It should work out-of-the-box as you say, expect an updated version of the templates soon 😉 (@beardaway is cracking it as we speak 💪).

    It's broken because of the new policy we use for Location Services permissions in the SDK. We used to ask for these permissions implicitly when starting monitoring, but a developer wouldn't have any control over permissions this way (e.g. what if a user disagrees?). That's the reason we switched to manual permission requesting (like you do when using Apple's Core Location).

    That's how it all works now:
    • ESTMonitoringV2Manager provides an interface for requesting permissions with either -requestAlwaysAuthorization or -requestWhenInUseAuthorization.
    • ESTMonitoringV2Manager also provides a readonly property to check for current authorizationStatus.
    • ESTMonitoringV2ManagerDelegate is additionally informed whenever the authorization status changes with -monitoringManager:didChangeAuthorizationStatus:authorizationStatus.

    Does that answer your question? What do you think about all of that?

![alt text](https://github.com/BillyJean1/Kevin-Broeren/raw/master/Week%203/PoC%201/images/own_app.PNG "De Estimote app")

Ik kan mijn hypothese echter verwerpen, want naast dat er een fout in het framework zat, was het wel erg makkelijk om de beacons werkend te krijgen. Met de standaard app van de fabrikant werkte de beacons out-of-the-box.
