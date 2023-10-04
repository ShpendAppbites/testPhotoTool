//
//  CameraView.swift
//  Pods-testPhotoTool_Example
//
//  Created by appbites on 10/3/23.
//


//import SwiftUI
//import UIKit
//
//struct CameraView: UIViewControllerRepresentable {
//    @Binding var image: UIImage?
//    @Environment(\.presentationMode) private var presentationMode
//
//    class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
//        var parent: CameraView
//
//        init(_ parent: CameraView) {
//            self.parent = parent
//        }
//
//        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
//            if let originalImage = info[.originalImage] as? UIImage {
//                parent.image = originalImage
//            }
//            parent.presentationMode.wrappedValue.dismiss()
//        }
//
//        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
//            parent.presentationMode.wrappedValue.dismiss()
//        }
//    }
//
//    func makeCoordinator() -> Coordinator {
//        Coordinator(self)
//    }
//
//    func makeUIViewController(context: Context) -> UIImagePickerController {
//        let picker = UIImagePickerController()
//        picker.delegate = context.coordinator
//        picker.sourceType = .camera // Set to .photoLibrary to open the photo library instead
//        // picker.mediaTypes = ["public.image"]
//        return picker
//    }
//
//    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
//        // Nothing to do here
//    }
//}
import SwiftUI
import AVFoundation

struct CameraView: View {
    @Binding var capturedImage: UIImage?
    @Binding var isCameraActive: Bool

    var body: some View {
        VStack {
            Text("Camera View")

            Button("Capture") {
                // Implement the camera capture logic here
            }
            .padding()

            Button("Dismiss") {
                isCameraActive = false
            }
            .padding()
        }
        .onAppear {
            // Initialize the camera here, if needed
        }
    }
}
