import Cocoa
import Foundation

//Create Vet Clinic which should have variables like:
//
//branch
//doctors
//
//Each doctor should have a schedule.
//
//User should be able to make an appointment for his pet.
//User mentions a convenient day, hour and doctor name.
//If a doctor is available for that period of time, the appointment is confirmed. Otherwise errors should be raised for the user.

struct VetClinic {
    var name: String
    var branches: [Branch]
    var doctors: [Doctor]
}

struct Branch {
    var branchID: Int
    var name: String
    var address: String
    var location: Location
    
    var doctors: [Doctor] = []
    
    func makeAnappointment(day: WorkingDay,convenientHours: String, doctorID: Int) {
        guard
            let doctor = doctors.filter({ $0.doctorID == doctorID }).first,
            let schedule = doctor.schedules?.filter({ $0.workingDay == day }).first
        else { return }

        for hours in schedule.workingHours.keys {
            if hours == convenientHours {
                print("Doctor is not available for that hours")
                return
            }
        }
        print("Appointment succeeded")
    }
}

struct Location {
    var latitude: Double
    var longitude: Double
}

struct Doctor {
    var doctorID: Int
    var name: String
    var age: Int
    var grade: Grade
    
    var schedules: [Schedule]?
    var ratings: [Int]
    // Computed property
    var averageRating: Double {
        return Double(ratings.reduce(0, +)/ratings.count)
    }
    
    mutating func set(schedules: [Schedule]) {
        self.schedules = schedules
    }
}

enum Grade {
    case junior
    case middle
    case senior
}

enum WorkingDay {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}

struct Schedule {
    var workingDay: WorkingDay
    var workingHours: [String: Pet]
}

struct Pet {
    var name: String
    var age: Int
    var gender: Gender
    
    // TODO: - Medical history
}

enum Gender {
    case male
    case female
}


// Creating doctor
var james = Doctor(doctorID: 25, name: "James", age: 28, grade: .senior, ratings: [3, 4, 5, 1, 2, 3, 4])

// Schedule setup
let mondaySchedule = Schedule(
    workingDay: .monday, workingHours: [
        "10:00-11:00": Pet(name: "Barsik", age: 4, gender: .male),
        "11:30-12:00": Pet(name: "Luna", age: 5, gender: .female)
    ]
)

let tuesdaySchedule = Schedule(
    workingDay: .tuesday,
    workingHours: [
        "12:00-13:00": Pet(name: "Mozart", age: 3, gender: .male),
        "14:00-14:30": Pet(name: "Bobik", age: 2, gender: .male)
    ]
)

james.set(schedules: [mondaySchedule, tuesdaySchedule])

let mashtocBranch = Branch(
    branchID: 18,
    name: "Mashot Branch",
    address: "Mashoci 18",
    location: Location(latitude: 1.2323, longitude: 2.3434),
    doctors: [james]
)

mashtocBranch.makeAnappointment(day: .monday, convenientHours: "12:00-13:00", doctorID: 25)
