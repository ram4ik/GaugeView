//
//  BoundsView.swift
//  GaugeView
//
//  Created by Ramill Ibragimov on 02.08.2022.
//

import SwiftUI

struct BoundsView: View {
    
    @State private var currentSpeed = 75.0
    
    private let minSpeed = 0.0
    private let maxSpeed = 150.0
    
    var body: some View {
        
        Gauge(value: currentSpeed, in: minSpeed...maxSpeed) {
            Label("Speed", systemImage: "car.fill")
        } currentValueLabel: {
            Text(currentSpeed.formatted())
        } minimumValueLabel: {
            Image(systemName: "tortoise")
        } maximumValueLabel: {
            Image(systemName: "hare")
        }
    }
}

