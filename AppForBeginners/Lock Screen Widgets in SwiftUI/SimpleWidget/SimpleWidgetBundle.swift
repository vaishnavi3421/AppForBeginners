//
//  SimpleWidgetBundle.swift
//  SimpleWidget
//
//  Created by Sanjay, Vaishnavi on 19/04/24.
//

import WidgetKit
import SwiftUI

@main
struct SimpleWidgetBundle: WidgetBundle {
    var body: some Widget {
        SimpleWidget()
        SimpleWidgetLiveActivity()
    }
}
