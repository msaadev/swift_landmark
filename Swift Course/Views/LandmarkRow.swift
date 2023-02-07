//
//  LandmarRow.swift
//  Swift Course
//
//  Created by muhammed samil demir on 7.02.2023.
//

import SwiftUI

struct LandmarkRow: View {
    var landMark : Landmark
    
    var body: some View {
        HStack{
            landMark.image
                .resizable()
                .frame(width: 50,height: 50)
            Text(landMark.name)
            Spacer()
        }
        
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landMark: landmarks[4])
            LandmarkRow(landMark: landmarks[2])
               
        }
        .previewLayout(.fixed(width: 300, height: 70))
       
    }
}
