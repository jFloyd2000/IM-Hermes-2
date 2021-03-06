//
//  MessageData.swift
//  IM Hermes
//
//  Created by Jason Floyd on 4/1/20.
//  Copyright © 2020 Floyd Design. All rights reserved.
//

import Foundation
/*
 * MessageData
 *
 * Stores the individual information for creating a message bubble
 */
struct MessageData: Identifiable {
    var id = UUID()
    let sender:User
    let bodyTxt:String
}
