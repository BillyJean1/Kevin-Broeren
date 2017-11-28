# Firebase in Swift

## Inleiding
In dit onderzoek wil ik gaan onderzoeken hoe Firebase werkt in Swift/iOS. Dit zou als realtime oplossing kunnen dienen om een realtime plattegrond of lijst van wachttijden te laten zien aan de gebruiker van de app.

## Hypothese
Ik heb reeds Core Data gebruikt in het MAD/DIA eindproject. Ook heb ik al eens eerder in Ionic Firebase geintregreerd, dat ging vrij makkelijk, maar Ionic gebruikt Angular wat van Google is, dus dit kan nu eventueel wel wat lastiger zijn.
Ik verwacht echter van mijn ervaringen met Google dat het mij binnen 4 uur wel moet lukken om een real-time connectie te maken met Firebase vanuit de Swift app.

## Testopzet
Ik ga een app maken in Swift 4 voor iOS 11, hierin wil ik binnen 4 uur het voor elkaar krijgen om attractienamen met bijbehorende wachttijden in te kunnen laden bij het opstarten van de app en de wijzigingen (edit/remove) kunnen doorvoeren zodra er iets aangepast wordt in de backend (console.firebase.com).

## Resultaat
Om tot het gewenste resultaat te komen heb ik gebruik gemaakt van [deze tutorial](https://www.raywenderlich.com/139322/firebase-tutorial-getting-started-2), [de beschrijving van Google zelf](https://firebase.google.com/docs/ios/setup) en [deze post op StackOverflow](https://stackoverflow.com/questions/44499210/ios-display-firebase-data-in-tableview).

Met deze hulpmiddelen is het mij inderdaad gelukt om binnen 4 uur een werkende app op te zetten waar realtime wijzigingen worden doorgevoerd.

![alt text](https://github.com/BillyJean1/Kevin-Broeren/raw/master/Week%203/PoC%202/images/app.png "Swift app")

Ik heb ook geprobeerd om zelf een app te maken. Echter krijg ik een foutmelding over permissies over Bluetooth/lokatie. De app zou hier echter zelf al om moeten vragen omdat ik deze in de .plist heb staan. Ik heb op de GitHub van Estimote aangegeven dat ik met dit probleem zit. Mits ik binnen een week een reactie krijg ga ik hier wellicht volgende week nog mee verder.

![alt text](https://github.com/BillyJean1/Kevin-Broeren/raw/master/Week%203/PoC%201/images/app_own.png "De Estimote app")
