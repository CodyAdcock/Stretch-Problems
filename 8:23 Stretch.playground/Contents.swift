class Person{
    //properties
    let name: String?
    let age: Int?
    let favoriteMovie: String?
    
    init(myDictionary: Dictionary<String, Any>){
        var dictName: String?
        var dictAge: Int?
        var dictMovie: String?
        
        for (key, value) in myDictionary{
            switch key{
            case "nameKey":
                dictName = value as? String
            case "ageKey":
                dictAge = value as? Int
            case "favMovieKey":
                dictMovie = value as? String
            default:
                break
            }
        }
        self.name = dictName
        self.age = dictAge
        self.favoriteMovie = dictMovie
    }
}

let workingDictionary = ["nameKey" : "Derek", "ageKey": 28, "favMovieKey" : "Zoolander"] as [String : Any]
let brokenDictionary = ["nameKey" : "Steve", "ageKey": 2] as [String : Any]

let derek = Person.init(myDictionary: workingDictionary)
print("Name: \(derek.name ?? "Oops") \(derek.age ?? 123456789) \(derek.favoriteMovie ?? "Oops")")

let steve = Person.init(myDictionary: brokenDictionary)
print("Name: \(steve.name ?? "Missing Data") \(steve.age ?? 404) \(steve.favoriteMovie)")


//
///NEW CLASS FOR TREVOR'S EXAMPLE
//
class TrevPerson{
    let name: String
    let age: Int
    let favoriteMovie: String
    
    init?(dictionary: Dictionary<String, Any>){
        
        guard let name = dictionary["nameKey"] as? String,
            let age = dictionary["ageKey"] as? Int,
            let favoriteMovie = dictionary["favMovieKey"] as? String else {return nil}
        
        self.name = name
        self.age = age
        self.favoriteMovie = favoriteMovie
        
    }
}

let TrevDerek = TrevPerson(dictionary:  workingDictionary)
let TrevSteve = TrevPerson(dictionary:  brokenDictionary)

print("Trev Name: \(TrevDerek?.name) \(TrevDerek?.age) \(TrevDerek?.favoriteMovie)")
print("Trev Name: \(TrevSteve?.name) \(TrevSteve?.age) \(TrevSteve?.favoriteMovie)")

//
//Making mine Failable
//
class FailablePerson{
    let name: String?
    let age: Int?
    let favoriteMovie: String?
    
    init?(myDictionary: Dictionary<String, Any>){
        var dictName: String?
        var dictAge: Int?
        var dictMovie: String?
        
        for (key, value) in myDictionary{
            switch key{
            case "nameKey":
                dictName = value as? String
            case "ageKey":
                dictAge = value as? Int
            case "favMovieKey":
                dictMovie = value as? String
            default:
                break
            }
        }
        self.name = dictName
        self.age = dictAge
        self.favoriteMovie = dictMovie
    }
}

let failableDerek = FailablePerson.init(myDictionary: workingDictionary)
print("FailableName: \(failableDerek?.name) \(failableDerek?.age) \(failableDerek?.favoriteMovie)")

let failableSteve = FailablePerson.init(myDictionary: brokenDictionary)
print("FailableName: \(failableSteve?.name) \(failableSteve?.age) \(failableSteve?.favoriteMovie )")
