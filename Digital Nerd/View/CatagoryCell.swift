//
//  CatagoryCell.swift
//  Digital Nerd
//
//  Created by Asaduzzaman Anik on 5/1/20.
//  Copyright © 2020 Asaduzzaman Anik. All rights reserved.
//

import UIKit

class CatagoryCell: UITableViewCell {

    @IBOutlet weak var catagoryImage: UIImageView!
    @IBOutlet weak var catagoryTitle: UILabel!
    
    func updateViews(catagory: Catagory) {
        catagoryImage.image = UIImage(named: catagory.imageName)
        catagoryTitle.text = catagory.title
    }

}
