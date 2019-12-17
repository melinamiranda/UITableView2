//
//  ViewController.swift
//  UITableView2
//
//  Created by Melina Miranda on 16/12/2019.
//  Copyright © 2019 Melina Miranda. All rights reserved.
//

import UIKit
import MapKit
class ViewController: UIViewController, MKMapViewDelegate, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableViewCell: UITableViewCell!
    @IBOutlet weak var CountryName: UILabel!
    @IBOutlet weak var CityName: UILabel!
    @IBOutlet weak var MapView: MKMapView!
    @IBOutlet weak var tableView: UITableView!
    
        
    struct City {
        var countryName: String
        var cityName: String
        var latitude: CLLocationDegrees
        var longitude: CLLocationDegrees
    }

    
    var cities = [City]()
    override func viewDidLoad() {
        super.viewDidLoad()
        cities = [
            
            City.init(countryName: "Brazil", cityName: "Brasilia", latitude: -15.7797200, longitude: 4.895168),
            
            City.init(countryName: "UK", cityName: "London", latitude: 51.5085300, longitude: -0.1257400 ),
            
            City.init(countryName: "Nueva Zelanda", cityName: "Auckland", latitude: -36.8500000, longitude: 174.7833300 ),
            
            City.init(countryName: "Australia", cityName: "Canberra",latitude: -35.2834587, longitude: 149.128067 ),
            
            City.init(countryName: "Netherlands", cityName: "Amsterdam", latitude: 52.370216, longitude: 4.895168),
        
        ]
    }
      func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
              return cities.count
       }
       
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          var cell = tableView.dequeueReusableCell(withIdentifier: "IDcell", for: indexPath)
        
            CLLocationCoordinate2DMake(cities[indexPath.row].latitude, cities[indexPath.row].longitude)

        cell = UITableViewCell(style: .subtitle, reuseIdentifier: "IDcell")
          cell.textLabel?.text = cities[indexPath.row].cityName
          cell.detailTextLabel?.text = cities[indexPath.row].countryName
          
       return cell
      }

    }
    

    
    


