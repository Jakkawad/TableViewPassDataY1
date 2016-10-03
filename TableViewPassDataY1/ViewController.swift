//
//  ViewController.swift
//  TableViewPassDataY1
//
//  Created by Jakkawad Chaiplee on 10/3/2559 BE.
//  Copyright © 2559 Jakkawad Chaiplee. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var dataArray1 = ["Dog", "Cat", "Pig"]
    var dataArray2 = ["1", "2", "3", "4"]
    var dataArray3 = ["A", "B", "C", "D"]
    

    @IBOutlet weak var tableView:UITableView!
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell0 = tableView.dequeueReusableCell(withIdentifier: "tableCell0") as? CustomTableViewCell
//        cell0?.dataArray = dataArray1
//        return cell0!
        if indexPath.row == 0 {
            let cell0 = tableView.dequeueReusableCell(withIdentifier: "tableCell0") as? CustomTableViewCell
            cell0?.dataArray = dataArray1
            return cell0!
        } else if indexPath.row == 1 {
            let cell1 = tableView.dequeueReusableCell(withIdentifier: "tableCell1") as? Custom2TableViewCell
            cell1?.dataArray = dataArray2
            return cell1!
        } else {
            let cell2 = tableView.dequeueReusableCell(withIdentifier: "tableCell2") as? Custom3TableViewCell
            cell2?.dataArray = dataArray3
            return cell2!
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 200
        } else if indexPath.row == 1 {
            return 200
        } else {
            return 400
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return Category.sharedInstance.genres[section].name
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DetailSegue1" {
            print("DetailSegue1")
            let secondViewController = segue.destination as? SecondViewController
                if let cell = sender as? CustomCollectionViewCell {
                    print("Cell")
                    let indexPath = cell.tag
                    print("indexPath: \(indexPath)")
                    secondViewController?.detailText = dataArray1[indexPath]
                    
                }
        } else if segue.identifier == "DetailSegue2" {
            print("DetailSegue2")
            let secondViewController = segue.destination as? SecondViewController
            if let cell = sender as? Custom2CollectionViewCell {
                print("Cell")
                let indexPath = cell.tag
                print("indexPath: \(indexPath)")
                secondViewController?.detailText = dataArray2[indexPath]
            }
        } else if segue.identifier == "DetailSegue3" {
            print("DetailSegue2")
            let secondViewController = segue.destination as? SecondViewController
            if let cell = sender as? Custom3CollectionViewCell {
                print("Cell")
                let indexPath = cell.tag
                print("indexPath: \(indexPath)")
                secondViewController?.detailText = dataArray3[indexPath]
            }
        } else {
            print("Error")
        }
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
 
}
