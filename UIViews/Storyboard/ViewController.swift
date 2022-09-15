//
//  ViewController.swift
//  UIViews
//
//  Created by Sibusiso Mbonani on 2022/09/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var containerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        addSurfCardView()
    }
    
    private func addSurfCardView() {
        let bundle = Bundle.main
        // owner: nil -> follows the apps lifecycle
        // owner: self -> follows the controllers lifecycle
        guard let surfCardView = bundle.loadNibNamed("ReusableSurfCardView", owner: self)?.first as? ReusableSurfCardView else {
            return }
        
//        surfCardView.translatesAutoresizingMaskIntoConstraints = false
        
        self.containerView.addSubview(surfCardView)
        surfCardView.pinEdges(to: self.view)
    }


}

