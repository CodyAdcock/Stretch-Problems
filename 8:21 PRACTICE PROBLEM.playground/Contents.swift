
/*func divByX (x: Int, y: Int){
    
    for i in 0...y{
        if i % x == 0{
            print("\(i) is divisible by \(x)")
        }
    }
    
}

divByX(x: 5, y: 150)*/

/*func findPrime(y: Int){
    var allNumbers: [Int] = []
    //fills an array with 0 to y
    for i in 0...y {
        allNumbers[i] = i
    }
    //check the array
    for i in 0...y{
        //exception for 0
        if i == 0{
            print("0 is not a Prime number")
        }
        //exception for 1
        if i == 1{
            print("1 is not a prime number")
        }
        else{
            for x in 2..<i{
                if i % x == 0 {
                    print("\(i) is not a prime number")
                    break
                }
                else {
                    print("\(i) is a prime number")
                }
        }
        }
    }
}*/

//findPrime(y: 10)

func trevPrime(number: Int) -> Bool{
    for x in 2..<number{
        if number % x == 0{ return false}
    }
    return true
}

func printPrimes(number: Int){
    for i in 2...number{
        if trevPrime(number: i){
            print(i)
        }
    }
}

printPrimes(number: 100)
