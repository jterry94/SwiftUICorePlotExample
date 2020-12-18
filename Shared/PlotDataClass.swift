//
//  PlotDataClass.swift
//  SwiftUICorePlotExample
//  Shared
//
//  Created by Jeff Terry on 12/16/20.
//

import Foundation
import SwiftUI
import CorePlot

class PlotDataClass: NSObject, ObservableObject {
    
    @Published var plotData = [plotDataType]()
    @Published var xLabel: String = ""
    @Published var yLabel: String = ""
    @Published var xMax = 2.0
    @Published var yMax = 2.0
    @Published var yMin = -1.0
    @Published var xMin = -1.0
    
    init(fromLine line: Bool) {
        
        super.init()
        
        //Intitialize the first plot
        self.plotYEqualsX()
        
       }
    
    func ploteToTheMinusX()
    {
        plotData = []
        for i in 0 ..< 60 {

            //create x values here

            let x = -2.0 + Double(i) * 0.2

        //create y values here

        let y = exp(-x)


            let dataPoint: plotDataType = [.X: x, .Y: y]
            plotData.append(dataPoint)
        }
        
        //Set the axis ranges and titles
        yMax = 2.0
        yMin = -1.0
        xMax = 2.0
        xMin = -1.0
        xLabel = "x"
        yLabel = "exp(-x)"
        
        return
    }
    
    func plotYEqualsX()
    {
        plotData = []
        
        
        for i in 0 ..< 60 {

            //create x values here

            let x = -2.0 + Double(i) * 0.2

        //create y values here

        let y = x


            let dataPoint: plotDataType = [.X: x, .Y: y]
            plotData.append(dataPoint)
        
        }
        
        //Set the axis ranges and titles
        yMax = 4.0
        yMin = -1.0
        xMax = 4.0
        xMin = -1.0
        xLabel = "x"
        yLabel = "y"
    }
    
    

}


