//
//  UsualViewModifiers.swift
//  GaugeView
//
//  Created by Ramill Ibragimov on 02.08.2022.
//

import SwiftUI

struct UsualViewModifiers: View {
    
    @State private var currentSpeed = 75.0
    @State private var speedLimit = 110.0
    
    private let minSpeed = 0.0
    private let maxSpeed = 150.0
    
    var body: some View {
        
        Gauge(value: currentSpeed, in: minSpeed...maxSpeed) {
            Label("Speed", systemImage: "gauge")
        } currentValueLabel: {
            Text(currentSpeed.formatted())
        } minimumValueLabel: {
            Image(systemName: "tortoise")
                .foregroundColor(.green)
        } maximumValueLabel: {
            Image(systemName: "hare")
                .foregroundColor(.red)
        }
        .tint(currentSpeed > speedLimit ? .red : .green)
        .labelStyle(.iconOnly)
        .onTapGesture {
            if currentSpeed == 75.0 {
                currentSpeed = 120.0
            } else {
                currentSpeed = 75.0
            }
        }
    }
}


