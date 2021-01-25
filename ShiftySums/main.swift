//
//  main.swift
//  Shifty Sums
//
//  Puzzle description available at:
//
//  https://www.russellgordon.ca/incomplete-puzzles/shifty-sums.pdf
//
//  NOTE: Puzzle adapted from material provided by the University of Waterloo.

import Foundation

print("Shifty Sums")
print("===========")

// INPUT

// Get the number to be shifted
let n = Int(readLine()!)!

// How many times should we shift?
let k = Int(readLine()!)!

// PROCESS

// Shift the given number "k" number of times
var output = n
for i in 1...k {
    print("i is \(i)")
    var toAdd = n
    for _ in 1...i {
        toAdd *= 10
    }
}
output += n * 10
output += n * 10 * 10
output += n * 10 * 10 * 10

// OUTPUT
print(output)
