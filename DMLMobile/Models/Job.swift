//
//  Job.swift
//  DMLMobile
//
//  Created by Aaron Cruz on 20/11/2018.
//  Copyright © 2018 Square Bracket eU. All rights reserved.
//

struct Job {
    var title: String?
    var description: String?
    var cryptoValue: Currency?
    var fiatValue: Currency?
    
    init(title: String, description: String) {
        self.title = title
        self.description = description
    }
}
