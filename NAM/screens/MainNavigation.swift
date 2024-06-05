//
//  MainNavigation.swift
//  NAM
//
//  Created by Robert Hayrapetyan on 12.09.23.
//

import SwiftUI

struct MainNavigation: View {
    var body: some View {
        TabView{
            BottomMenuItemView(filter: .none).tabItem{
                Label("Home", systemImage: "house")
            }
            BottomMenuItemView(filter: .events).tabItem{
                Label("Events", systemImage: "calendar")
            }
            BottomMenuItemView(filter: .projects).tabItem{
                Label("Projects", systemImage: "person.3.fill")
            }
            BottomMenuItemView(filter: .press).tabItem{
                Label("Press", systemImage: "newspaper")
            }
            BottomMenuItemView(filter: .more).tabItem{
                Label("More", systemImage: "ellipsis")
            }
        }.accentColor(.brown)
    }
}

struct MainNavigation_Previews: PreviewProvider {
    static var previews: some View {
        MainNavigation()
    }
}
