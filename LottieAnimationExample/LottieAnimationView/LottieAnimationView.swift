//
//  LottieAnimationView.swift
//  LottieAnimationExample
//
//  Created by Mounika Ankeswarapu on 11/05/23.
//

import Foundation
import SwiftUI

struct LottieAnimationExample: View {
    @State var isPaused: Bool = false
    var body: some View {
        ScrollView(.horizontal) {
            VStack {
                Spacer()
              LottieView(filename: "errorCircle.json", isPaused: isPaused)
                    .frame(width: 150, height: 150)
                Spacer()
                
                LottieView(filename: "errorDialog.json", isPaused: isPaused)
                      .frame(width: 300, height: 300)
                Spacer()
                
                PrimaryButton(title: "play Lottie") {
                    self.isPaused.toggle()
                }
            }
        }
    }
}

struct LottieAnimationExample_Previews: PreviewProvider {
    static var previews: some View {
        LottieAnimationExample()
    }
}
