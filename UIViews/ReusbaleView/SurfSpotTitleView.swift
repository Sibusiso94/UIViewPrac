//
//  SurfSpotTitleView.swift
//  UIViews
//
//  Created by Sibusiso Mbonani on 2022/09/15.
//

import UIKit

class SurfSpotTitleView: UIView {

    @IBOutlet weak var logoImageView: UIImageView!
    
    @IBOutlet weak var surfPointTitle: UILabel!
    
    @IBOutlet weak var surfPointsubTitle: UILabel!
    
    @IBOutlet weak var surfingLabel: UILabel!
    
    @IBOutlet weak var miniImageView: UIImageView!
    
    let logoImage = UIImage(named: "logo1.jpg")
    let miniImage = UIImage(named: "miniImage")
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpContent()
    }
    
    func setUpContent() {
        
//        logoImageView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        logoImageView.layer.cornerRadius = logoImageView.frame.size.height / 2
        logoImageView.clipsToBounds = true
        logoImageView.layer.borderWidth = 2
        logoImageView.layer.borderColor = UIColor.white.cgColor
        logoImageView.image = logoImage
        
//        miniImageView.layer.cornerRadius = miniImageView.frame.size.height / 2
//        miniImageView.clipsToBounds = true
//        miniImageView.layer.borderWidth = 1
//        miniImageView.layer.borderColor = UIColor.white.cgColor
//        miniImageView.image = miniImage
        
    }
    
}
