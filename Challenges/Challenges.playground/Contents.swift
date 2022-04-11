import UIKit

// MARK: - Challenge 4: Does one string contain another?

/// Write your own version of the contains() method on String that ignores
/// letter case, and without using the existing contains() method.
///
/// The code "Hello, world".fuzzyContains("HELLO") should return true.
/// The code "Hello, world".fuzzyContains("WORLD") should return true.
/// The code "Hello, world".fuzzyContains("Goodbye") should return false.

/// 1.
//extension String {
//    func fuzzyContains(_ inputString: String) -> Bool {
//        let upperCasedString = self.uppercased()
//        let upperCasedInputString = inputString.uppercased()
//
//        let range = upperCasedString.range(of: upperCasedInputString)
//        return range != nil
//    }
//}

//print("Hello World".fuzzyContains("HELLO"))

//assert("Hello World".fuzzyContains("HELLO") == true, "Challenge failed")



/// 2.
//extension String {
//    func fuzzyContains(_ inputString: String) -> Bool {
//
//        let range = self.range(of: inputString, options: .caseInsensitive)
//        return range != nil
//    }
//}



// MARK: - Challenge 5: Count the characters

/// Write a function that accepts a string, and returns how
/// many times a specific character appears, taking case into account.
///
/// Sample input and output
/// The letter “a” appears twice in “The rain in Spain”.
/// The letter “i” appears four times in “Mississippi”.
/// The letter “i” appears three times in “Hacking with Swift”.

/// 1.
//func characterCount(in text: String, with char: Character) -> Int {
//
//    let filteredText = text.filter { $0 == char }
//
//    return filteredText.count
//}

//characterCount(in: "Hello", with: "l")

/// 2
//func characterCount(in text: String, with inputChar: Character) -> Int {
//    var count = 0
//
//    for char in text where char == inputChar {
//        count += 1
//    }
//    return count
//}
//
//characterCount(in: "Mississippi", with: "s")

// MARK: -

/// Write a function that accepts a string as its input,
///  and returns the same string just with duplicate letters removed.

//func challenge(string: String) -> String {
//    let array = string.map { String($0) }
//    let set = NSOrderedSet(array: array)
//
//    let letters = Array(set) as! Array<String>
//    return letters.joined()
//}
//
//challenge(string: "Hello")

// MARK: - Challenge 8: String is rotated

/// Write a function that accepts two strings, and returns true if one string is rotation of the other,
/// taking letter case into account.
/// Tip: A string rotation is when you take a string, remove some letters from its end, then
/// append them to the front. For example, “swift” rotated by two characters would be “ftswi”.
/// Sample input and output
/// • The string “abcde” and “eabcd” should return true.
/// • The string “abcde” and “cdeab” should return true.
/// • The string “abcde” and “abced” should return false; this is not a string rotation.
/// • The string “abc” and “a” should return false; this is not a string rotation.


// MARK: - Challenge 7: Condense whitespace

/// Write a function that returns a string with any consecutive spaces replaced with a single space.

/// Sample input and output
/// I’ve marked spaces using “[space]” below for visual purposes:

/// The string “a[space][space][space]b[space][space][space]c” should return “a[space]b[space]c”.
/// The string “[space][space][space][space]a” should return “[space]a”.
/// The string “abc” should return “abc”.”

//func removeSpaces(from inputString: String) -> String {
//    var isVisited: Bool = false
//    var outputStrint: String = ""
//
//    for character in inputString {
//        if isVisited {
//            if character != " " {
//                outputStrint.append(character)
//                isVisited = false
//            }
//        } else {
//            if character == " " {
//                isVisited = true
//            }
//            outputStrint.append(character)
//        }
//    }
//
//    return outputStrint
//}



