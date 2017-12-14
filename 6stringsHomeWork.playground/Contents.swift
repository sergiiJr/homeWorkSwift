
import Foundation
//#1
let firstStrConst = "1212"
let secStrConst = "g130"
let thirdStrCons = "20"
let fourthStrCons = "30"
let fifthStrConst = "5f"
let calculV = "nil"

let convert   = Int(firstStrConst) ?? 0
let convertFi = Int(secStrConst) ?? 0
let convertSe = Int(thirdStrCons) ?? 0
let convertTh = Int(fourthStrCons) ?? 0
let convertFo = Int(fifthStrConst) ?? 0

var sum = convert + convertFi + convertSe + convertTh + convertFo

var str  = Int(firstStrConst) != nil ? firstStrConst: calculV
var str1 = Int(secStrConst)   != nil ? secStrConst: calculV
var str2 = Int(thirdStrCons)  != nil ? thirdStrCons: calculV
var str3 = Int(fourthStrCons) != nil ? fourthStrCons: calculV
var str4 = Int(fifthStrConst) != nil ? fifthStrConst: calculV

print("\(str) + \(str1) + \(str2) + \(str3) + \(str4) = \(sum) ")

//#2

let funUni = "I \u{2665} "+" \u{1F182} \u{1F186}\u{1F178}\u{1F175}\u{1F183}"
print("This is swift`s method -> \(funUni.count)")
print("This is Objective C method -> \((funUni as NSString).length)")
//#3

let alphabet = " ABCDEFGHIJKLMNOPQRSTUVWXYZ"
let char: Character = "B"
var count = 0
for i in alphabet {
  if i == char {
    print("index = \(count)")
    }
      count = count + 1
}
















