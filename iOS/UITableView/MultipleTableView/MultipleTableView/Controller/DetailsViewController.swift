//
//  DetailsViewController.swift
//  MultipleTableView
//
//  Created by Nazim Uddin on 6/8/19.
//  Copyright © 2019 Nazim Uddin. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lable: UILabel!
    
    var imgView:UIImage!
    var str:String!
    
    var bdData:BangladeshModel!{
        didSet{
            imgView = bdData.img
            str = bdData.country
        }
    }
    var pkData:PakistanModel!{
        didSet{
            imgView = pkData.img
            str = pkData.country
        }
    }
    var maData:MalaysiaModel!{
        didSet{
            imgView = maData.img
            str = maData.country
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        img.image = imgView
        lable.text = str
        // Do any additional setup after loading the view.
    }
    

}
