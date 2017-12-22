//1. Создайте дикшинари как журнал студентов, где имя и фамилия студента это ключ, а оценка за контрольную значение. Некоторым студентам повысьте оценки - они пересдали. Потом добавьте парочку студентов, так как их только что перевели к вам в группу. А потом несколько удалите, так как они от вас ушли :(

//После всех этих перетрубаций посчитайте общий бал группы и средний бал

var classJur = ["Alex Hopkins": 5, "James Qiles": 4, "Ryane Levere": 5, "Mike Dolfino": 3, "Steve Mahonny": 4]
classJur.updateValue(4, forKey: "Mike Dolfino")
classJur.updateValue(5, forKey: "James Qiles")
classJur["Alex Hopkins"] = 4
classJur["Craig Stevenson"] = 3
classJur["Ronald Kovalski"] = 4
classJur["Alex Hopkins"] = nil
classJur.removeValue(forKey: "Ryane Levere")
var averScor = 0
var summScore = 0

for i in classJur.keys {
    averScor += classJur[i] ?? 0
    
}

summScore = averScor
averScor /= classJur.count

print("the total amount is \(summScore) and average score is \(averScor)")

averScor = 0

for (_, q) in classJur {
    averScor += q
}

averScor /= classJur.count
print("the total amount is \(summScore) and average score is \(averScor)")

//2. Создать дикшинари дни в месяцах, где месяц это ключ, а количество дней - значение.
//В цикле выведите ключ-значение попарно, причем один раз выведите через тюплы, а другой раз пройдитесь по массиву ключей и для каждого из них доставайте значения.
print("\n")

let monthDays = ["January": 31, "February": 28, "March": 31, "April": 30, "May": 31, "June": 30, "July": 31, "August": 31, "September": 30, "October": 31, "November": 30, "December": 31]

for (month, day) in monthDays {
    print("\(month) = \(day)")
    
}

print("\n")

for i in monthDays.keys {
    print("\(i) \(monthDays[i] ?? 0)")
}

//3. Создать дикшинари , в которой ключ это адрес шахматной клетки (пример: a5, b3, g8), а значение это Bool. Если у клетки белый цвет, то значение true, а если черный - false. Выведите дикшинари в печать и убедитесь что все правильно. Рекомендация: постарайтесь все сделать используя вложенный цикл (объяснение в уроке).
print("\n")

let str = "ABCDEFGH"
var dict = [String : Bool]()
var cellKey = [String]()
for char in str {
    cellKey.append(String(char))
}
for i in 0..<str.count {
    for j in 0..<str.count {
        dict["\(cellKey[i] + String(j + 1))"] = (i % 2 != j % 2) ? true : false
    }
}
for (key, value) in dict {
    print("cell \(key) - \(value)")
}
//var cells = [Bool](repeatElement(false, count: 64))
//
//let i = 5, j = 6
//
//cells[0] = (i % 2  != j % 2)









































