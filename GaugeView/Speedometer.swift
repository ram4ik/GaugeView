//
//  Speedometer.swift
//  GaugeView
//
//  Created by Ramill Ibragimov on 02.08.2022.
//

import SwiftUI

struct Speedometer: View {
    @State private var currentSpeed = 75.0
    
    private let minSpeed = 0.0
    private let maxSpeed = 150.0
    
    var body: some View {
        Gauge(value: currentSpeed, in: minSpeed...maxSpeed) {
            Text("Speed")
        }
    }
}
