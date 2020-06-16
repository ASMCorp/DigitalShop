//
//  DataService.swift
//  Digital Nerd
//
//  Created by Asaduzzaman Anik on 5/1/20.
//  Copyright © 2020 Asaduzzaman Anik. All rights reserved.
//

import UIKit

class DataService {
    static let instance = DataService()
    
    private let catagories = [
        Catagory(title: "SHIRTS", imageName: "shirts.png"),
        Catagory(title: "HOODIES", imageName: "hoodies.png"),
        Catagory(title: "HATS", imageName: "hats.png"),
        Catagory(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
        Product(title: "HAT 1", price: "$2", imageName: "hat01.png"),
        Product(title: "HAT 2", price: "$2", imageName: "hat02.png"),
        Product(title: "HAT 3", price: "$2", imageName: "hat03.png"),
        Product(title: "HAT 4", price: "$2", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Hoodie 01", price: "$5", imageName: "hoodie01.png"),
        Product(title: "Hoodie 02", price: "$5", imageName: "hoodie02.png"),
        Product(title: "Hoodie 03", price: "$5", imageName: "hoodie03.png"),
        Product(title: "Hoodie 04", price: "$5", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
    Product(title: "Shirt 01", price: "$3", imageName: "shirt01.png"),
    Product(title: "Shirt 02", price: "$3", imageName: "shirt02.png"),
    Product(title: "Shirt 03", price: "$3", imageName: "shirt03.png"),
    Product(title: "Shirt 04", price: "$3", imageName: "shirt04.png"),
    Product(title: "Shirt 05", price: "$3", imageName: "shirt05.png")
    ]
    
    private let digitalGoods = [Product]()
    
    
    
    func getProducts(forCatagoryTitle title: String) -> [Product] {
        switch title {
        case "HATS":
            return getHats()
        case "SHIRTS":
            return getShirts()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigitalGoods()
                default:
            return getHats()
        }
    }
    
    func getHats()-> [Product]{
        return hats
    }
    
    func getShirts() -> [Product] {
        return shirts
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
    
    
    func getCatagories() -> [Catagory] {
        return catagories
    }
}
