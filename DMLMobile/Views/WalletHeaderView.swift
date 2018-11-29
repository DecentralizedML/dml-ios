//
//  WalletHeaderView.swift
//  DMLMobile
//
//  Created by Aaron Cruz on 20/11/2018.
//  Copyright © 2018 Square Bracket eU. All rights reserved.
//

import UIKit
import ReSwift

class WalletHeaderView: UIView  {
    @IBOutlet weak var topLabel: UILabel?
    @IBOutlet weak var amountLabel: UILabel?
    @IBOutlet weak var lowerLabel: UILabel?
    @IBOutlet weak var walletButton: UIButton?
    @IBOutlet weak var contentView: UIView?
    
    @IBAction func backWasTapped(_ sender: UIButton) {
        print("Back tapped")
    }
    
    @IBAction func gearWasTapped(_ sender: UIButton) {
        print("Gear Tapped")
    }
    
    func setHeader(header: Header) {
        topLabel?.text = header.topLabel
        amountLabel?.text = header.amount
        lowerLabel?.text = header.bottomLabel
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initSubviews()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initSubviews()
    }
    
    func initSubviews() {
        Bundle.main.loadNibNamed("WalletHeaderView", owner: self, options: nil)
        if let contentView = contentView {
            print(self.bounds)
            print(contentView.bounds)
            self.bounds = contentView.bounds
            contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
            addSubview(contentView)
        }
    }
}
