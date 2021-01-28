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

// OUTPUT

//Draw all tines
for _ in 1...t {
    
    //Draw the first line of all three tines with space between
    for _ in 1...3 {
        //Print star
        print("*", terminator: "")

        for _ in 1...s {
            //Print the spaces
            print(" ", terminator: "")
        }
    }
    
    //Row complete... go to next line
    print("")
    
}



//// Produce top of trident according to length given
//for _ in 1...t {
//    // Print the tines
//    for _ in 1...3 {
//
//        // Print part of a tine
//        print("*", terminator: "")
//
//        // Print space between tines
//        for _ in 1...s {
//            print(" ", terminator: "")
//        }
//
//    }
//    // Go to next line of output
//    print("")
//}


