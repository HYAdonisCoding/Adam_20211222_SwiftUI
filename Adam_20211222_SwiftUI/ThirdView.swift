//
//  ThirdView.swift
//  Adam_20211222_SwiftUI
//
//  Created by Adam on 2021/12/27.
//

import SwiftUI

struct ThirdView: View {
//    @Environment(\.presentationMode) private var presentationMode

//    @EnvironmentObject var action: NavigationAction
    @Binding var pushActive: Bool
    var body: some View {
        Button("BacktoHome") {
//            self.action.backToRoot = false
            pushActive = false
        }
        .navigationBarTitle(Text("ThirdView"), displayMode: .inline)
        .navigationBarBackButtonHidden(true)
                .toolbar(content: {
                      ToolbarItemGroup(placement: .navigationBarLeading){
                       BackButtonIcon()
                     }
                 })
                .edgesIgnoringSafeArea(.all)
        

    }
    
    func BackButtonIcon() -> some View {
        Image(systemName: "arrow.left")
//            .renderingMode(.original)
            .renderingMode(.template)
            .resizable()
            .frame(width: 24, height: 24)
            .padding(.all, 6)
            .background(
                Color.black.opacity(0.2).clipShape(Circle()).shadow(radius: 4)
            )
            .foregroundColor(Color.white)
            .cornerRadius(30)
            .onTapGesture {
                pushActive = false
            }
    }
}

struct ThirdView_Previews: PreviewProvider {
    @State static private var pushActive = false
    static var previews: some View {
        ThirdView(pushActive: $pushActive)
    }
}
