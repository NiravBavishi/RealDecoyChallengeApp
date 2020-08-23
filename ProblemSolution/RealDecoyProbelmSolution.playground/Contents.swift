


// TODO: Problem - 1

func replaceVowels(_ str: String, _ replacement: Character){
    
    let vowels: [Character] = ["a","e","i","o","u", "y"]
    
    let replaced = String(str.map {
        vowels.contains($0) ? replacement : $0
    })
    print(replaced)
}

print("")
print("Problem - 1")
print("")
replaceVowels("the aardvark", "#")
replaceVowels("minnie mouse", "?")
replaceVowels("shakespeare", "*")
print("")

// ---------------------------------------------------------------------------------------

// TODO: Problem - 2

func removeSmallest(_ givenArray: [Int]){
    
    
    var newArray = givenArray
    guard let minInt = newArray.min() else { return }
    guard let index = newArray.firstIndex(of: minInt) else { return }
    newArray.remove(at: index)
    print(newArray)
}

print("")
print("Problem - 2")
print("")
removeSmallest([1, 2, 3, 4, 5])
removeSmallest([5, 3, 2, 1, 4])
removeSmallest([2, 2, 1, 2, 1])
removeSmallest([1])
print("")

// ---------------------------------------------------------------------------------------

// TODO: Problem - 3

func splitCode(_ alphaNumbericString : String){
    
    let alphaNumbericChars = Array(alphaNumbericString)
    var numbers = [Character]()
    var alphabets = [Character]()
    let vowels: [Character] = ["0","1","2","3","4", "5","6","7","8","9"]
    for a in alphaNumbericChars{
        vowels.contains(a) ? numbers.append(a) : alphabets.append(a)
    }
    
    let string = String(alphabets)
    let number = Int(String(numbers))
    
    print(string,number!)
    
}

print("")
print("Problem - 3")
print("")
splitCode("TEWA8392")
splitCode("MMU778")
splitCode("SRPE5532")
print("")

// ---------------------------------------------------------------------------------------

// TODO: Problem - 4

func duplicateCount(_ string: String){
    
    var tempString = string
    var charArray = [Character]()
    var counter = 0
    
    for n in 1...tempString.count{
        
        let char = tempString.popLast()
        
        if (tempString.contains(char!) && !charArray.contains(char!)){
            counter = counter + 1
        }
        charArray.append(char!)
        
    }
    print(counter)
    
}

print("")
print("Problem - 4")
print("")
duplicateCount("abcde")
duplicateCount("aabbcde")
duplicateCount("Indivisibilities")
duplicateCount("Aa")
print("")


// ---------------------------------------------------------------------------------------

// TODO: Problem - 5

func josephus(_ numberOfSoldiers: Int, _ skips: Int){
    
    var soldierArray:[Int] = Array(1...numberOfSoldiers)
    var soldierLeft = numberOfSoldiers - 1
    var position = skips - 1
    var reminder = 0
    
    while (true){
        
        if(soldierLeft >= position && soldierArray.count >= skips){
            
            
            let killedSoldier = soldierArray.remove(at: position)
            // do something with killed soldier
            reminder = soldierLeft - position
            position = position + skips - 1
            soldierLeft = soldierArray.count - 1
        }else{
            
            position = skips - reminder - 1
            soldierLeft = soldierArray.count - 1
            
            
        }
        
        
        if (soldierArray.count < skips && soldierArray.count > 1) {
            
            if (soldierArray.count < skips && reminder == 0 ){
                
                var tempPosition = skips - soldierArray.count - 1
                if(tempPosition > soldierArray.count){
                    while(tempPosition > soldierArray.count){
                        tempPosition = tempPosition - soldierArray.count
                        
                    }
                    
                }
                position = tempPosition
                reminder = soldierArray.count - position - 1
                
                
            }
            else if (soldierArray.count < skips  && reminder != 0 ){
                
                var tempPosition = skips - reminder
                if(tempPosition > soldierArray.count){
                    while(tempPosition > soldierArray.count){
                        tempPosition = tempPosition - soldierArray.count
                        
                    }
                    
                }
                position = tempPosition - 1
                reminder = soldierArray.count - position - 1
                
            }
            
            let killedSoldier = soldierArray.remove(at: position)
            // do something with killed soldier
            
        }
        
        
        if(soldierArray.count == 1){
            
            print("Soldier Left :  \(soldierArray[0])")
            return
        }
        
    }
 
}

print("")
print("Problem - 5")
print("")
josephus(41, 3)
josephus(35, 11)
josephus(11, 1)
josephus(2, 2)
print("")
