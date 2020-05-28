import UIKit


func lengthOfLongestSubstring_(_ s: String) -> Int {
    let n = s.count
    var ans = 0
    
    for i in 0..<n {
        for j in i+1..<n+1 {
            if (allUnique(s, i, j)) {
                ans = max(ans, j - i);
            }
        }
    }
    return ans
}

func allUnique(_ str: String, _ start: Int, _ end: Int) -> Bool {
    var arr = [Character]()
    for i in start..<end {
        let ch = Array(str)[i]
        if arr.contains(ch) {
            return false
        }
        arr.append(ch)
    }
    return true
}



func lengthOfLongestSubstring(_ s: String) -> Int {

    var ans = 0
    
    var i = 0
    var map: [Character: Int] = [:]
    
    for j in 0..<s.count {
        if map.contains(where: { $0.key == s.charAt(j) }) {
            i = max(map.first(where: { $0.key == s.charAt(j)})!.value, i )
        }
        ans = max(ans, j - i + 1)
        map.updateValue(j + 1, forKey: s.charAt(j))
    }
    
    return ans
}

extension String {
    func charAt(_ position: Int) -> Character {
        return position < self.count ? Array(self)[position] : Character("")
    }
}

lengthOfLongestSubstring("bbhxtvhntxdpopphqxgqejnbwcgyutcxujvqgedacirszjzrihhmtunpwtpt")
