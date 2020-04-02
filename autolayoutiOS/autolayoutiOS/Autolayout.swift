//
//  Autolayout.swift
//  autolayoutiOS
//
//  Created by Fabrício Guilhermo on 02/04/20.
//  Copyright © 2020 Fabrício Guilhermo. All rights reserved.
//

import UIKit

extension UIView {
    func anchor(top: NSLayoutYAxisAnchor?, leading: NSLayoutXAxisAnchor?, bottom: NSLayoutYAxisAnchor?, trailing: NSLayoutXAxisAnchor?, padding: UIEdgeInsets = .zero, size: CGSize = .zero) {

        translatesAutoresizingMaskIntoConstraints = false

        if let top = top {
            topAnchor.constraint(equalTo: top, constant: padding.top).isActive = true
        }
        if let leading = leading {
            leadingAnchor.constraint(equalTo: leading, constant: padding.left).isActive = true
        }
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: -padding.bottom).isActive = true
        }
        if let trailing = trailing {
            trailingAnchor.constraint(equalTo: trailing, constant: -padding.right).isActive = true
        }

        if size.width != .zero {
            widthAnchor.constraint(equalToConstant: size.width).isActive = true
        }
        if size.height != .zero {
            heightAnchor.constraint(equalToConstant: size.height).isActive = true
        }

    }
}
