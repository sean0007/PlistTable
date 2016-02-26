//
//  detailViewController.swift
//  PlistTable
//
//  Created by sean ryan on 26/02/2016.
//  Copyright © 2016 sean ryan. All rights reserved.
//

import UIKit

class detailViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    
    var nameDetail: Name?{
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.nameDetail {
            if let Namelabel = self.nameLabel {
                
                    Namelabel.text = detail.personName
                    // carImage.image = UIImage(named: detail.image)
                
            
        
    }
    
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
         self.configureView()
       //self.nameLabel.text = self.friendName
    }

}
