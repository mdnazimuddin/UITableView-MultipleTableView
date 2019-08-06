//
//  VillageData.swift
//  MultipleTableView
//
//  Created by Nazim Uddin on 6/8/19.
//  Copyright © 2019 Nazim Uddin. All rights reserved.
//

import UIKit
public class VillageData {
    static var arraBD:[BangladeshModel] = [BangladeshModel]()
    static var arraPK:[PakistanModel] = [PakistanModel]()
    static var arraMA:[MalaysiaModel] = [MalaysiaModel]()
    
    static func getBangladeshData() -> [BangladeshModel]{
        arraBD = [
            BangladeshModel(img: UIImage(named: "b1.jpg")!, title: "Image One", country: "Bangladesh"),
            BangladeshModel(img: UIImage(named: "b2.jpg")!, title: "Image Tow", country: "Bangladesh"),
            BangladeshModel(img: UIImage(named: "b3.jpg")!, title: "Image Three", country: "Bangladesh"),
            BangladeshModel(img: UIImage(named: "b4.jpg")!, title: "Image Fore", country: "Bangladesh"),
            BangladeshModel(img: UIImage(named: "b5.jpg")!, title: "Image Five", country: "Bangladesh"),
            BangladeshModel(img: UIImage(named: "b6.jpg")!, title: "Image Six", country: "Bangladesh"),
            BangladeshModel(img: UIImage(named: "b7.jpg")!, title: "Image Seven", country: "Bangladesh"),
            BangladeshModel(img: UIImage(named: "b8.jpg")!, title: "Image Eight", country: "Bangladesh"),
            BangladeshModel(img: UIImage(named: "b9.jpg")!, title: "Image Nine", country: "Bangladesh"),
            BangladeshModel(img: UIImage(named: "b10.jpg")!, title: "Image Ten", country: "Bangladesh"),
            
        ]
        
        return arraBD
    }
    
    static func getPakistanData() -> [PakistanModel]{
        arraPK = [
            PakistanModel(img: UIImage(named: "p1.jpg")!, title: "Image One", country: "Pakistan"),
            PakistanModel(img: UIImage(named: "p2.jpg")!, title: "Image Tow", country: "Pakistan"),
            PakistanModel(img: UIImage(named: "p3.jpg")!, title: "Image Three", country: "Pakistan"),
            PakistanModel(img: UIImage(named: "p4.jpg")!, title: "Image Fore", country: "Pakistan"),
            PakistanModel(img: UIImage(named: "p5.jpg")!, title: "Image Five", country: "Pakistan"),
            PakistanModel(img: UIImage(named: "p6.jpg")!, title: "Image Six", country: "Pakistan"),
            PakistanModel(img: UIImage(named: "p7.jpg")!, title: "Image Seven", country: "Pakistan"),
            PakistanModel(img: UIImage(named: "p8.jpg")!, title: "Image Eight", country: "Pakistan"),
            PakistanModel(img: UIImage(named: "p9.jpg")!, title: "Image Nine", country: "Pakistan"),
            PakistanModel(img: UIImage(named: "p10.jpg")!, title: "Image Ten", country: "Pakistan"),
            
        ]
        
        return arraPK
    }
    
    static func getMalaysiaData() -> [MalaysiaModel]{
        arraMA = [
            MalaysiaModel(img: UIImage(named: "m1.jpg")!, title: "Image One", country: "Malaysia"),
            MalaysiaModel(img: UIImage(named: "m2.jpg")!, title: "Image Tow", country: "Malaysia"),
            MalaysiaModel(img: UIImage(named: "m3.jpg")!, title: "Image Three", country: "Malaysia"),
            MalaysiaModel(img: UIImage(named: "m4.jpg")!, title: "Image Fore", country: "Malaysia"),
            MalaysiaModel(img: UIImage(named: "m5.jpg")!, title: "Image Five", country: "Malaysia"),
            MalaysiaModel(img: UIImage(named: "m6.jpg")!, title: "Image Six", country: "Malaysia"),
            MalaysiaModel(img: UIImage(named: "m7.jpg")!, title: "Image Seven", country: "Malaysia"),
            MalaysiaModel(img: UIImage(named: "m8.jpg")!, title: "Image Eight", country: "Malaysia"),
            MalaysiaModel(img: UIImage(named: "m9.jpg")!, title: "Image Nine", country: "Malaysia"),
            MalaysiaModel(img: UIImage(named: "m10.jpg")!, title: "Image Ten", country: "Malaysia"),
            
        ]
        
        return arraMA
    }
}
