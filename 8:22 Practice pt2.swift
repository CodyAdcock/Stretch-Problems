
class Person {
    let firstName: String
    let lastName: String
    let age: Int
    
    init(firstName: String, lastName: String, age: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
    }
}

let james = Person(firstName: "James", lastName: "Pacheco", age: 26)
let andrea = Person(firstName: "Andrea", lastName: "Mower", age: 24)
let carol = Person(firstName: "Rebecca", lastName: "Mordo", age: 30)
let john = Person(firstName: " John", lastName: "Doe", age: 25)
let jane = Person(firstName: "Jane", lastName: "Dough", age: 52)
let maria = Person(firstName: "Maria", lastName: "Garcia", age: 30)
let mario = Person(firstName: "Mario", lastName: "Plumber", age: 100)
let luigi = Person(firstName: "Luigi", lastName: "Plumber", age: 99)
let peach = Person(firstName: "Peach", lastName: "Princess", age: 98)



let clubMembers: [Person] = [james, andrea, carol, john]
let allPeople: [Person] = [james, andrea, carol, john, jane, maria, mario, luigi, peach]

func areYouAMemberOfTheClub(Person: Person) -> Bool{
    for i in 0..<allPeople.count{
        if Person == allPeople[i]{return true}
    }
    return false
}

func ==(lhs: Person, rhs: Person) -> Bool {
    if lhs.firstName != rhs.firstName {return false}
    if lhs.lastName != rhs.lastName{return false}
    if lhs.age != rhs.age{return false}
    
    return true
}

areYouAMemberOfTheClub(Person: john)
areYouAMemberOfTheClub(Person: jane)
