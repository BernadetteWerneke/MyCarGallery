//
//  LaunchScreenView.swift
//  MyCarGallery
//
//  Created by Bernadette Werneke on 18.12.23.
//

import SwiftUI

struct AnimationProperties {
    var translation = 0.0
    var verticalStretch = 1.0
}


struct LaunchScreenView: View {
    
    @State private var selected = false
    @State private var isActive = false
    var totalDuration = 1.0
    
    var body: some View {
        
        if isActive {
            ContentView()
        } else {
            
            //Splashscreen
            ZStack {
                //Hintrgrund mit Farbverlauf
                LinearGradient(colors: [.white, .black], startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea()
                
                //animiertes Image
                Image(systemName: "car.circle.fill")
                    .resizable()
                    .foregroundStyle(.white)
                    .frame(width: 200, height: 200)
                    .keyframeAnimator(initialValue: AnimationProperties(), repeating: true) { content, value in
                        content
                            .scaleEffect(.init(width: 1, height: value.verticalStretch), anchor: .bottom)
                            .offset(y: value.translation)
                    } keyframes: { _ in
                        KeyframeTrack(\.verticalStretch) {
                            SpringKeyframe(0.6, duration: 0.2 * totalDuration)
                            CubicKeyframe(1, duration: 0.2 * totalDuration)
                            CubicKeyframe(1.2, duration: 0.6 * totalDuration)
                            CubicKeyframe(1.1, duration: 0.25 * totalDuration)
                            SpringKeyframe(1, duration: 0.25 * totalDuration)
                        }
                        
                        KeyframeTrack(\.translation) {
                            CubicKeyframe(0, duration: 0.2 * totalDuration)
                            CubicKeyframe(-100, duration: 0.4 * totalDuration)
                            CubicKeyframe(-100, duration: 0.4 * totalDuration)
                            CubicKeyframe(0, duration: 0.5 * totalDuration)
                        }
                    }
            }
            
            //Dauer der Animation
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.4) {
                    //Übergang wird weicher
                    withAnimation {
                        self.isActive = true
                    }
                  
                }
            }
        }
    }
}


#Preview {
    LaunchScreenView()
}


/*struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        
        return path
    }
}*/
