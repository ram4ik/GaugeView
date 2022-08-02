//
//  ContentView.swift
//  GaugeView
//
//  Created by Ramill Ibragimov on 02.08.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var speed = 0.75
    
    var body: some View {
        VStack {
            Gauge(value: speed) {
                Text("Speed")
            }.padding(.horizontal)
            
            Speedometer()
                .padding(.horizontal)
            
            AddingCustomLabels()
                .padding(.horizontal)
            
            BoundsView()
                .padding(.horizontal)
            
            UsualViewModifiers()
                .padding(.horizontal)
            
            GaugeStyles()
                .padding(.horizontal)
            
            GaugeStyleAccessoryLinearCapacity()
                .padding(.horizontal)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
