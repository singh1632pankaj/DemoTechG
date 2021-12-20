//
//  ListCell.swift
//  DemoTechGropse
//
//  Created by Pankaj Singh on 14/12/21.
//

import UIKit

class ListCell: UITableViewCell {
    
    @IBOutlet weak var listView: UIView!
    @IBOutlet weak var listCountView: UIView!

    
    @IBOutlet weak var countlbl: UILabel!
    @IBOutlet weak var namelbl: UILabel!

    @IBOutlet weak var pointslbl: UILabel!



    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        listCountView.layer.cornerRadius = 5
    }

}
