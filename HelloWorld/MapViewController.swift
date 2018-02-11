//
//  MapViewController.swift
//  HelloWorld
//
//  Created by Laura Carrillo on 2/10/18.
//  Copyright © 2018 Chaselyn Baca. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    let initialLocation = CLLocation(latitude: 33.7756, longitude: -84.398881)
    let regionRadius: CLLocationDistance = 2000

  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        centerMapOnLocation(location: initialLocation)
        
        let artwork = ViewArtwork(title: "Planned Parenthood",
                              locationName: "East Atlanta Village",
                              coordinate: CLLocationCoordinate2D(latitude: 33.7421, longitude: -84.3489))
        mapView.addAnnotation(artwork)
    
    }
    
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,regionRadius, regionRadius)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    
    @IBOutlet var mapView: MKMapView!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
