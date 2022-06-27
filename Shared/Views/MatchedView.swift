//
//  MatchedView.swift
//  Begining
//
//  Created by Борис Ларионов on 16.01.2022.
//

import SwiftUI

struct MatchedView: View {
    @Namespace var namespace
    @State var show = false
    
    var body: some View {
        ZStack {
            if !show {
                VStack {
                    Text("Swift UI")
                        .matchedGeometryEffect(id: "text", in: namespace)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Image("Illustration 2")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .matchedGeometryEffect(id: "image", in: namespace)
                }
                
                    
            } else {
                VStack {
                    Text("Swift UI")
                        .matchedGeometryEffect(id: "text", in: namespace)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                    
                    Image("Illustration 1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .matchedGeometryEffect(id: "image", in: namespace)
                }
                    
            }
        }
        .onTapGesture {
            withAnimation (.spring(response: 0.6, dampingFraction: 0.7)){
                show.toggle()
            }
            
        }
    }
}

struct MatchedView_Previews: PreviewProvider {
    static var previews: some View {
        MatchedView()
    }
}
