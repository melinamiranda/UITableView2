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
            City.init(countryName: "UK", cityName: "London", latitude: 51.5085300, longitude: -0.1257400, text: "London is the capital and largest city of England and the United Kingdom. Standing on the River Thames in the south-east of England, at the head of its 50-mile (80 km) estuary leading to the North Sea, London has been a major settlement for two millennia. Londinium was founded by the Romans." ),
            City.init (countryName: "Brazil", cityName: "Brasilia", latitude: -15.7797200, longitude:-47.9297200, text: "Brasília is the federal capital of Brazil and seat of government of the Federal District. The city is located atop the Brazilian highlands in the country's center-western region. It was founded on April 21, 1960, to serve as the new national capital. Brasília is estimated to be Brazil's third-most populous city."),
            City.init(countryName: "New Zealand", cityName: "Auckland", latitude: -36.8500000, longitude: 174.7833300, text: "Auckland is a city in the North Island of New Zealand, and the country's largest city. The most populous urban area in the country, Auckland has an urban population of around 1,570,100. It is located in the Auckland Region—the area governed by Auckland Council." ),
            City.init(countryName: "Australia", cityName: "Canberra", latitude: -35.2834587, longitude: 149.128067, text: "Canberra is the capital city of Australia. Founded following the federation of the colonies of Australia as the seat of government for the new nation, it is Australia's largest inland city and the eighth-largest city overall. The city is located at the northern end of the Australian Capital Territory." ),
            City.init(countryName: "Netherlands", cityName: "Amsterdam", latitude: 52.370216, longitude: 4.895168, text: "Amsterdam is the official capital and most populous city of the Netherlands; with a population of 872,680[12] within the city proper, 1,380,872 in the urban area and 2,410,960 in the metropolitan area. Found within the province of North Holland,Amsterdam is colloquially referred to as the Venice of the North. "),
            City.init(countryName: "United States", cityName: "New York", latitude: 40.7127837, longitude: -74.0059413, text: "New York City, also known as the City of New York or simply New York, is the most populous city in the United States. With an estimated 2018 population of 8,398,748 distributed over a land area of about 302.6 square miles (784 km2), New York is also the most densely populated major city in the United States."),
            City.init(countryName: "France", cityName: "Paris", latitude:48.8566969, longitude: 2.3514616, text: "Paris is the capital and most populous city of France, with a population of 2,140,526 residents in an area of 105 square kilometres (41 square miles). Since the 17th century, Paris has been one of Europe's major centres of finance, diplomacy, commerce, fashion, science and the arts."),
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
        cell.textCity.text = cities[indexPath.row].text
        cell.countryName.text = cities[indexPath.row].countryName
        cell.countryName.text = cities[indexPath.row].cityName
        cell.countryName.textColor = .blue
        return cell
    }

}
/*
 URL AMSTERDAM: https://en.wikipedia.org/wiki/File:KeizersgrachtReguliersgrachtAmsterdam.jpg
 URL NEW YORK:
 https://en.wikipedia.org/wiki/File:NYC_Montage_2014_4_-_Jleon.jpg
 PARIS
 https://en.wikipedia.org/wiki/File:Seine_and_Eiffel_Tower_from_Tour_Saint_Jacques_2013-08.JPG
 */
