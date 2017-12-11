//
//  ViewController.swift
//  LocateMeLowEnergy
//
//  Created by Kevin Broeren on 11/12/2017.
//  Copyright © 2017 Kevin Broeren. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController {
    
    var locationManager = CLLocationManager()
    var currentLocation: CLLocation? {
        didSet {
            print(" > Received location update: coordinates (\(currentLocation?.coordinate) fetched at \(currentLocation?.timestamp).")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager = CLLocationManager()
        locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters // lower accuracy
        locationManager.requestAlwaysAuthorization()
        locationManager.distanceFilter = 50
        locationManager.delegate = self
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func acceptSuggestion(_ sender: UIButton) {
        print("Accepted suggestion!")
        startMonitoringLocation()
    }
    
    @IBAction func arrivedAtSuggestion(_ sender: UIButton) {
        print("Arrived at suggestion!")
        stopMonitoringLocation()
    }
    
    @IBAction func receivedSuggestionUpdate(_ sender: UIButton) {
        print("Received suggestionlist update!")
        requestLocationOnce()
    }
    
    func requestLocationOnce() {
        self.locationManager.requestLocation()
        print(" ... Requested location once!")
    }
    
    func startMonitoringLocation() {
        locationManager.startMonitoringSignificantLocationChanges() // significant
        print(" ... Watching for significant updates to your location.")
    }
    
    func stopMonitoringLocation() {
        locationManager.stopMonitoringSignificantLocationChanges()
        print(" ... Stopped watching for significant updates to your location.")
    }

}

extension ViewController: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        currentLocation = locations.last!
    }
    
    // Handle authorization for the location manager.
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        switch status {
        case .restricted:
            print("Location access was restricted.")
        case .denied:
            print("User denied access to location.")
        case .notDetermined:
            print("Location status not determined.")
            locationManager.requestWhenInUseAuthorization()
        case .authorizedAlways: fallthrough
        case .authorizedWhenInUse:
            print("Location status is OK.")
        }
    }
    
    // Handle location manager errors.
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        locationManager.stopUpdatingLocation()
        print("Error: \(error)")
    }
}

