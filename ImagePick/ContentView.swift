//
//  ContentView.swift
//  ImagePick
//
//  Created by omer sanli on 12.02.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var sheetBool: Bool = false
    @State private var gorsel = UIImage(named: "profil")!
    
    var body: some View {
        Image(uiImage: gorsel)
            .resizable()
            .scaledToFit()
            .frame(width: 250, height: 250)
            .clipShape(Circle())
            .onTapGesture {
                sheetBool = true
            }
            .sheet(isPresented: $sheetBool){
                // ALBÜM
                FotografSecimi(gorsel: $gorsel)
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
