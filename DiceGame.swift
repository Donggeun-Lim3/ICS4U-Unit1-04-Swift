/*
This program generate random number between 1 to 6,
get user number, check these two numbers are correct.
author  Donggeun Lim
version 1.0
since   2021-11-23
*/

enum InvalidInputError: Error {
  case invalidInput
}
var counter = 0

// let rangeNumber = Int(range)
let randomNumber = Int.random(in: 1...6)

while true {
  // String Input
  print("Guess the number between 1 to 6: ", terminator: "")
  do {
    guard let userNumber = Int(readLine()!) else {
      throw InvalidInputError.invalidInput
    }
    // Check range
    if userNumber >= 1 && userNumber <= 6 {
      counter += 1
      // Check number is right
      if userNumber <= randomNumber {
        if userNumber >= randomNumber {
          break
        } else {
          print("You guessed too low.")
        }
      } else {
        print("You guessed too high.")
      }
    } else {
      print("Out of range!")
    }
  } catch {
    print("This is not an integer.")
  }
  print("Try again!")
}
// Final output
print("\nCorrect! The randm number is \(randomNumber)!\n"
      + "It took you \(counter) tries.")

print("\nDone.")