//func removeSpaces(from inputString: String) -> String {
//    return inputString.replacingOccurrences(
//        of: " +", with: " ", options: .regularExpression
//    )
//}
//
//print(removeSpaces(from: "a   b   c"))
//assert(removeSpaces(from: "a   b   c").count == 5, "Wrong program")
//
//print(removeSpaces(from: "    a"))
//assert(removeSpaces(from: "    a").count == 2, "Wrong program")
//
//print(removeSpaces(from: "abc"))
//assert(removeSpaces(from: "abc").count == 3, "Wrong program")



// MARK: - Challenge 8: String is rotated

/// Write a function that accepts two strings, and returns true if one string is rotation of the other, taking letter case into account.

/// Tip: A string rotation is when you take a string, remove some letters
/// from its end, then append them to the front. For example, “swift” rotated by two characters would be “ftswi”.

/// Sample input and output
/// The string “abcde” and “eabcd” should return true.
/// The string “abcde” and “cdeab” should return true.
/// The string “abcde” and “abced” should return false; this is not a string rotation.
/// The string “abc” and “a” should return false; this is not a string rotation.”

//func checkRotation(inputString: String, checkingString: String) -> Bool {
//    guard inputString.count == checkingString.count else { return false }
//    let finalString = inputString + inputString
//    return finalString.contains(checkingString)
//}
//
//
//assert(checkRotation(inputString: "abcde", checkingString: "eabcd"), "Should return true")
//assert(checkRotation(inputString: "abcde", checkingString: "cdeab"), "Should return true")
//assert(checkRotation(inputString: "abcde", checkingString: "abced") == false, "Should return false")

// MARK: - Challenge 17: Generate a random number in a range

/// Write a function that accepts positive minimum and
/// maximum integers, and returns a random number between those two bounds, inclusive.

/// Sample input and output
/// Given minimum 1 and maximum 5, the return values 1, 2, 3, 4, 5 are valid.
/// Given minimum 8 and maximum 10, the return values 8, 9, 10 are valid.
/// Given minimum 12 and maximum 12, the return value 12 is valid.
/// Given minimum 12 and maximum 18, the return value 7 is invalid.

//func randomNumber(in range: ClosedRange<Int>) throws -> Int? {
//    guard
//        range.lowerBound > 0,
//        range.upperBound > 0
//    else { return nil }
//
//    return Int.random(in: range)
//}
//
//
//assert(randomNumber(in: 1...5) < 6, "Return value should be in 1...5 range")
//assert(
//    randomNumber(in: 8...10) < 11 && randomNumber(in: 8...10) > 7,
//    "Return value should be in 8...10 range"
//)
//assert(
//    randomNumber(in: 12...12) == 12,
//    "Return value should be in 12 range"
//)
//assert(
//    randomNumber(in: 12...18) > 11 && randomNumber(in: 12...18) < 19,
//    "Return value should be in 12...18 range"
//)

// FIXME: - Function name should be self explenatory
// FIXME: - space shoudl be added before curly braces
//func random(min: Int, max: Int) -> Int {
//   Int.random(in: min...max)
//}
//random(min: 2, max: 6)


//func randomValue(_ min: UInt, _ max: UInt) -> UInt {
//
//          UInt.random(in: min...max)
//
//}

//func randomNum(firstNum: Int, secondNum: Int) -> Int {
//    let range = firstNum...secondNum
//    if firstNum < 0 || secondNum < 0 {
//        print("Error: Only positive numbers allowed")
//    }
//
//    return Int.random(in: range)
//}
//
//let value = randomNum(firstNum: 1, secondNum: 5)
//print(value)

// MARK: - Challenge 18: Recreate the pow() function

/// Create a function that accepts positive two integers,
/// and raises the first to the power of the second.

/// Tip: If you name your function myPow() or challenge18(),
/// you’ll be able to use the built-in pow() for your tests.
/// The built-in pow() uses doubles, so you’ll need to typecast.

/// Sample input and output
/// The inputs 4 and 3 should return 64, i.e. 4 multiplied by itself 3 times.
/// The inputs 2 and 8 should return 256, i.e. 2 multiplied by itself 8 times.

