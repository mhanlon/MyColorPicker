import SwiftUI

struct PartThreeView: View {
    @State private var isRedSwitchOn = false
    @State private var isGreenSwitchOn = false
    @State private var isBlueSwitchOn = false
    @State private var redValue = 0.0
    @State private var greenValue = 0.0
    @State private var blueValue = 0.0
    
    private var color: Color {
        Color(red: 
                isRedSwitchOn ? redValue : 0.0, green: isGreenSwitchOn ? greenValue : 0.0, blue: isBlueSwitchOn ? blueValue : 0.0)
    }
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(color)
            Divider()
            HStack {
                Slider(value: $redValue)
                Toggle("Red", isOn: $isRedSwitchOn)
            }
            HStack {
                Slider(value: $greenValue)
                Toggle("Green", isOn: $isGreenSwitchOn)
            }
            HStack {
                Slider(value: $blueValue)
                Toggle("Blue", isOn: $isBlueSwitchOn)
            }
            
        }
        .padding()
    }
}

struct PartThreeView_Previews: PreviewProvider {
    static var previews: some View {
        PartThreeView()
    }
}
