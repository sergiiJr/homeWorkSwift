
//homeWork Optional
//#1
let firstStrConst = "10"
let secStrConst = "s130"
let thirdStrCons = "20"
let fourthStrCons = "30"
let fifthStrConst = "5f"

let check = Int(fifthStrConst)

var sum = 0
if check != nil {
    sum = sum + check!
    
}

if let check = Int(secStrConst) {
   sum += check

}

if Int(thirdStrCons) != nil {
    let ageNumber = Int(thirdStrCons)!
    sum = sum + ageNumber
}

if let check = Int(fourthStrCons) {
    sum = sum + check
}

if Int(fifthStrConst) != nil {
    let ageNumber = Int(fifthStrConst)!
    sum = sum + ageNumber
}
print("The sum of all int  \(sum)")

//#2
var serverTuple: (statusCode: Int, message: String?, errorMessag: String?)
serverTuple.statusCode = 250
serverTuple.message = "Good"
serverTuple.errorMessag = "Error"

if serverTuple.statusCode >= 200 && serverTuple.statusCode > 300 {
    if let check = serverTuple.message {
        print(check)
    }
} else {
    if serverTuple.errorMessag != nil {
        print(serverTuple.errorMessag!)
    }
}

var secSerTupl: (message: String?, errorMessage: String?)
secSerTupl.message = nil
secSerTupl.errorMessage = "Good"
    
if secSerTupl.message != nil {
    print(secSerTupl.message!)
} else if let local = secSerTupl.errorMessage {
    print(local)
} else {
    print("Plese Try again")
}
//# 3
var basicTup: (name: String?, carLicPl: String?, examScore: Int?)

var firstTup = basicTup
var secTup = basicTup
var thirdTup = basicTup
var fourthTup = basicTup
var fifthTup = basicTup

firstTup = ("Vasia", "323e", 99)
secTup = ("Petia", "23BD2", nil)
thirdTup = ("Grisha", nil, 56)
fourthTup = ("Sergey", "45DGE0", 74)
fifthTup = ("Boria", nil, nil)
// firstStudent

if let name = firstTup.name {
    print("First student \(name)")
    if let local = firstTup.carLicPl {
        print("\(name)`s lisence plate \(local)")
    } else {
        print("\(name) does not have a car")
    }
}
if firstTup.examScore != nil, let local2 = firstTup.name{
    print("\(local2)`s score is \(firstTup.examScore!)")
} else if let local = firstTup.name {
    print("\(local) did not take that exam!")
}
// secondStudent
if let name = secTup.name {
    print("Second student is \(name)")
    if let local = secTup.carLicPl {
        print("\(name)`s lisence plale number is \(local)")
    } else  {
        print("\(name) does not have a car")
    }
}
if let local = secTup.examScore, let local2 = secTup.name {
    print("\(local2)`s score is \(local)")
} else if let local = secTup.name {
    print("\(local) did not take this exam!")
}
//thirdStudent
if let name = thirdTup.name {
    print("Third student is \(name)")
    if thirdTup.carLicPl != nil {
        print("\(thirdTup.name!)`s lisence plate number is \(thirdTup.carLicPl!)")
    } else {
        print("\(thirdTup.name!) does not have a car")
    }
}
if let local = thirdTup.examScore, let local2 = thirdTup.name {
    print("\(local2)`s score is \(local)")
} else if let local = thirdTup.name {
    print("\(local) did not take this exam")
}
//fourthStudent
if let name = fourthTup.name {
    print("Fourth student is \(name)")
    if let local = fourthTup.carLicPl {
        print("\(name)`s lisence plate is \(local)")
    } else {
        print("\(name) does not have a car")
    }
}
if let local = fourthTup.examScore, let local2 = fourthTup.name {
    print("\(local2)`s exam score is \(local)")
} else if let local = fourthTup.name {
    print("\(local) did not take this exam")
}
//fifthStudent
if let name = fifthTup.name {
    print("Fifth student is \(name)")
    if let local = fifthTup.carLicPl {
        print("\(name)`s score is \(local)")
    } else {
        print("\(name) does not have a car")
    }
}
if let local = fifthTup.examScore, let local2 = fifthTup.name {
    print("\(local2)`s score is \(local)")
} else if let local = fifthTup.name {
    print("\(local) did not take this exam")
}
