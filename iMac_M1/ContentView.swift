//
//  ContentView.swift
//  photo_viewer
//
//  Created by Tafadzwa Alexander Razaro on 2024/02/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var iMacs = "imacs1"
    
    var body: some View {
        ZStack {
            Color(.white).ignoresSafeArea()
            
            VStack {
                VStack {
                    Image(iMacs)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(10)
                        .padding()
                }
                .background(Rectangle().foregroundColor(.white))
                .cornerRadius(10)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .padding()
                
                VStack(alignment: .center) {
                    Text("Apple colorizes the all-new M1-enabled iMac — its first redesign since 2012")
                        .font(.title)
                        .bold()
                    Text("Apple has introduced — for the first time — a new iMac in a spectrum of vibrant colors featuring a much more compact and thin design, enabled by the M1 chip.")
                        .font(.caption)
                }
                .padding(.horizontal)
                HStack {
                    Spacer()
                    Button(action: {
                        backwardImages()
                    }, label: {
                        Image(systemName: "backward.fill")
                    })
                    
                    Spacer()
                    Button(action: {
                        movingImages()
                    }, label: {
                        Image(systemName: "forward.fill")                    })
                    Spacer()
                }
                .padding()
                .padding()
                
                Text("This is a shuffled simulator.")
                    .font(.title)
            }
        }
    }
    
    func movingImages() {
        //Moving forward
        let nextImage = Int.random(in: 1...22)
        iMacs = "imacs" + String(nextImage)
    }
    
    func backwardImages() {
        //Moving backwards
        let previousImage = Int.random(in: 1...22) - 1
        iMacs = "imacs" + String(previousImage)
    }
}

#Preview {
    ContentView()
}
