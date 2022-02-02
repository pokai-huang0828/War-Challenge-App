//
//  ContentView.swift
//  warChallenge
//
//  Created by PoKai Huang on 2022-01-31.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        
        ZStack{
            Image("background")
                .ignoresSafeArea()
            
            VStack{
                
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                Button(action: {
                    print("Button clicked!")
                    
                    // Generate a random number between 2 and 14
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    // Update the cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    // Update the score
                    if (playerRand > cpuRand){
                        playerScore += 1
                    }
                    else if (playerRand < cpuRand) {
                        cpuScore += 1
                    }
                    else{
                        playerScore += 1
                        cpuScore += 1
                    }
                }, label: {
                    Image("dealbutton")
                    
                })
                
                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 5.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 5.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
