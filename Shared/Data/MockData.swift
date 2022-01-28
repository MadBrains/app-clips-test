//
//  MockData.swift
//  MyApp
//
//  Created by Valery Shamshin on 26.01.2022.
//

import Foundation
import UIKit

struct Constants {
    static let buyBackgroundColor = UIColor(red: 250 / 255, green: 199 / 255, blue: 15 / 255, alpha: 1)
    static let buyTextColor = UIColor(red: 20 / 255, green: 10 / 255, blue: 10 / 255, alpha: 1)
}

struct MockData {
    
    static let menu: [Product] = [
        Product(id: 0,
                title: "Капучино",
                description: "Сладенькое вкусненькое с сахарком и так далее бла бла о как же божественно вкусно пожалуйста купи ну купи давай. Господи как же я обожаю кофе это так вкусно я хочу кофе люблю кофеин я кофеманьяк.",
                price: 99.99,
                inStockCount: 5,
                type: .coffee,
                picture: UIImage(named: "cof0")),
        Product(id: 1,
                title: "Американо",
                description: "Сладенькое вкусненькое с сахарком и так далее бла бла о как же божественно вкусно пожалуйста купи ну купи давай. Господи как же я обожаю кофе это так вкусно я хочу кофе люблю кофеин я кофеманьяк.",
                price: 99.99,
                inStockCount: 5,
                type: .coffee,
                picture: UIImage(named: "cof1")),
        Product(id: 2,
                title: "Столовое кофе",
                description: "Сладенькое вкусненькое с сахарком и так далее бла бла о как же божественно вкусно пожалуйста купи ну купи давай. Господи как же я обожаю кофе это так вкусно я хочу кофе люблю кофеин я кофеманьяк.",
                price: 99.99,
                inStockCount: 5,
                type: .coffee,
                picture: UIImage(named: "cof2")),
        Product(id: 3,
                title: "Чай",
                description: "Сладенькое вкусненькое с сахарком и так далее бла бла о как же божественно вкусно пожалуйста купи ну купи давай. Господи как же я обожаю кофе это так вкусно я хочу кофе люблю кофеин я кофеманьяк.",
                price: 99.99,
                inStockCount: 5,
                type: .coffee,
                picture: UIImage(named: "cof3")),
        Product(id: 4,
                title: "Вода",
                description: "Сладенькое вкусненькое с сахарком и так далее бла бла о как же божественно вкусно пожалуйста купи ну купи давай. Господи как же я обожаю кофе это так вкусно я хочу кофе люблю кофеин я кофеманьяк.",
                price: 25,
                inStockCount: 0,
                type: .coffee,
                picture: UIImage(named: "cof4")),
        Product(id: 5,
                title: "Латте",
                description: "Сладенькое вкусненькое с сахарком и так далее бла бла о как же божественно вкусно пожалуйста купи ну купи давай. Господи как же я обожаю кофе это так вкусно я хочу кофе люблю кофеин я кофеманьяк.",
                price: 65.8,
                inStockCount: 5,
                type: .coffee,
                picture: UIImage(named: "cof5")),
    ]
}
