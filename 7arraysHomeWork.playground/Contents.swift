////7arraysHomeWork
var mDays = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
var arrayMonth = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

for (i, v) in arrayMonth.enumerated() {
    print("\(mDays[i]) - \(v)")
}
print("\n")

var months = 0
for days in mDays {
    months += 1
    print("\(months) month has \(days)")
}
print("\n")

for (index, value) in mDays.enumerated() {
    print("\(index) month has \(value)")
}
print("\n")

for i in 0..<arrayMonth.count {
   print("\(arrayMonth[i]) has \(mDays[i])")
}
print("\n")

for (i, _) in mDays.enumerated() {
    print("\(i + 1) \(arrayMonth[i]) has \(mDays[i])")
}
print("\n")

//#2

let arrayTuple = [("January", 31), ("February", 28), ("March", 31), ("April", 30), ("May",31), ("June", 30), ("July", 31), ("August", 31), ("September", 30), ("October", 31), ("November", 30), ("December", 31)]

for days in arrayTuple {
    print("\(days.0) has \(days.1) days")
    
}
print("\n")
for days in arrayTuple.reversed() {
    print("\(days.0) has \(days.1) days")
    
}
print("\n")

var newDeal = [(day: Int, month: String)]()
for count in 0..<arrayMonth.count {
    newDeal.append((mDays[count], arrayMonth[count]))
}
for (_, newDeal) in newDeal.enumerated() {
    print("\(newDeal.month) has \(newDeal.day)")
}
print("\n")

//1.5

let dOb  = (month: 12, day: 16)
var sumDays = 0
for i in 0..<(dOb.month - 1) {
    sumDays += mDays[i]
}
sumDays += dOb.day
print("From New Year to \(dOb.day)/\(dOb.month) = \(sumDays) days")

print("\n")

//2

var arrayOpt = [23, nil, 43, nil, 31]
var summ = 0
//for value in arrayOpt {
//    if let value2 = value {
//        summ += value2
//        print(value2)
//    }
//}
//summ
for i in 0..<arrayOpt.count {
    print(i != 0 ? " + " : "")
    if arrayOpt[i] != nil {
        summ += arrayOpt[i]!
        print(arrayOpt[i]!)
    } else {
        print("nil")
    }
}
print("sum is \(summ)")

print("\n")

summ = 0
var check = 0
for i in arrayOpt {
    print(i != 0 ? " + " : "")
    if let local = i {
        summ += local
        print(local)
    } else {
        print("nil")
    }
}
print("sum is \(summ)")

print("\n")
summ = 0
for i in arrayOpt {
    print(i != 0 ? " + " : "" )
    summ += i ?? 0
    print(i != nil ? "\(i!)" : "nil")
}
print("sum = \(summ)")

print("\n")

//3

let alphStr = "abcdefghijklmnopqrstuwxyz"
var emptyArr = [String]()
for i in alphStr {
    print(i)
    emptyArr.insert(String(i), at: 0)
    emptyArr.append(String(i))
}
print(emptyArr)










