import SwiftUI

struct FlippingView2: View {
    
    @State var currentRotation = 0.0
    
    var body: some View {
        Button("Flips") {
            withAnimation{
                currentRotation += 360
            }
        }
        .frame(width: 100, height: 50)
        .background(.blue)
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerRadius: 10.0))
        //MARK: Stretch #1 - Part I
        .rotation3DEffect(Angle(degrees: currentRotation), axis: (x: 1.0, y: 0.0, z: 0.0))
        .animation(.spring(), value: currentRotation)
        
        
        
    }
}
