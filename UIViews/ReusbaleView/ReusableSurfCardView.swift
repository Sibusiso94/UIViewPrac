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
//        backgroundImageView.contentMode = UIImageView.ContentMode.scaleAspectFit
        backgroundImageView.layer.cornerRadius = backgroundImageView.frame.size.height / 15
        backgroundImageView.image = backgroundImage
        
        companyLogoImageView.layer.cornerRadius = companyLogoImageView.frame.size.height / 2
        companyLogoImageView.clipsToBounds = true
        companyLogoImageView.layer.borderWidth = 1
        companyLogoImageView.layer.borderColor = UIColor.white.cgColor
        companyLogoImageView.image = companyLogoImage
        
        titleLable.textColor = UIColor.white
        subTitleLable.textColor = UIColor.white
        titleLable.text = "Surfer's Point"
        subTitleLable.text = "Popular Spot • 5,2 km"
    }
    
}
