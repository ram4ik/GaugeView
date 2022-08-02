//
//  GaugeStyleAccessoryLinearCapacity.swift
//  GaugeView
//
//  Created by Ramill Ibragimov on 02.08.2022.
//

import SwiftUI

struct GaugeStyleAccessoryLinearCapacity: View {
    
    @State private var currentSpeed = 75.0
    
    private let minSpeed = 0.0
    private let maxSpeed = 150.0
    
    var body: some View {
        Gauge(value: currentSpeed, in: minSpeed...maxSpeed) {
            Text("MPH")
        } currentValueLabel: {
            Text(currentSpeed.formatted())
        } minimumValueLabel: {
            Text(minSpeed.formatted())
        } maximumValueLabel: {
            Text(maxSpeed.formatted())
        }
        .gaugeStyle(.accessoryLinearCapacity)
    }
}

struct GaugeStyleAccessoryLinearCapacity_Previews: PreviewProvider {
    static var previews: some View {
        GaugeStyleAccessoryLinearCapacity()
    }
}
