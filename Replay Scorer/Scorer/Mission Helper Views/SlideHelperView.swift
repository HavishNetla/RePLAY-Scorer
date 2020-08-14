//
//  SlideHelperView.swift
//  Replay Scorer
//
//  Created by Havish Netla on 8/9/20.
//  Copyright © 2020 Havish Netla. All rights reserved.
//

import SwiftUI

struct SlideHelperView: View {
    var body: some View {
        HelperView(title: "M03 Slide", view: AnyView(VStack(alignment: .leading, spacing: 16) {
            Image("Slide")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("The robot slides the people (called “slide figures”) down the slide and moves them to other areas.")
            
            Text("• If only one slide figure is off the slide: ") + Text("5").foregroundColor(.red)
            Text("• If both slide figures are off the slide: ") + Text("20").foregroundColor(.red)
            Text("• If a slide figure is completely in home: ") + Text("10 max").foregroundColor(.red)
            Text("• If a slide figure is held completely off the mat by the heavy tire and is touching nothing else: ") + Text("20 max").foregroundColor(.red)
            
            Text("\"Off the slide\" scores if the slide figure’s black frame is past/ below the tip of the slide’s gray slide part. Notice the score for two slide figures off is 20, not 25.")    .fixedSize(horizontal: false, vertical: true)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)

        }))
    }
}

struct SlideHelperView_Previews: PreviewProvider {
    static var previews: some View {
        SlideHelperView()
    }
}
