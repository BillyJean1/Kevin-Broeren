# Receiving Push notifications

## Inleiding
Recentelijk heb ik gehoord dat het ontvangen van push notificaties in iOS lastiger blijkt te zijn dan gedacht. Ramon heeft dit geprobeerd i.c.m. Firebase en bij hem wou het niet echt lukken. Gezien ik de enige van ons groepje ben met een iOS device lijkt het mij nuttig om zelf ook eens te kijken of ik dit werkend krijg gezien we dit toch willen gaan gebruiken uiteindelijk en er een echt device benodigd blijkt te zijn om push notificaties te testen. Daarom lijkt me dit ook toepasselijk voor ons project.

## Hypothese
Ik verwacht dat ik binnen 4 uur een werkende app kan opzetten welke push notificaties kan ontvangen vanaf een externe bron.

## Testopzet
Ik ga een app opzetten aan de hand van [deze tutorial](https://www.raywenderlich.com/156966/push-notifications-tutorial-getting-started).

## Resultaat
Ik heb via het HAN developers account een app aangemaakt en deze geregistreerd in het Apple Developer portal. Hierbij heb ik aangegeven push notificaties te willen ontvangen en heb ik een certificaat moeten aanmaken om mij daarbij te autenticeren.

Dit certificaat heb ik vervolgens aan mijn mac toegevoegd. Middels een print in de code ben ik achter mijn device token gekomen en heb ik mijzelf een pushnotificatie kunnen sturen via [Pusher](https://github.com/noodlewerk/NWPusher).

Ik kan mijn hypothese accepteren omdat het mij binnen 4 uur gelukt is om een werkende pushnotificatie app te maken.

![alt text](https://github.com/BillyJean1/Kevin-Broeren/raw/master/Week%205/PoC%202/images/app.PNG "Pushnotificatie app")
