//
//  UITableViewCell+reuseIdentifier.swift
//  MyApp
//
//  Created by Valery Shamshin on 26.01.2022.
//

import UIKit

protocol ReusableView: AnyObject {
    static var reuseIdentifier: String { get }
}

extension ReusableView where Self: UIView {
    static var reuseIdentifier: String {
        return NSStringFromClass(self).components(separatedBy: ".").last ?? ""
    }
}

extension UITableViewCell: ReusableView { }
