import SwiftUI

struct PartTwoView: View {
    @State private var isRedSwitchOn = false
    @State private var isGreenSwitchOn = false
    @State private var isBlueSwitchOn = false
    
    private var color: Color {
        Color(red: 
                isRedSwitchOn ? 1.0 : 0.0, green: isGreenSwitchOn ? 1.0 : 0.0, blue: isBlueSwitchOn ? 1.0 : 0.0)
    }
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(color)
            Divider()
            Toggle("Red", isOn: $isRedSwitchOn)
            Toggle("Green", isOn: $isGreenSwitchOn)
            Toggle("Blue", isOn: $isBlueSwitchOn)
        }
        .padding()
    }
}

struct PartTwoView_Previews: PreviewProvider {
    static var previews: some View {
        PartTwoView()
    }
}
