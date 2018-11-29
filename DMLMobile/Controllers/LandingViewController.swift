//
//  ViewController.swift
//  DMLMobile
//
//  Created by Aaron Cruz on 16/11/2018.
//  Copyright © 2018 Square Bracket eU. All rights reserved.
//

import UIKit
import ReSwift

class LandingViewController: UIViewController, StoreSubscriber {
    override func viewDidLoad() {
        super.viewDidLoad()
        MainStore.instance.subscribe(self)
    }
    
    func newState(state: AppState) {
        print(state.counter)
    }
    
    @IBAction func increment(sender: UIButton) {
        MainStore.instance.dispatch(
            CounterIncrement()
        )
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
