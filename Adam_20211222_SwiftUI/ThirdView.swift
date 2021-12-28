//
//  ThirdView.swift
//  Adam_20211222_SwiftUI
//
//  Created by Adam on 2021/12/27.
//

import SwiftUI

struct ThirdView: View {
//    @EnvironmentObject var action: NavigationAction
    @Binding var pushActive: Bool
    var body: some View {
        Button("BacktoHome") {
//            self.action.backToRoot = false
            pushActive = false
        }
        .navigationBarTitle(Text("ThirdView"), displayMode: .inline)

    }
}

//struct ThirdView_Previews: PreviewProvider {
//    static var previews: some View {
//        ThirdView()
//    }
//}