//func myPow(number: Int, power: Int) -> Int {
//    guard number > 0, power > 0 else { return -1 }
//    var finalNumber = number
//
//    for _ in 1..<power {
//        finalNumber *= number
//    }
//
//    return finalNumber
//}

// FIXME: - Rmove unnecessary new lines from code
// FIXME: - Return type should be an integer
// FIXME: - underscores are not necessary here
//func myPow (_ firstNumber: Int, _ secondNumber: Int) -> Double {
//
//    var degree = secondNumber
//    // FIXME: - myPowNumber paramater should be removed
//    var myPowNumber = 1.0
//
//    // FIXME: - Use guard instead of if
//    if secondNumber == 0 {
//        return myPowNumber
//    }
//
//    // FIXME: - Function should work only for positive integers due to challenge description
//    if secondNumber < 0 {
//        degree = -secondNumber
//
//        for _ in 1...degree {
//
//            myPowNumber /= Double(firstNumber)
//
//        }
//
//    } else {
//        for _ in 1...degree {
//            myPowNumber *= Double(firstNumber)
//        }
//    }
//
//    return myPowNumber
//}

//assert(Double(myPow(number: 4, power: 3)) == pow(4, 3), "Result should be 64")
//assert(Double(myPow(number: 2, power: 8)) == pow(2, 8), "Result should be 256")


// MARK: - Challenge 19: Swap two numbers

/// Swap two positive variable integers, a and b,
/// without using a temporary variable.


/// Sample input and output
/// Before running your code a should be 1 and b should be 2; afterwards, b should be 1 and a should be

//var a = 5
//var b = 6
//
//a = a + b
//b = a - b
//a = a - b
//
//print(a)
//print(b)

//swap(&a, &b)
//
//print(a)
//print(b)

//var a = 2
//var b = 3
//
//// FIXME: - Potential overflow issue here
//a = a * b
//b = a / b
//a = a / b
//
//print("a = \(a), b = \(b)")


// MARK: - Challenge 20: Number is prime

/// Write a function that accepts an integer as its parameter and returns true if the number is prime.
///
/// Tip: A number is considered prime if it is greater than one
/// and has no positive divisors other than 1 and itself.
///
/// Sample input and output
/// The number 11 should return true.
/// The number 13 should return true.
/// The number 4 should return false.
/// The number 9 should return false.
/// The number 16777259 should return true.

//func checkIsPrime(number: Int) -> Bool {
//    var counter = 0
//    for item in 1...number where number % item == 0 {
//        counter += 1
//    }
//
//    let isPrime = counter > 2 ? false : true
//    return isPrime
//}

//print(checkIsPrime(number: 9))
//
//assert(checkIsPrime(number: 11), "Should return true")
//assert(checkIsPrime(number: 13), "Should return true")
//assert(checkIsPrime(number: 4) == false, "Should return false")
//assert(checkIsPrime(number: 9) == false, "Should return false")
//assert(checkIsPrime(number: 16777259) == false, "Should return false")


// MARK: - Challenge 9: Find pangrams
//
/// Write a function that returns true if it is given a string
/// that is an English pangram, ignoring letter case.
///
/// Tip: A pangram is a string that contains every letter of the alphabet at least once.
///
/// Sample input and output
/// The string “The quick brown fox jumps over the lazy dog” should return true.
/// The string “The quick brown fox jumped over the lazy dog” should return false, because it’s missing the S.

//func checkIfPangram(inputString: String) -> Bool {
//
//    let uppercasedString = inputString.replacingOccurrences(
//        of: " +", with: "", options: .regularExpression
//    ).uppercased()
//
//    return Set(uppercasedString).count == 26
//}

//func checkIfPangram(inputString: String) -> Bool {
//    let set = Set(inputString.lowercased())
//    let letters = set.filter { $0 >= "a" && $0 <= "z" }
//    return letters.count == 26
//}



//assert(checkIfPangram(inputString: "The quick brown fox jumps over the lazy dog"), "Should return true")
//assert(checkIfPangram(inputString: "The quick brown fox jumped over the lazy dog") == false, "Should return false")

