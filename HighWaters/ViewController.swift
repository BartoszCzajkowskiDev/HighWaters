//
//  ViewController.swift
//  HighWaters
//
//  Created by Bartosz Czajkowski on 10/10/2018.
//  Copyright © 2018 BartoszCzajkowski. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    private var locationManager: CLLocationManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.locationManager = CLLocationManager()
        self.locationManager.delegate = self
        
        self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
        self.locationManager.distanceFilter = kCLDistanceFilterNone
        
        self.locationManager.requestWhenInUseAuthorization()
        
        self.mapView.showsUserLocation = true
        self.mapView.delegate = self
        
        self.locationManager.startUpdatingLocation()
    }


}

