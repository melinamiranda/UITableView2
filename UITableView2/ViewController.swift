//
//  ViewController.swift
//  UITableView2
//
//  Created by Melina Miranda on 16/12/2019.
//  Copyright © 2019 Melina Miranda. All rights reserved.
//

import UIKit
import MapKit
class ViewController: UIViewController, MKMapViewDelegate{
    
    @IBOutlet weak var tableViewCell: UITableViewCell!
    @IBOutlet weak var CountryName: UILabel!
    @IBOutlet weak var CityName: UILabel!
    @IBOutlet weak var MapView: MKMapView!
    
    struct name {
        var CountryName: String
        var CityName: String
        var lattitude: CLLocationDegrees
        var longitude: CLLocationDegrees
    }
    
    var Names = [name]()
    override func viewDidLoad() {
        super.viewDidLoad()
        Names = [
            
            name.init(CountryName: "Brazil", CityName: "Brasilia", lattitude: -15.7797200, longitude: 4.895168),
            
            name.init(CountryName: "UK", CityName: "London", lattitude: 51.5085300, longitude: -0.1257400 ),
            
            name.init(CountryName: "Nueva Zelanda", CityName: "Auckland", lattitude: -36.8500000, longitude: 174.7833300 ),
            
            name.init(CountryName: "Australia", CityName: "Canberra", lattitude: -35.2834587, longitude: 149.128067 ),
            
            name.init(CountryName: "Netherlands", CityName: "Amsterdam", lattitude: 52.370216, longitude: 4.895168),
        
        ]
    }
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        var names = mapView.dequeueReusableAnnotationView(withIdentifier: "IDCell", for: )
   
    return names
    }
     
    }
    

    
    


