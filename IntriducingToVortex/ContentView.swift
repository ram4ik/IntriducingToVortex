//
//  ContentView.swift
//  IntriducingToVortex
//
//  Created by test on 31.01.2024.
//

import SwiftUI
import Vortex

struct ContentView: View {
    var body: some View {
        TabView {
            ZStack {
                VStack {
                    Text("RAIN")
                        .opacity(0.3)
                        .font(.largeTitle)
                        .bold()
                }
                VortexView(.splash) {
                    Circle()
                        .fill(.white)
                        .frame(width: 32)
                        .tag("circle")
                }
                VortexView(.rain) {
                    Circle()
                        .fill(.white)
                        .frame(width: 32)
                        .tag("circle")
                }
            }.tabItem {
                Label("Rain", systemImage: "cloud.rain")
            }
                
            VortexView(.fireworks) {
                Circle()
                    .fill(.white)
                    .blendMode(.plusLighter)
                    .frame(width: 32)
                    .tag("circle")
                
            }.tabItem {
                Label("Fireworks", systemImage: "fireworks")
            }
            
            VStack  {
                VortexView(.fire) {
                    Circle()
                        .fill(.white)
                        .blendMode(.plusLighter)
                        .blur(radius: 3)
                        .frame(width: 32)
                        .tag("circle")
                }
                VortexViewReader { proxy in
                    VortexView(.confetti) {
                        Rectangle()
                            .fill(.white)
                            .frame(width: 16, height: 16)
                            .tag("square")

                        Circle()
                            .fill(.white)
                            .frame(width: 16)
                            .tag("circle")
                    }

                    Button("Burst", action: proxy.burst)
                        .padding(.bottom)
                }
                
            }.tabItem {
                Label("Fire", systemImage: "flame")
            }
            
            VortexView(.snow) {
                Circle()
                    .fill(.blue)
                    .frame(width: 32)
                    .tag("circle")
            }.tabItem {
                Label("Snow", systemImage: "snowflake")
            }
            
            VStack {
                VortexView(.smoke) {
                    Circle()
                        .fill(.gray)
                        .frame(width: 23)
                        .tag("circle")
                }
                VortexViewReader { proxy in
                    VortexView(.confetti) {
                        Text("Swift")
                            .foregroundStyle(.green)
                            .font(.largeTitle)
                            .tag("square")

                        Text("SwiftUI")
                            .foregroundStyle(.red)
                            .font(.largeTitle)
                            .tag("circle")
                        
                    }

                    Button("Burst", action: proxy.burst)
                        .padding(.bottom)
                }
            }.tabItem {
                Label("Smoke", systemImage: "fluid.transmission")
            }
        }
    }
}

#Preview {
    ContentView()
}