// Challenge 17: Generate a random number in a range

// FIXME: - Change function's name
// FIXME: - Instead of printing random number in range function should `return` random number in range
//func randomNum(firstNum: Int, secondNum: Int) {
//  let range = firstNum...secondNum
//  if firstNum < 0 || secondNum < 0 {
//    print("Error: Only positive numbers allowed")
//  } else {
//    print(Int.random(in: range))
//}
//}

//Challenge 10: Vowels and consonants
//
//Given a string in English, return a tuple containing the number of vowels and consonants.
//
//Tip: Vowels are the letters, A, E, I, O, and U; consonants are the letters B, C, D, F, G, H, J, K, L, M, N, P, Q, R, S, T, V, W, X, Y, Z.
//
//Sample input and output
//The input “Swift Coding Challenges” should return 6 vowels and 15 consonants.
//The input “Mississippi” should return 4 vowels and 7 consonants.

//func vowalsConsonants(input: String) -> (vowels: Int, consonants: Int) {
//    let vowel = "aeiou"
//    let consonant = "bcdfghjklmnpqrstvwxyz"
//
//    var count = 0
//    var constCount = 0
//
//    for letter in input.lowercased() {
//        let stringLetter = String(letter)
//        if vowel.contains(stringLetter) {
//            count += 1
//        } else if consonant.contains(stringLetter) {
//            constCount += 1
//        }
//    }
//    return (count, constCount)
//}
//let letters = vowalsConsonants(input: "Armenia")

//assert(letters.vowels == 4, "Vowels number should be 4")
//assert(letters.consonants == 3, "Consonants number should be 3")

//Challenge 10: Vowels and consonants
//
//Given a string in English, return a tuple containing the number of vowels and consonants.
//FIXME: - Better naming could be `findVowelsAndConsonants`
//func vowelsAndConsonants(_ input: String) -> (vowels: Int, consonants: Int) {
//  let vowels = "aeiou"
//  let consonants = "bcdfghjklmnpqrstvwxyz"
//  var vowelCount = 0
//  var consonantCount = 0
//  for letter in input.lowercased() {
//    if consonants.contains(letter) {
//      consonantCount += 1
//    } else {
//      if vowels.contains(letter) {
//        vowelCount += 1
//      }
//    }
//  }
//  return (vowelCount, consonantCount)
//}
//
//let output = vowelsAndConsonants("Swift is good")
//
//assert(output.0 == 4, "Error")
//assert(output.1 == 7, "Error")
//

// MARK: - Challenge 11: Three different letters

/// Write a function that accepts two strings, and returns
/// true if they are identical in length but have no more than
/// three different letters, taking case and string order into account.


//func identicalInIength(string1: String, string2: String) -> Bool {
//    guard string1.count == string2.count else { return false }
//
//    for index in string1.indices {
//        if string1[index] == string2[index] {
//            let currentString1Index: Int = string1.distance(from: string1.startIndex, to: index)
//            if currentString1Index >= 3 {
//                return true
//            }
//        }
//    }
//    return false
//}
//
//assert(identicalInIength(string1: "Clamp", string2: "Cramp") == true, "not work correctly")
//assert(identicalInIength(string1: "Clamp", string2: "Crams") == true, "not work correctly")
//assert(identicalInIength(string1: "Clamp", string2: "Grams") == true, "not work correctly")
//assert(identicalInIength(string1: "Clamp", string2: "Grans") == false, "not work correctly")
//assert(identicalInIength(string1: "Clamp", string2: "Clam") == false, "not work correctly")
//assert(identicalInIength(string1: "Clamp", string2: "maple") == false, "not work correctly")

//func identicalInIength(string1: String, string2: String) -> Bool {
//    guard string1.count == string2.count else { return false }
//
//    let letters1 = string1.lowercased()
//    let letters2 = Array(string2.lowercased())
//
//    for index in 0..<letters1.count {
//        if (letters1[index] == letters2[index]) {
//            if index >= 3 {
//                return true
//            }
//        }
//    }
//    return false
//}


