import Cocoa

enum AnimalType: String {
    case herbivore
    case predetor
    case omnivore
}

class Animal {
    var animalType: AnimalType
    var numberOfLegs: Int
    var hasTail: Bool

    init(
        animalType: AnimalType, numberOfLegs: Int, hasTail: Bool
    ) {
        self.animalType = animalType
        self.numberOfLegs = numberOfLegs
        self.hasTail = hasTail
    }

    func startsToSleep() {
        print("")
    }
}

class Cat: Animal {
    var name: String
    var isMeows: Bool

    init(name: String, isMeows: Bool) {
        self.name = name
        self.isMeows = isMeows
        super.init(
            animalType: .predetor, numberOfLegs: 4, hasTail: true
        )
    }

    func feedTheCat() {
        isMeows = false
    }
}

let barsik = Cat(name: "Barsik", isMeows: true)
let luna = barsik
