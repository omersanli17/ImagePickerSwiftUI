//
//  Fotogrfaf.swift
//  ImagePick
//
//  Created by omer sanli on 12.02.2022.
//

import SwiftUI

struct FotografSecimi: UIViewControllerRepresentable{
    
    @Binding var gorsel: UIImage

    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.allowsEditing = true
        picker.delegate = context.coordinator
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {}
    
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(secici: self)
    }
    
    final class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate{
        let secici: FotografSecimi
        init(secici: FotografSecimi){
            self.secici = secici
        }
        
        
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let image = info[.editedImage] as? UIImage {
                secici.gorsel = image
            }
            picker.dismiss(animated: true)
            
        }
        
        

    }
    
    
}