//func identicalInIength(string1: String, string2: String) -> Bool {
//    guard string1.count == string2.count else { return false }
//
//    let letters1 = Array(string1.lowercased())
//    let letters2 = Array(string2.lowercased())
//
//    for (index, _) in letters1.enumerated() {
//        if (letters1[index] == letters2[index]) {
//            if index >= 3 {
//                return true
//            }
//        }
//    }
//    return false
//}

//func getRandomNumber(in range: ClosedRange<Int>) -> Int {
//    var setCollection: Set<Int> = []
//
//    for item in range {
//        setCollection.insert(item)
//    }
//
//    return setCollection.first!
//}
//
//getRandomNumber(in: 1...5)

// MARK: - Challenge 12: Find longest prefix

/// Write a function that accepts a string of words with a similar prefix,
/// separated by spaces, and returns the longest substring that prefixes all words.

/// The string “swift switch swill swim” should return “swi”.
/// The string “flip flap flop” should return “fl”.


//func findLongestPrefix(in words: String) -> String {
//
//    let splittedWords = words.components(separatedBy: " ")
//    guard let firsGuess = splittedWords.first else { return "" }
//
//    var currentPrefix = ""
//    var bestPrefix = ""
//
//    for char in firsGuess {
//
//        currentPrefix.append(char)
//        for word in splittedWords {
//            if !word.hasPrefix(currentPrefix) {
//                return bestPrefix
//            }
//        }
//        bestPrefix = currentPrefix
//    }
//
//    return bestPrefix
//}
//print(findLongestPrefix(in: "swift swoft"))

// FIXME: - If you're writing description for function, please add one for parameter as well(for `str` in this case).
/// Challenge 12: Find longest prefix
/// - Parameter str: <#str description#>
/// - Returns: prefix
//func findLongestPrefix(str: String) -> String {
//    let strArray = str.split(separator: " ")
//    // FIXME: - App will terminate if you're passing empty string
//    var longPrefix = Array(strArray[0])
//
//    for word in strArray {
//        let wordArr = Array(word)
//
//        for index in 0..<longPrefix.count {
//            // FIXME: - Here guard is unnecessary, use if instead
//            guard wordArr[index] == longPrefix[index] else {
//                longPrefix.removeSubrange(index..<longPrefix.endIndex)
//                break
//            }
//        }
//    }
//
//    return String(longPrefix)
//}

//print(findLongestPrefix(str: ""))

//assert(findLongestPrefix(str: "sw switch swill swim") == "sw")
//assert(findLongestPrefix(str:"flip flap flop") == "fl")

/// Challenge 12: Find longest prefix
/// - Parameter str: string of words
/// - Returns: prefix
func findLongestPrefix(inputString: String) -> String {

    let strArray = inputString.split(separator: " ")
    var longPrefix = Array(String(strArray.first ?? ""))

    for word in strArray {
        let wordArr = Array(word)

        let range: ClosedRange<Int>
        if wordArr.count <= longPrefix.count {
            range = wordArr.startIndex...wordArr.endIndex - 1
        } else {
            range = longPrefix.startIndex...longPrefix.endIndex - 1
        }

        for index in range {
            guard wordArr[index] == longPrefix[index] else {
                longPrefix.removeSubrange(index..<longPrefix.endIndex)
                break
            }
        }
    }

    return String(longPrefix)
}

print(findLongestPrefix(inputString: "swift switch swill swim"))

//print(findLongestPrefix(str: "swift switch swill swim"))
//assert(findLongestPrefix(str: "swift switch swill swim") == "swi")
//assert(findLongestPrefix(str:"flip fl flop") == "fl")

