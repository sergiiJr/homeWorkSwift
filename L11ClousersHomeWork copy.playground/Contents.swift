// 1. Написать функцию, которая ничего не возвращает и принимает только один клоужер, который ничего не принимает и ничего не возвращает . Функция должна просто посчитать от 1 до 10 в цикле и после этого вызвать клоужер. Добавьте println в каждый виток цикла и в клоужер и проследите за очередностью выполнения команд.

func lazy(closure: () -> () ) {
    
    for i in 1...10 {
        print(i)
    }
}

lazy(closure:) {print("hey")}

//2. Используя метод массивов sorted, отсортируйте массив интов по возрастанию и убыванию. Пример показан в методичке.

let array = [1, 3, 4, 6, 8, 12, 21, 234, 32, 567, 23, 45, 78, 43, 123, 145]

let sortArr = array.sorted { (a: Int, b: Int) -> Bool in
    return a < b
}
print(sortArr)

let sortArr2 = array.sorted { (a: Int, b: Int) -> Bool in
    return a > b
}
print(sortArr2)

let sortedArr3 = array.sorted(by: > )
print(sortedArr3)

let sorted4 = array.sorted(by: { $0 < $1 })
print(sorted4)

// 3. Напишите функцию, которая принимает массив интов и клоужер и возвращает инт. Клоужер должен принимать 2 инта (один опшинал) и возвращать да или нет. В самой функции создайте опшинал переменную. Вы должны пройтись в цикле по массиву интов и сравнивать элементы с переменной используя клоужер. Если клоужер возвращает да, то вы записываете значение массива в переменную. в конце функции возвращайте переменную.

//3.1             используя этот метод и этот клоужер найдите максимальный и минимальный элементы массива.

let arrayOfFun = [1, 3, 4, 6, 8, 12, 21, 234, 32, 567, 23, 45, 78, 43, 123, 145]

func takesArr(arr: [Int], clouser: (Int, Int?) -> Bool) -> Int {
    
    var opt: Int?
    
    for i in arrayOfFun {
        if clouser(i, opt) {
            opt = i
        }
        
    }
    
    return opt!
}

let bigNum = takesArr(arr: arrayOfFun, clouser: { (s1, s2) -> Bool in
  
    if s2 != nil {
    return s1 > s2!
        
    }
    return true
})
bigNum

let numSmall = takesArr(arr: arrayOfFun, clouser: { $1 != nil ? $0 < $1! : true})

numSmall

// 4. Создайте произвольную строку. Преобразуйте ее в массив букв. Используя метод массивов sorted отсортируйте строку так, чтобы вначале шли гласные в алфавитном порядке, потом согласные, потом цифры, а потом символы

let soms = """
Only, then, with the reader’s attention "hooked," should you move on to the thesis. The thesis should be a clear, one-sentence explanation of your position that leaves no doubt 4 in the reader’s mind about 5 which side you are on from the 7 beginning of your essay.
Following the 4 thesis, you should provide a mini-outline which 3 previews the examples you 3 will use to support your thesis in the rest of the essay. Not only does this tell the reader what to expect in the paragraphs to come but it also gives them a clearer understanding of what the essay is about.
"""
var arrayChar = [String]()
for char in soms {
    arrayChar.append(String(char))
}

func theDeal(s1: String, s2: String) -> Bool {
    func countChar(s: String) -> Int {
        switch s.lowercased() {
        case "a", "e", "i", "o", "u", "y": return 1
        case "b"..."z": return 2
        case "0"..."9": return 3
        default:
            return 4
        }
    }
    
    if countChar(s: s1) < countChar(s: s2) {
        return true
    } else if countChar(s: s1) == countChar(s: s2) {
        return s1.uppercased() < s2.uppercased()
    }
    
    return false
}
let somthing = arrayChar.sorted(by: theDeal)

//5. Проделайте задание №3 но для нахождения минимальной и максимальной буквы из массива букв (соответственно скалярному значению)
let arrayText = ["A","W", "Й", "Ю"]

func funcOfLettrs(array: [String], cloo: (String, String?) -> Bool) -> String {
    var value: String?
    
    for number in array {
        if cloo(number, value) {
            value = number
        }
    }
    return value!
}
    
let chrBig = funcOfLettrs(array: arrayText) { (s1, s2) -> Bool in
    if s2 != nil {
        return s1 > s2!
    }
    return true
}
print("Big - \(chrBig)")

let chrSmall = funcOfLettrs(array: arrayText) { (s1, s2) -> Bool in
    if s2 != nil {
        return s1 < s2!
    }
    return true
}
 print("Small - \(chrSmall)")

for letter in arrayText {
    for codeUnit in letter.unicodeScalars {
        print("\(letter) = \(codeUnit.value)")
    }
}
    
    
    
    
    









