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
    var text: String
}
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var cities = [City]()
    
    override func viewDidLoad() {
    super.viewDidLoad()
        cities = [
            City.init(countryName: "UK", cityName: "London", latitude: 51.5085300, longitude: -0.1257400, text: "Londres, la capital de Inglaterra y del Reino Unido, es una ciudad del siglo XXI con una historia que se remonta a la época romana. En su centro se alzan el imponente Palacio del Parlamento, la torre del icónico reloj Big Ben y la Abadía de Westminster, lugar de las coronaciones monárquicas británicas." ),
            City.init (countryName: "Brazil", cityName: "Brasilia", latitude: -15.7797200, longitude:-47.9297200, text: ""),
            City.init(countryName: "New Zealand", cityName: "Auckland", latitude: -36.8500000, longitude: 174.7833300, text: "" ),
            City.init(countryName: "Australia", cityName: "Canberra", latitude: -35.2834587, longitude: 149.128067, text: "" ),
            City.init(countryName: "Netherlands", cityName: "Amsterdam", latitude: 52.370216, longitude: 4.895168, text: ""),
            City.init(countryName: "United States", cityName: "New York", latitude: 40.7127837, longitude: -74.0059413, text: ""),
            City.init(countryName: "France", cityName: "Paris", latitude:48.8566969, longitude: 2.3514616, text: ""),
            City.init(countryName: "Norway", cityName: "Oslo", latitude: 59.9133301, longitude: 10.7389701, text: ""),
            City.init(countryName: "Ireland", cityName: "Dublin", latitude: 53.4064294, longitude:-6.2871015, text: ""),
            City.init(countryName: "Scotland, UK", cityName: "Edinburgh", latitude: 55.953251, longitude:  -3.188267, text: ""),
            City.init(countryName: "Germany", cityName: "Berlin", latitude: 52.5122100, longitude: 13.3269700, text: "")
        ]
        
        tableView.rowHeight = 300
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CityTableViewCell", for: indexPath) as! CityTableViewCell
        cell.showCity(city: City(countryName: cities[indexPath.row].countryName, cityName: cities[indexPath.row].cityName, latitude: cities[indexPath.row].latitude, longitude: cities[indexPath.row].longitude, text: cities[indexPath.row].text))
        cell.countryName.text = cities[indexPath.row].countryName
        cell.countryName.text = cities[indexPath.row].cityName
        cell.countryName.textColor = .blue
        return cell
    }

}
