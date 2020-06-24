//
//  LandmarkRow.swift
//  SwiftUIDemo
//
//  Created by liupengkun on 2020/6/24.
//  Copyright © 2020 刘朋坤. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
                .clipped().cornerRadius(5)
            Text(landmark.name).foregroundColor(Color.black)
            Spacer()
        }
        
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarkData[1])
            .previewLayout(.fixed(width: 300, height: 70))
            LandmarkRow(landmark: landmarkData[3])
            .previewLayout(.fixed(width: 300, height: 300))
        }
        
    }
}
