//
//  ContentView.swift
//  TravelDiary
//
//  Created by Kuba Kromołowski on 16/02/2025.
//

import SwiftUI
import ComposableArchitecture
import SwiftData

@Reducer
struct PlaceFeature {
    @ObservableState
    struct State {
        var placeName: String
        var photo: String
        var rating: Double
        var description: String
        init(placeName: String = "", photo: String = "",
             rating: Double = 0.0, description: String = "") {
            self.placeName = placeName
            self.photo = photo
            self.rating = rating
            self.description = description
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
    var body: some View {
        SignInFeatureView()        
    }
//    @State var store: StoreOf<PlaceFeature>
//    @Query var places: [PlaceData]
//    @Environment(\.modelContext) var modelContext
//    var body: some View {
//        VStack {
//            TextField("Place name", text: $store.placeName)
//           // TextField("Photo", text: $store.photo)
//        }
//        VStack {
//            List {
//                ForEach(places) { place in
//                    Text(place.placeName)
//                }
//            }
//        }
//        Button("Save name into SwiftData") {
//            let place = PlaceData(placeName: store.placeName)
//            modelContext.insert(place)
//        }
//    }
}
#Preview {
    ContentView(
//    store: Store(initialState: PlaceFeature.State()) {
//        PlaceFeature()
//    }
  )
}
