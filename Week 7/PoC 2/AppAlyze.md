# AppAlyze

## Inleiding
We moeten deze laatste weken gaan testen of de app ook daadwerkelijk gaat zorgen dat mensen zich gaan verplaatsen naar minder drukke gebieden, dus of het concept werkt. Dit bracht mij op het idee dat de opdrachtgever wellicht ook wil gaan testen of en hoe de app gebruikt wordt. Ik wil in deze PoC gaan onderzoeken of daar al bestaande oplossingen voor zijn om zoiets te testen en hoe dat te integreren valt. Deze PoC is gerelateerd aan het project, omdat deze kan laten zien of de crowd control werkt en waar eventuele verbeterpunten liggen.

## Hypothese
Ik weet dat op websites vaak wordt bijgehouden waar iemand zijn cursor plaatst en hoelang deze op die lokatie blijft staan. Tevens worden vaak de clicks van de gebruiker opgeslagen: Waar klikt hij op? Wanneer doet hij dit? Hoelang blijft hij op die pagina?

## Testopzet
Ik ga allereerst kijken of er bestaande frameworks zijn die dit afhandelen. Wanneer die er zijn ga ik die proberen te integreren in onze app. Mochten deze er niet zijn ga ik kijken of ik zelf iets kan schrijven, wellicht a.d.h.v. een tutorial.

## Resultaat
Ik ben op Google gaan zoeken naar frameworks voor App Analysis. Ik heb hiervoor [dit artikel](https://medium.com/@Appseecom/top-11-ios-app-analytics-in-2017-8cf64129855d) gevonden waarin [Appsee](https://www.appsee.com/) mij het meest aansprak. Deze ondersteund namelijk als enige 'touch heatmaps' wat erg veel lijkt op click heatmaps welke ik ken van Google. Tevens ziet het voorbeeld scherm wat ze er bij hebben gezet er erg overzichtelijk en veel belovend uit.

Ik heb de keuze gemaakt om toen Appsee te gaan gebruiken. Ik heb hier een account aangemaakt en heb een gratis trial van 14 dagen gestart. Om Appsee werkend te krijgen in onze app heb ik de door hen opgestelde [installatie manual](https://www.appsee.com/docs/ios/native) gevolgd en heb hier gekozen voor de 'Swift' integratie. Toen was het een kwestie van een Pod toevoegen en deze te importeren. Vervolgens nog even het App ID toe te voegen aan de AppDelegate en klaar.

Ik heb toen zoals beschreven de app gestart en deze geminimalizeerd (zoals ook staat aangegeven in de installatie handleiding verstuurd de app de klik informatie pas bij het minimalizeren er van). Ik kon toen al direct zien in [het dashboard](https://dashboard.appsee.com/home/recrowd-test?platform=ios#/overview/index#ios/all/month/all) dat de app gestart was en op welk scherm ik geweest was. De keuze die gemaakt is om de data pas te versturen bij het minimalizeren is opzich begrijpelijk (anders is het niet te meten hoelang iemand een screen open heeft), maar ik moet nog zien hoe de app dan data verstuurd bij een crash. Mijn app is namelijk 1x gecrasht maar hier zie ik niks van terug.

Ik heb toen de app 10x opnieuw opgestart waarbij ik 9x gekozen heb om in te loggen via Facebook en 1x via Email. In de heatmap op het dashboard was toen ook duidelijk te zien dat de facebook knop veel vaker gebruikt was.
![alt text](https://github.com/BillyJean1/Kevin-Broeren/raw/master/Week%207/PoC%202/images/dashboard_detail.png "Dashboard overzicht")

Tevens gaf dit dashboard ook nog veel andere informatie, waaronder welke pagina's/schermen de gebruiker heeft gezien, hoelang hij daar op gebleven is en bij welk scherm hij is gestopt.
![alt text](https://github.com/BillyJean1/Kevin-Broeren/raw/master/Week%207/PoC%202/images/dashboard.png "Dashboard overzicht")
