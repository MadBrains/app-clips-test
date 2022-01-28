//
//  OrderTableViewCell.swift
//  MyApp
//
//  Created by Valery Shamshin on 26.01.2022.
//

import UIKit

class OrderTableViewCell: UITableViewCell {
    
    @IBOutlet weak var orderLabel: UILabel!
    
    func configure(with order: Order) {
        orderLabel.text = "Заказ номер - \(order.id)"
    }
}
