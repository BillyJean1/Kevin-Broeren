# Firebase in Swift

## Inleiding
In dit onderzoek wil ik gaan onderzoeken hoe Firebase werkt in Swift/iOS. Dit zou als realtime oplossing kunnen dienen om een realtime plattegrond of lijst van wachttijden te laten zien aan de gebruiker van de app, en is dus relevant aan het huidige project.

## Hypothese
Ik heb reeds Core Data gebruikt in het MAD/DIA eindproject. Ook heb ik al eens eerder in Ionic Firebase geintregreerd, dat ging vrij makkelijk, maar Ionic gebruikt Angular wat van Google is, dus dit kan nu eventueel wel wat lastiger zijn.
Ik verwacht echter van mijn ervaringen met Google dat het mij binnen 4 uur wel moet lukken om een real-time connectie te maken met Firebase vanuit de Swift app.

## Testopzet
Ik ga een app maken in Swift 4 voor iOS 11, hierin wil ik binnen 4 uur het voor elkaar krijgen om attractienamen met bijbehorende wachttijden in te kunnen laden bij het opstarten van de app en de wijzigingen (edit/remove) kunnen doorvoeren zodra er iets aangepast wordt in de backend (console.firebase.com).

## Resultaat
Om tot het gewenste resultaat te komen heb ik gebruik gemaakt van [deze tutorial](https://www.raywenderlich.com/139322/firebase-tutorial-getting-started-2), [de beschrijving van Google zelf](https://firebase.google.com/docs/ios/setup) en [deze post op StackOverflow](https://stackoverflow.com/questions/44499210/ios-display-firebase-data-in-tableview).

Met deze hulpmiddelen is het mij inderdaad gelukt om binnen 4 uur een werkende app op te zetten waar realtime wijzigingen worden doorgevoerd.

![alt text](https://github.com/BillyJean1/Kevin-Broeren/raw/master/Week%203/PoC%202/images/app.PNG "Swift app")

Mijn hypothese was dus correct. Het is mij binnen 4 uur gelukt om een simpele Firebase connectie op te zetten welke realtime update. De documentatie hiervoor was erg goed
