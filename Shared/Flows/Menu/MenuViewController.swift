//
//  MenuViewController.swift
//  MyApp
//
//  Created by Valery Shamshin on 25.01.2022.
//

import UIKit

class MenuViewController: UIViewController {
    @IBOutlet weak var productsTableView: UITableView!
    
    let data = MockData.menu
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        productsTableView.delegate = self
        productsTableView.dataSource = self
    }
    
    private func showProductViewController(product: Product) {
        let productViewController = ProductViewController(product: product)
        navigationController?.pushViewController(productViewController, animated: true)
    }
}

extension MenuViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MenuTableViewCell.reuseIdentifier) as? MenuTableViewCell else {
            return UITableViewCell()
        }
        
        cell.configure(product: data[indexPath.row])
        cell.delegate = self
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        showProductViewController(product: data[indexPath.row])
    }
}

extension MenuViewController: MenuTableViewCellDelegate {
    func didTapOrder(product: Product) {
        print("Buy product \(product.id)")
        
        let userOrders = UserData.orders
        UserData.orders = userOrders + [Order(id: (userOrders.last?.id ?? 0) + 1)]
        
        print(userOrders)
        
        let viewController = OrderSuccessViewController()
        present(viewController, animated: true)
    }
}
