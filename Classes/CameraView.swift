//    }
//}
import SwiftUI
import UIKit
import AVFoundation

public struct CameraView: View {
    @Binding var capturedImage: UIImage?
    @Binding var isCameraActive: Bool
    @State private var imagePickerPresented = true
    @State private var imagePickerSourceType: UIImagePickerController.SourceType = .camera

    public var body: some View {
        VStack {
        }
        .onAppear {
            // Initialize the camera here, if needed
        }
        .sheet(isPresented: $imagePickerPresented) {
            ImagePickerView(sourceType: imagePickerSourceType) { image in
                // Handle the captured image
                capturedImage = image
                isCameraActive = false
            }
        }
    }
}


