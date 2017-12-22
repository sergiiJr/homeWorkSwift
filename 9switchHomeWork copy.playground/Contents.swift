import Foundation
//1. Создать строку произвольного текста, минимум 200 символов. Используя цикл и оператор свитч посчитать количество гласных, согласных, цифр и символов.
let randString = "Swift is a fantastic way to write software, whether it’s for phones, desktops, servers, or anything else that 453 runs code. It’s a safe, 23 fast, and interactive programming 456 language that combines the best in modern language thinking 345 with wisdom from the wider"
//var counter = (vowels: 0, consonants:0, symbols: 0, numbers: 0)
//
//for char in randString {
//    switch char {
//case "a","e","i","o","u": counter.vowels += 1
//case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "y", "v", "x", "z", "w", "t": counter.consonants += 1
//case let c where Int(String(c)) != nil : counter.numbers += 1
//    default: counter.symbols += 1
//    }
//}
//print(" this taxt has \(counter.vowels) vowels, \(counter.consonants) consonants, \(counter.numbers) and \(counter.symbols) symbols ")
var counterOfVowels = 0
var counterOfConsonants = 0
var counterOfSumbols = 0
var counterOfNumbers = 0

for char in randString {
    switch char {
    case "a","e","i","o","u":
    counterOfVowels += 1
    case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "y", "v", "x", "z", "w", "t":
        counterOfConsonants += 1
    case let c where Int(String(c)) != nil : counterOfNumbers += 1
        default: counterOfSumbols += 1
       }
}
print("this taxt has \(counterOfVowels) vowels, \(counterOfConsonants) consonants, \(counterOfSumbols) symbols and \(counterOfNumbers) numbers")
// 2. Создайте свитч который принимает возраст человека и выводит описание жизненного этапа
let guy = 78

switch guy {
case 0...1:
    print("Infancy (the first year of life")
case 2...3:
    print("Early childhood")
case 4...6:
    print("Preschool age")
case 7...12:
    print("School age")
case 13...19:
    print("Youth")
case 20...30:
    print("Early maturity")
case 30...70:
    print("Average maturity")
case _ where guy > 70:
    print("Have a good retirement")
default:
    break
}
//
//3. У вас есть имя отчество и фамилия студента (русские буквы). Имя начинается с А или О, то обращайтесь к студенту по имени, если же нет, то если у него отчество начинается на В или Д, то обращайтесь к нему по имени и отчеству, если же опять нет, то в случае если фамилия начинается с Е или З, то обращайтесь к нему только по фамилии. В противном случае обращайтесь к нему по полному имени.

let student = (name: "Андрей", middleName: "Викторович", lastName: "Макаренко")

//switch student {
//case (let f,_ , _) where f == "А" || f == "О":
//    print("hello \(student.name)")
//case (_, let a, _) where a == "В" || a == "Д":
//    print("hello \(student.middleName)")
//case (_, _ , let b) where b == "Е" || b == "З":
//    print("hello \(student.lastName)")
//default:
//    print("Hello \(student.lastName) \(student.name) \(student.middleName)")
//}
switch student {
case _ where student.name.hasPrefix("А") || student.name.hasPrefix("О"):
    print("3овите его \(student.name)")
case _ where student.middleName.hasPrefix("В") || student.middleName.hasPrefix("Д"):
    print("3овите его \(student.name) \(student.middleName)")
case _ where student.lastName.hasPrefix("Е") || student.lastName.hasPrefix("З"):
    print("зовите его \(student.lastName)")
default:
    print("3овите его \(student.lastName) \(student.name) \(student.middleName)")
}
//4  Представьте что вы играете в морской бои и у вас осталось некоторое количество кораблей на поле 10Х10 (можно буквы и цифры, а можно только цифры). Вы должны создать свитч, который примет тюпл с координатой и выдаст один из вариантов: мимо, ранил, убил.

let battle = (x: 2, y: 8)
let ship1 = (x: 2, y: 8, w: 1, h:2)
let ship2 = (x: 5, y: 1, w: 1, h:1)

switch battle {
case let (x, y) where x == ship1.x && y == ship1.y:
    print("wounded!")
case let (x, y) where x == ship2.x && y == ship2.y:
    print("killed")
default:
    print("missed")
}










