//
//  ContentView.swift
//  WordGarden-SwiftUI
//
//  Created by Thomas Radford on 23/01/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var wordsGuessed = 0
    @State private var wordsMissed = 0
    @State private var wordsToGuess = ["SWIFT", "DOG", "CAT"]
    @State private var gamesStatusMessage = "How Many Guesses to Uncover the Hidden Word"
    @State private var currentWord = 0
    @State private var guessedLetter = ""
    @State private var imageName = "flower8"
    @State private var playAgainHidden = true
    
    
    
    var body: some View {
        VStack {
            
            HStack{
                VStack (alignment: .leading){
                    Text("Words Guessed: 0")
                    Text("Words Missed: 0")
                }
                Spacer()
                
                VStack (alignment: .trailing){
                    Text("Words to Guess: 0")
                    Text("Words in Game: 0")
                }
            }
            .padding()
            Spacer()
            Text(gamesStatusMessage)
                .font(.title)
                .multilineTextAlignment(.center)
                .padding()
            
            Spacer()
            
            //TODO: Switch to wordsToGuess [currentWord]
            
            Text("_ _ _ _ _ ")
            if playAgainHidden {
                HStack{
                    TextField("", text: $guessedLetter)
                        .textFieldStyle(.roundedBorder)
                        .frame(width: 30)
                        .overlay {
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(.gray, lineWidth: 2)
                        }
                    Button("Guess a Letter") {
                        //TODO:  guess a letter button action here
                        playAgainHidden = false
                    }
                    .buttonStyle(.bordered)
                    .tint(.mint)
                }
            }
            else {
                
                Button("Another Word?")
                {
                    //TODO: Another Word Button action here
                    playAgainHidden = true
                }
                .buttonStyle(.borderedProminent)
                .tint(.mint)
                Spacer()
            }
            Image(imageName)
                .resizable()
                .scaledToFit()
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
