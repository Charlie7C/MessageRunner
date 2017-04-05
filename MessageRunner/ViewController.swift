//
//  ViewController.swift
//  MessageRunner
//
//  Created by Charlie on 4/04/17.
//  Copyright © 2017 cc. All rights reserved.
//

import UIKit
import Mapbox

class ViewController: UIViewController, MGLMapViewDelegate{

    @IBOutlet var map: MGLMapView!
    override func viewDidLoad() {
    super.viewDidLoad()
      map.delegate = self
    let point = MGLPointAnnotation()
    point.coordinate = CLLocationCoordinate2D(latitude: -41.296072, longitude: 174.77531)
        
        point.title = "Ben"
        point.subtitle = "Hi,love! the shopping list is here. love ya!"
     map.addAnnotation(point)
        
        let point1 = MGLPointAnnotation()
        point1.coordinate = CLLocationCoordinate2D(latitude: -41.292120,  longitude: 174.778107)
        
        point1.title = "Amy"
        point1.subtitle = "Your daily workout plan is here! check it out!"
        map.addAnnotation(point1)
    }
    
    
    func mapView(mapView: MGLMapView, annotationCanShowCallout annotation: MGLAnnotation) -> Bool {
        // Always try to show a callout when an annotation is tapped.
        return true
    }
    
    // Or, if you’re using Swift 3 in Xcode 8.0, be sure to add an underscore before the method parameters:
    func mapView(_ mapView: MGLMapView, annotationCanShowCallout annotation: MGLAnnotation) -> Bool {
        // Always try to show a callout when an annotation is tapped.
        return true
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

