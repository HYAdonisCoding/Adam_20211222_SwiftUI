//
//  SwiftUIView.swift
//  Adam_20211222_SwiftUI
//
//  Created by Adam on 2021/12/22.
//

import SwiftUI
class NavigationAction: ObservableObject {
   @Published var backToRoot: Bool = false
}



struct SwiftUIView: View {
//    @EnvironmentObject var action: NavigationAction
    @State var pushActive = false
    
    
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: SecondView(pushActive: $pushActive),
                               isActive: $pushActive) {
                    Text("Push")
                }
            }
            .navigationBarTitle(Text("Home"))
        }
        
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
