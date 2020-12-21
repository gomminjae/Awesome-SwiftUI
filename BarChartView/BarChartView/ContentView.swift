//
//  ContentView.swift
//  BarChartView
//
//  Created by 권민재 on 2020/12/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var pickerSelectedItem = 0
    @State var dataPoints: [[CGFloat]] = [
        [50,100,150,30,40],
        [150,100,50,200,10],
        [10,20,30,50,100]
    ]
    
    
    var body: some View {
        
        ZStack {
            Color(#colorLiteral(red: 0.3366981218, green: 0.9463047506, blue: 0.845331678, alpha: 1)).edgesIgnoringSafeArea(.all)
            
            VStack {
                
                Text("Calory Intake")
                    .font(.system(size: 34))
                    .fontWeight(.heavy)
                
                Picker(selection: $pickerSelectedItem, label: Text("")) {
                    Text("Weekday").tag(0)
                    Text("Afternoon").tag(1)
                    Text("Evening").tag(2)
                }.pickerStyle(SegmentedPickerStyle())
                .padding(.horizontal,24)
                
                
                HStack (spacing: 16) {
                    BarView(value: dataPoints[pickerSelectedItem][0])
                    BarView(value: dataPoints[pickerSelectedItem][1])
                    BarView(value: dataPoints[pickerSelectedItem][2])
                    BarView(value: dataPoints[pickerSelectedItem][3])
                    BarView(value: dataPoints[pickerSelectedItem][4])
                }.padding(.top, 24)
                .animation(.default)
            }
        }
    }
}

struct BarView: View {
    
    var value: CGFloat
    
    var body: some View {
        VStack {
            ZStack (alignment: .bottom) {
                Capsule().frame(width: 30, height: 200)
                    .foregroundColor(Color(#colorLiteral(red: 0.2948394307, green: 0.7679600571, blue: 0.6707019196, alpha: 1)))
                Capsule().frame(width: 30, height: value)
                    .foregroundColor(.white)
            }
            Text("D").padding(.top, 8)
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
