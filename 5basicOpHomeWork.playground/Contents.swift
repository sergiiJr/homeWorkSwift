//homeWork
//#1
var  minute = 60
var  hour   = 60 * minute
var  day    = 24 * hour

//choose your month and day from the column belove
let leapYear = 2000

let jan = 31
let feb = 29
let mar = 31
let apr = 30
let may = 31
let jun = 30
let jul = 31
let aug = 31
let sep = 30
let oct = 31
let nov = 30
let dec = 16 // <- this mine day

let countAll = (jan + feb + mar + apr + may + jun + jul + aug + sep + oct + nov + dec) * day
if leapYear % 100 == 0 && leapYear % 400 == 0 {
     let localCon = countAll + day
    print("\(localCon) seconds till my BD, also this is Leap Year!")
} else if leapYear % 4 == 0 {
    let localCon = countAll + day
    print("\(localCon) seconds till my BD, also this is Leap Year!")
} else {
    print("\(countAll) seconds till my BD")
}
//#2
let myMounth = 12

if 1 <= myMounth && myMounth <= 3 {
    print("I was born in first qauter")
} else if 4 <= myMounth && myMounth <= 6 {
    print("I was born in second qauter")
} else if 7 <= myMounth && myMounth <= 9 {
    print("I was born in third qauter")
} else if 10 <= myMounth && myMounth <= 12 {
    print("I was born in fourth qauter")
}
//#3 not actual amymore "The ++ and -- operators have been deprecated"
//#4
var x = 2
var y = 1
if x % 2 == 0 && y % 2 != 0 {
    print("black")
} else if x % 2 != 0 && y % 2 == 0 {
    print("white")
} else {
    print("black")
}

let cell = (x: 2, y: 1)

if cell.x % 2 == cell.y % 2 {
    print("Black")
} else {
    print("white")
}
















            


