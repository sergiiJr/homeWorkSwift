// 1. Создайте пару функций с короткими именами, которые возвращают строку с классным символом или символами. Например heart() возвращает сердце и т.п. Вызовите все эти функции внутри принта для вывода строки этих символов путем конкатенации.

func heart() -> (String) {
    return "\u{1F496}"
}

func lettW() -> String {
    return "\u{57}"
}

func lettE() -> String {
    return "\u{45}"
}

func lettsSwIfT() -> String {
    return "\u{53} \u{57} \u{49} \u{46} \u{54}"
}

func exMark() -> String {
    return "\u{21}"
}

print(lettW() + lettE() +  heart() + lettsSwIfT() + exMark() )

// 2. Опять шахматные клетки. Реализовать функцию, которая принимает букву и символ и возвращает строку “белая” или “черная”. Строку потом распечатайте в консоль
func chess(lettNumbs: Int , char: Character) -> String {
    let letters = ["A", "B", "C", "D", "E", "F", "G", "H"]
    for i in 0..<letters.count {
        if String(char) == letters[i] {
            if i % 2 == lettNumbs % 2  {
                return "White"
            }
        }
    }
    return "Black"
}
print(chess(lettNumbs: 8, char: "A"))
//3. Создайте функцию, которая принимает массив, а возвращает массив в обратном порядке. Можете создать еще одну, которая принимает последовательность и возвращает массив в обратном порядке. Чтобы не дублировать код, сделайте так, чтобы функция с последовательностью вызывала первую.

func array(inputArray arr: [Int]) -> [Int] {
    
    var reverseArr = [Int]()
    
    for i in arr {
        reverseArr.insert(i, at: 0)
    }
    
    return reverseArr
}

func reverseStringArray(inputStrAr arr :[String]) -> [String] {
    
    var reversedStr = [String]()
    
    for i in arr {
        reversedStr.insert(i, at: 0)
    }
    
    return reversedStr
}

func reversedArray(inputValues values: Int...) -> [Int] {
    
    return array(inputArray: values)
    
}

let mainArray = [1, 23, 45, 65, 34, 67, 78, 32, 56, 77]
let alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "j"]
var reversed = array(inputArray: mainArray)
print(reversed)
var newreversdArray = reversedArray(inputValues: 10, 23, 34, 45, 66, 54, 32, 345, 678)
print(newreversdArray)
var stringReversdArray = reverseStringArray(inputStrAr: alphabet)
print(stringReversdArray)
// 4 Разберитесь с inout самостоятельно и выполните задание номер 3 так, чтобы функция не возвращала перевернутый массив, но меняла элементы в существующем. Что будет если убрать inout?

func reverArray (array: inout [Int]) {
    
    for i in array {
        array.insert(i, at: 0)
        array.removeLast()
    }
}
var array = [1, 2, 3, 4]
reverArray(array: &array)
print(array)

// 5. Создайте функцию, которая принимает строку, убирает из нее все знаки препинания, делает все гласные большими буквами, согласные маленькими, а цифры меняет на соответствующие слова (9 -> nine и тд)
let theText = """
Only, then, with the reader’s attention "hooked," should you move on to the thesis. The thesis should be a clear, one-sentence explanation of your position that leaves no doubt 4 in the reader’s mind about 5 which side you are on from the 7 beginning of your essay.
Following the 4 thesis, you should provide a mini-outline which 3 previews the examples you 3 will use to support your thesis in the rest of the essay. Not only does this tell the reader what to expect in the paragraphs to come but it also gives them a clearer understanding of what the essay is about.
"""
func stringCorrector(inputStr str: String) -> String {
    let numbers = ["1" : "one", "2" : "two", "3" : "three", "4" : "four", "5" : "five", "6" : "six", "7" : "seven", "8" : "eight", "9" : "nine", "0" : "zero"]
    
    let vowelDict = ["a" : "a", "e" : "e", "i" : "i", "o" : "o", "u" : "u", "y" : "y", ]
    let consonantsDict = ["b" : "b", "c" : "c", "d" : "d", "f" : "f", "g" : "g", "h" : "h", "j" : "j", "k" : "k", "l" : "l", "m" : "m", "n" : "n", "p" : "p", "q" : "q", "r" : "r", "s" : "s", "t" : "t", "v" : "v", "w" : "w", "x" : "x", "y" : "y", "z" : "z"]
    
    let sings = ["!" : "", "?" : "", "." : "", ";" : "", ":" : "", "," : "", "'" : "", "[" : "", "]" : "", "-" : ""]
    
    var newStr = ""
    
    for i in str {
        
        var char = String(i)
        switch char {
        case _ where consonantsDict[char] != nil:
            char = char.lowercased()
            newStr += char
        case _ where numbers[char] != nil:
            char = stringCorrector(inputStr: numbers[char]!)
            newStr += char + ""
        case _ where vowelDict[char] != nil:
            char = char.uppercased()
            newStr += char
        case _ where sings[char] != nil:
            break
            
        default: newStr += char
            
        }
    }
    
    return newStr
}

print(stringCorrector(inputStr: theText))

// Silver Challange

let grocerLlist = ["green beans", "milk", "apples", "black beans", "pinto beans"]

func b​e​a​n​S​i​f​t​e​r​(grocery: [String]) -> (beans: [String], otherGroceries: [String]) {
    
    var beans = [String]()
    var otherGroceries = [String]()
    for item in grocerLlist {
        if item.hasSuffix("beans") {
            beans.append(item)
        } else {
            otherGroceries.append(item)
        }
    }
    return(beans, otherGroceries)
}

let result = b​e​a​n​S​i​f​t​e​r​(grocery: grocerLlist)

print(result)


