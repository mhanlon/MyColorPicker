import SwiftUI

struct ColorPickerView: View {
    @Environment(\.colorScheme) var colorScheme
    @State private var color: Color = .white
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(color)
            Divider()
            ColorPicker("Color", selection: $color)
                .onAppear { 
                    color = ( colorScheme == .dark ) ? .black : .white
                }
                .padding()
            }
        .padding()
    }
}

struct ColorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerView()
    }
}
