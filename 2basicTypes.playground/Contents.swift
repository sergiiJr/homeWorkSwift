
// HomeWork
//#1
print("Int8.max equals \(Int8.max)\nInt8.min equals " +
    " \(Int8.min)\nInt16.min equals \(Int16.min)\nInt16.max equals " +
    "\(Int16.max)\nInt32.min equals \(Int32.min)\nInt32.max equals " +
    " \(Int32.max)\nInt64.min equals \(Int64.min)\nInt64.max equals " +
    " \(Int64.max)\nInt.min equals \(Int.min)\nInt.max equals \(Int.max)")

print("UInt.max equals \(UInt.max)")
print("UInt.min equals \(UInt.min)")
print("UInt8.max equals \(UInt8.max)")
print("UInt8.min equals \(UInt8.min)")
print("UInt16.min equals \(UInt16.min)")
print("UInt16.max equals \(UInt16.max)")
print("UInt32.min equals \(UInt32.min)")
print("UInt32.min equals \(UInt32.max)")
//#2
let int = 10
let double = 20.5
let float: Float = 30.9

let allSumInt = Int(Double(int) + double + Double(float))
let allSumDouble = Double(int) + double + Double(float)
let allSumFloat = Float(int) + Float(double) + float

/*
let secondInt = allSumInt
let secondDouble = allSumDouble
let secondFloat: Float = allSumFloat

let allSumOfInt = secondInt + Int(secondDouble) + Int(secondFloat)
let allSumOfDouble = Double(secondInt) + secondDouble + Double(secondFloat)
*/
//#3

if Double(allSumInt) < allSumDouble {
    print("Double \(allSumDouble) is greater")
} else if Double(allSumInt) == double {
    print("Int \(allSumInt) is equal")
} else {
    print("Integer \(allSumInt) is greater")
}











