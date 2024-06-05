//
//  ContentView.swift
//  NAM
//
//  Created by Robert Hayrapetyan on 12.09.23.
//

import SwiftUI

struct ContentView: View {
    //@StateObject var runtimeRepository = RuntimeRepository.shared
    @State var isActive: Bool = false
    var body: some View {
        ZStack {
            if self.isActive {
                    NavigationView{
                        MainNavigation()
                    }.accentColor(Color("purple")).onAppear{
                        //runtimeRepository.someText = "Hello"
                    }
            } else {
                SplashView()
            }
        }.frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity,
            alignment: .top
        ).background(Color(.white))
            .preferredColorScheme(.light)
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
