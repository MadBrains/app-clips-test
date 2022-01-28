//
//  MenuTableViewCell.swift
//  MyApp
//
//  Created by Valery Shamshin on 26.01.2022.
//

import UIKit

protocol MenuTableViewCellDelegate: AnyObject {
    func didTapOrder(product: Product)
}

class MenuTableViewCell: UITableViewCell {
    
    @IBOutlet weak var previewImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var orderButton: UIButton!
    
    var product: Product?
    
    weak var delegate: MenuTableViewCellDelegate?
    
    func configure(product: Product) {
        self.product = product
        
        #if APPCLIP
        priceLabel.text = product.price.clean + " ₽"
        #else
        priceLabel.text = product.price.clean + " $"
        #endif
        
        previewImageView.image = product.picture
        titleLabel.text = product.title
        
        orderButton.addTarget(self,
                              action: #selector(didTapOrderButton),
                              for: .touchUpInside)
        orderButton.backgroundColor = Constants.buyBackgroundColor
        orderButton.setTitleColor(Constants.buyTextColor, for: .normal)
        orderButton.layer.cornerRadius = 7
        
        previewImageView.layer.cornerRadius = 6
    }
    
    @objc private func didTapOrderButton() {
        guard let product = product else {
            return
        }
        
        delegate?.didTapOrder(product: product)
    }
}
