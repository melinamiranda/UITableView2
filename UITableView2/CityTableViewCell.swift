//
//  CityTableViewCell.swift
//  UITableView2
//
//  Created by Melina Miranda on 18/12/2019.
//  Copyright © 2019 Melina Miranda. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class CityTableViewCell:  UITableViewCell, MKMapViewDelegate{
    @IBOutlet weak var textCity: UILabel!
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var countryName: UILabel!
    @IBOutlet weak var imageCity: UIImageView!
    override func prepareForReuse() {
        super.prepareForReuse()
        mapView.removeAnnotations(mapView.annotations)
    }
    
    func showCity(city: City){
        textCity.numberOfLines = 20
        let center = CLLocationCoordinate2DMake(city.latitude, city.longitude)
        let span = MKCoordinateSpan(latitudeDelta: 4, longitudeDelta: 4)
        let region = MKCoordinateRegion(center: center, span: span)
        mapView.setRegion(region, animated: false)
        
        let annotations = MKPointAnnotation()
        annotations.coordinate = CLLocationCoordinate2DMake(city.latitude, city.longitude)
        annotations.title = city.cityName
        annotations.subtitle = city.countryName
        mapView.addAnnotation(annotations)
       
        
        let url = URL(string: city.urlImage)
        DispatchQueue.global().async {
            if let data = try? Data(contentsOf: url!){
                DispatchQueue.main.async {
                    self.imageCity.image =  UIImage(data: data)
                    self.imageCity.contentMode = .scaleAspectFill
                    }

                }
        }
        countryName.text = city.cityName + ", " + city.countryName
        textCity.text = city.text
    }
}
         
        
        

    


