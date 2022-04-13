import Cocoa

enum WorkingDay {
    case monday
    case thuesday
    case wednesday
    case thirsday
    case friday
}

enum Lesson {
    case history
    case math
    case physics
}

struct Schedule {
    var workingDay: WorkingDay
    var classes: [String: Lesson]
}
                                                
class Student {
    
    enum Gender {
        case male
        case female
    }
    
    var name: String
    var age: Int
    var gender: Gender
    
    private(set) var averageRating: Double?
    private(set) var weekSchedule: [Schedule]?
    
    init(name: String, age: Int, gender: Gender) {
        self.name = name
        self.age = age
        self.gender = gender
    }
    
    func set(weekSchedule: [Schedule]) {
        self.weekSchedule = weekSchedule
    }
    
    func computeAverageRating(from ratings: [Lesson: Double]) {
        
        let computedRating = ratings.map({ $0.value }).reduce(0, +)
        averageRating = computedRating / Double(ratings.count)
    }
    
    func checkStudentRating() {
        if let averageRating = averageRating {
            if averageRating > 4.5 {
                print("Can get a grant")
            } else if averageRating < 2.3 {
                print("Expelled from university")
            } else {
                print("Good job, \(name)")
            }
        }
    }
}

var john = Student(name: "John", age: 18, gender: .male)

let mondaySchedule = Schedule(
    workingDay: .monday,
    classes: ["9:00-10:00": .history]
)

let thuesdaySchedule = Schedule(
    workingDay: .thuesday,
    classes: ["9:00-10:00": .math]
)

john.set(weekSchedule: [mondaySchedule, thuesdaySchedule])

john.computeAverageRating(
    from: [.math: 2, .history: 3, .physics: 2]
)

john.checkStudentRating()
