//
//  MultiColorTextView.swift
//  Replay Scorer
//
//  Created by Havish Netla on 8/12/20.
//  Copyright © 2020 Havish Netla. All rights reserved.
//

import SwiftUI

struct MText {
    var str: String
    var color: Color = Color.primary
}

struct MultiColorTextView: View {
    @Environment(\.colorScheme) var colorScheme

    var text: [MText]
    private var textView = Text("")
    
    init(text: [MText]) {
        self.text = text
        
        text.forEach { mText in
            textView = textView + Text(mText.str).foregroundColor(mText.color)
        }
    }
    var body: some View {
        textView
    }
}

struct MultiColorTextView_Previews: PreviewProvider {
    static var previews: some View {
        MultiColorTextView(text: [MText(str: "aasdasdasd "), MText(str: "kjviohewgjkh", color: Color.pink)])
    }
}
