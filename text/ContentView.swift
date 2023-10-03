//
//  ContentView.swift
//  text
//
//  Created by oiu on 03.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    private enum Constants {
        static let maxWidth: CGFloat = 300
        static let minWidth: CGFloat = 100
        static let supportedRange: ClosedRange<CGFloat> = minWidth...maxWidth
    }
    
    @State
    private var width: CGFloat = Constants.maxWidth

    var body: some View {
        VStack {
            Group {
                // iOS 14 friendly 🌟 вариант через Markdown выглядит куда веселее)
                Text("Марафон")
                    .foregroundColor(Color.gray)
                + Text(" ")
                + Text("по SwiftUI")
                    .font(Font.headline)
                + Text(" ")
                + Text("«Отцовский пинок»")
                    .fontWeight(Font.Weight.bold)
                    .foregroundColor(Color.cyan)
                    .font(Font.title)
            }
            .multilineTextAlignment(.leading)
            .frame(width: width, height: 200)
            .border(.red)
            
            Slider(
                value: $width,
                in: Constants.supportedRange
            )
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
