//
//  main.swift
//  Trident
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/trident.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.

import Foundation

print("Trident")
print("=======")

// INPUT

// Get tine length
print("Enter tine length:")
print("   ", terminator: "")
let t = Int(readLine()!)!

// Get tine spacing
print("Enter tine spacing:")
print("   ", terminator: "")
let s = Int(readLine()!)!

//Get handle length
print("Enter handle length")
print("   ", terminator: "")
let h = Int(readLine()!)!
let l = s + 1


//Process
func drawTrident(tineLength t: Int, tineSpacing s: Int, handleLength h: Int) -> String {
   
    //Create a variable to store the output
    var output = "" //Empty string to start
    
    //Draw all tines
    for _ in 1...t {
        
        //Draw the first line of all three tines with space between
        for _ in 1...3 {
            //Print star
            output += "*"
            
            for _ in 1...s {
                //Print the spaces
                output += "*"
            }
        }
        
        //Row complete... go to next line
        //The \n character sequence
        //Pushes content down to the next line
        output += "\n"
    }

    //Draw the horizontal part of the trident
    //2 * s covers the spaces in between the tines
    //+ 3 fills the empty space just under the tines
    //(The code doesn't print it exactly like that, but it's just the idea behind how I came up with the numbers)
    let horizontal = 2 * s + 3
    output += ""
    for _ in 1...horizontal {
        output += "*"
    }
    //Goes to next line to start printing the handle
    output += "\n"


    //Draw handle
    for _ in 1...h {
        
        //Prints spaces so the handle is at the center of the trident
        for _ in 1...l {
            output += " "
        }
        //Prints stars in different lines
        output += "*"
        output += "\n"
    }
    
    //Give back output
    return output
}


// OUTPUT
//Call the function
let programOutput = drawTrident(tineLength: t, tineSpacing: s, handleLength: h)
//Actually show the output
print(programOutput)
