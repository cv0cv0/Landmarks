//
//  MapView.swift
//  Landmarks
//
//  Created by hzlx on 2019/12/27.
//  Copyright © 2019 GR. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView {
    var coordinate: CLLocationCoordinate2D
    
    func makeMapView() -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateMapView(_ view: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
    }
}

#if os(macOS)
extension MapView: NSViewRepresentable {
    func makeNSView(context: NSViewRepresentableContext<MapView>) -> MKMapView {
        makeMapView()
    }
    
    func updateNSView(_ nsView: MKMapView, context: NSViewRepresentableContext<MapView>) {
        updateMapView(nsView, context: context)
    }
}
#else
extension MapView: UIViewRepresentable {
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {
        makeMapView()
    }
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        updateMapView(uiView, context: context)
    }
}
#endif

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: landmarkData[0].locationCoordinate)
    }
}
