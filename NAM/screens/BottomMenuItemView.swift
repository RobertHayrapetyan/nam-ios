//
//  BottomMenuItemView.swift
//  NAM
//
//  Created by Robert Hayrapetyan on 12.09.23.
//

import SwiftUI

struct BottomMenuItemView: View {
    
    enum FilterType{
        case none, events, projects, press, more
    }
    
    let filter: FilterType
    
    var body: some View {
        NavigationView{
            switch(filter){
            case .none:
                HomeView().navigationBarTitle(title, displayMode: .automatic)
            case .events:
                EventsView().navigationBarTitle(title, displayMode: .automatic)
            case .projects:
                ProjectsView().navigationBarTitle(title, displayMode: .automatic)
            case .press:
                PressView().navigationBarTitle(title, displayMode: .automatic)
            case .more:
                MoreView().navigationBarTitle(title, displayMode: .automatic)
            }
            
        }
    }
    
    var title: String {
        switch(filter){
        case .none:
            return "Home"
        case .events:
            return "Events"
        case .projects:
            return "Projects"
        case .press:
            return "Press"
        case .more:
            return "More"
        }
    }
}

struct BottomMenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        BottomMenuItemView(filter: .none)
    }
}
