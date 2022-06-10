import SwiftUI

struct PartFourView: View {
    @State private var isRedSwitchOn = false
    @State private var isGreenSwitchOn = false
    @State private var isBlueSwitchOn = false
    @State private var redValue = 0.0
    @State private var greenValue = 0.0
    @State private var blueValue = 0.0
        
    private var color: Color {
        Color(red: redValue, green: greenValue, blue: blueValue)
    }
        
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(color)
            Divider()
            HStack {
                Slider(value: $redValue)
                    .disabled(!isRedSwitchOn)
                Toggle("Red", isOn: $isRedSwitchOn)
            }
            .tint(.red)
            HStack {
                Slider(value: $greenValue)
                    .disabled(!isGreenSwitchOn)
                Toggle("Green", isOn: $isGreenSwitchOn)
            }
            .tint(.green)
            HStack {
                Slider(value: $blueValue)
                    .disabled(!isBlueSwitchOn)
                Toggle("Blue", isOn: $isBlueSwitchOn)
            }
            .tint(.blue)
            Button("Reset") { 
                isRedSwitchOn = false
                isBlueSwitchOn = false
                isGreenSwitchOn = false
                redValue = 0.0
                blueValue = 0.0
                greenValue = 0.0
            }
        }
        .padding()
    }
}

struct PartFourView_Previews: PreviewProvider {
    static var previews: some View {
        PartFourView()
    }
}
