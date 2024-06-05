//
//  HomeView.swift
//  NAM
//
//  Created by Robert Hayrapetyan on 12.09.23.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel = HomeViewModel()
    
    @State private var index : Int = 0
    
    var body: some View {
        ScrollView{
            VStack{
                if viewModel.headerImages?.data != nil{
                    TabView(selection: $index) {
                        ForEach(0..<viewModel.headerImages!.data.count){ i in
                            HeaderImageView(headerImageItem: viewModel.headerImages!.data[i])
                        }
                    }
                    .frame(height: 200)
                    .tabViewStyle(.page(indexDisplayMode: .never))
                    .onReceive(viewModel.timer, perform: { _ in
                        withAnimation {
                            index = index < viewModel.headerImages!.data.count ? (index + 1) : 0
                        }
                    })
                }
                Text("Art Groups").frame(maxWidth: .infinity, alignment: .leading).padding(.leading, 10).padding(.top, 10).fontWeight(.semibold)
                if viewModel.artGroups != nil {
                    ScrollView(.horizontal){
                        HStack{
                            ForEach(viewModel.artGroups!.data, id:\.self){artGroup in
                                VStack{
                                    AsyncImage(
                                        url: URL(string: "https://naregatsi.org/media/images/\(artGroup.posterUrl)"),
                                        content: { image in
                                            image.resizable()
                                                .frame(maxWidth: 150, maxHeight: 120)
                                        },
                                        placeholder: {
                                            ProgressView()
                                        }
                                    )
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                    .padding(10)
                                    Text(artGroup.title)
                                        .lineLimit(2)
                                        .frame(maxWidth: 150)
                                }
                            }
                        }
                    }
                }
                Text("Publications").frame(maxWidth: .infinity, alignment: .leading).padding(.leading, 10).padding(.top, 10).fontWeight(.semibold)
                if viewModel.publications != nil {
                    ScrollView(.horizontal){
                        HStack{
                            ForEach(viewModel.publications!.data, id:\.self){publication in
                                VStack{
                                    AsyncImage(
                                        url: URL(string: "https://naregatsi.org/media/images/\(publication.posterUrl)"),
                                        content: { image in
                                            image.resizable()
                                                .frame(maxWidth: 150, maxHeight: 120)
                                        },
                                        placeholder: {
                                            ProgressView()
                                        }
                                    )
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                    .padding(10)
                                    Text(publication.title)
                                        .lineLimit(2)
                                        .frame(maxWidth: 150)
                                }
                            }
                        }
                    }
                }
                Text("Collaborations").frame(maxWidth: .infinity, alignment: .leading).padding(.leading, 10).padding(.top, 10).fontWeight(.semibold)
                if viewModel.collaboration != nil {
                    ScrollView(.horizontal){
                        HStack{
                            ForEach(viewModel.collaboration!.data, id:\.self){collaboration in
                                VStack{
                                    AsyncImage(
                                        url: URL(string: "https://naregatsi.org/media/images/\(collaboration.posterUrl)"),
                                        content: { image in
                                            image.resizable()
                                                .frame(maxWidth: 150, maxHeight: 120)
                                        },
                                        placeholder: {
                                            ProgressView()
                                        }
                                    )
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                    .padding(10)
                                    Text(collaboration.title)
                                        .lineLimit(2)
                                        .frame(maxWidth: 150)
                                }
                            }
                        }
                    }
                }
                Text("Hand to hand").frame(maxWidth: .infinity, alignment: .leading).padding(.leading, 10).padding(.top, 10).fontWeight(.semibold)
                if viewModel.handToHand != nil {
                    ScrollView(.horizontal){
                        HStack{
                            ForEach(viewModel.handToHand!.data, id:\.self){handToHand in
                                VStack{
                                    AsyncImage(
                                        url: URL(string: "https://naregatsi.org/media/images/\(handToHand.posterUrl)"),
                                        content: { image in
                                            image.resizable()
                                                .frame(maxWidth: 150, maxHeight: 120)
                                        },
                                        placeholder: {
                                            ProgressView()
                                        }
                                    )
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                    .padding(10)
                                    Text(handToHand.title)
                                        .lineLimit(2)
                                        .frame(maxWidth: 150)
                                }
                            }
                        }
                    }
                }
            }.onAppear{
                viewModel.getHeaderImages()
                viewModel.getArtGroups()
                viewModel.getPublications()
                viewModel.getCollaborations()
                viewModel.getHandToHands()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
