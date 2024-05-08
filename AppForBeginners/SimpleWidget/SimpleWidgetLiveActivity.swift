//
//  SimpleWidgetLiveActivity.swift
//  SimpleWidget
//
//  Created by Sanjay, Vaishnavi on 19/04/24.
//

import ActivityKit
import WidgetKit
import SwiftUI

struct SimpleWidgetAttributes: ActivityAttributes {
    public struct ContentState: Codable, Hashable {
        // Dynamic stateful properties about your activity go here!
        var emoji: String
    }

    // Fixed non-changing properties about your activity go here!
    var name: String
}

struct SimpleWidgetLiveActivity: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: SimpleWidgetAttributes.self) { context in
            // Lock screen/banner UI goes here
            VStack {
                Text("Hello \(context.state.emoji)")
            }
            .activityBackgroundTint(Color.cyan)
            .activitySystemActionForegroundColor(Color.black)

        } dynamicIsland: { context in
            DynamicIsland {
                // Expanded UI goes here.  Compose the expanded UI through
                // various regions, like leading/trailing/center/bottom
                DynamicIslandExpandedRegion(.leading) {
                    Text("Leading")
                }
                DynamicIslandExpandedRegion(.trailing) {
                    Text("Trailing")
                }
                DynamicIslandExpandedRegion(.bottom) {
                    Text("Bottom \(context.state.emoji)")
                    // more content
                }
            } compactLeading: {
                Text("L")
            } compactTrailing: {
                Text("T \(context.state.emoji)")
            } minimal: {
                Text(context.state.emoji)
            }
            .widgetURL(URL(string: "http://www.apple.com"))
            .keylineTint(Color.red)
        }
    }
}

extension SimpleWidgetAttributes {
    fileprivate static var preview: SimpleWidgetAttributes {
        SimpleWidgetAttributes(name: "World")
    }
}

extension SimpleWidgetAttributes.ContentState {
    fileprivate static var smiley: SimpleWidgetAttributes.ContentState {
        SimpleWidgetAttributes.ContentState(emoji: "😀")
     }
     
     fileprivate static var starEyes: SimpleWidgetAttributes.ContentState {
         SimpleWidgetAttributes.ContentState(emoji: "🤩")
     }
}

#Preview("Notification", as: .content, using: SimpleWidgetAttributes.preview) {
   SimpleWidgetLiveActivity()
} contentStates: {
    SimpleWidgetAttributes.ContentState.smiley
    SimpleWidgetAttributes.ContentState.starEyes
}
