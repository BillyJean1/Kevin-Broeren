# Google Maps in Swift

## Inleiding
In dit onderzoek wil ik kijken hoe we een heatmap kunnen weergeven van de drukte op bepaalde punten. Ik heb al een klein stukje voor onderzoek gedaan: Google biedt de optie om op een Google Maps kaart een heatmap te tekenen (in iOS).

## Hypothese
In week 2 heb ik onderzoek gedaan naar het weergeven van een Google Maps kaart in Swift/iOS. Dit is toen erg goed gegaan, na enkele Pods toegevoegd te hebben en de stappen in de tutorial van Google gevolgd te hebben kon ik al een map tonen. Ik verwacht dus ook dat een heatmap op deze kaart tekenen niet veel lastiger zal zijn.

## Testopzet
Ik ga de 'Locate Me' app, uit de proof of concept app van week 2 gebruiken. Deze app bevat al de code om een kaart te tonen op een bepaalde positie. Deze kaart ga ik op de Efteling zetten en vervolgens een Heatmap op drukke attracties te tekenen.

## Resultaat
Het werkend krijgen van een Heatmap was toch een stuk lastiger dan ik verwacht had, daarom wil ik ook mijn hypothese verwerpen. Het is mij echter wel gelukt om de heatmap werkend te krijgen, maar met de nodige 'struggles'.

De library van Google bleek geschreven te zijn in Objective C. Deze library moest ik handmatig importeren (niet via een PodFile). Daarna moest ik een headerbridge aan maken, wat niet werkte op de 'standaard' manier (automatische detectie) omdat de naam van mijn app een spatie bevatte, en Swift mijn headerfile daardoor niet goed detecteerde. Ik heb toen in mijn Build Settings de headerbride locatie handmatig toegevoegd (en met handmatige module name, automatisch pakte hij de verkeerde namelijk 'Locate_Me' in plaats van 'Locate Me').

Na dit gedaan te hebben moest ik nog even wat drukke locaties toe voegen aan een .json file. Hierna kon ik de heatmap op de kaart zien.
![alt text](https://github.com/BillyJean1/Kevin-Broeren/raw/master/Week%204/PoC%201/images/app.PNG "Swift app")
