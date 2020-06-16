//
//  ProductViewController.swift
//  Digital Nerd
//
//  Created by Asaduzzaman Anik on 5/6/20.
//  Copyright © 2020 Asaduzzaman Anik. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
   
    @IBOutlet weak var productCollection: UICollectionView!
    
    private(set) public var products = [Product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productCollection.dataSource = self
        productCollection.delegate = self
    }

    func initProducts(catagory: Catagory) {
        products = DataService.instance.getProducts(forCatagoryTitle: catagory.title)
        navigationItem.title = catagory.title
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
       }
       
       func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        }
        
        return ProductCell()
        
       }
       

}