/// Challenge 12: Find longest prefix
/// - Parameter str: string of words
/// - Returns: prefix
//func findLongestPrefix(str: String) -> String? {
//  if str.isEmpty {
//    return nil
//  }
//  let strArray = str.split(separator: " ")
//  var longPrefix = Array(strArray[0])
//  for word in strArray {
//    let wordArr = Array(word)
//    let range = (wordArr.count <= longPrefix.count) ? (0..<wordArr.count) : (0..<longPrefix.count)
//    for index in range {
//      guard wordArr[index] == longPrefix[index] else {
//        longPrefix.removeSubrange(index..<longPrefix.endIndex)
//        break
//      }
//    }
//  }
//
//  return String(longPrefix)
//}
//print(findLongestPrefix(str: "switch swift cdc swim"))
//assert(findLongestPrefix(str: "switch swift sn swim") == "swi")
//assert(findLongestPrefix(str:"flip fl flop") == "fl")

//// FIXME: - choose more self explanatory namings
//func prefixOfWord(_ words: String) -> String {
//    // FIXME: - There is no any word aboud case sensitivity.
//    // In any case, lowercased has O(n) time complexity.
//    // You're doing the same 2 times, which is a code duplication.
//
//    // FIXME: - choose more self explanatory namings
//    let space = words.lowercased().components(separatedBy: " ")
//
//    var prefix = ""
//    var hasManyPref = ""
//
//    for letter in words.lowercased() {
//        prefix.append(letter)
//
//        for word in space {
//            if !word.hasPrefix(prefix) {
//                return hasManyPref
//            }
//        }
//        hasManyPref = prefix
//    }
//    return hasManyPref
//}
//
//
//let test = prefixOfWord("swift swolla")
//assert(test == "sw", "Error")
//


// MARK: - Challenge 13: Run-length encoding

/// Write a function that accepts a string as input, then returns
/// how often each letter is repeated in a single run, taking case into account.

/// Tip: This approach is used in a simple lossless compression technique called run-length encoding.

/// Sample input and output
/// The string “aabbcc” should return “a2b2c2”.
/// The strings “aaabaaabaaa” should return “a3b1a3b1a3”
/// The string “aaAAaa” should return “a2A2a2

//func findCharsRepeated(in inputString: String) -> String {
//    var counter = 0
//    var currentString = ""
//    var finalString = ""
//    guard var character = inputString.first else { return "" }
//
//    inputString.forEach { char in
//        if char == character {
//            if !currentString.contains(char) {
//                currentString.append(String(char))
//            }
//            counter += 1
//        } else {
//            finalString.append(currentString + String(counter))
//
//            character = char
//            counter = 1
//            currentString = String(char)
//        }
//    }
//
//    return finalString.appending(currentString + String(counter))
//}
//
//findCharsRepeated(in: "aabbcc")

/// MARK: - Challenge 23: Integer disguised as string
/// Write a function that accepts a string and returns true if it contains only numbers, i.e. the digits 0 through 9.
//
/// Sample input and output
/// The input “01010101” should return true.
/// The input “123456789” should return true.
/// The letter “9223372036854775808” should return true.
/// The letter “1.01” should return false; “.” is not a number.

//func checkIfOnlyNumbers(in inputString: String) -> Bool {
//    for element in inputString {
//        if Int(String(element)) == nil {
//            return false
//        }
//    }
//    return true
//}
//
//assert(checkIfOnlyNumbers(in: "01010101"), "Should return true")
//assert(checkIfOnlyNumbers(in: "123456789"), "Should return true")
//assert(checkIfOnlyNumbers(in: "9223372036854775808"), "Should return true")
//assert(checkIfOnlyNumbers(in: "1.01") == false, "Should return false")

// Challenge 23: Integer disguised as string
//func onlyNumber(str: String) -> Bool {
//    let numbers = "0123456789"
//    // FIXME: - Namings should be self explanatory
//    var newSet = ""
//    for num in str {
//        if numbers.contains(num) {
//            continue
//        } else {
//            newSet.append(num)
//        }
//    }
//    return newSet.isEmpty
//}
//
// FIXME: - Always write an assertions
//onlyNumber(str: "1.2")
//
