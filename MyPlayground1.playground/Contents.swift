
import Foundation
import UIKit

var uploadTimes = ["02.02.2000","03.02.2002","05.02.2002","04.02.2002"]

let isoFormatter = DateFormatter()
isoFormatter.dateFormat = "dd.MM.yyyy"

let dates = uploadTimes.compactMap { isoFormatter.date(from: $0) }

let sortedDates = dates.sorted { $0 < $1 }

print(sortedDates)

let dateStrings = sortedDates.compactMap { isoFormatter.string(from: $0)}

print(dateStrings)

//////////////////////////////////////////////////////////////////////////////////////////
print(" ")


var numbers = [1,1,2,3,4,5,4,3,2]

let dups = Dictionary(grouping: numbers, by: { $0 }).filter { $1.count == 1 }.keys


print(Dictionary(grouping: numbers, by: { $0 }).filter { $1.count == 1 }.keys)

//////////////////////////////////////////////////////////////////////////////////////////

let str = "Hello World"

str.split(separator: " ").reversed().joined(separator: " ")


////////////
let n = ["a": "b"]
print(n["c"] ?? "k")


func sortDates(dates: [String]) -> [String] {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "dd MMM YYYY"

    let datesArr = dates.compactMap { dateFormatter.date(from: $0 )}

    return datesArr.sorted { $0 < $1 }.compactMap { dateFormatter.string(from: $0) }
}
