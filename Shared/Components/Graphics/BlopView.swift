//
//  BlopView.swift
//  Begining
//
//  Created by Борис Ларионов on 14.01.2022.
//

import SwiftUI

struct BlopView: View {
    @State var appear = false
    
    
    var body: some View {
        TimelineView(.animation) { timeLine in
            let now = timeLine.date.timeIntervalSinceReferenceDate
            let angle = Angle.degrees(now.remainder(dividingBy: 3) * 60)
            let x = cos(angle.radians)
            let angle2 = Angle.degrees(now.remainder(dividingBy: 6) * 10)
            let x2 = cos(angle2.radians)
            
            Canvas { context, size in
                context.fill(path(in: CGRect(x: 0, y: 0, width: size.width, height: size.height), x: x, x2: x2), with: .linearGradient(Gradient(colors: [.pink, .blue]), startPoint: CGPoint(x: 0, y: 0), endPoint: CGPoint(x: size.width, y: size.height)))
            }
                .frame(width: 400, height: 414)
                .rotationEffect(.degrees(appear ? 360 : 0))
        }
        .onAppear {
            withAnimation (.linear(duration: 20).repeatForever(autoreverses: false)){
                appear = true
            }
            
        }
    }
    
    func path(in rect: CGRect, x: Double, x2: Double) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.9923*width, y: 0.42593*height))
        path.addCurve(to: CGPoint(x: 0.6355*width*x2, y: height), control1: CGPoint(x: 0.92554*width*x2, y: 0.77749*height*x2), control2: CGPoint(x: 0.91864*width*x2, y: height))
        path.addCurve(to: CGPoint(x: 0.08995*width, y: 0.60171*height), control1: CGPoint(x: 0.35237*width*x, y: height), control2: CGPoint(x: 0.2695*width, y: 0.77304*height))
        path.addCurve(to: CGPoint(x: 0.34086*width, y: 0.06324*height*x), control1: CGPoint(x: -0.0896*width, y: 0.43038*height), control2: CGPoint(x: 0.00248*width, y: 0.23012*height*x))
        path.addCurve(to: CGPoint(x: 0.9923*width, y: 0.42593*height), control1: CGPoint(x: 0.67924*width, y: -0.10364*height*x), control2: CGPoint(x: 1.05906*width, y: 0.07436*height*x2))
        return path
    }
}

struct BlopView_Previews: PreviewProvider {
    static var previews: some View {
        BlopView()
    }
}

struct BlopShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.98851*width, y: 0.41126*height))
        path.addCurve(to: CGPoint(x: 0.62069*width, y: height), control1: CGPoint(x: 0.98851*width, y: 0.65871*height), control2: CGPoint(x: 0.84605*width, y: height))
        path.addCurve(to: CGPoint(x: 0.0728*width, y: 0.5974*height), control1: CGPoint(x: 0.39533*width, y: height), control2: CGPoint(x: 0.22222*width, y: 0.92208*height))
        path.addCurve(to: CGPoint(x: 0.54598*width, y: 0.02597*height), control1: CGPoint(x: -0.14559*width, y: 0.24242*height), control2: CGPoint(x: 0.16858*width, y: 0.12121*height))
        path.addCurve(to: CGPoint(x: 0.98851*width, y: 0.41126*height), control1: CGPoint(x: 0.92337*width, y: -0.06926*height), control2: CGPoint(x: 1.03448*width, y: 0.1645*height))
        path.closeSubpath()
        return path
    }
}
