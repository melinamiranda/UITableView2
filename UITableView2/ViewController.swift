//
//  ViewController.swift
//  UITableView2
//
//  Created by Melina Miranda on 16/12/2019.
//  Copyright © 2019 Melina Miranda. All rights reserved.
//

import UIKit
import MapKit



struct City {
       var countryName: String
       var cityName: String
       var latitude: CLLocationDegrees
       var longitude: CLLocationDegrees
  }


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
   
    @IBOutlet weak var tableView: UITableView!
    
    var cities = [City]()
    override func viewDidLoad() {
    super.viewDidLoad()
        cities = [
        
            City.init (countryName: "Brazil", cityName: "Brasilia", latitude: -15.7797200, longitude:-47.9297200),
        
            City.init(countryName: "UK", cityName: "London", latitude: 51.5085300, longitude: -0.1257400 ),
        
            City.init(countryName: "New Zealand", cityName: "Auckland", latitude: -36.8500000, longitude: 174.7833300 ),
        
            City.init(countryName: "Australia", cityName: "Canberra", latitude: -35.2834587, longitude: 149.128067 ),
        
            City.init(countryName: "Netherlands", cityName: "Amsterdam", latitude: 52.370216, longitude: 4.895168),
                   
    ]
     
        tableView.rowHeight = 80
      
    }
    
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return cities.count
           }
    
           
           func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

            let cell = tableView.dequeueReusableCell(withIdentifier: "CityTableViewCell", for: indexPath) as! CityTableViewCell
            
            cell.showCity(city: City(countryName: cities[indexPath.row].countryName, cityName: cities[indexPath.row].cityName, latitude: cities[indexPath.row].latitude, longitude: cities[indexPath.row].longitude))
            
            cell.cityName.text = cities[indexPath.row].cityName
            cell.countryName.text = cities[indexPath.row].countryName
            
            return cell
           }
        
    }
