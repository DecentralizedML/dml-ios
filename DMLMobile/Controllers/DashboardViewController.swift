//
//  DashboardViewController.swift
//  DMLMobile
//
//  Created by Aaron Cruz on 20/11/2018.
//  Copyright © 2018 Square Bracket eU. All rights reserved.
//

import UIKit
import ReSwift

class DashboardViewController: UIViewController {
    @IBOutlet weak var headerView: WalletHeaderView?
    @IBOutlet weak var jobTitleLabel: UILabel?
    @IBOutlet weak var jobDescriptionLabel: UILabel?
    @IBOutlet weak var jobToggleButton: UIButton?
    @IBOutlet weak var jobStopButton: UIButton?

    @IBAction func walletButtonTapped(_ sender: UIButton) {
        print("Wallet button pressed")
    }
    
    @IBAction func stopJobPressed(_ sender: UIButton) {
        MainStore.instance.dispatch(
            Actions.stopCurrentJob
        )
    }
    
    @IBAction func toggleJobPressed(_ sender: UIButton) {
        MainStore.instance.dispatch(
            Actions.toggleCurrentJob
        )
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        MainStore.instance.subscribe(self)
        
        MainStore.instance.dispatch(
            Actions.loadDashboard
        )
        MainStore.instance.dispatch(
            Actions.loadCurrentJob
        )
        MainStore.instance.dispatch(
            Actions.loadJobHistory
        )
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        MainStore.instance.unsubscribe(self)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension DashboardViewController : StoreSubscriber {
    func newState(state: AppState) {
        if let header = state.header {
            headerView?.setHeader(header: header)
        }
        
        if let currentJob = state.currentJob {
            let job = currentJob.job
            jobTitleLabel?.text = job.title
            jobDescriptionLabel?.text = job.description
            var image: UIImage?
            switch currentJob.jobState {
            case .running:
                image = UIImage(named: "pauseIcon")
                jobStopButton?.isHidden = false
            case .paused:
                image = UIImage(named: "playIcon")
                jobStopButton?.isHidden = false
            case .stopped:
                image = UIImage(named: "playIcon")
                jobStopButton?.isHidden = true
            }
            jobToggleButton?.setImage(image , for: UIControlState.normal)
        }
        
        
    }
}
