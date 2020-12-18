# SwiftUICorePlotExample
#Example of using CorePlot in SwiftUI

The [Core Plot](https://github.com/core-plot/core-plot) library is not compatible with
[SwiftUI](https://developer.apple.com/tutorials/swiftui/).

Using the concept of `NSViewRepresentable`, `CorePlot` can be integrated in `SwiftUI`.

For an explanation of the necessary steps to reproduce this see [Integration CorePlot in SwiftUI on MacOS](https://fred.appelman.net/?p=156).

This code embeds CorePlot within a RepresentedView, either an NSViewRepresentable or a UIViewRepresentable, so it can be displayed using SwiftUI. It is based upon the [SwiftUICorePlot-](https://github.com/fappelman/SwiftUICorePlot-) code by Fred Appelman.
I would like to thank Fred for all his assistance in getting this code running. 
