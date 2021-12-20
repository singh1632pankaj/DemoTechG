//
//  ListVC.swift
//  DemoTechGropse
//
//  Created by Pankaj Singh on 14/12/21.
//

import UIKit

class ListVC: UIViewController {
    @IBOutlet weak var listTblView: UITableView!
    @IBOutlet weak var listview: UIView!
    @IBOutlet weak var listLbl: UILabel!
    @IBOutlet weak var countLbl: UILabel!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var pointLbl: UILabel!

  var arrData = [listModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpUi()
        self.listTblView.delegate   = self
        self.listTblView.dataSource = self
        arrData = listData.getListData()

    }
    
    func setUpUi(){
        listview.layer.cornerRadius = 8
        listview.layer.borderWidth = 1.5
        listview.layer.borderColor = UIColor.white.cgColor
      }
    
    @IBAction func goTopBtnAct(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
 }


extension ListVC : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListCell") as! ListCell
        cell.countlbl.text  = arrData[indexPath.row].indexStr
        cell.namelbl.text   = arrData[indexPath.row].nameStr
        cell.pointslbl.text = arrData[indexPath.row].points
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 45*screenHeightFactor
    }
}
