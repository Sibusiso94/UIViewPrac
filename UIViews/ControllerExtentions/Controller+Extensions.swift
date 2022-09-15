//
//  Controller+Extensions.swift
//  UIViews
//
//  Created by Sibusiso Mbonani on 2022/09/15.
//

import Foundation
import UIKit

public extension UIView {
    func pinEdges(to view: UIView) {
        // important so that default constraints are removed
        self.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            leadingAnchor.constraint(equalTo: view.leadingAnchor),
            trailingAnchor.constraint(equalTo: view.trailingAnchor),
            topAnchor.constraint(equalTo: view.topAnchor),
            bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}
