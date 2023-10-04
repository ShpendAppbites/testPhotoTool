//
//  testPhotoTool.swift
//  Pods-testPhotoTool_Example
//
//  Created by appbites on 10/4/23.
//

import SwiftUI
import AVFoundation

public struct PhotoCaptureView: View {
    @State private var isCameraActive = false
    @State private var capturedImage: UIImage?

    public var body: some View {
        VStack {
            Button("Capture Photo") {
                isCameraActive = true
            }
            .sheet(isPresented: $isCameraActive) {
                CameraView(capturedImage: $capturedImage, isCameraActive: $isCameraActive)
            }

            if let image = capturedImage {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
            }
        }
    }
}

struct PhotoCaptureView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoCaptureView()
    }
}
