//
//  CurrentJob.swift
//  DMLMobile
//
//  Created by Aaron Cruz on 23/11/2018.
//  Copyright © 2018 Square Bracket eU. All rights reserved.
//

import Foundation

enum JobState {
    case paused
    case running
    case stopped
}

struct CurrentJob {
    var jobState: JobState = .stopped
    var job: Job
    
    init(job: Job) {
        self.job = job
    }
}
