//
//  ContentView.swift
//  Design_M1L3_Challenge
//
//  Created by tom montgomery on 8/29/23.
//

import SwiftUI

struct ContentView: View {
    
    // create triangle shape
    let triangle: Path = {
        Path({ path in
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLines([CGPoint(x: 100, y: 0),
                          CGPoint(x: 50, y: 100),
                          CGPoint(x: 0, y: 0)])
        })
        
        
    }()
    
    
    var body: some View {
        HStack (alignment: .center) {
         // TODO:  decrease numbers to move the chevron back to the center
            Path({ path in
                
                path.move(to: CGPoint(x: 50, y: 250))
                path.addLine(to: CGPoint(x: 100, y: 400))
                path.addLine(to: CGPoint(x: 50, y: 550))
                path.addLine(to: CGPoint(x: 150, y: 550))
                path.addLine(to: CGPoint(x: 200, y: 400))
                path.addLine(to: CGPoint(x: 150, y: 250))
                path.addLine(to: CGPoint(x: 50, y: 250))
                //path.closeSubpath()
                
            })
            .fill(.blue)
            .frame(width:200, height: 200)
            //.stroke(Color.blue, style: StrokeStyle(lineWidth: 2))
            ZStack {
                triangle
                    .fill(Color.yellow)
                    .padding(.top, 15)
                triangle
                    .fill(Color.yellow)
                    .rotationEffect(Angle(degrees: 180))
                    .padding(.bottom, 15)
            }
            .frame(width: 100, height: 100)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
