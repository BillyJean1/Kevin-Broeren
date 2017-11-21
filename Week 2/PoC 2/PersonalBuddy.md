# Automated assistant in a chat

## Inleiding
In dit onderzoek wil ik bekijken hoe een personal assitant in een chat applicatie en of het een idee zou zijn om dit te gebruiken als onderdeel van een oplossing voor het verbeteren van de crowd control.

## Hypothese
Volgens wat ik op het internet heb gevonden toen ik aan het zoeken was naar onderwerpen voor mijn onderzoek is dialogflow (voorheen api.ai) een van de gemakkelijkere/gebruiksvriendelijkere ai-systemen. Een tijdje terug is api.ai opgekocht door Google. Ik verwacht dus dat deze technology gemakkelijk in te bouwen is in Ionic (wat Angular, wat ook van Google is, gebruikt).

## Testopzet
Ik wil de ai proberen in een app te zetten, ookal zou ik de ai ook al kunnen testen op dialogflow.com zelf. Dan kan ik direct de (rest) api ervan testen en laten zien dat het ook in een chat werkt.

## Resultaat
Het is me gelukt om een app te maken en daar de ai in te verwerken. In eerste instantie heb ik wel wat problemen gehad met het maken van een post of get request. In eerste instantie heb ik dit geprobeerd met ionic native wat mij problemen op leverde, in eerste instantie met het op mijn iphone zetten van de app, maar later ook met het uitvoeren van het request. Ik ben toen overgegaan naar angular http in plaats van ionic http zoals geadviseerd op [dit forum](https://forum.ionicframework.com/t/http-plugin-is-not-installed/94579).

Toen ik eenmaal requests kon maken naar dialogflow.com heb ik dialogflow gevuld met wat data, zoals hier te zien is:
![alt text](https://github.com/BillyJean1/Kevin-Broeren/raw/master/Week%202/PoC%202/images/screenshot2.png "De data in dialogflow")

Vervolgens heb ik mijn app verder getest en ontwikkeld zodat er via de app een query ingetypt en verstuurd kan worden. Deze query wordt 'geresolved' door dialogflow.com en er wordt vervolgens een reactie opgegeven. Als dialogflow.com nog niet genoeg data heeft om je vraag te beantwoorden vraagt hij door, zoals te zien is in onderstaand voorbeeld wanneer er naar 'wachttijd' gevraagd wordt.
![alt text](https://github.com/BillyJean1/Kevin-Broeren/raw/master/Week%202/PoC%202/images/screenshot1.png "De app")
