//
//  Data.swift
//  DemoTechGropse
//
//  Created by Pankaj Singh on 14/12/21.
//

import Foundation
import UIKit

class listData{
    
    static func getListData() -> [listModel] {
        
        var arrData = [listModel]()
         arrData = [
            listModel(indexStr: "01", nameStr: "S Kolisi", points: "5000"),
            listModel(indexStr: "02", nameStr: "E Etzbeth", points: "4500"),
            listModel(indexStr: "03", nameStr: "F de Klerk", points: "2300"),
            listModel(indexStr: "04", nameStr: "T Matwaria", points: "4000"),
            listModel(indexStr: "05", nameStr: "D Vermulen", points: "2000"),
            listModel(indexStr: "06", nameStr: "H Pollard", points: "3000"),
            listModel(indexStr: "07", nameStr: "W le Roux", points: "2500"),
            listModel(indexStr: "08", nameStr: "L de Jager", points: "4500"),
            listModel(indexStr: "09", nameStr: "M Mapiquie", points: "2100"),
            listModel(indexStr: "10", nameStr: "E Etzbeth", points: "5500"),
            listModel(indexStr: "11", nameStr: "F De Klerk", points: "4000")

       ]
        
        return arrData
    }
    
    
    static func getCountryData() -> [countryModel] {
        
        var arrData = [countryModel]()
         arrData = [
            countryModel(name: "DAILY", img: UIImage(named: "news")),
            countryModel(name: "MATCHES", img: UIImage(named: "trophy")),
            countryModel(name: "MANAGER", img: UIImage(named: "visil")),
            countryModel(name: "STATS", img: UIImage(named: "cap"))
    ]
        
        return arrData
    }
}
