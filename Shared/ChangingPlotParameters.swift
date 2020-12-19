//
//  ChangingPlotParameters.swift
//  SwiftUICorePlotExample
//
//  Created by Jeff Terry on 12/19/20.
//

import SwiftUI
import CorePlot

class ChangingPlotParameters: NSObject, ObservableObject {
    
    var xLabel: String = "x"
    var yLabel: String = "y"
    var xMax : Double = 2.0
    var yMax : Double = 2.0
    var yMin : Double = -1.0
    var xMin : Double = -1.0
    var lineColor: CPTColor = .blue()
    
}
