import SwiftUI

@available(iOS 15.0.0, *)
public struct ColorPickerOverviewView: View {

    public init() {}

    public var body: some View {
        TabView { 
            ColorPickerPartOneView()
                .tabItem { 
                    Image(systemName: "1.circle")
                }
            ColorPickerPartTwoView()
                .tabItem { 
                    Image(systemName: "2.circle")
                }
            ColorPickerPartThreeView()
                .tabItem { 
                    Image(systemName: "3.circle")
                }
            ColorPickerPartFourView()
                .tabItem { 
                    Image(systemName: "4.circle")
                }
            ColorPickerView()
                .tabItem { 
                    Image(systemName: "paintpalette")
                }
        }
    }
}

@available(iOS 15.0.0, *)
public struct ColorPickerOverviewView_Previews: PreviewProvider {
    public static var previews: some View {
        ColorPickerOverviewView()
    }
}
