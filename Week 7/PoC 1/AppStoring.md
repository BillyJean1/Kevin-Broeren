# AppStoring

## Inleiding
De opdrachtgever wil graag de app releasen in de App Store. We zijn allemaal nog niet bekend met hoe we een app in de App Store kunnen zetten dus dit moet uitgezocht worden. Om deze reden is dit onderzoek dus ook relevant aan dit project, we hebben de kennis nog niet en gaan het (eventueel) wel toepassen. Of we dit wel of niet gaan doen hangt af van de tijd die we nog hebben in combinatie met het resultaat van dit onderzoek.

## Hypothese
Ik weet dat de keuringen voor de App Store erg streng zijn en lang kunnen duren. Ik denk dus dat ik niet vandaag al een goedkeuring ga krijgen. Ik probeer de app zo klein mogelijk te houden zodat deze minder 'tricky' dingen kan bevatten welke de release zouden kunnen tegen houden.

## Testopzet
Er een betaald account voor nodig om een app te releasen. Ik wil hiervoor het account van de HAN gaan gebruiken, maar Johan gaf laatst aan dat dit account deels gelimiteerd was. Ik hoop dat het wel mogelijk is om een test-release online te zetten in "TestFlight", een onderdeel van de App Store. Wanneer het niet lukt om met dit account een app in de App Store/TestFlight ga zetten ga ik dit uitvoeren tot waar dit mogelijk is, en de rest onderzoeken met behulp van tutorials of guides op het internet.
Gezien alles wat wij voor de opdrachtgever ontwikkelen tijdens dit project onder NDA valt, kan ik niet de daadwerkelijke app gebruiken. Om het NDA niet te schaden zal ik daarom zelf een andere kleine app proberen in de App Store te zetten.

## Resultaat
Ik heb allereerst gekeken welke stappen ik moet doorlopen om mijn app te uploaden, en waar ik deze moet uitvoeren. Ik kwam [deze tutorial tegen]https://www.raywenderlich.com/133121/testflight-tutorial-ios-beta-testing) waarin dit staat beschreven.

Bij het volgen van deze tutorial wou stap 2, het archiveren van de app, niet lukken. Het bleek dat mijn target op de iPhone 8 simulator stond, in plaats van de 'Generic iOS Device', zoals ik [hier](https://stackoverflow.com/a/36799270/5437768) heb gelezen.
Daarna kreeg ik bij stap 3 de melding dat ik geen iTunes Connect toegang zou hebben op het account van de HAN. Bij het lezen van [de guidance van Apple](https://developer.apple.com/library/content/documentation/LanguagesUtilities/Conceptual/iTunesConnect_Guide/Chapters/SettingUpUserAccounts.html) kwam ik er al snel achter dat het niet mogelijk was om mijzelf [toe te voegen aan iTunes Connect](https://itunesconnect.apple.com/WebObjects/iTunesConnect.woa/ra/ng/users_roles), wat ik nodig heb om de app in de App Store of in TestFlight te zetten.

Zoals ik heb aangegeven in mijn Hypothese ga ik nu verder met het theoretisch uitwerken van deze PoC in plaats van het in praktijk brengen hier van. Hierna lijkt het proces erg simpel. Je kiest je development team, je klikt op upload, en je bent klaar.

## Resultaat (toevoeging)
Toevallig heb ik deze week op mijn werk een app moeten uploaden naar TestFlight. Ik heb hier bovenstaande proces doorlopen en ben hier niet tegen (aan onze app gerelateerde) problemen aangelopen. Ik had wat problemen met het builden vanuit Ionic. Het builden was wel een paar keer verkeerd gegaan door die reden waardoor ik er achter kwam dat je wel elke keer je versie nummer moest verhogen, anders geeft hij aan dat die versie al bestaat. Ik moest mijzelf ook nog toevoegen aan het iTunes Connect team van mijn bedrijf, maar dit ging gemakkelijk zoals beschreven in mijn eerste resultaat. Het laatste waar ik tegen aan liep was dat de app was afgekeurd, omdat er geen icons in stonden. Dit is schijnbaar verplicht alvorens een app getest mag worden.
