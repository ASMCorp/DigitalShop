//
//  Catagory.swift
//  Digital Nerd
//
//  Created by Asaduzzaman Anik on 5/1/20.
//  Copyright © 2020 Asaduzzaman Anik. All rights reserved.
//

import UIKit


struct Catagory {
    
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
