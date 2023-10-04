import SwiftUI
import AVFoundation

public struct PhotoCaptureView: View {
        @Binding var capturedImage: UIImage?
        @Binding var isCameraActive: Bool
    @State private var imagePickerSourceType: UIImagePickerController.SourceType = .camera

    public init(capturedImage: Binding<UIImage?>, isCameraActive: Binding<Bool>) {
            self._capturedImage = capturedImage
            self._isCameraActive = isCameraActive
        }
    
    public var body: some View {
        VStack {
            Button("Capture Photo") {
                isCameraActive = true
            }
            .sheet(isPresented: $isCameraActive) {
                ImagePickerView(sourceType: imagePickerSourceType) { image in
                    // Handle the captured image
                    capturedImage = image
                    isCameraActive = false
                }
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
    @State private static var previewImage: UIImage?
    @State private static var isPreviewCameraActive = false

    static var previews: some View {
        PhotoCaptureView(capturedImage: $previewImage, isCameraActive: $isPreviewCameraActive)
    }
}

struct ImagePickerView: UIViewControllerRepresentable {
    typealias UIViewControllerType = UIImagePickerController
    typealias Callback = (UIImage?) -> Void

    let sourceType: UIImagePickerController.SourceType
    let callback: Callback

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    func makeUIViewController(context: Context) -> UIImagePickerController {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = sourceType
        imagePicker.delegate = context.coordinator
        return imagePicker
    }

    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {}

    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        let parent: ImagePickerView

        init(_ parent: ImagePickerView) {
            self.parent = parent
        }

        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let selectedImage = info[.originalImage] as? UIImage {
                parent.callback(selectedImage)
            } else {
                parent.callback(nil)
            }
        }

        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            parent.callback(nil)
        }
    }
}
