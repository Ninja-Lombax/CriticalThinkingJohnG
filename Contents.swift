// Critical Thinking Project
// This is a basic guess the number game. The player gets three chances to guess the number.
// Programmed by John Grasser

import UIKit
import Foundation

var str = "Hello, playground"
print("Welcome to the number guessing game. A random number between 1 and 10 will be randomly generated for the player. You get three chances to guess the number. Good luck!")

// Variables and constants
let maxNumber = 10
let minNumber = 1
var increments = 0, youWin = 0
var playerNumber = 0, CPUNumber = 0



//print("A random number between 1 and 10 will be randomly generated")

// Randomly generates the number that the player has to guess
CPUNumber = Int.random(in:minNumber ... maxNumber)

// Randomly generates the players number
playerNumber = Int.random(in:minNumber ... maxNumber)

repeat{
    

    if(playerNumber < CPUNumber)
    {
        // Processes if the player number is lesser than the CPU number
        print("Your number is lower. It is \(playerNumber)")
        increments=increments + 1
        playerNumber = playerNumber + 1
        playerNumber = Int.random(in: playerNumber ... maxNumber) // Since the player number is lesser than the CPU number, it guesses between the player numer plus one and the max number.
        youWin = 0
    }
    else if(playerNumber > CPUNumber)
    {
        // Processess if the player number is larger than the CPU number
        print("Your number is higher. It is \(playerNumber)")
        increments=increments+1
        playerNumber = playerNumber - 1
        playerNumber = Int.random(in: minNumber ... playerNumber) //Since the player number is larger than the CPU number is guesses between 1 and the player number minus 1
        youWin = 0
        
    }
        
        
    else if(playerNumber == CPUNumber)
    {
        
        // Processes if the number is guessed
        print("You guessed the number. It is \(playerNumber)")
        increments = 4
        youWin = 1 // Sets win state.
        
    }
    
    
}while(increments <= 2) // Get three chances to guess number

if(youWin == 1)
{
    // If you win
    print("You guessed the number. You win! The number is \(CPUNumber)")
}
else
{
    // If you lost
    print("Sorry. You didn't get the number. The number is \(CPUNumber)")

}
