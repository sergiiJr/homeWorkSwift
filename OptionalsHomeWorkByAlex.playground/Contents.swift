//: Playground - noun: a place where people can play

import UIKit
//1. Создать пять строковых констант
//Одни константы это только цифры, другие содержат еще и буквы
//Найти сумму всех этих констант приведя их к Int
//(Используйте и optional binding и forced unwrapping)

let first = "23S"
let sec = "345D"
let third = "21"
let fourth = "DF356"
let fifth = "345"

var sum = 0

if let firstLoc = Int(first) {
    sum += firstLoc
}
if let secLoc = Int(sec) {
    sum += secLoc
}
if Int(third) != nil {
    sum += Int(third)!
}
if Int(fourth) != nil {
    sum += Int(fourth)!
}
if let fifthLoc = Int(fifth) {
    sum += fifthLoc
}
sum
print("\n")
//2. С сервера к нам приходит тюпл с тремя параметрами:
//statusCode, message, errorMessage (число, строка и строка)
//в этом тюпле statusCode всегда содержит данные, но сама строка приходит только в одном поле
//если statusCode от 200 до 300 исключительно, то выводите message,
//в противном случает выводите errorMessage
//После этого проделайте тоже самое только без участия statusCode
//
//let serverTupl: (Int, String?, String?) = (250, "Try again!", "ERROR!")
//let (statusCode, message, errorMessage) = serverTupl
var serverTuple: (statusCode: Int, message: String?, errorMessage: String?)
serverTuple.statusCode = 234
serverTuple.message = "Try again!"
serverTuple.errorMessage = "ERROR!"

if serverTuple.statusCode > 200 && serverTuple.statusCode < 300 {
    if let local = serverTuple.message {
        print(local)
    }
    
} else {
    if serverTuple.errorMessage != nil {
        print(serverTuple.errorMessage!)
    }
}
//#2
print("\n")
let secServerTupl: (String?, String) = ("Pleas try again", "AN ERROR OCCURED")
let (optMessage, constStrErrorMessage) = secServerTupl

if optMessage != nil {
    optMessage!
} else {
    print(constStrErrorMessage)
}
//3. Создайте 5 тюплов с тремя параметрами:
//имя, номер машины, оценка за контрольную
//при создании этих тюплов не должно быть никаких данных
//после создания каждому студенту установите имя
//некоторым установите номер машины
//некоторым установите результат контрольной
//выведите в консоль:
//- имена студента
//- есть ли у него машина
//- если да, то какой номер
//- был ли на контрольной
//- если да, то какая оценка

var firstStudent: (name: String?, licensePlate: String?, score: Int?)
var secStudent: (name: String?, licensePlate: String?, score: Int?)
var thirdtStudent: (name: String?, licensePlate: String?, score: Int?)
var fourthStudent: (name: String?, licensePlate: String?, score: Int?)
var fifthStudent: (name: String?, licensePlate: String?, score: Int?)
//names
firstStudent.name = "Carl"
secStudent.name = "Tim"
thirdtStudent.name = "Mike"
fourthStudent.name = "John"
fifthStudent.name = "Jim"
//whether has a car
firstStudent.licensePlate = "CAR345"
secStudent.licensePlate = nil
thirdtStudent.licensePlate = "CER456"
fourthStudent.licensePlate = "VEW458"
fifthStudent.licensePlate = nil
//exam score
firstStudent.score = 88
secStudent.score = 67
thirdtStudent.score = nil
fourthStudent.score = nil
fifthStudent.score = 98

var studOne = ""

if let name = firstStudent.name {
    studOne = "Student's name is \(name),"
    if let car = firstStudent.licensePlate {
        studOne += " his lisence plate number is \(car)."
    } else {
        studOne += " \(name) does not have a car"
    }
    if let score = firstStudent.score {
        studOne += " \(name)'s score is \(score)."
    } else {
        studOne += " \(name) was not in school at that day"
    }
}
print(studOne)
print("\n")
var studTwo = ""

if secStudent.name != nil {
    studTwo += "Student's name is \(secStudent.name!)."
    if secStudent.licensePlate != nil {
        studTwo += " \(secStudent.name!)'s license plate number is \(secStudent.licensePlate!)"
    } else {
        studTwo += "\(secStudent.name!) does not have a car"
    }
    if secStudent.score != nil {
        studTwo += " \(secStudent.name!)'s score is \(secStudent.score!)"
    } else {
        studTwo += " \(secStudent.name!) was not in school at that day"
    }
}
print(studTwo)
print("\n")
var studThree = ""

if let name = thirdtStudent.name {
    studThree += "Student's name is \(name)."
    if let car = thirdtStudent.licensePlate {
        studThree += " \(name)'s license plate number is \(car)."
    } else {
        studThree += " \(name) does not have a car."
    }
    if let score = thirdtStudent.score {
        studThree += " \(name)'s exam score is \(score)."
    } else {
        studThree += " \(name) was not at a school that day"
    }
}
print(studThree)
print("\n")
var studFour = ""

if fourthStudent.name != nil {
    studFour += "Student's name is \(fourthStudent.name!)."
    if fourthStudent.licensePlate != nil {
        studFour += " \(fourthStudent.name!)'s license plate number is \(fourthStudent.licensePlate!)."
    } else {
        studFour += "\(fourthStudent.name!) does not have a car."
    }
    if fourthStudent.score != nil {
        studFour += " \(fourthStudent.name!)'s exam score is \(fourthStudent.score!)."
    } else {
        studFour += " \(fourthStudent.name!) was not in a school that day."
    }
}
print(studFour)
print("\n")
var studFive = ""

if let name = fifthStudent.name {
    studFive += "Student's name is \(name)."
    if let car = fifthStudent.licensePlate {
        studFive += " \(name)'s license plate number is \(car)."
    } else {
        studFive += " \(name) does not have a car."
    }
    if let score = fifthStudent.score {
        studFive += " \(name)'s exam score is \(score)."
    } else {
        studFive += " \(name) was not is a school that day."
    }
}
print(studFive)


