import UIKit


class Solution_ {
    func reverse_(_ x: Int) -> Int {
        var reverseStr = ""
        if x < 0 {
            "\(x)".dropFirst().reversed().forEach { reverseStr.append($0) }
            reverseStr = "-" + reverseStr
        } else {
            "\(x)".reversed().forEach { reverseStr.append($0) }
        }
        
        return reverseStr.toInt()
    }
}

extension String {
    func toInt() -> Int {
        return Int(Int32(self) ?? 0)
    }
}

extension String {
    func toArray() -> [Character] {
        return Array(self)
    }
}

class Solution {
    func reverse(_ x: Int) -> Int {
        var temp = x
        var rev = 0
        while temp != 0 {
            let pop = temp % 10
            temp = temp / 10
            rev = rev * 10 + pop
        }
        
        return Int(Int32(rev))
    }
    
    
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 { return false }
        var temp = x
        var rightSide = 0
        while rightSide < temp {
            rightSide = rightSide * 10 + temp % 10
            temp /= 10
        }
        return rightSide == temp || rightSide/10 == temp
    }
    
    func romanToInt(_ s: String) -> Int {
        /*
         I             1
         V             5
         X             10
         L             50
         C             100
         D             500
         M             1000
         */
        
        var temp = s
        var res = 0
        while !temp.isEmpty {
            let pop = temp.first
            temp = String(temp.dropFirst())
            switch pop {
            case "M":
                res += 1000
            case "D":
                res += 500
            case "C":
                res += 100
            case "L":
                res += 50
            case "X":
                res += 10
            case "V":
                res += 5
            case "I":
                res += 1
            default:
                res += 0
            }
        }
        return res
    }
}
