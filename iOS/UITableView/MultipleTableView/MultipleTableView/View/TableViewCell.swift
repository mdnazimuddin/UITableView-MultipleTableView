//
//  TableViewCell.swift
//  MultipleTableView
//
//  Created by Nazim Uddin on 6/8/19.
//  Copyright © 2019 Nazim Uddin. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    
    var bdView:BangladeshModel!{
        didSet{
            img.image = bdView.img
            lbl1.text = bdView.title
            lbl2.text = "Country : " + bdView.country
        }
    }
    var pkView:PakistanModel!{
        didSet{
            img.image = pkView.img
            lbl1.text = pkView.title
            lbl2.text = "Country : " + pkView.country
        }
    }
    var maView:MalaysiaModel!{
        didSet{
            img.image = maView.img
            lbl1.text = maView.title
            lbl2.text = "Country : " + maView.country
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        img.circle()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
