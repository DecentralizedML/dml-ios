//
//  CircularChooserCollectionViewCell.swift
//  DMLMobile
//
//  Created by Aaron Cruz on 20/11/2018.
//  Copyright © 2018 Square Bracket eU. All rights reserved.
//

import UIKit

class CircularChooserCollectionViewCell: UICollectionViewCell {
    static let nibName: String = "CircularChooserCollectionViewCell"
    
    @IBOutlet weak var textLabel : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setLabel(_ text: String) {
        textLabel.text = text
    }
}
