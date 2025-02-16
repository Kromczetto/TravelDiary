//
//  ContentView.swift
//  TravelDiary
//
//  Created by Kuba Kromołowski on 16/02/2025.
//

import SwiftUI
import ComposableArchitecture

@Reducer
struct PlaceFeature {
    @ObservableState
    struct State {
        var placeName: String
        var photo: String
        var rating: Double
        var feelings: String
        init(placeName: String = "", photo: String = "",
             rating: Double = 0.0, feelings: String = "") {
            self.placeName = placeName
            self.photo = photo
            self.rating = rating
            self.feelings = feelings
        }
        
    }
    
    enum Action: Equatable, BindableAction {
        case binding(BindingAction<State>)
    }
    
    var body: some ReducerOf<Self> {
        BindingReducer()
        Reduce { state, action in
            switch action {
            case .binding(\.placeName):
                print("PlaceName: \(state.placeName)")
                return .none
            case .binding(\.photo):
                print("Photo: \(state.photo)")
                return .none
            case .binding(_):
                return .none
            }
        }
    }
}
struct ContentView: View {
    @State var store: StoreOf<PlaceFeature>
    
    var body: some View {
        VStack {
            TextField("Place name", text: $store.placeName)
            TextField("Photo", text: $store.photo)
        }
    }
}
#Preview {
    ContentView(
    store: Store(initialState: PlaceFeature.State()) {
        PlaceFeature()
    }
  )
}
