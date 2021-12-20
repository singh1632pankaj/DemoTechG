//
//  HomeVC.swift
//  DemoTechGropse
//
//  Created by Pankaj Singh on 13/12/21.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var viewCollection: UIView!
    @IBOutlet weak var secondTeamImg: UIImageView!
    @IBOutlet weak var firstTeamImg: UIImageView!
    @IBOutlet weak var firstTeamLbl: UILabel!
    @IBOutlet weak var firstTeamNextLbl: UILabel!
    @IBOutlet weak var secondTeamLbl: UILabel!
    @IBOutlet weak var secondTeamNextLbl: UILabel!
    @IBOutlet weak var teamView: UIView!
    @IBOutlet weak var topBtn: UIButton!
    @IBOutlet weak var topImg: UIImageView!
    @IBOutlet weak var topBtnView: UIView!
    
    var arrData = [countryModel]()
    
       override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpUi()
        arrData = listData.getCountryData()
        self.collectionView.delegate   = self
        self.collectionView.dataSource = self

    }
    
    func setUpUi(){
        teamView.layer.cornerRadius = 10
        teamView.layer.borderWidth = 2
        teamView.layer.borderColor = UIColor.white.cgColor
      }
 

    @IBAction func goTopBtnAct(_ sender: Any) {
        let vc = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ListVC") as! ListVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
}


extension HomeVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrData.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCell", for: indexPath) as! HomeCell
        cell.listNamelbl.text = arrData[indexPath.row].name
        cell.listImg.image    = arrData[indexPath.row].img
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {


        return CGSize(width: self.collectionView.frame.width/2-6, height: screenHeightFactor*130)
    }


    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
    
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }


    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
 
        return 0
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
      
        return 20
    }
}
