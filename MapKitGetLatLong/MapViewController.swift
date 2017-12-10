//
//  MapViewController.swift
//  MapKitGetLatLong
//
//  Created by Ani Adhikary on 25/07/17.
//  Copyright © 2017 Ani Adhikary. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(MapViewController.mapTapped(recognizer:)))
        tapGestureRecognizer.numberOfTapsRequired = 1
        
        mapView.isUserInteractionEnabled = true
        mapView.addGestureRecognizer(tapGestureRecognizer)
    }
    
    @objc func mapTapped (recognizer: UITapGestureRecognizer) {
        let touchLocation = recognizer.location(in: mapView)
        let locationCoordinate = mapView.convert(touchLocation, toCoordinateFrom: mapView)
        print("Tapped at latitude: \(locationCoordinate.latitude) longitude: \(locationCoordinate.longitude)")
        return

    }
}
