//
//  TravelDiaryApp.swift
//  TravelDiary
//
//  Created by Kuba Kromomołowski on 16/02/2025.
//

import SwiftUI
import SwiftData
import ComposableArchitecture
import Firebase

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}

@main
struct TravelDiaryApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            ContentView(
//                store: Store(initialState: PlaceFeature.State()) {
//                    PlaceFeature()
//                }
            )
        }.modelContainer(for: PlaceData.self)
    }
}
