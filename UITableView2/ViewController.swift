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
    var urlImage: String
}
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    var cities = [City]()
    
    override func viewDidLoad() {
    super.viewDidLoad()
        cities = [
            City.init(countryName: "UK", cityName: "London", latitude: 51.5085300, longitude: -0.1257400, text: "London is the capital and largest city of England and the United Kingdom. Standing on the River Thames in the south-east of England.", urlImage: "https://upload.wikimedia.org/wikipedia/commons/8/87/Palace_of_Westminster_from_the_dome_on_Methodist_Central_Hall.jpg"),
            
            City.init (countryName: "Brazil", cityName: "Brasilia", latitude: -15.7797200, longitude:-47.9297200, text: "Brasília is the federal capital of Brazil and seat of government of the Federal District. The city is located atop the Brazilian highlands in the country's center-western region.",urlImage: "https://upload.wikimedia.org/wikipedia/commons/5/55/BrasiliaBanNacional.jpg"),
            
            City.init(countryName: "New Zealand", cityName: "Auckland", latitude: -36.8500000, longitude: 174.7833300, text: "Auckland is a city in the North Island of New Zealand, and the country's largest city. The most populous urban area in the country, Auckland has an urban population of around 1,570,100.",urlImage: "https://upload.wikimedia.org/wikipedia/commons/9/9d/Rangitoto_Island_North_Head.jpg" ),
            
            City.init(countryName: "Australia", cityName: "Canberra", latitude: -35.2834587, longitude: 149.128067, text: "Canberra is the capital city of Australia. Founded following the federation of the colonies of Australia as the seat of government for the new nation.",urlImage: "https://upload.wikimedia.org/wikipedia/commons/f/f2/Civic1.JPG" ),
            
            City.init(countryName: "Netherlands", cityName: "Amsterdam", latitude: 52.370216, longitude: 4.895168, text: "Amsterdam is the official capital and most populous city of the Netherlands; with a population of 872,680 within the city proper, 1,380,872 in the urban area.",urlImage: "https://upload.wikimedia.org/wikipedia/commons/5/51/Red-light_district_of_Amsterdam_by_day._2012.JPG"),
            
            City.init(countryName: "United States", cityName: "New York", latitude: 40.7127837, longitude: -74.0059413, text: "New York City, also known as the City of New York or simply New York, is the most populous city in the United States.",urlImage: "https://upload.wikimedia.org/wikipedia/commons/d/d2/Manhattan_at_Dusk_by_slonecker.jpg"),
            
            City.init(countryName: "France", cityName: "Paris", latitude:48.8566969, longitude: 2.3514616, text: "Paris is the capital and most populous city of France, with a population of 2,140,526 residents in an area of 105 square kilometres (41 square miles).",urlImage: "https://upload.wikimedia.org/wikipedia/commons/a/a4/NotreDameDeParis.jpg"),
            
            City.init(countryName: "Norway", cityName: "Oslo", latitude: 59.9133301, longitude: 10.7389701, text: "Oslo is the capital and most populous city of Norway. It constitutes both a county and a municipality. During the Viking Age the area was part of Viken.",urlImage: "https://upload.wikimedia.org/wikipedia/commons/8/8f/Nationaltheatret_Oslo_Front_at_Night.jpg"),
            
            City.init(countryName: "Ireland", cityName: "Dublin", latitude: 53.4064294, longitude:-6.2871015, text: "Dublin is the capital and largest city of Ireland. Situated on a bay on the east coast, at the mouth of the River Liffey, it lies within the province of Leinster.", urlImage: "https://upload.wikimedia.org/wikipedia/commons/4/48/Moore_Street_market%2C_Dublin.jpg"),
            
            City.init(countryName: "Scotland, UK", cityName: "Edinburgh", latitude: 55.953251, longitude:  -3.188267, text: "Edinburgh is the capital of Scotland and one of its 32 council areas. Historically part of the county of Midlothian, it is located in Lothian on the Firth of Forth's southern shore.",urlImage: "https://upload.wikimedia.org/wikipedia/commons/2/28/The_Shore%2C_Leith.JPG"),
        ]
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CityTableViewCell", for: indexPath) as! CityTableViewCell
        cell.showCity(city: cities[indexPath.row])
      
        return cell
    }

}
