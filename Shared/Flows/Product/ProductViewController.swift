//
//  ProductViewController.swift
//  MyApp
//
//  Created by Valery Shamshin on 26.01.2022.
//

import UIKit
import StoreKit

class ProductViewController: UIViewController {
    
    @IBOutlet weak var previewImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var orderButton: UIButton!
    @IBOutlet weak var fullAppButton: UIButton!
    
    private var product: Product
    
    
    init(product: Product) {
        self.product = product
        super.init(nibName: "ProductViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        previewImageView.image = product.picture
        titleLabel.text = product.title
        descriptionLabel.text = product.description
        
        #if APPCLIP
        priceLabel.text = product.price.clean + " ₽"
        #else
        priceLabel.text = product.price.clean + " $"
        #endif
        
        orderButton.addTarget(self,
                              action: #selector(didTapOrderButton),
                              for: .touchUpInside)
        orderButton.backgroundColor = Constants.buyBackgroundColor
        orderButton.setTitleColor(Constants.buyTextColor, for: .normal)
        orderButton.layer.cornerRadius = 10
        
        fullAppButton.addTarget(self,
                                action: #selector(didTapFullAppButton),
                                for: .touchUpInside)
        
        previewImageView.layer.cornerRadius = 20
    }
    
    @objc private func didTapOrderButton() {
        print("Buy product \(product.id)")
        let viewController = OrderSuccessViewController()
        present(viewController, animated: true)
    }
    
    @objc private func didTapFullAppButton() {
        guard let scene = view.window?.windowScene else {
            return
        }
        
        let config = SKOverlay.AppClipConfiguration(position: .bottom)
        let overlay = SKOverlay(configuration: config)
        overlay.present(in: scene)
    }
}
