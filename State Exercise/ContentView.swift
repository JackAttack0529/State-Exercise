//
//  ContentView.swift
//  State Exercise
//
//  Created by Jack Hyde on 2/15/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var numOne = 0
    @State var numTwo = 2
    @State var letterIndex = 0
    let letters = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    var body: some View {
        VStack {
            Spacer()
            
            HStack {
                Text("ONE")
                Text(String(numOne))
                Button("ADD ONE",action:{
                    numOne = numOne + 1
                })
            }
            
            Spacer()
            
            HStack {
                Text("TWO")
                Text(String(numTwo))
                Button("SQUARE",action:{
                    numTwo = numTwo * numTwo
                })
            }
            
            Spacer()
            
            HStack {
                Text("BONUS")
                Text(letters[letterIndex])
                
                Button("NEXT LETTER",action:{
                    letterIndex = letterIndex + 1
                    while (letterIndex == 26 ){
                        letterIndex = 0
                        
                    }
                    
                })
            }
            Spacer()}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


/*
 3f. For an extra bonus, whenever it gets to the end of the alphabet (AKA When ever "Z" is displayed) have it start back at the beginning of the alphabet when the button is clicked again (AKA Display "A" again)
 */
