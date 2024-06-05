//
//  HeaderImageView.swift
//  NAM
//
//  Created by Robert Hayrapetyan on 12.09.23.
//

import SwiftUI

struct HeaderImageView: View {
    
    var headerImageItem: String
    var body: some View {
        AsyncImage(
            url: URL(string: headerImageItem),
            content: { image in
                image.resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
            },
            placeholder: {
                ProgressView()
            }
        )
        .aspectRatio(contentMode: .fit).clipShape(RoundedRectangle(cornerRadius: 8))
        .padding(.horizontal, 10)
    }
}

struct HeaderImageView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderImageView(headerImageItem: "https://naregatsi.org/big_images/1_hy.jpg")
    }
}
