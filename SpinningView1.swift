import SwiftUI

struct SpinningView1: View {
    
    @State var currentDegree = 0.0
    
    
    var body: some View {
        Button("Spins") {
            withAnimation {
                currentDegree += -360
            }
            //MARK: MVP - Part I
            print("Were")
        }
        .frame(width: 100, height: 50)
        .background(.blue)
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerRadius: 10.0))
        //MARK: MVP - Part II
        .rotationEffect(Angle(degrees: currentDegree))
        
        
        
        
    }
}
