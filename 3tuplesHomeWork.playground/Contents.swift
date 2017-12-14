
//homeWork
//#1

let mySkils = (maxPushUps: 25, maxPullUps: 20, maxSquats: 50)
print("My strenght, \(mySkils.maxPullUps), \(mySkils.maxPushUps), \(mySkils.maxSquats).")

print("I can do \(mySkils.0) push ups ")
print("also can do \(mySkils.maxPullUps) pull ups")
print("and \(mySkils.2) squats")
//#2

let myFriendSkills = (maxPushUps:40, maxPullUps:67, maxSquats:150)
let (maxPushUps, maxPullUps, maxSquats) = mySkils
//#3
/*
 var diff = mySkils
 myFriendSkills.0 - mySkils.0
 myFriendSkills.maxPullUps - mySkils.maxPullUps
 myFriendSkills.2 - mySkils.maxSquats
 */
let diffOfPushUps = myFriendSkills.maxPushUps - mySkils.maxPushUps
let diffOfPullUps = myFriendSkills.1 - mySkils.maxPullUps
let diffOfSquats = myFriendSkills.maxSquats - mySkils.maxSquats
let diffTuple =  (diffOfPushUps, diffOfPullUps, diffOfSquats)
//print("my friend does \()")
print(diffTuple)
print("my friend does \(diffOfSquats) squats, \(diffOfPullUps) pull ups and \(diffOfPushUps) push ups more then me.")

