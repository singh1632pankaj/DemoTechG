//
//  HomeCell.swift
//  DemoTechGropse
//
//  Created by Pankaj Singh on 13/12/21.
//

import UIKit

class HomeCell: UICollectionViewCell {
    
    @IBOutlet weak var listView: UIView!
    
    @IBOutlet weak var listImg: UIImageView!
    @IBOutlet weak var listNamelbl: UILabel!
    
    override func layoutSubviews() {
        super.layoutSubviews()
        listView.layer.cornerRadius = 10
    }
    
//        func setGradientBackground() {
//            let colorTop =  UIColor(red: 255.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1.0).cgColor
//            let colorBottom = UIColor(red: 255.0/255.0, green: 94.0/255.0, blue: 58.0/255.0, alpha: 1.0).cgColor
//
//            let gradientLayer = CAGradientLayer()
//            gradientLayer.colors = [colorTop, colorBottom]
//            //gradientLayer.locations = [0.0, 1.0]
//            gradientLayer.frame = self.listView.bounds
//
//            self.listView.layer.insertSublayer(gradientLayer, at:0)
//        }
        
    }

