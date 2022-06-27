//
//  HandBookItem.swift
//  Begining
//
//  Created by Борис Ларионов on 11.06.2022.
//

import SwiftUI

struct HandBookItem: View {
    var handook: Handbook = handbooks[0]
    
    var body: some View {
        VStack (alignment: .leading, spacing: 8) {
            RoundedRectangle(cornerRadius: 20)
                .fill(.black.opacity(0.2))
                .frame(height: 90)
                .overlay(
                    Image(handook.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 100)
                )
            Text(handook.title)
                .fontWeight(.semibold)
                .layoutPriority(1)
            Text(handook.subtitle)
                .font(.caption.weight(.medium))
                .foregroundColor(.secondary)
            Text(handook.text)
                .font(.caption)
                .foregroundColor(.secondary)
                .lineLimit(3)
            
            Spacer()
        }
        .padding()
        .frame(maxWidth: 200)
        .frame(height: 260)
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 30, style: .continuous))
        .strokeStyle(cornerRadius: 30)
        .background(
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .fill(.linearGradient(colors: [handook.color1, handook.color2], startPoint: .topLeading, endPoint: .bottomTrailing))
                .rotation3DEffect(.degrees(10), axis: (x: 0, y: 1, z: 0), anchor: .bottomTrailing)
                .rotationEffect(.degrees(180))
                .padding(.trailing, 40)
        
        )
        
    }
}

struct HandBookItem_Previews: PreviewProvider {
    static var previews: some View {
        HandBookItem(handook: handbooks[1])
    }
}
