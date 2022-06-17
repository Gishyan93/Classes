import Foundation
import PlaygroundSupport

// Given an array of integers. Need to return index of maximum item found in an array.
//let arr = [1, 18, 2, 3, 19, 5]
//func getMaxIndex(_ array: [Int]) -> Int {
//    if array.isEmpty { return -10 }
//
//    var maxIndex = Int(array.firstIndex(of: array[0])!)
//    var maxValue = array[0]
//    var previousValue = array[0]
//
//    for (index, item) in array.enumerated() {
//        if item > maxValue {
//            maxValue = item
//            maxIndex = index
//        }
//        previousValue = item
//    }
    
//    let maxIndex = Int(array.lastIndex(where: { $0 == array.max()! }) ?? -10)

//    return maxIndex
//}
//
//getMaxIndex(arr)

// Given an array of strings. Need to return the name of most common element found in an array.
//var colors = ["red", "black", "green", "blue", "black", "white", "purple", "yellow", "orange", "green", "red", "white", "green"]
//
//func getMostCommonElement(_ items: [String]) -> [String] {
//    guard
//        !items.isEmpty
//    else { fatalError() }
//
//    var dict: [String: Int] = [:]
//
//    for item in items {
//        let count = dict[item] ?? 0
//        dict.updateValue(count + 1, forKey: item)
//    }
//
//    var maximumNumber = 0
//    for item in dict.values {
//        if item > maximumNumber {
//            maximumNumber = item
//        }
//    }
//
//    var outputItems: [String] = []
//    for (index, item) in dict {
//        if item == maximumNumber {
//            outputItems.append(index)
//        }
//    }
//
//    return outputItems
//}
//
//getMostCommonElement(colors)

// Given an array of integers nums and an integer target, return indices
// of the two numbers such that they add up to target.
//
// You may assume that each input would have exactly one solution,
// and you may not use the same element twice.
//
// You can return the answer in any order.
// Input: nums = [2,7,11,15], target = 9
// Output: [0,1]

//func getTargetedIndexes(_ array: [Int], target: Int) -> [Int] {
//    var outputArray: [Int] = []
//    var compArray = array
//
//    for (i, iItem) in array.enumerated() {
//        compArray.removeFirst()
//        for (j, jItem) in compArray.enumerated() {
//            if iItem + jItem == target {
//                outputArray.append(i)
//                outputArray.append(j)
//                return outputArray
//            }
//        }
//    }
//    return outputArray
//}
//
//getTargetedIndexes([2,7,11,15], target: 9)

//class API {
//  ...
//  func fetchServerStatus(completion: @escaping (ServerStatus) -> Void) {
//    URLSession.shared
//      .dataTask(
//        with: URL(string: "http://amazingserver.com/status")!
//      ) { data, response, error in
//        // Decoding, error handling, etc
//        let serverStatus = ...
//        completion(serverStatus)
//      }
//      .resume()
//  }
//}
//
//class ViewController {
//  let api = API()
//  let viewModel = ViewModel()
//
//  func viewDidAppear() {
//    api.fetchServerStatus { [weak viewModel] status in
//      guard let viewModel = viewModel else { return }
//      viewModel.serverStatus = status
//    }
//  }
//}

//class API {
//    ...
//    func fetchServerStatus() async throws -> ServerStatus {
//        let (data, _) = try await URLSession.shared.data(
//            from: URL(string: "http://amazingserver.com/status")!
//        )
//        return ServerStatus(data: data)
//    }
//}
//
//class ViewController {
//    let api = API()
//    let viewModel = ViewModel()
//
//    func viewDidAppear() {
//        Task {
//            viewModel.serverStatus = try await api.fetchServerStatus()
//        }
//    }
//}

// Polymorphysm - overloadings + overridings


// MARK: - Overloadings
//func printName() {
//    print("Deafault Name")
//}
//
//func printName(name: String) {
//    print("My name is \(name)")
//}
// MARK: - Overloadings

//class Instrument {
//    func tune() {
//        fatalError("This method cannot be implemented directly.")
//    }
//}
//
//class Piano: Instrument {
//    override func tune() {
//        print("Tuned with standart tuning method")
//    }
//}
//
//class Guitar: Instrument {
//    override func tune() {
//        print("Tuned with ABCDE method")
//    }
//}

//let piano = Piano()
//piano.tune()

//let instruments: [Instrument] = [Guitar(), Piano()]
//
//instruments.forEach { instrument in
//    instrument.tune()
//}

//struct CustomShape: Shape {
//    var radius: CGFloat
//
//    func path(in rect: CGRect) -> Path {
//        var path = Path()
//
//        let bl = CGPoint(x: rect.minX, y: rect.maxY)
//        let br = CGPoint(x: rect.maxX, y: rect.maxY)
//        let trs = CGPoint(x: rect.maxX, y: rect.minY + radius)
//
//        let trc = CGPoint(x: rect.maxX - radius, y: rect.minY + radius)
//
//        let tls = CGPoint(x: rect.minX + radius, y: rect.minY)
//        let tlc = CGPoint(x: rect.minX + radius, y: rect.minY + radius)
//
//        path.move(to: bl)
//        path.addLine(to: br)
//        path.addLine(to: trs)
//        path.addRelativeArc(
//            center: trc,
//            radius: radius,
//            startAngle: Angle.degrees(0),
//            delta: Angle.degrees(-90)
//        )
//        path.addLine(to: tls)
//        path.addRelativeArc(
//            center: tlc,
//            radius: radius,
//            startAngle: Angle.degrees(-90),
//            delta: Angle.degrees(-90)
//        )
//        return path
//    }
//}
//Task {
//  fileData = try await model.download(file: file)
//}

actor Counter {
//    var unownedExecutor: UnownedSerialExecutor
    private var count = 0
    
    func increment() {
        count += 1
    }
}
