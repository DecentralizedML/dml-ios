//
//  Currency.swift
//  DMLMobile
//
//  Created by Aaron Cruz on 23/11/2018.
//  Copyright © 2018 Square Bracket eU. All rights reserved.
//

struct Currency {
    let value: Float
    let symbol: String
    var suffix: String?
    
    init(value: Float, symbol: String) {
        self.value = value
        self.symbol = symbol
    }
    
    init(value: Float, symbol: String, suffix: String) {
        self.value = value
        self.symbol = symbol
        self.suffix = suffix
    }
}
