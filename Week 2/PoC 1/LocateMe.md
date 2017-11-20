# Google Maps in Swift

## Inleiding
In dit onderzoek wil ik bekijken of, en hoe, een iOS app, geschreven in Swift, de huidige locatie van een gebruiker kan weergeven in Google Maps.

## Hypothese
Ik heb al ooit met services/API's van Google gewerkt (bijv. Firebase) en heb de ervaring dat dit meestal goed gedocumenteerd, en makkelijk te implementeren is. Ik verwacht dus ook dat ik binnen de 4 uur die ik aan dit onderzoek wil spenderen de Maps API volledig kan implementeren; een map op het scherm laten zien en een marker kan plaatsen waar de gebruiker zich bevindt.

## Testopzet
Allereerst wil ik deze tutorial een keer doorlezen en kijken naar [de voorbeeld code van Google](https://github.com/googlemaps/maps-sdk-for-ios-samples). Vervolgens wil ik gaan proberen Google Maps in een Swift app te implementeren door de stappen te volgen die [door Google zelf zijn beschreven](https://developers.google.com/maps/documentation/ios-sdk/map-with-marker).

## Resultaat
Allereerst heb ik de GoogleMaps pod toegevoegd aan mijn Podfile.

    # Uncomment the next line to define a global platform for your project
    # platform :ios, '9.0'

    target 'Locate Me' do
      # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
      use_frameworks!
      pod 'GoogleMaps', '= 2.3.0'
    end

Hierna kon ik al snel een map laten zien op mijn iPhone.

    let camera = GMSCameraPosition.camera(withLatitude: -33.86, longitude: 151.20, zoom: 6.0)
    let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
    view = mapView

Ook het toevoegen en laten zien van een marker was erg simpel.

    let marker = GMSMarker()
    marker.position = CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20)
    marker.title = "Sydney"
    marker.snippet = "Australia"
    marker.map = mapView

Dit heb ik later uitgebreid met het laten zien van de huidige locatie. Hiervoor heb ik ook de GooglePlaces pod en de GooglePlacePicker pod toegevoegd aan mijn Podfile.

Wanneer de app open is kan ik de locatie opvragen van de gebruiker. Als ik deze heb gekregen laat ik de map daar naar toe "scrollen" en vervolgens plaats ik daar een marker. Als de gebruiker zijn locatie wijzigd vervang ik de marker met een nieuwe marker van zijn nieuwe locatie.

Ik kan dus concluderen dat mijn hypothese klopte want ik heb binnen minder dan 4 uur deze app zonder veel moeite op kunnen zetten.
