//
//  LandMarkDetail.swift
//  Lists&Navigation
//
//  Created by 권민재 on 2020/12/05.
//

import SwiftUI

struct LandMarkDetail: View {
    var landmark: Landmark
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            
            CircleImage(image: landmark.image)
                .offset(x: 0, y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                
                
                HStack(alignment: .top) {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
            }
            .padding()
            
            Spacer()
            
        }
        .navigationBarTitle(Text(landmark.name), displayMode: .inline)
    }
}

struct LandMarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandMarkDetail(landmark: landmarkData[0])
    }
}
