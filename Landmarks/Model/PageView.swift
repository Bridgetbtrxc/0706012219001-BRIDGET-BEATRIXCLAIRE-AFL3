//
//  PageView.swift
//  Landmarks
//
//  Created by student on 03/05/24.
//

import Foundation
import SwiftUI


struct PageView<Page: View>: View {
    var pages: [Page]


    var body: some View {
        PageViewController(pages: pages)
            .aspectRatio(3 / 2, contentMode: .fit)
    }
}


#Preview {
    PageView(pages: ModelData().features.map { FeatureCard(landmark: $0) })
}
