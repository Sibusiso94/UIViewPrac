//
//  ReusableSurfCardView.swift
//  UIViews
//
//  Created by Sibusiso Mbonani on 2022/09/15.
//

import UIKit

class ReusableSurfCardView: UIView {

    @IBOutlet weak var companyLogoImageView: UIImageView!
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    @IBOutlet weak var titleLable: UILabel!
    
    @IBOutlet weak var subTitleLable: UILabel!
    
    let backgroundImage = UIImage(named: "backgroundImage.jpg")
    let companyLogoImage = UIImage(named: "logo1.jpg")
    
    override func awakeFromNib() {
        super.awakeFromNib()
        cardSetup()
    }
    
    func cardSetup() {
        backgroundImageView.layer.cornerRadius = backgroundImageView.frame.size.height / 15
        companyLogoImageView.layer.cornerRadius = companyLogoImageView.frame.size.height / 2
        
        backgroundImageView.image = backgroundImage
        companyLogoImageView.image = companyLogoImage
        
        titleLable.text = "Surfer's Point"
        subTitleLable.text = "Popular Spot • 5,2 km"
    }
    
}
