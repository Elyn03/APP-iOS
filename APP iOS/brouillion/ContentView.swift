//
//  ContentView.swift
//  APP iOS
//
//  Created by EAP Céline Chhun Huy on 15/10/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var labelText: String = ""
    var appuie0: Int = 0
    var appuie1: Int = 1
    var appuie2: Int = 2
    var appuie3: Int = 3
    var appuie4: Int = 4
    var appuie5: Int = 5
    var appuie6: Int = 6
    var appuie7: Int = 7
    var appuie8: Int = 8
    var appuie9: Int = 9
    var appuieE: String = "*"
    var appuieD: String = "#"
    
    var body: some View {
        VStack {
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(.black, lineWidth: 2)
                        .frame(width: 150, height: 40)
                    Text(labelText)
                }
                VStack {
                    Image(systemName: "delete.left")
                        .foregroundColor(.yellow) // Change the color of the symbol
                        .font(.system(size: 50))  // Change the size of the symbol
                }
            }
        
                
            HStack {
                Button {
                    labelText = labelText + String(appuie1)
                } label: {
                    ZStack {
                        Circle()
                            .fill(.yellow)
                            .frame(width: 40, height: 40)
                        Text("\(appuie1)")
                    }
                }
                Button {
                    labelText = labelText + String(appuie2)
                } label: {
                    ZStack {
                        Circle()
                            .fill(.yellow)
                            .frame(width: 40, height: 40)
                        Text("\(appuie2)")
                    }
                }
                Button {
                    labelText = labelText + String(appuie3)
                } label: {
                    ZStack {
                        Circle()
                            .fill(.yellow)
                            .frame(width: 40, height: 40)
                        Text("\(appuie3)")
                    }
                }
            }
            HStack {
                Button {
                    labelText = labelText + String(appuie4)

                } label: {
                    ZStack {
                        Circle()
                            .fill(.yellow)
                            .frame(width: 40, height: 40)
                        Text("\(appuie4)")
                    }
                }
                Button {
                    labelText = labelText + String(appuie5)

                } label: {
                    ZStack {
                        Circle()
                            .fill(.yellow)
                            .frame(width: 40, height: 40)
                        Text("\(appuie5)")
                    }
                }
                Button {
                    labelText = labelText + String(appuie6)

                } label: {
                    ZStack {
                        Circle()
                            .fill(.yellow)
                            .frame(width: 40, height: 40)
                        Text("\(appuie6)")
                    }
                }
            }
            HStack {
                Button {
                    labelText = labelText + String(appuie7)

                } label: {
                    ZStack {
                        Circle()
                            .fill(.yellow)
                            .frame(width: 40, height: 40)
                        Text("\(appuie7)")
                    }
                }
                Button {
                    labelText = labelText + String(appuie8)

                } label: {
                    ZStack {
                        Circle()
                            .fill(.yellow)
                            .frame(width: 40, height: 40)
                        Text("\(appuie8)")
                    }
                }
                Button {
                    labelText = labelText + String(appuie9)

                } label: {
                    ZStack {
                        Circle()
                            .fill(.yellow)
                            .frame(width: 40, height: 40)
                        Text("\(appuie9)")
                    }
                }
            }
            HStack {
                Button {
                    labelText = labelText + String(appuieE)

                } label: {
                    ZStack {
                        Circle()
                            .fill(.yellow)
                            .frame(width: 40, height: 40)
                        Text("\(appuieE)")
                    }
                }
                Button {
                    labelText = labelText + String(appuie0)

                } label: {
                    ZStack {
                        Circle()
                            .fill(.yellow)
                            .frame(width: 40, height: 40)
                        Text("\(appuie0)")
                    }
                }
                Button {
                    labelText = labelText + String(appuieD)

                } label: {
                    ZStack {
                        Circle()
                            .fill(.yellow)
                            .frame(width: 40, height: 40)
                        Text("\(appuieD)")
                    }
                }
            }
            
        }
        .padding()
    }
    
    func getNote() -> Int {
        Int.random(in: 0...20)
    }
}

#Preview {
    ContentView()
}
