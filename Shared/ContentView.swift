//
//  ContentView.swift
//  Shared
//
//  Created by Jeff Terry on 12/17/20.
//
//
//  Based on Code Created by Fred Appelman on 14/12/2020.
//

import SwiftUI
import CorePlot

typealias plotDataType = [CPTScatterPlotField : Double]

struct ContentView: View {
    @ObservedObject var plotDataModel = PlotDataClass(fromLine: true)
    

    var body: some View {
        
        VStack{
      
            CorePlot(dataForPlot: $plotDataModel.plotData , xLabel: $plotDataModel.xLabel, yLabel: $plotDataModel.yLabel, xMax: $plotDataModel.xMax, yMax: $plotDataModel.yMax, yMin: $plotDataModel.yMin, xMin: $plotDataModel.xMin)
                .padding()
            
            HStack{
                Button("Plot y = exp(-x)", action: {self.calculateYEqualseToTheMinusX()} )
                .padding()
                
                Button("Plot y = x", action: {self.calculateYEqualsX()} )
                .padding()
                
            }
        }
        
    }
    
    func calculateYEqualsX(){
        
        plotDataModel.plotYEqualsX()
    }
    
    func calculateYEqualseToTheMinusX(){
        
        plotDataModel.ploteToTheMinusX()
    }
   
    
}

/*struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
*/
