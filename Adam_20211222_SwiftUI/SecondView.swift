//
//  SecondView.swift
//  Adam_20211222_SwiftUI
//
//  Created by Adam on 2021/12/27.
//

import SwiftUI

struct SecondView: View {
//    @EnvironmentObject var action: NavigationAction
    @Binding var pushActive: Bool

    var body: some View {
        List {
            NavigationLink(destination: ThirdView(pushActive: self.$pushActive)) {
                Text("Push")
            }
            
            Button("返回") {
                pushActive = false
                
            }
        }
        .onAppear(perform: {

        })
        .navigationBarTitle(Text("SecondView"), displayMode: .inline)
    }
}

struct SecondView_Previews: PreviewProvider {
    @State static private var pushActive = false

    static var previews: some View {
        SecondView(pushActive: $pushActive)
    }
}
