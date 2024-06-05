//
//  SplashScreenView.swift
//  NAM
//
//  Created by Robert Hayrapetyan on 12.09.23.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack{
            Color.white.ignoresSafeArea(.all)
            VStack{
                Image("ic_logo_vertical")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
