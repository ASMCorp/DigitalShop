//
//  Product.swift
//  Digital Nerd
//
//  Created by Asaduzzaman Anik on 5/6/20.
//  Copyright © 2020 Asaduzzaman Anik. All rights reserved.
//

import UIKit
struct Product {

    private(set) public var title: String
    private(set) public var price: String
    private(set) public var imageName: String
    
    init(title: String, price: String, imageName: String) {
        self.title = title
        self.price = price
        self.imageName = imageName
    }
    
}


