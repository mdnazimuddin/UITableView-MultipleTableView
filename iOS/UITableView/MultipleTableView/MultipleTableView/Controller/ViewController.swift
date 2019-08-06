//
//  ViewController.swift
//  MultipleTableView
//
//  Created by Nazim Uddin on 6/8/19.
//  Copyright © 2019 Nazim Uddin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tblView: UITableView!
    @IBOutlet weak var segOutlat: UISegmentedControl!
    
    var arrayBD:[BangladeshModel] = [BangladeshModel]()
    var arrayPK:[PakistanModel] = [PakistanModel]()
    var arrayMA:[MalaysiaModel] = [MalaysiaModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        arrayBD = VillageData.getBangladeshData()
        arrayPK = VillageData.getPakistanData()
        arrayMA = VillageData.getMalaysiaData()
        // Do any additional setup after loading the view.
    }
    @IBAction func segmentControl(_ sender: Any) {
        
        tblView.reloadData()
    }
    
}
extension ViewController:UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        var index:Int = 0
        if segOutlat.selectedSegmentIndex == 0 {
            index = arrayBD.count
        }else if segOutlat.selectedSegmentIndex == 1 {
            index = arrayPK.count
        }else if segOutlat.selectedSegmentIndex == 2 {
            index = arrayMA.count
        }
        
        return index
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        
        if segOutlat.selectedSegmentIndex == 0 {
            cell.bdView = arrayBD[indexPath.row]
        }else if segOutlat.selectedSegmentIndex == 1 {
            cell.pkView = arrayPK[indexPath.row]
        }else if segOutlat.selectedSegmentIndex == 2 {
            cell.maView = arrayMA[indexPath.row]
        }
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 110
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {

        
        if segOutlat.selectedSegmentIndex == 0 {
            if editingStyle == .delete {
                arrayBD.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .fade)
            }
            
        }else if segOutlat.selectedSegmentIndex == 1 {
            if editingStyle == .delete {
                arrayPK.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .fade)
            }
        }else if segOutlat.selectedSegmentIndex == 2 {
            if editingStyle == .delete {
                arrayMA.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .fade)
            }
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let details:DetailsViewController = self.storyboard?.instantiateViewController(withIdentifier: "DetailsViewController") as! DetailsViewController
        if segOutlat.selectedSegmentIndex == 0 {
            details.bdData = arrayBD[indexPath.row]
        }else if segOutlat.selectedSegmentIndex == 1 {
            details.pkData = arrayPK[indexPath.row]
        }else if segOutlat.selectedSegmentIndex == 2 {
            details.maData = arrayMA[indexPath.row]
        }
        self.navigationController?.pushViewController(details, animated: true)
    }
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        //set inatial
        cell.alpha = 0
        let transform = CATransform3DTranslate(CATransform3DIdentity, -250, 20, 0)
        cell.layer.transform = transform
        //final state or animation
        UIView.animate(withDuration: 1.0) {
            cell.alpha = 1
            cell.layer.transform = CATransform3DIdentity
        }
    }
}
