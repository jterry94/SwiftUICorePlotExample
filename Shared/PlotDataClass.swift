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
    @Published var changingPlotParameters: ChangingPlotParameters = ChangingPlotParameters()
    
    init(fromLine line: Bool) {
        
        
        //Must call super init before initializing plot
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
        
        // set the Plot Parameters
        changingPlotParameters.yMax = 2.0
        changingPlotParameters.yMin = -1.0
        changingPlotParameters.xMax = 2.0
        changingPlotParameters.xMin = -1.0
        changingPlotParameters.xLabel = "x"
        changingPlotParameters.yLabel = "exp(-x)"
        changingPlotParameters.lineColor = .blue()
        
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
        
        //set the Plot Parameters
        changingPlotParameters.yMax = 4.0
        changingPlotParameters.yMin = -1.0
        changingPlotParameters.xMax = 4.0
        changingPlotParameters.xMin = -1.0
        changingPlotParameters.xLabel = "x"
        changingPlotParameters.yLabel = "y"
        changingPlotParameters.lineColor = .red()
        
    }
    
    

}


