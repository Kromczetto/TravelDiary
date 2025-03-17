//
//  SignInFeatureView.swift
//  TravelDiary
//
//  Created by Kuba Kromołowski on 17/03/2025.
//

import SwiftUI

struct SignInFeatureView: View {
    @State private var login = ""
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue.opacity(0.8), Color.black]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Sign In")
                    .foregroundColor(.white)
                    .font(.system(size: 36))
                Spacer()
                Form {
                    TextField("Sign In ", text: $login)
                        .background(
                            RoundedRectangle(cornerRadius: 5)
                            .fill(Color.white.opacity(0.01)))
                }
                .scrollContentBackground(.hidden)
                .background(Color.clear)
            }
        }
    }
}
#Preview {
    SignInFeatureView()
}
