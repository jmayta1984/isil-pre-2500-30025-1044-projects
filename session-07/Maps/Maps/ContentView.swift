//
//  ContentView.swift
//  Maps
//
//  Created by user272495 on 2/26/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            //GoogleMapView(latitude:-12.1263368, longitude: -77.0337034, zoom: 17)
            MapView()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
