//
//  Configuration.swift
//  DMLMobile
//
//  Created by Aaron Cruz on 19/11/2018.
//  Copyright © 2018 Square Bracket eU. All rights reserved.
//

import Foundation
import ReSwift

class MainStore {
    static let instance = Store<AppState>(
        reducer: mainReducer,
        state: AppState()
    )
    
    class func mainReducer(action: Action, state: AppState?) -> AppState {
        let state = state ?? AppState()
        
        guard let action = action as? Actions else {
            return state
        }
        
        switch action {
        case .loadDashboard:
            let header = Header(
                topLabel: "CURRENT BALANCE",
                amount: "$22.23",
                bottomLabel: "Last updated 11:31am, Oct 19th"
            )
            state.header = header
        case .showWallet:
            print("TODO: Show wallet scene")
            
        case .loadCurrentJob:
            let job = Job(title: "Recognize street signs", description: "Identify the text from street signs in your images")
            var current = CurrentJob(job: job)
            current.jobState = .running
            state.currentJob = current
        
        case .toggleCurrentJob:
            guard var currentJob = state.currentJob else { return state }
            switch currentJob.jobState {
            case .paused:
                currentJob.jobState = .running
            case .running:
                currentJob.jobState = .paused
            case .stopped:
                currentJob.jobState = .running
            }
            state.currentJob = currentJob
        case .stopCurrentJob:
            state.currentJob?.jobState = .stopped
            
        case .loadJobHistory:
            print("Load job history here")
        }
        
        return state
    }

    private init() { }
}
