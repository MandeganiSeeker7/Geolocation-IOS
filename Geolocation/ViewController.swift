//
//  ViewController.swift
//  Geolocation
//
//  Created by Thomas Mandegani on 8/30/17.
//  Copyright © 2017 Thomas Mandegani. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {
    
    @IBOutlet weak var Map: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let location = CLLocationCoordinate2DMake(
                -7.779285,
                110.416259)
        
        let span = MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.002)
        let region = MKCoordinateRegion(center: location, span: span)
        
        Map.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "Universitas Atma Jaya"
        annotation.subtitle = "Kampus 3"
        
        Map.addAnnotation(annotation)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

