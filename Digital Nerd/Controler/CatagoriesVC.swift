//
//  ViewController.swift
//  Digital Nerd
//
//  Created by Asaduzzaman Anik on 5/1/20.
//  Copyright © 2020 Asaduzzaman Anik. All rights reserved.
//

import UIKit

class CatagoriesVC: UIViewController, UITableViewDataSource,UITableViewDelegate {
    

    @IBOutlet weak var catagoryTable: UITableView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        catagoryTable.dataSource = self
        catagoryTable.delegate = self
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return DataService.instance.getCatagories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CatagoryCell") as? CatagoryCell{
            let catagory = DataService.instance.getCatagories()[indexPath.row]
            cell.updateViews(catagory: catagory)
            return cell
        }
        else{
            return CatagoryCell()
        }
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let catagory = DataService.instance.getCatagories()[indexPath.row]
        performSegue(withIdentifier: "ProductViewController", sender: catagory)
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productVC = segue.destination as? ProductsVC{
            let barBtn = UIBarButtonItem()
            barBtn.title = ""
            navigationItem.backBarButtonItem = barBtn
            
            assert(sender as? Catagory != nil)
            productVC.initProducts(catagory: sender as! Catagory)
            
            
        }
    }

}

