//
//  ContentView.swift
//  Pods-testPhotoTool_Example
//
//  Created by appbites on 10/3/23.
//

import SwiftUI
import AVFoundation


struct ContentView: View {
    @State private var image: UIImage?
    @State private var isShowingCamera = false
    @State private var additionalData = ""
    
    var body: some View {
        NavigationView {
            ZStack{
                Color(.white)
                VStack {
                    if let image = image {
                        Image(uiImage: image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200, height: 200)
                        
                        TextField("Enter Additional Data", text: $additionalData)
                                            .padding()
                                            .background(Color.white) // Set background color
                                            .cornerRadius(8) // Set corner radius
                                            .foregroundColor(.white) // Set text color
                                            .textFieldStyle(RoundedBorderTextFieldStyle())
                                            .padding(.horizontal) // Add horizontal padding
                    } else {
                        Text("No Image Selected")
                            .font(.title)
                    }
                    
                    Button("Capture Photo") {
                        isShowingCamera = true
                    }
                    .padding()
                    .sheet(isPresented: $isShowingCamera) {
                        CameraView(image: $image)
                    }
                }
            }
            
            
            .navigationTitle("Photo Tool")
        }.background(Color.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
