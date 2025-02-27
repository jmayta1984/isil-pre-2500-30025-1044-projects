//
//  MapView.swift
//  Maps
//
//  Created by user272495 on 2/26/25.
//

import SwiftUI
import MapKit

struct MapView: View {
    var body: some View {
        Map {
            Marker("ISIL", coordinate: CLLocationCoordinate2DMake(-12.1263368, -77.0337034))
        }
    }
}

#Preview {
    MapView()
}
