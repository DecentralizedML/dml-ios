//
//  MainStore.swift
//  DMLMobile
//
//  Created by Aaron Cruz on 19/11/2018.
//  Copyright © 2018 Square Bracket eU. All rights reserved.
//

import Foundation
import ReSwift

class AppState : StateType {
    var counter: Int = 0
    var user: User?
    var header: Header?
    var onboardingData: OnboardingData?
    var balance: Balance?
    var currentJob: CurrentJob?
    var jobHistory: [Job] = []
    var earnings: [Earning] = []
    var transactions: [Transaction] = []
    var payments: [Payment] = []
}
