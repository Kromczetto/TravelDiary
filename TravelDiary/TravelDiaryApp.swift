//
//  TravelDiaryApp.swift
//  TravelDiary
//
//  Created by Kuba Kromomołowski on 16/02/2025.
//

import SwiftUI
import ComposableArchitecture

@main
struct TravelDiaryApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(
                store: Store(initialState: PlaceFeature.State()) {
                    PlaceFeature()
                }
            )
        }
    }
}
