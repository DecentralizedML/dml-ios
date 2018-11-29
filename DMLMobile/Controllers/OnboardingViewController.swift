//
//  OnboardingViewController.swift
//  DMLMobile
//
//  Created by Aaron Cruz on 19/11/2018.
//  Copyright © 2018 Square Bracket eU. All rights reserved.
//

import UIKit

class OnboardingViewController: UIViewController {
    @IBOutlet weak var educationCollectionView : UICollectionView!
    @IBOutlet weak var genderChooser : UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let id = CircularChooserCollectionViewCell.nibName
        let nibCell = UINib(nibName: id, bundle: nil)
        educationCollectionView.register(nibCell, forCellWithReuseIdentifier: id)
        setupGenders()
    }
    
    func setupGenders() {
        for (i, gender) in Gender.allCases.enumerated() {
            genderChooser.setTitle(gender.rawValue, forSegmentAt: i)
        }
    }
    
    @IBAction func chooseGender(_ sender: UISegmentedControl) {
        let i = sender.selectedSegmentIndex
        if let gender = Gender(rawValue: Gender.allCases[i].rawValue) {
            print("\(gender)")
        }
    }
}

extension OnboardingViewController : UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = educationCollectionView.dequeueReusableCell(withReuseIdentifier: CircularChooserCollectionViewCell.nibName, for: indexPath)
            as! CircularChooserCollectionViewCell
        cell.setLabel(EducationLevel.allCases[indexPath.row].rawValue)
        return cell
    }
}
